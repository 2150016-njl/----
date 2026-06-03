#include <arpa/inet.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <unistd.h>

#include <cerrno>
#include <cstdint>
#include <cstring>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt8MultiArray.h>

#include "ego_trajectory_udp/ads_udp_protocol.hpp"

namespace
{
// ==================== 在线 UDP 解码节点说明 ====================
//
// 这个节点用于“在线接收 UDP 数据并实时解码”。
//
// 它和 ads_udp_pcap_decode.cpp 的区别：
//   ads_udp_pcap_decode.cpp 读取 pcapng 文件，里面有完整抓包帧；
//   本节点绑定 UDP 端口，收到的是操作系统交给应用层的 UDP payload。
//
// 因此本节点不需要解析 Ethernet/IP/UDP 头，也不需要处理 pcapng 块结构。
// 它收到一包 UDP 后，直接把最后 176 字节交给 decodePayload176()。
//
// 输出：
//   /ads_udp_decoded  std_msgs/String，JSON 格式，包含来源 IP/端口和解码字段。
//   /ads_udp_payload  std_msgs/UInt8MultiArray，原始 176 字节 payload，便于调试。
//
// 成功判断：
//   1. 终端能看到 "decoded ADS UDP ..." 日志。
//   2. rostopic echo /ads_udp_decoded 有输出。
//   3. udp_payload_bytes 通常为 176。
//   4. decoded.version 通常为 240，也就是 0xF0。
//   5. counter 会随包变化，经纬度、航向角等字段在合理范围。
// ================================================================

std::string ipFromSockaddr(const sockaddr_in& addr)
{
  // 把系统 socket 地址结构转成可读的 IPv4 字符串，方便日志和 JSON 输出。
  char buffer[INET_ADDRSTRLEN] = {0};
  if (inet_ntop(AF_INET, &addr.sin_addr, buffer, sizeof(buffer)) == nullptr)
  {
    return "";
  }
  return std::string(buffer);
}
}  // 匿名命名空间

class AdsUdpDecoderNode
{
public:
  AdsUdpDecoderNode() : private_nh_("~")
  {
    // 从 launch/参数服务器读取配置。
    //
    // bind_ip:
    //   本机监听地址。0.0.0.0 表示监听所有网卡。
    // local_port:
    //   本机监听端口，例如样本中目的端口是 31100。
    // expected_remote_ip / expected_remote_port:
    //   可选过滤条件。设置后只接收指定来源的 UDP 包。
    // publish_raw_payload:
    //   是否额外发布原始 176 字节 payload，便于和 Wireshark 对比。
    private_nh_.param<std::string>("bind_ip", bind_ip_, "0.0.0.0");
    private_nh_.param<int>("local_port", local_port_, 31100);
    private_nh_.param<std::string>("expected_remote_ip", expected_remote_ip_, "");
    private_nh_.param<int>("expected_remote_port", expected_remote_port_, -1);
    private_nh_.param<bool>("publish_raw_payload", publish_raw_payload_, true);
    private_nh_.param<int>("recv_buffer_size", recv_buffer_size_, 4096);

    validateParams();
    openSocket();

    decoded_pub_ = nh_.advertise<std_msgs::String>("ads_udp_decoded", 20);
    raw_pub_ = nh_.advertise<std_msgs::UInt8MultiArray>("ads_udp_payload", 20);

    ROS_INFO("ADS UDP decoder listening on %s:%d, payload=last %zu bytes, endian=Intel/little",
             bind_ip_.c_str(),
             local_port_,
             ego_trajectory_udp::ads_udp::kPayloadSize);
  }

  ~AdsUdpDecoderNode()
  {
    if (socket_fd_ >= 0)
    {
      close(socket_fd_);
    }
  }

  void run()
  {
    // 主循环：
    //   1. 等待 UDP socket 是否可读。
    //   2. 如果有包到达，用 recvfrom() 收一个完整 datagram。
    //   3. 交给 handleDatagram() 做来源过滤、长度检查、协议解码和 ROS 发布。
    ros::Rate idle_rate(200.0);
    std::vector<uint8_t> buffer(static_cast<std::size_t>(recv_buffer_size_));

    while (ros::ok())
    {
      // select() 给 UDP socket 设置一个短超时。
      // 即使暂时没有 UDP 包到达，ROS 也能及时处理退出和回调。
      fd_set read_set;
      FD_ZERO(&read_set);
      FD_SET(socket_fd_, &read_set);

      timeval timeout;
      timeout.tv_sec = 0;
      timeout.tv_usec = 100000;

      const int ready = select(socket_fd_ + 1, &read_set, nullptr, nullptr, &timeout);
      if (ready < 0)
      {
        if (errno == EINTR)
        {
          continue;
        }
        ROS_ERROR_STREAM("select() failed: " << strerror(errno));
        break;
      }

      if (ready == 0)
      {
        // 没有 UDP 包时也要 spinOnce()，这样 ROS 可以正常响应 Ctrl+C。
        ros::spinOnce();
        idle_rate.sleep();
        continue;
      }

      sockaddr_in remote_addr;
      socklen_t remote_len = sizeof(remote_addr);
      // recvfrom() 每次返回一个完整 UDP datagram。
      const ssize_t received = recvfrom(socket_fd_,
                                        buffer.data(),
                                        buffer.size(),
                                        0,
                                        reinterpret_cast<sockaddr*>(&remote_addr),
                                        &remote_len);
      if (received < 0)
      {
        ROS_WARN_STREAM("recvfrom() failed: " << strerror(errno));
        continue;
      }

      handleDatagram(buffer.data(), static_cast<std::size_t>(received), remote_addr);
      ros::spinOnce();
    }
  }

private:
  void validateParams() const
  {
    // 参数检查尽量早做，避免节点已经启动后才发现端口或 buffer 不合法。
    if (local_port_ <= 0 || local_port_ > 65535)
    {
      throw std::runtime_error("~local_port must be in 1..65535");
    }
    if (expected_remote_port_ > 65535)
    {
      throw std::runtime_error("~expected_remote_port must be -1 or in 0..65535");
    }
    if (recv_buffer_size_ < static_cast<int>(ego_trajectory_udp::ads_udp::kPayloadSize))
    {
      throw std::runtime_error("~recv_buffer_size must be at least 176");
    }
  }

  void openSocket()
  {
    // 绑定普通 UDP socket。和 pcap 离线解码不同，在线 socket 收到的是
    // 操作系统交给应用层的 UDP payload，不包含 Ethernet/IP/UDP 头。
    socket_fd_ = socket(AF_INET, SOCK_DGRAM, 0);
    if (socket_fd_ < 0)
    {
      throw std::runtime_error(std::string("socket() failed: ") + strerror(errno));
    }

    sockaddr_in local_addr;
    std::memset(&local_addr, 0, sizeof(local_addr));
    local_addr.sin_family = AF_INET;
    local_addr.sin_port = htons(static_cast<uint16_t>(local_port_));
    if (bind_ip_.empty() || bind_ip_ == "0.0.0.0")
    {
      // INADDR_ANY 表示本机所有网卡都接收。
      local_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    }
    else if (inet_pton(AF_INET, bind_ip_.c_str(), &local_addr.sin_addr) != 1)
    {
      throw std::runtime_error("invalid ~bind_ip: " + bind_ip_);
    }

    if (bind(socket_fd_, reinterpret_cast<sockaddr*>(&local_addr), sizeof(local_addr)) < 0)
    {
      // bind 失败常见原因：
      //   1. 端口已经被其他程序占用。
      //   2. bind_ip 不是本机已有 IP。
      //   3. 权限或网络配置问题。
      throw std::runtime_error(std::string("bind() failed: ") + strerror(errno));
    }
  }

  bool remoteMatches(const sockaddr_in& remote_addr) const
  {
    // 可选的来源过滤。expected_remote_ip 为空、expected_remote_port 为 -1 时接收所有来源。
    const std::string remote_ip = ipFromSockaddr(remote_addr);
    const int remote_port = ntohs(remote_addr.sin_port);
    if (!expected_remote_ip_.empty() && remote_ip != expected_remote_ip_)
    {
      return false;
    }
    if (expected_remote_port_ >= 0 && remote_port != expected_remote_port_)
    {
      return false;
    }
    return true;
  }

  std::string addTransportToJson(const ego_trajectory_udp::ads_udp::DecodedPacket& decoded,
                                 const sockaddr_in& remote_addr,
                                 std::size_t datagram_size) const
  {
    // 把协议字段和 UDP 来源信息一起打进 JSON，便于检查包是否来自预期 IP/端口。
    const std::string payload_json = ego_trajectory_udp::ads_udp::toJson(decoded);
    std::ostringstream oss;
    oss << "{"
        << "\"remote_ip\":\"" << ipFromSockaddr(remote_addr) << "\","
        << "\"remote_port\":" << ntohs(remote_addr.sin_port) << ","
        << "\"udp_payload_bytes\":" << datagram_size << ","
        << "\"ads_payload_offset\":" << (datagram_size - ego_trajectory_udp::ads_udp::kPayloadSize) << ","
        << "\"decoded\":" << payload_json << "}";
    return oss.str();
  }

  void handleDatagram(const uint8_t* data, std::size_t size, const sockaddr_in& remote_addr)
  {
    // 处理一包 UDP 数据。
    //
    // data/size 是操作系统收到的 UDP payload，不包含 IP/UDP 头。
    // 对标准 ADS UDP 包，size 应该正好是 176。
    // 如果 size 大于 176，本节点仍然取最后 176 字节解码，用于兼容前面被加了自定义头的情况。
    if (!remoteMatches(remote_addr))
    {
      return;
    }

    if (size < ego_trajectory_udp::ads_udp::kPayloadSize)
    {
      // 小于 176 字节一定不完整，无法按协议读取所有字段。
      ROS_WARN_THROTTLE(1.0,
                        "drop short UDP datagram from %s:%d, got %zu bytes, need at least %zu",
                        ipFromSockaddr(remote_addr).c_str(),
                        ntohs(remote_addr.sin_port),
                        size,
                        ego_trajectory_udp::ads_udp::kPayloadSize);
      return;
    }

    try
    {
      // 在线 UDP 通常正好收到 176 字节。
      // 如果发送端额外加了前缀，公共解码函数仍然只取最后 176 字节。
      const ego_trajectory_udp::ads_udp::DecodedPacket decoded =
          ego_trajectory_udp::ads_udp::decodePayload176(data, size);

      std_msgs::String decoded_msg;
      // 发布 JSON 字符串，方便 rostopic echo 直接查看字段。
      decoded_msg.data = addTransportToJson(decoded, remote_addr, size);
      decoded_pub_.publish(decoded_msg);

      if (publish_raw_payload_)
      {
        // 发布原始 176 字节，方便需要时和 Wireshark 十六进制数据逐字节对比。
        std_msgs::UInt8MultiArray raw_msg;
        raw_msg.data.assign(data + (size - ego_trajectory_udp::ads_udp::kPayloadSize), data + size);
        raw_pub_.publish(raw_msg);
      }

      ROS_INFO_THROTTLE(1.0,
                        "decoded ADS UDP %zu bytes from %s:%d lat=%.12f lon=%.12f speed=%.2fkm/h sender=%u msg=%u counter=%u",
                        size,
                        ipFromSockaddr(remote_addr).c_str(),
                        ntohs(remote_addr.sin_port),
                        decoded.latitude_deg,
                        decoded.longitude_deg,
                        decoded.speed_kmh,
                        static_cast<unsigned int>(decoded.sender),
                        static_cast<unsigned int>(decoded.message_id),
                        static_cast<unsigned int>(decoded.counter));
    }
    catch (const std::exception& e)
    {
      ROS_WARN_STREAM("failed to decode ADS UDP datagram: " << e.what());
    }
  }

  ros::NodeHandle nh_;
  ros::NodeHandle private_nh_;
  ros::Publisher decoded_pub_;
  ros::Publisher raw_pub_;

  std::string bind_ip_ = "0.0.0.0";
  int local_port_ = 31100;
  std::string expected_remote_ip_;
  int expected_remote_port_ = -1;
  bool publish_raw_payload_ = true;
  int recv_buffer_size_ = 4096;
  int socket_fd_ = -1;
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "ads_udp_decoder_node");
  try
  {
    AdsUdpDecoderNode node;
    node.run();
  }
  catch (const std::exception& e)
  {
    ROS_FATAL_STREAM("ads_udp_decoder_node failed: " << e.what());
    return 1;
  }
  return 0;
}
