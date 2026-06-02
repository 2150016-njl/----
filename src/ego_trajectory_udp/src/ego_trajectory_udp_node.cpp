#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

#include <nav_msgs/Path.h>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt8MultiArray.h>

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

#include "ego_trajectory_udp/ego_trajectory_common.hpp"

namespace
{
constexpr uint8_t kPacketFlagSingle = 0x08;

template <typename T>
T clampValue(T value, T low, T high)
{
  return std::max(low, std::min(high, value));
}

int64_t quantize(double value, double factor, int64_t low, int64_t high)
{
  const int64_t raw = static_cast<int64_t>(std::llround(value / factor));
  return clampValue<int64_t>(raw, low, high);
}
}  // namespace

class EgoTrajectoryUdpNode
{
public:
  EgoTrajectoryUdpNode() : private_nh_("~")
  {
    private_nh_.param<std::string>("trajectory", trajectory_name_, "straight");
    private_nh_.param<std::string>("frame_id", frame_id_, "map");
    private_nh_.param<std::string>("udp_ip", udp_ip_, "127.0.0.1");
    private_nh_.param<int>("udp_port", udp_port_, 5005);
    private_nh_.param<double>("rate_hz", rate_hz_, 10.0);
    private_nh_.param<int>("point_num", point_num_, 80);
    private_nh_.param<double>("trajectory_length", trajectory_length_, 100.0);
    private_nh_.param<double>("ego_x", ego_x_, 0.0);
    private_nh_.param<double>("ego_y", ego_y_, 0.0);
    private_nh_.param<double>("ego_heading", ego_heading_, 0.0);
    private_nh_.param<double>("lane_width", lane_width_, 3.5);
    private_nh_.param<double>("turn_radius", turn_radius_, 12.0);
    private_nh_.param<double>("speed", speed_, 3.0);
    private_nh_.param<double>("accel_time", accel_time_, 2.0);
    private_nh_.param<double>("dt", dt_, 0.1);
    private_nh_.param<int>("local_update_mode", local_update_mode_, 1);
    private_nh_.param<std::string>("endian", endian_, "big");
    private_nh_.param<bool>("include_flags_in_udp", include_flags_in_udp_, false);
    private_nh_.param<bool>("include_link_header", include_link_header_, false);
    private_nh_.param<int>("sender", sender_, 10);
    private_nh_.param<int>("version", version_, 0xF0);
    private_nh_.param<int>("message_id", message_id_, 4);

    validateParams();

    const int global_point_num =
        std::max(point_num_, static_cast<int>(std::ceil(trajectory_length_ / std::max(speed_ * dt_, 0.01))) + 1);
    trajectory_ = ego_trajectory_udp::makeTrajectory(trajectory_name_,
                                                     ego_x_,
                                                     ego_y_,
                                                     ego_heading_,
                                                     global_point_num,
                                                     trajectory_length_,
                                                     lane_width_,
                                                     turn_radius_,
                                                     speed_,
                                                     dt_,
                                                     accel_time_);

    sim_x_ = ego_x_;
    sim_y_ = ego_y_;
    sim_heading_ = ego_heading_;
    sim_speed_ = 0.0;

    payload_pub_ = nh_.advertise<std_msgs::UInt8MultiArray>("trajectory_udp_payload", 10);
    info_pub_ = nh_.advertise<std_msgs::String>("trajectory_packet_info", 10);
    global_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_global_path", 1, true);
    local_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_local_path", 10);

    openSocket();
    publishGlobalPath();

    ROS_INFO("ego trajectory=%s id=%u global_points=%zu local_points=%d length=%.2f speed=%.2f accel_time=%.2f mode=%d",
             trajectory_.name.c_str(),
             static_cast<unsigned int>(trajectory_.id),
             trajectory_.points.size(),
             point_num_,
             trajectory_length_,
             speed_,
             accel_time_,
             local_update_mode_);
  }

  ~EgoTrajectoryUdpNode()
  {
    if (socket_fd_ >= 0)
    {
      close(socket_fd_);
    }
  }

  void run()
  {
    ros::Rate rate(rate_hz_);
    const double update_dt = 1.0 / rate_hz_;
    uint32_t packet_index = 0;

    while (ros::ok())
    {
      const size_t start_index = local_update_mode_ == 1 ? nearestPathIndex(sim_x_, sim_y_) : 0;
      const auto chunk = makeLocalChunk(start_index);
      const ros::Time stamp = ros::Time::now();
      const auto payload = packPacket(chunk, static_cast<uint16_t>(packet_index & 0xFFFF));

      local_path_pub_.publish(ego_trajectory_udp::makePath(chunk, frame_id_, stamp));
      publishAndSend(payload, buildInfoJson(packet_index, payload.size(), start_index));

      ROS_INFO_THROTTLE(1.0,
                        "sent %s mode=%d start=%zu points=%zu bytes=%zu sim=(%.2f, %.2f, %.1fdeg, %.2fmps)",
                        trajectory_.name.c_str(),
                        local_update_mode_,
                        start_index,
                        chunk.size(),
                        payload.size(),
                        sim_x_,
                        sim_y_,
                        sim_heading_,
                        sim_speed_);

      if (local_update_mode_ == 1)
      {
        updateKinematicState(update_dt);
      }

      counter_ = static_cast<uint8_t>((counter_ + 1) & 0xFF);
      ++packet_index;
      ros::spinOnce();
      rate.sleep();
    }
  }

private:
  void validateParams() const
  {
    if (point_num_ <= 0)
    {
      throw std::runtime_error("~point_num must be positive");
    }
    if (point_num_ != 80)
    {
      ROS_WARN("point_num=%d, expected 80 for chassis fixed trajectory array", point_num_);
    }
    if (rate_hz_ <= 0.0)
    {
      throw std::runtime_error("~rate_hz must be positive");
    }
    if (trajectory_length_ <= 0.0)
    {
      throw std::runtime_error("~trajectory_length must be positive");
    }
    if (udp_port_ <= 0 || udp_port_ > 65535)
    {
      throw std::runtime_error("~udp_port must be in 1..65535");
    }
    if (endian_ != "big" && endian_ != "little")
    {
      throw std::runtime_error("~endian must be 'big' or 'little'");
    }
    if (local_update_mode_ != 1 && local_update_mode_ != 2)
    {
      throw std::runtime_error("~local_update_mode must be 1 or 2");
    }
  }

  void openSocket()
  {
    socket_fd_ = socket(AF_INET, SOCK_DGRAM, 0);
    if (socket_fd_ < 0)
    {
      throw std::runtime_error(std::string("socket() failed: ") + strerror(errno));
    }

    std::memset(&target_addr_, 0, sizeof(target_addr_));
    target_addr_.sin_family = AF_INET;
    target_addr_.sin_port = htons(static_cast<uint16_t>(udp_port_));
    if (inet_pton(AF_INET, udp_ip_.c_str(), &target_addr_.sin_addr) != 1)
    {
      throw std::runtime_error("invalid ~udp_ip: " + udp_ip_);
    }
  }

  void publishGlobalPath()
  {
    global_path_pub_.publish(ego_trajectory_udp::makePath(trajectory_.points, frame_id_, ros::Time::now()));
  }

  std::vector<ego_trajectory_udp::TrajectoryPoint> makeLocalChunk(size_t start_index) const
  {
    std::vector<ego_trajectory_udp::TrajectoryPoint> chunk;
    chunk.reserve(static_cast<size_t>(point_num_));
    for (int i = 0; i < point_num_; ++i)
    {
      const size_t idx = start_index + static_cast<size_t>(i);
      if (idx < trajectory_.points.size())
      {
        chunk.push_back(trajectory_.points[idx]);
      }
      else
      {
        chunk.push_back(trajectory_.points.back());
      }
    }
    return chunk;
  }

  size_t nearestPathIndex(double x, double y) const
  {
    if (trajectory_.points.size() < 2)
    {
      return 0;
    }

    double best_dist2 = std::numeric_limits<double>::max();
    size_t best_index = 0;
    for (size_t i = 0; i + 1 < trajectory_.points.size(); ++i)
    {
      const auto& a = trajectory_.points[i];
      const auto& b = trajectory_.points[i + 1];
      const double vx = b.x - a.x;
      const double vy = b.y - a.y;
      const double wx = x - a.x;
      const double wy = y - a.y;
      const double len2 = vx * vx + vy * vy;
      const double t = len2 <= 1e-9 ? 0.0 : std::max(0.0, std::min(1.0, (wx * vx + wy * vy) / len2));
      const double px = a.x + t * vx;
      const double py = a.y + t * vy;
      const double dx = x - px;
      const double dy = y - py;
      const double dist2 = dx * dx + dy * dy;
      if (dist2 < best_dist2)
      {
        best_dist2 = dist2;
        best_index = t > 0.5 ? i + 1 : i;
      }
    }
    return best_index;
  }

  void updateKinematicState(double update_dt)
  {
    const size_t idx = nearestPathIndex(sim_x_, sim_y_);
    sim_heading_ = trajectory_.points[idx].heading_deg;

    if (accel_time_ > 1e-6)
    {
      sim_speed_ = std::min(speed_, sim_speed_ + speed_ / accel_time_ * update_dt);
    }
    else
    {
      sim_speed_ = speed_;
    }

    const double yaw = sim_heading_ * ego_trajectory_udp::kPi / 180.0;
    sim_x_ += sim_speed_ * std::cos(yaw) * update_dt;
    sim_y_ += sim_speed_ * std::sin(yaw) * update_dt;
  }

  void pushU8(std::vector<uint8_t>& buffer, uint8_t value) const
  {
    buffer.push_back(value);
  }

  void pushU16(std::vector<uint8_t>& buffer, uint16_t value) const
  {
    if (endian_ == "big")
    {
      buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
      buffer.push_back(static_cast<uint8_t>(value & 0xFF));
    }
    else
    {
      buffer.push_back(static_cast<uint8_t>(value & 0xFF));
      buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
    }
  }

  void pushI16(std::vector<uint8_t>& buffer, int16_t value) const
  {
    pushU16(buffer, static_cast<uint16_t>(value));
  }

  void pushU32(std::vector<uint8_t>& buffer, uint32_t value) const
  {
    if (endian_ == "big")
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

  void packPoint(std::vector<uint8_t>& buffer, const ego_trajectory_udp::TrajectoryPoint& point) const
  {
    pushI32(buffer, static_cast<int32_t>(quantize(point.x, 1e-3, std::numeric_limits<int32_t>::min(),
                                                  std::numeric_limits<int32_t>::max())));
    pushI32(buffer, static_cast<int32_t>(quantize(point.y, 1e-3, std::numeric_limits<int32_t>::min(),
                                                  std::numeric_limits<int32_t>::max())));
    pushU16(buffer, static_cast<uint16_t>(quantize(point.heading_deg, 0.01, 0,
                                                   std::numeric_limits<uint16_t>::max())));
    pushI16(buffer, static_cast<int16_t>(quantize(point.vx, 0.01, std::numeric_limits<int16_t>::min(),
                                                  std::numeric_limits<int16_t>::max())));
    pushI16(buffer, static_cast<int16_t>(quantize(point.ax, 0.01, std::numeric_limits<int16_t>::min(),
                                                  std::numeric_limits<int16_t>::max())));
    pushU16(buffer, static_cast<uint16_t>(quantize(point.time_s, 0.01, 0,
                                                   std::numeric_limits<uint16_t>::max())));
  }

  std::vector<uint8_t> packPacket(const std::vector<ego_trajectory_udp::TrajectoryPoint>& points,
                                  uint16_t packet_index) const
  {
    const size_t app_payload_size = 8 + (include_flags_in_udp_ ? 4 : 0) + 16 * points.size();
    std::vector<uint8_t> payload;
    payload.reserve((include_link_header_ ? 42 : 0) + app_payload_size);

    if (include_link_header_)
    {
      payload.insert(payload.end(), 42, 0x00);
    }

    pushU16(payload, 0x7E7E);
    pushU8(payload, static_cast<uint8_t>(sender_ & 0xFF));
    pushU8(payload, static_cast<uint8_t>(version_ & 0xFF));
    pushU8(payload, static_cast<uint8_t>(message_id_ & 0xFF));
    pushU8(payload, counter_);
    pushU16(payload, static_cast<uint16_t>(points.size()));

    if (include_flags_in_udp_)
    {
      pushU8(payload, trajectory_.id);
      pushU8(payload, kPacketFlagSingle);
      pushU16(payload, packet_index);
    }

    for (const auto& point : points)
    {
      packPoint(payload, point);
    }
    return payload;
  }

  void publishAndSend(const std::vector<uint8_t>& payload, const std::string& info_json)
  {
    const ssize_t sent = sendto(socket_fd_,
                                payload.data(),
                                payload.size(),
                                0,
                                reinterpret_cast<sockaddr*>(&target_addr_),
                                sizeof(target_addr_));
    if (sent < 0)
    {
      ROS_ERROR_STREAM("sendto() failed: " << strerror(errno));
    }

    std_msgs::UInt8MultiArray payload_msg;
    payload_msg.data = payload;
    payload_pub_.publish(payload_msg);

    std_msgs::String info_msg;
    info_msg.data = info_json;
    info_pub_.publish(info_msg);
  }

  std::string buildInfoJson(uint32_t packet_index, size_t payload_bytes, size_t start_index) const
  {
    std::ostringstream oss;
    oss << "{"
        << "\"counter\":" << static_cast<int>(counter_) << ","
        << "\"fixed_point_num\":" << point_num_ << ","
        << "\"include_flags_in_udp\":" << (include_flags_in_udp_ ? "true" : "false") << ","
        << "\"local_start_index\":" << start_index << ","
        << "\"local_update_mode\":" << local_update_mode_ << ","
        << "\"packet_flag\":" << static_cast<int>(kPacketFlagSingle) << ","
        << "\"packet_index\":" << packet_index << ","
        << "\"payload_bytes\":" << payload_bytes << ","
        << "\"sim_heading\":" << sim_heading_ << ","
        << "\"sim_speed\":" << sim_speed_ << ","
        << "\"sim_x\":" << sim_x_ << ","
        << "\"sim_y\":" << sim_y_ << ","
        << "\"trajectory\":\"" << trajectory_.name << "\","
        << "\"trajectory_id\":" << static_cast<int>(trajectory_.id) << "}";
    return oss.str();
  }

  ros::NodeHandle nh_;
  ros::NodeHandle private_nh_;
  ros::Publisher payload_pub_;
  ros::Publisher info_pub_;
  ros::Publisher global_path_pub_;
  ros::Publisher local_path_pub_;

  std::string trajectory_name_ = "straight";
  std::string frame_id_ = "map";
  std::string udp_ip_ = "127.0.0.1";
  int udp_port_ = 5005;
  double rate_hz_ = 10.0;
  int point_num_ = 80;
  double trajectory_length_ = 100.0;
  double ego_x_ = 0.0;
  double ego_y_ = 0.0;
  double ego_heading_ = 0.0;
  double lane_width_ = 3.5;
  double turn_radius_ = 12.0;
  double speed_ = 3.0;
  double accel_time_ = 2.0;
  double dt_ = 0.1;
  int local_update_mode_ = 1;
  std::string endian_ = "big";
  bool include_flags_in_udp_ = false;
  bool include_link_header_ = false;
  int sender_ = 10;
  int version_ = 0xF0;
  int message_id_ = 4;
  uint8_t counter_ = 0;
  ego_trajectory_udp::Trajectory trajectory_;
  double sim_x_ = 0.0;
  double sim_y_ = 0.0;
  double sim_heading_ = 0.0;
  double sim_speed_ = 0.0;

  int socket_fd_ = -1;
  sockaddr_in target_addr_;
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "ego_trajectory_udp_node");
  try
  {
    EgoTrajectoryUdpNode node;
    node.run();
  }
  catch (const std::exception& e)
  {
    ROS_FATAL_STREAM("ego_trajectory_udp_node failed: " << e.what());
    return 1;
  }
  return 0;
}
