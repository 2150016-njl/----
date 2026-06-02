// ==================== 引入头文件 ====================
// Linux 底层网络通信相关的库
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

// ROS 相关的核心库和消息类型
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Quaternion.h>
#include <nav_msgs/Path.h>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt8MultiArray.h>

// C++ 标准库
#include <algorithm>
#include <cerrno>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <limits>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

// 引入你自定义的通用数据结构（里面有 LatLon, TrajectoryPoint 等）
#include "trajectory_udp_sender/trajectory_common.hpp"

// ==================== 匿名命名空间 ====================
// 写在这里面的函数和变量属于“内部工具”，只能在这个 .cpp 文件内使用，防止名字冲突
namespace
{
using trajectory_udp_sender::Trajectory;
using trajectory_udp_sender::TrajectoryPoint;

// 定义数据包的“状态标志位”，告诉接收端这包数据处于什么位置
constexpr uint8_t kPacketFlagStart = 0x01;  // 轨迹的开头
constexpr uint8_t kPacketFlagMiddle = 0x02; // 轨迹的中间段
constexpr uint8_t kPacketFlagEnd = 0x04;    // 轨迹的结尾
constexpr uint8_t kPacketFlagSingle = 0x08; // 轨迹很短，这一包就包含了全部

// 工具函数：限制数值的上下限 (防越界)
template <typename T>
T clampValue(T value, T low, T high)
{
  return std::max(low, std::min(high, value));
}

// 核心工具函数：量化压缩（把带小数的浮点数转换成整数发出去，节省网络带宽）
// 比如 value 是 5.23，factor 是 0.01，算出来就是 523，转换成整数发送
int64_t quantize(double value, double factor, int64_t low, int64_t high)
{
  const int64_t raw = static_cast<int64_t>(std::llround(value / factor)); // 四舍五入取整
  return clampValue<int64_t>(raw, low, high); // 确保算出的整数没有超过变量能容纳的最大/最小值
}

// 根据当前发送到了第几个点，自动判断该给这包数据打什么标志位(Flag)
uint8_t packetFlag(size_t start_index, size_t total_points, size_t chunk_size, bool loop)
{
  if (total_points <= chunk_size)
  {
    return kPacketFlagSingle;
  }
  if (start_index == 0)
  {
    return kPacketFlagStart;
  }
  if (!loop && start_index + chunk_size >= total_points)
  {
    return kPacketFlagEnd;
  }
  if (loop && start_index + chunk_size >= total_points)
  {
    return kPacketFlagEnd;
  }
  return kPacketFlagMiddle;
}

// rviz 可视化工具函数：把平面的航向角 (Yaw) 转换成 3D 世界的四元数 (Quaternion)
geometry_msgs::Quaternion yawToQuaternion(double yaw_rad)
{
  geometry_msgs::Quaternion q;
  q.x = 0.0;
  q.y = 0.0;
  q.z = std::sin(yaw_rad * 0.5);
  q.w = std::cos(yaw_rad * 0.5);
  return q;
}

// rviz 可视化工具函数：把你们自定义的简单结构体，包装成带有坐标系(frame_id)和时间戳的 ROS 位姿消息
geometry_msgs::PoseStamped pointToPose(const TrajectoryPoint& point, const std::string& frame_id, const ros::Time& stamp)
{
  geometry_msgs::PoseStamped pose;
  pose.header.frame_id = frame_id;
  pose.header.stamp = stamp;
  pose.pose.position.x = point.x_m;
  pose.pose.position.y = point.y_m;
  pose.pose.position.z = 0.0; // 地面车辆没有 Z 轴高度
  // 你们协议里 heading 可能是以北方为 0 度，这里转换成 ROS 标准的数学坐标系弧度
  const double yaw = (90.0 - point.heading_deg) * trajectory_udp_sender::kPi / 180.0;
  pose.pose.orientation = yawToQuaternion(yaw);
  return pose;
}

// rviz 可视化工具函数：将一堆点组装成一条连贯的线 (nav_msgs::Path)
nav_msgs::Path makePathMessage(const std::vector<TrajectoryPoint>& points,
                               const std::string& frame_id,
                               const ros::Time& stamp)
{
  nav_msgs::Path path;
  path.header.frame_id = frame_id;
  path.header.stamp = stamp;
  path.poses.reserve(points.size());
  for (const auto& point : points)
  {
    path.poses.push_back(pointToPose(point, frame_id, stamp));
  }
  return path;
}

}  // namespace 结束

// ==================== 主类定义 ====================
class TrajectoryUdpNode
{
public:
  // 构造函数：节点启动时会首先执行这里的代码
  TrajectoryUdpNode() : private_nh_("~") // private_nh_("~") 是创建一个私有句柄。在 ROS 里，带 ~ 的句柄专门用来读取 .launch 文件里属于这个节点自己的 <param> 参数
  {
    // 从 launch 文件或参数服务器中读取参数，如果没提供，就使用第三个参数作为默认值
    private_nh_.param<std::string>("udp_ip", udp_ip_, "127.0.0.1");
    private_nh_.param<int>("udp_port", udp_port_, 5005);
    private_nh_.param<double>("rate_hz", rate_hz_, 10.0);
    private_nh_.param<int>("total_points", total_points_, 1000);
    private_nh_.param<int>("chunk_size", chunk_size_, 80);        // 每次给下位机发送多少个点 (预瞄点数)
    private_nh_.param<int>("publish_stride", publish_stride_, 80);
    private_nh_.param<double>("dt", dt_, 0.1);                    // 轨迹点之间的时间间隔
    private_nh_.param<double>("speed", speed_, 5.0);              // 车辆模拟行驶速度
    private_nh_.param<double>("origin_lat", origin_lat_, trajectory_udp_sender::kDefaultOriginLat);
    private_nh_.param<double>("origin_lon", origin_lon_, trajectory_udp_sender::kDefaultOriginLon);
    private_nh_.param<std::string>("trajectory", trajectory_name_, "straight");
    private_nh_.param<std::string>("frame_id", frame_id_, "map"); // ROS 里的世界坐标系名称
    private_nh_.param<std::string>("endian", endian_, "big");     // 字节序（大端还是小端）
    private_nh_.param<bool>("loop", loop_, false);                 // 跑完一圈是否循环
    private_nh_.param<bool>("include_link_header", include_link_header_, false);
    private_nh_.param<bool>("include_flags_in_udp", include_flags_in_udp_, false);
    private_nh_.param<int>("sender", sender_, 10);
    private_nh_.param<int>("version", version_, 0xF0);
    private_nh_.param<int>("message_id", message_id_, 4);
    private_nh_.param<double>("lane_change_offset", lane_change_offset_, 3.5);

    // 参数安全性检查（防止用户在 launch 里填负数等引发系统崩溃）
    if (total_points_ <= 0) { throw std::runtime_error("~total_points must be positive"); }
    if (chunk_size_ <= 0) { throw std::runtime_error("~chunk_size must be positive"); }
    if (publish_stride_ <= 0) { throw std::runtime_error("~publish_stride must be positive"); }
    if (endian_ != "big" && endian_ != "little") { throw std::runtime_error("~endian must be 'big' or 'little'"); }
    if (udp_port_ <= 0 || udp_port_ > 65535) { throw std::runtime_error("~udp_port must be in 1..65535"); }

    // 调用共通库函数，生成整条测试路（全局轨迹）的所有坐标点，存放在内存里
    trajectory_ = trajectory_udp_sender::makeGlobalTrajectory(
        trajectory_name_, total_points_, speed_, dt_, origin_lat_, origin_lon_, lane_change_offset_);

    // 声明发布者：注册 ROS 话题，告诉别的节点我准备往这些话题发数据了
    payload_pub_ = nh_.advertise<std_msgs::UInt8MultiArray>("trajectory_udp_payload", 10); // 发送纯二进制数组供调试
    info_pub_ = nh_.advertise<std_msgs::String>("trajectory_packet_info", 10);             // 发送 JSON 格式的状态信息
    global_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_global_path", 1, true);   // 发送给 RViz 的全局蓝线
    local_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_local_path", 10);          // 发送给 RViz 的局部红线

    openSocket();         // 初始化底层 UDP 网络
    publishGlobalPath();  // 把全局路径立刻发出去

    // 在终端打印初始化成功的信息
    ROS_INFO("selected trajectory=%s id=%u total_points=%zu chunk_size=%d publish_stride=%d fixed_chunk=true",
             trajectory_.name.c_str(),
             static_cast<unsigned int>(trajectory_.id),
             trajectory_.points.size(),
             chunk_size_,
             publish_stride_);
  }

  // 析构函数：节点关闭时执行，释放网络资源
  ~TrajectoryUdpNode()
  {
    if (socket_fd_ >= 0)
    {
      close(socket_fd_); // 断开并销毁 Socket
    }
  }

  // 节点的核心“心脏”，一直循环运行
  void run()
  {
    ros::Rate rate(rate_hz_); // 节拍器：控制循环频率（如 10Hz，即每秒 10 次）
    size_t start_index = 0;   // 当前车辆走到了轨迹的哪个点的索引
    uint32_t packet_index = 0;// 记录当前发出的是第几个包

    // --- 新增：物理仿真需要的变量 ---
    double sim_distance = 0.0; 
    double loop_dt = 1.0 / rate_hz_; // 根据设定的发包频率计算每次循环的时间间隔 (如 1.0 / 10.0 = 0.1秒)
    
    // 计算全局轨迹中，点与点之间的平均距离（单位：米），用于把行驶距离换算成索引
    double total_length = trajectory_udp_sender::polylineLength(trajectory_.points);
    double step_size = 1.0; 
    if (trajectory_.points.size() > 1) {
        step_size = total_length / (trajectory_.points.size() - 1);
    }
    // --------------------------------

    // 死循环：只要没有被 Ctrl+C 终止，就一直跑
    while (ros::ok())
    {
      if (!loop_ && start_index >= trajectory_.points.size())
      {
        break; // 如果不循环且到达终点，跳出循环，程序结束
      }

      // 截取：从总轨迹的 start_index 处往后截取 80 个点（组成当前要发送的局部块 chunk）
      const auto chunk = makeLocalChunk(start_index); 
      const int valid_point_num = validPointCount(start_index);
      // 打标签：判断这包数据是开头还是结尾
      const uint8_t flag = packetFlag(start_index, trajectory_.points.size(), static_cast<size_t>(chunk_size_), loop_); 
      // 打包：把这 80 个点按照协议规则，压缩、转换成要通过网线发送的纯二进制字节流
      const auto payload = packPacket(chunk, trajectory_.id, flag, static_cast<uint16_t>(packet_index & 0xFFFF)); 
      const auto stamp = ros::Time::now(); // 获取当前的 ROS 系统时间

      // 把截取出的 80 个点转成 Path 消息，发给 ROS 的 RViz 去画那条局部的线
      local_path_pub_.publish(makePathMessage(chunk, frame_id_, stamp)); 
      
      // 调用底层网络函数把二进制包真实地通过 UDP 发送出去，同时发布供调试的 JSON
      publishAndSend(payload,
                     buildInfoJson(flag,
                                   packet_index,
                                   start_index,
                                   chunk.size(),
                                   valid_point_num,
                                   payload.size())); 

      // 限制打印频率：每隔 1 秒才在终端打印一次，防止刷屏太快看不清
      ROS_INFO_THROTTLE(1.0,
                        "sent %s packet_index=%u start=%zu flag=0x%02X counter=%u points=%zu valid=%d bytes=%zu",
                        trajectory_.name.c_str(),
                        packet_index,
                        start_index,
                        static_cast<unsigned int>(flag),
                        static_cast<unsigned int>(counter_),
                        chunk.size(),
                        valid_point_num,
                        payload.size());

      counter_ = static_cast<uint8_t>((counter_ + 1) & 0xFF); // 报文计数器，0~255循环
      ++packet_index;

      // =========== 修改核心：基于真实车速更新索引 (模拟车辆真实往前开) ===========
      if (start_index < trajectory_.points.size() - 1)
      {
        // 1. 每过一个循环，车辆根据设定的 speed_ 往前行驶一段真实物理距离 (距离 = 速度 * 时间)
        sim_distance += speed_ * loop_dt;
        
        // 2. 根据累积行驶的距离，算出当前所在的索引 (不使用固定的 publish_stride_ 了)
        start_index = static_cast<size_t>(sim_distance / step_size);

        // 3. 越界保护：防止索引超出总长度导致程序崩溃
        if (start_index >= trajectory_.points.size()) {
          start_index = trajectory_.points.size() - 1;
        }
      }
      else 
      {
        // 到达终点后的逻辑
        if (loop_) {
            // 如果开启了循环，清空行驶距离，将车“瞬移”回起点
            sim_distance = 0.0;
            start_index = 0;
        } else {
            // 如果不循环，就停在终点，不再发包，准备退出
            break; 
        }
      }
      // =======================================================

      ros::spinOnce(); // 让 ROS 处理系统背后的事件（比如有没有人订阅这个话题）
      rate.sleep();    // 挂起休眠，直到凑够 1/rate_hz_ 的时间（如 0.1秒），再进入下一次循环
    }
  }

private:
  // 底层网络：在操作系统里申请并打开一个 UDP 插座
  void openSocket()
  {
    socket_fd_ = socket(AF_INET, SOCK_DGRAM, 0); // AF_INET=IPv4, SOCK_DGRAM=UDP流
    if (socket_fd_ < 0)
    {
      throw std::runtime_error(std::string("socket() failed: ") + strerror(errno));
    }

    std::memset(&target_addr_, 0, sizeof(target_addr_));
    target_addr_.sin_family = AF_INET;
    target_addr_.sin_port = htons(static_cast<uint16_t>(udp_port_)); // htons: 把人类可读的端口数字转为网络字节序
    // inet_pton: 把诸如 "192.168.1.100" 的字符串 IP 地址，转成计算机网卡认识的二进制
    if (inet_pton(AF_INET, udp_ip_.c_str(), &target_addr_.sin_addr) != 1) 
    {
      throw std::runtime_error("invalid ~udp_ip: " + udp_ip_);
    }
  }

  void publishGlobalPath()
  {
    global_path_pub_.publish(makePathMessage(trajectory_.points, frame_id_, ros::Time::now()));
  }

  // 从整个轨迹中，截取从 start_index 开始的一小段（比如 80 个点）
  std::vector<TrajectoryPoint> makeLocalChunk(size_t start_index) const
  {
    std::vector<TrajectoryPoint> chunk;
    chunk.reserve(static_cast<size_t>(chunk_size_));
    const size_t total = trajectory_.points.size();
    for (int i = 0; i < chunk_size_; ++i)
    {
      const size_t idx = start_index + static_cast<size_t>(i);
      if (idx < total)
      {
        chunk.push_back(trajectory_.points[idx]);
      }
      else if (loop_ && total > 0) // 如果到达末尾且需要循环，就把开头的点接在后面
      {
        chunk.push_back(trajectory_.points[idx % total]);
      }
      else // 如果不循环，不够的点就一直用最后一个终点来“凑数”
      {
        chunk.push_back(trajectory_.points.back());
      }
    }
    return chunk;
  }

  // 计算这截取的 80 个点里，有多少个是真实轨迹点（如果是末尾凑数的就不算）
  int validPointCount(size_t start_index) const
  {
    if (loop_) { return chunk_size_; }
    if (start_index >= trajectory_.points.size()) { return 0; }
    return static_cast<int>(std::min(static_cast<size_t>(chunk_size_), trajectory_.points.size() - start_index));
  }

  // === 以下四个 push 函数是底层通信最关键的【字节序(Endian)】转换工具 ===
  // 网络通信一般用大端（Big Endian：高位字节排在前面），而普通电脑通常是小端

  void pushU8(std::vector<uint8_t>& buffer, uint8_t value) const
  {
    buffer.push_back(value); // 单字节不需要转换，直接塞入
  }

  void pushU16(std::vector<uint8_t>& buffer, uint16_t value) const
  {
    if (endian_ == "big")
    {
      buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF)); // 先塞入高 8 位
      buffer.push_back(static_cast<uint8_t>(value & 0xFF));        // 再塞入低 8 位
    }
    else
    {
      buffer.push_back(static_cast<uint8_t>(value & 0xFF));        // 小端反之
      buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
    }
  }

  void pushI16(std::vector<uint8_t>& buffer, int16_t value) const
  {
    pushU16(buffer, static_cast<uint16_t>(value)); // 有符号转无符号后处理
  }

  void pushU32(std::vector<uint8_t>& buffer, uint32_t value) const
  {
    if (endian_ == "big") // 32位数字有 4 个字节，依次右移后塞入
    {
      buffer.push_back(static_cast<uint8_t>((value >> 24) & 0xFF));
      buffer.push_back(static_cast<uint8_t>((value >> 16) & 0xFF));
      buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
      buffer.push_back(static_cast<uint8_t>(value & 0xFF));
    }
    else
    {
      buffer.push_back(static_cast<uint8_t>(value & 0xFF));
      buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
      buffer.push_back(static_cast<uint8_t>((value >> 16) & 0xFF));
      buffer.push_back(static_cast<uint8_t>((value >> 24) & 0xFF));
    }
  }

  void pushI32(std::vector<uint8_t>& buffer, int32_t value) const
  {
    pushU32(buffer, static_cast<uint32_t>(value));
  }

  // 按照 Excel 协议格式，把一个单一的轨迹点压扁成 16 个字节的二进制流
  void packPoint(std::vector<uint8_t>& buffer, const TrajectoryPoint& point) const
  {
    // 【对应 Excel 行 9: Relative X】 Format: int32 (4字节). Factor: 0.001. 
    pushI32(buffer, static_cast<int32_t>(quantize(point.x_m, 1e-3, std::numeric_limits<int32_t>::min(), std::numeric_limits<int32_t>::max())));
    
    // 【对应 Excel 行 10: Relative Y】 Format: int32 (4字节). Factor: 0.001. 
    pushI32(buffer, static_cast<int32_t>(quantize(point.y_m, 1e-3, std::numeric_limits<int32_t>::min(), std::numeric_limits<int32_t>::max())));
    
    // 【对应 Excel 行 11: Heading】 Format: uint16 (2字节). Factor: 0.01. 
    pushU16(buffer, static_cast<uint16_t>(quantize(point.heading_deg, 0.01, 0, std::numeric_limits<uint16_t>::max())));
    
    // 【对应 Excel 行 12: Vx (纵向速度)】 Format: int16 (2字节). Factor: 0.01. 
    pushI16(buffer, static_cast<int16_t>(quantize(point.vx_mps, 0.01, std::numeric_limits<int16_t>::min(), std::numeric_limits<int16_t>::max())));
    
    // 【对应 Excel 行 13: ax (纵向加速度)】 Format: int16 (2字节). Factor: 0.01. 
    pushI16(buffer, static_cast<int16_t>(quantize(point.ax_mps2, 0.01, std::numeric_limits<int16_t>::min(), std::numeric_limits<int16_t>::max())));
    
    // 【对应 Excel 行 14: Trajectory time】 Format: uint16 (2字节). Factor: 0.01. 
    pushU16(buffer, static_cast<uint16_t>(quantize(point.time_s, 0.01, 0, std::numeric_limits<uint16_t>::max())));
  }

  // 组装完整的 UDP 数据包（包含包头 + 80个数据点）
  std::vector<uint8_t> packPacket(const std::vector<TrajectoryPoint>& chunk,
                                  uint8_t trajectory_id,
                                  uint8_t flag,
                                  uint16_t packet_index) const
  {
    std::vector<uint8_t> payload;
    // 计算包大小并预分配内存：8字节基础包头 + (每个点16字节 * 点数量)
    const size_t app_payload_size = 8 + (include_flags_in_udp_ ? 4 : 0) + 16 * chunk.size();
    payload.reserve((include_link_header_ ? 42 : 0) + app_payload_size);

    // 如果接收端需要网络协议层头的占位符，填充42个0
    if (include_link_header_)
    {
      payload.insert(payload.end(), 42, 0x00);
    }

    // --- 组装包头部分 ---
    pushU16(payload, 0x7E7E);                                       // Excel 约定: Header (2字节)
    pushU8(payload, static_cast<uint8_t>(sender_ & 0xFF));          // Excel 约定: Sender (1字节)
    pushU8(payload, static_cast<uint8_t>(version_ & 0xFF));         // Excel 约定: Version (1字节)
    pushU8(payload, static_cast<uint8_t>(message_id_ & 0xFF));      // Excel 约定: Message ID (1字节)
    pushU8(payload, counter_);                                      // Excel 约定: Counter (1字节)
    pushU16(payload, static_cast<uint16_t>(chunk.size()));          // Excel 约定: point_num (2字节)

    // (自定义的扩展字段，默认是 false 不生效，以严格遵循 Excel 协议)
    if (include_flags_in_udp_)
    {
      pushU8(payload, trajectory_id);
      pushU8(payload, flag);
      pushU16(payload, packet_index);
    }

    // --- 组装包体（点）部分 ---
    // 循环遍历传入的 chunk(即那80个点)，逐个压扁后塞入
    for (const auto& point : chunk)
    {
      packPoint(payload, point);
    }
    return payload; // 返回组装好的长条二进制字节流
  }

  // 执行最终发送的核心动作
  void publishAndSend(const std::vector<uint8_t>& payload, const std::string& info_json)
  {
    // C语言底层系统调用：sendto，直接命令网卡把 payload 发射向 target_addr_（目标IP和端口）
    const ssize_t sent =
        sendto(socket_fd_, payload.data(), payload.size(), 0, reinterpret_cast<sockaddr*>(&target_addr_),
               sizeof(target_addr_));
    if (sent < 0)
    {
      ROS_ERROR_STREAM("sendto() failed: " << strerror(errno)); // 如果发包失败(比如网卡崩了)，打印错误
    }

    // 同步发送到 ROS 话题里供终端调试查看
    std_msgs::UInt8MultiArray payload_msg;
    payload_msg.data = payload;
    payload_pub_.publish(payload_msg);

    std_msgs::String info_msg;
    info_msg.data = info_json;
    info_pub_.publish(info_msg);
  }

  // 拼接 JSON 字符串的辅助函数（仅仅是为了让你在终端里能容易地看到当前的发送状态）
  std::string buildInfoJson(uint8_t flag,
                            uint32_t packet_index,
                            size_t point_start,
                            size_t point_num,
                            int valid_point_num,
                            size_t payload_bytes) const
  {
    std::ostringstream oss;
    oss << "{"
        << "\"counter\":" << static_cast<int>(counter_) << ","
        << "\"endian\":\"" << endian_ << "\","
        << "\"fixed_chunk\":true,"
        << "\"include_flags_in_udp\":" << (include_flags_in_udp_ ? "true" : "false") << ","
        << "\"origin_lat\":" << origin_lat_ << ","
        << "\"origin_lon\":" << origin_lon_ << ","
        << "\"packet_flag\":" << static_cast<int>(flag) << ","
        << "\"packet_index\":" << packet_index << ","
        << "\"payload_bytes\":" << payload_bytes << ","
        << "\"point_num\":" << point_num << ","
        << "\"point_start\":" << point_start << ","
        << "\"publish_stride\":" << publish_stride_ << ","
        << "\"total_points\":" << trajectory_.points.size() << ","
        << "\"trajectory\":\"" << trajectory_.name << "\","
        << "\"trajectory_id\":" << static_cast<int>(trajectory_.id) << ","
        << "\"valid_point_num\":" << valid_point_num << "}";
    return oss.str();
  }

  // 以下是所有的类成员变量，主要用于存储读取进来的参数和内部状态
  ros::NodeHandle nh_;             // 公共节点句柄
  ros::NodeHandle private_nh_;     // 私有节点句柄
  ros::Publisher payload_pub_;
  ros::Publisher info_pub_;
  ros::Publisher global_path_pub_;
  ros::Publisher local_path_pub_;

  std::string udp_ip_;
  int udp_port_ = 5005;
  double rate_hz_ = 10.0;
  int total_points_ = 1000;
  int chunk_size_ = 80;
  int publish_stride_ = 80;
  double dt_ = 0.1;
  double speed_ = 5.0;
  double origin_lat_ = trajectory_udp_sender::kDefaultOriginLat;
  double origin_lon_ = trajectory_udp_sender::kDefaultOriginLon;
  std::string trajectory_name_ = "straight";
  std::string frame_id_ = "map";
  std::string endian_ = "big";
  bool loop_ = true;
  bool include_link_header_ = false;
  bool include_flags_in_udp_ = false;
  int sender_ = 10;
  int version_ = 0xF0;
  int message_id_ = 4;
  double lane_change_offset_ = 3.5;
  uint8_t counter_ = 0;
  Trajectory trajectory_; // 内存里保存的全局大轨迹

  int socket_fd_ = -1;    // 系统的 socket 标识符
  sockaddr_in target_addr_; // 目标 IP 的底层结构体
};

// ==================== C++ 程序的入口点 ====================
int main(int argc, char** argv)
{
  // 初始化 ROS 节点，将其命名为 trajectory_udp_node
  ros::init(argc, argv, "trajectory_udp_node");
  try
  {
    // 实例化刚刚上面写好的整个发包系统类
    TrajectoryUdpNode node;
    // 启动它的主循环！引擎点火！
    node.run();
  }
  catch (const std::exception& e)
  {
    // 如果发生了崩溃错误（比如 IP 地址乱写导致 socket 初始化失败），抓取错误并在终端打印红色高危信息
    ROS_FATAL_STREAM("trajectory_udp_node failed: " << e.what());
    return 1;
  }
  return 0; // 正常退出
}