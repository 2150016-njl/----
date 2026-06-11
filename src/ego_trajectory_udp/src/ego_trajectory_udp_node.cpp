#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <fstream>

#include <nav_msgs/Odometry.h>
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

double yawRadFromQuaternion(const geometry_msgs::Quaternion& q)
{
  const double siny_cosp = 2.0 * (q.w * q.z + q.x * q.y);
  const double cosy_cosp = 1.0 - 2.0 * (q.y * q.y + q.z * q.z);
  return std::atan2(siny_cosp, cosy_cosp);
}

double protocolHeadingFromQuaternion(const geometry_msgs::Quaternion& q)
{
  return ego_trajectory_udp::normalizeHeadingDeg(90.0 - yawRadFromQuaternion(q) * 180.0 / ego_trajectory_udp::kPi);
}

struct PathProjection
{
  size_t index = 0;
  double s_m = 0.0;
};
}  // namespace

class EgoTrajectoryUdpNode
{
public:
  EgoTrajectoryUdpNode() : private_nh_("~")
  {
    private_nh_.param<std::string>("trajectory", trajectory_name_, "straight");
    private_nh_.param<std::string>("frame_id", frame_id_, "map");
    private_nh_.param<std::string>("udp_ip", udp_ip_, "192.168.88.100");
    private_nh_.param<int>("udp_port", udp_port_, 31000);
    private_nh_.param<int>("local_port", local_port_, 31100);
    private_nh_.param<double>("rate_hz", rate_hz_, 10.0);
    private_nh_.param<int>("point_num", point_num_, 50);
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
    private_nh_.param<std::string>("endian", endian_, "little");
    private_nh_.param<bool>("include_flags_in_udp", include_flags_in_udp_, false);
    private_nh_.param<bool>("include_link_header", include_link_header_, false);
    private_nh_.param<int>("sender", sender_, 10);
    private_nh_.param<int>("version", version_, 0xF0);
    private_nh_.param<int>("message_id", message_id_, 2);
    private_nh_.param<bool>("use_ads_state", use_ads_state_, true);
    private_nh_.param<std::string>("ads_state_topic", ads_state_topic_, "ads_udp_state");
    private_nh_.param<double>("ads_state_timeout", ads_state_timeout_s_, 1.0);

    validateParams();

    // 初始化内部状态
    sim_x_ = ego_x_;
    sim_y_ = ego_y_;
    sim_heading_ = ego_heading_;
    sim_speed_ = 0.0;
    // 如果 use_ads_state=true，这些只是初值，真正运行时会被 /ads_udp_state 覆盖

    payload_pub_ = nh_.advertise<std_msgs::UInt8MultiArray>("trajectory_udp_payload", 10);
    info_pub_ = nh_.advertise<std_msgs::String>("trajectory_packet_info", 10);
    global_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_global_path", 1, true);
    local_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_local_path", 10);
    if (use_ads_state_)
    {
      ads_state_sub_ = nh_.subscribe(ads_state_topic_, 20, &EgoTrajectoryUdpNode::adsStateCallback, this);
    }

    openSocket();
    if (use_ads_state_)
    {
      ROS_INFO("waiting for first %s to initialize fixed global trajectory", ads_state_topic_.c_str());
    }
    else
    {
      trajectory_ = ego_trajectory_udp::makeTrajectory(trajectory_name_,
                                                       ego_x_,
                                                       ego_y_,
                                                       ego_heading_,
                                                       globalPointNum(),
                                                       trajectory_length_,
                                                       lane_width_,
                                                       turn_radius_,
                                                       speed_,
                                                       dt_,
                                                       0.0);
      rebuildGlobalArcLengths();
      publishGlobalPath();
      saveGlobalTrajectoryToCSV();
    }

    ROS_INFO("ego trajectory=%s global_points=%zu local_points=%d length=%.2f target_speed=%.2f accel_time=%.2f mode=%d use_ads_state=%s",
             trajectory_name_.c_str(),
             trajectory_.points.size(),
             point_num_,
             trajectory_length_,
             speed_,
             accel_time_,
             local_update_mode_,
             use_ads_state_ ? "true" : "false");
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
      ros::spinOnce();

      const bool using_ads_state = updateStateFromAdsIfAvailable(ros::Time::now());
      if (use_ads_state_ && !using_ads_state)
      {
        rate.sleep();
        continue;
      }

      size_t start_index = 0;
      std::vector<ego_trajectory_udp::TrajectoryPoint> chunk;
      if (using_ads_state)
      {
        const PathProjection projection = nearestPathProjection(sim_x_, sim_y_);
        start_index = projection.index;
        chunk = makeTimedLocalChunk(projection.s_m, sim_speed_);
      }
      else
      {
        start_index = local_update_mode_ == 1 ? nearestPathIndex(sim_x_, sim_y_) : 0;
        chunk = makeLocalChunk(start_index);
      }
      const ros::Time stamp = ros::Time::now();
      const auto payload = packPacket(chunk, static_cast<uint16_t>(packet_index & 0xFFFF));

      local_path_pub_.publish(ego_trajectory_udp::makePath(chunk, frame_id_, stamp));
      publishAndSend(payload, buildInfoJson(packet_index, payload.size(), start_index, using_ads_state));

      ROS_INFO_THROTTLE(1.0,
                        "sent %s mode=%d start=%zu points=%zu bytes=%zu state_source=%s state=(%.2f, %.2f, %.1fdeg, %.2fmps)",
                        trajectory_.name.c_str(),
                        local_update_mode_,
                        start_index,
                        chunk.size(),
                        payload.size(),
                        using_ads_state ? "ads_udp_state" : "fallback",
                        sim_x_,
                        sim_y_,
                        sim_heading_,
                        sim_speed_);

      if (!using_ads_state && local_update_mode_ == 1)
      {
        updateKinematicState(update_dt);
      }

      counter_ = static_cast<uint8_t>((counter_ + 1) & 0xFF);
      ++packet_index;
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
    if (point_num_ != 50)
    {
      ROS_WARN("point_num=%d, expected 50 for chassis fixed trajectory array", point_num_);
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
    if (local_port_ < 0 || local_port_ > 65535)
    {
      throw std::runtime_error("~local_port must be 0 or in 1..65535");
    }
    if (ego_heading_ < 0.0 || ego_heading_ > 360.0)
    {
      throw std::runtime_error("~ego_heading must be in 0..360 deg, where north is 0 and clockwise is positive");
    }
    if (endian_ != "little")
    {
      throw std::runtime_error("~endian must be 'little' (Intel byte order); Motorola/big is not supported");
    }
    if (local_update_mode_ != 1 && local_update_mode_ != 2)
    {
      throw std::runtime_error("~local_update_mode must be 1 or 2");
    }
    if (message_id_ != 2)
    {
      throw std::runtime_error("~message_id must be 2");
    }
  }

  int globalPointNum() const
  {
    return std::max(point_num_, static_cast<int>(std::ceil(trajectory_length_ / std::max(speed_ * dt_, 0.01))) + 1);
  }

  void adsStateCallback(const nav_msgs::Odometry::ConstPtr& msg)
  {
    latest_ads_x_ = msg->pose.pose.position.x;
    latest_ads_y_ = msg->pose.pose.position.y;
    latest_ads_heading_ = protocolHeadingFromQuaternion(msg->pose.pose.orientation);
    latest_ads_speed_ = std::max(0.0, msg->twist.twist.linear.x);
    latest_ads_stamp_ = msg->header.stamp.isZero() ? ros::Time::now() : msg->header.stamp;
    have_ads_state_ = true;
  }

  bool updateStateFromAdsIfAvailable(const ros::Time& now)
  {
    if (!use_ads_state_)
    {
      return false;
    }

    if (!have_ads_state_)
    {
      ROS_WARN_THROTTLE(1.0, "waiting for first ads_udp_state, trajectory UDP is not sent yet");
      return false;
    }

    if (ads_state_timeout_s_ > 0.0 && (now - latest_ads_stamp_).toSec() > ads_state_timeout_s_)
    {
      ROS_WARN_THROTTLE(1.0,
                        "latest ads_udp_state is stale: age=%.3fs timeout=%.3fs, trajectory UDP is not sent",
                        (now - latest_ads_stamp_).toSec(),
                        ads_state_timeout_s_);
      return false;
    }

    sim_x_ = latest_ads_x_;
    sim_y_ = latest_ads_y_;
    sim_heading_ = ego_trajectory_udp::normalizeHeadingDeg(latest_ads_heading_);
    sim_speed_ = latest_ads_speed_;

    if (!ads_global_initialized_)
    {
      trajectory_ = ego_trajectory_udp::makeTrajectory(trajectory_name_,
                                                       sim_x_,
                                                       sim_y_,
                                                       sim_heading_,
                                                       globalPointNum(),
                                                       trajectory_length_,
                                                       lane_width_,
                                                       turn_radius_,
                                                       speed_,
                                                       dt_,
                                                       0.0);
      rebuildGlobalArcLengths();
      ads_global_initialized_ = true;
      publishGlobalPath();
      saveGlobalTrajectoryToCSV();
      ROS_INFO("initialized fixed global trajectory from first ads_udp_state: x=%.3f y=%.3f heading=%.2fdeg speed=%.2fmps",
               sim_x_,
               sim_y_,
               sim_heading_,
               sim_speed_);
    }
    return true;
  }

  void openSocket()
  {
    socket_fd_ = socket(AF_INET, SOCK_DGRAM, 0);
    if (socket_fd_ < 0)
    {
      throw std::runtime_error(std::string("socket() failed: ") + strerror(errno));
    }

    if (local_port_ > 0)
    {
      sockaddr_in local_addr;
      std::memset(&local_addr, 0, sizeof(local_addr));
      local_addr.sin_family = AF_INET;
      local_addr.sin_addr.s_addr = htonl(INADDR_ANY); // 监听本机所有 IP（包括 192.168.88.3）
      local_addr.sin_port = htons(static_cast<uint16_t>(local_port_));

      if (bind(socket_fd_, reinterpret_cast<sockaddr*>(&local_addr), sizeof(local_addr)) < 0)
      {
        throw std::runtime_error(std::string("bind() local port failed: ") + strerror(errno));
      }
      ROS_INFO("Successfully bound to local port: %d", local_port_);
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

  // global_s_ 后面用于：按弧长 s 插值采样全局路径
  void rebuildGlobalArcLengths()
  {
    global_s_.assign(trajectory_.points.size(), 0.0);
    for (size_t i = 1; i < trajectory_.points.size(); ++i)
    {
      const double dx = trajectory_.points[i].x - trajectory_.points[i - 1].x;
      const double dy = trajectory_.points[i].y - trajectory_.points[i - 1].y;
      global_s_[i] = global_s_[i - 1] + std::hypot(dx, dy);
    }
  }

  ego_trajectory_udp::TrajectoryPoint sampleGlobalPath(double s_m) const
  {
    if (trajectory_.points.empty() || global_s_.empty())
    {
      return ego_trajectory_udp::TrajectoryPoint();
    }
    if (trajectory_.points.size() == 1 || s_m <= 0.0)
    {
      return trajectory_.points.front();
    }
    if (s_m >= global_s_.back())
    {
      return trajectory_.points.back();
    }

    const auto upper = std::lower_bound(global_s_.begin(), global_s_.end(), s_m);
    size_t hi = static_cast<size_t>(std::distance(global_s_.begin(), upper));
    if (hi == 0)
    {
      hi = 1;
    }
    const size_t lo = hi - 1;
    const double seg_len = std::max(global_s_[hi] - global_s_[lo], 1e-9);
    const double ratio = clampValue((s_m - global_s_[lo]) / seg_len, 0.0, 1.0);
    const auto& a = trajectory_.points[lo];
    const auto& b = trajectory_.points[hi];

    ego_trajectory_udp::TrajectoryPoint p;
    p.x = a.x + (b.x - a.x) * ratio;
    p.y = a.y + (b.y - a.y) * ratio;
    p.heading_deg = ego_trajectory_udp::headingFromDelta(b.x - a.x, b.y - a.y);
    p.vx = speed_;
    p.ax = 0.0;
    return p;
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

  PathProjection nearestPathProjection(double x, double y) const
  {
    PathProjection best;
    if (trajectory_.points.size() < 2 || global_s_.size() != trajectory_.points.size())
    {
      return best;
    }

    double best_dist2 = std::numeric_limits<double>::max();
    for (size_t i = 0; i + 1 < trajectory_.points.size(); ++i)
    {
      const auto& a = trajectory_.points[i];
      const auto& b = trajectory_.points[i + 1];
      const double vx = b.x - a.x;
      const double vy = b.y - a.y;
      const double wx = x - a.x;
      const double wy = y - a.y;
      const double len2 = vx * vx + vy * vy;
      const double t = len2 <= 1e-9 ? 0.0 : clampValue((wx * vx + wy * vy) / len2, 0.0, 1.0);
      const double px = a.x + t * vx;
      const double py = a.y + t * vy;
      const double dx = x - px;
      const double dy = y - py;
      const double dist2 = dx * dx + dy * dy;
      if (dist2 < best_dist2)
      {
        best_dist2 = dist2;
        best.index = t > 0.5 ? i + 1 : i;
        best.s_m = global_s_[i] + std::sqrt(len2) * t;
      }
    }
    return best;
  }

  double speedProfileDistance(double current_speed_mps,
                              double t_s,
                              double& planned_speed_mps,
                              double& planned_ax_mps2) const
  {
    const double start_speed = std::max(0.0, current_speed_mps);
    if (accel_time_ <= 1e-6 || std::abs(speed_ - start_speed) < 1e-6)
    {
      planned_speed_mps = speed_;
      planned_ax_mps2 = 0.0;
      return speed_ * t_s;
    }

    const double accel = (speed_ - start_speed) / accel_time_;
    if (t_s <= accel_time_)
    {
      planned_speed_mps = start_speed + accel * t_s;
      planned_ax_mps2 = accel;
      return start_speed * t_s + 0.5 * accel * t_s * t_s;
    }

    const double accel_distance = start_speed * accel_time_ + 0.5 * accel * accel_time_ * accel_time_;
    planned_speed_mps = speed_;
    planned_ax_mps2 = 0.0;
    return accel_distance + speed_ * (t_s - accel_time_);
  }

//   从当前位置在全局路径上的投影弧长 projection.s_m 开始
// 根据当前速度 sim_speed_ 做时间连续采样
  std::vector<ego_trajectory_udp::TrajectoryPoint> makeTimedLocalChunk(double start_s_m,
                                                                       double current_speed_mps) const
  {
    std::vector<ego_trajectory_udp::TrajectoryPoint> chunk;
    chunk.reserve(static_cast<size_t>(point_num_));
    for (int i = 0; i < point_num_; ++i)
    {
      const double t_s = static_cast<double>(i) * dt_;
      double planned_speed = speed_;
      double planned_ax = 0.0;
      // 先根据当前速度和目标速度计算 t 时刻应该走多远
      // 再沿固定全局路径取对应位置
      const double travel_s = speedProfileDistance(current_speed_mps, t_s, planned_speed, planned_ax);
      ego_trajectory_udp::TrajectoryPoint p = sampleGlobalPath(start_s_m + travel_s);
      p.time_s = t_s;
      p.vx = planned_speed;
      p.ax = planned_ax;
      chunk.push_back(p);
    }
    return chunk;
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

    const double yaw = ego_trajectory_udp::protocolHeadingToYawRad(sim_heading_);
    sim_x_ += sim_speed_ * std::cos(yaw) * update_dt;
    sim_y_ += sim_speed_ * std::sin(yaw) * update_dt;
  }

  void pushU8(std::vector<uint8_t>& buffer, uint8_t value) const
  {
    buffer.push_back(value);
  }

  void pushU16(std::vector<uint8_t>& buffer, uint16_t value) const
  {
    buffer.push_back(static_cast<uint8_t>(value & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
  }

  void pushI16(std::vector<uint8_t>& buffer, int16_t value) const
  {
    pushU16(buffer, static_cast<uint16_t>(value));
  }

  void pushU32(std::vector<uint8_t>& buffer, uint32_t value) const
  {
    buffer.push_back(static_cast<uint8_t>(value & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 16) & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 24) & 0xFF));
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
    pushU16(buffer, static_cast<uint16_t>(quantize(point.heading_deg, 0.01, 0, 36000)));
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

  std::string buildInfoJson(uint32_t packet_index,
                            size_t payload_bytes,
                            size_t start_index,
                            bool using_ads_state) const
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
        << "\"state_source\":\"" << (using_ads_state ? "ads_udp_state" : "fallback") << "\","
        << "\"sim_heading\":" << sim_heading_ << ","
        << "\"sim_speed\":" << sim_speed_ << ","
        << "\"sim_x\":" << sim_x_ << ","
        << "\"sim_y\":" << sim_y_ << ","
        << "\"trajectory\":\"" << trajectory_.name << "\","
        << "\"trajectory_id\":" << static_cast<int>(trajectory_.id) << "}";
    return oss.str();
  }

  void saveGlobalTrajectoryToCSV() const
  {
    // 将文件默认保存在当前用户的根目录下，避免权限问题
    std::string filename = "/home/" + std::string(getenv("USER")) + "/trajectory_data.csv";
    std::ofstream file(filename);
    
    if (!file.is_open())
    {
      ROS_ERROR("Failed to create CSV file: %s", filename.c_str());
      return;
    }

    // 1. 写入表格头部 (Header)
    file << "time_s,x,y,heading_deg,vx,ax\n";

    // 2. 遍历全局轨迹并按列写入数据
    for (const auto& point : trajectory_.points)
    {
      file << point.time_s << ","
           << point.x << ","
           << point.y << ","
           << point.heading_deg << ","
           << point.vx << ","
           << point.ax << "\n";
    }

    file.close();
    ROS_INFO("==================================================");
    ROS_INFO("✅ Trajectory data successfully saved to: %s", filename.c_str());
    ROS_INFO("==================================================");
  }

  ros::NodeHandle nh_;
  ros::NodeHandle private_nh_;
  ros::Publisher payload_pub_;
  ros::Publisher info_pub_;
  ros::Publisher global_path_pub_;
  ros::Publisher local_path_pub_;
  ros::Subscriber ads_state_sub_;

  std::string trajectory_name_ = "straight";
  std::string frame_id_ = "map";
  std::string udp_ip_ = "192.168.88.100";
  int udp_port_ = 31000;
  int local_port_ = 31100;
  double rate_hz_ = 10.0;
  int point_num_ = 50;
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
  std::string endian_ = "little";
  bool include_flags_in_udp_ = false;
  bool include_link_header_ = false;
  int sender_ = 10;
  int version_ = 0xF0;
  int message_id_ = 2;
  bool use_ads_state_ = true;
  std::string ads_state_topic_ = "ads_udp_state";
  double ads_state_timeout_s_ = 1.0;
  uint8_t counter_ = 0;
  ego_trajectory_udp::Trajectory trajectory_;
  std::vector<double> global_s_;
  double sim_x_ = 0.0;
  double sim_y_ = 0.0;
  double sim_heading_ = 0.0;
  double sim_speed_ = 0.0;
  bool have_ads_state_ = false;
  double latest_ads_x_ = 0.0;
  double latest_ads_y_ = 0.0;
  double latest_ads_heading_ = 0.0;
  double latest_ads_speed_ = 0.0;
  ros::Time latest_ads_stamp_;
  bool ads_global_initialized_ = false;

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
