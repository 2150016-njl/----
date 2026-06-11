#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>

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

#include <nav_msgs/Path.h>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt8MultiArray.h>

#include "ego_trajectory_udp/AdsUdpState.h"
#include "ego_trajectory_udp/ego_trajectory_common.hpp"

namespace
{
constexpr uint16_t kHeader = 0x7E7E;
constexpr uint16_t kCoefNum = 11;
constexpr std::size_t kAppPayloadSize = 8 + kCoefNum * 4;

struct PathProjection
{
  size_t index = 0;
  double s_m = 0.0;
  double d_m = 0.0;
  double heading_deg = 0.0;
  double curvature = 0.0;
};

struct FrenetState
{
  double s = 0.0;
  double s_d = 0.0;
  double s_dd = 0.0;
  double d = 0.0;
  double d_d = 0.0;
  double d_dd = 0.0;
};

struct ReferenceSample
{
  double x = 0.0;
  double y = 0.0;
  double heading_deg = 0.0;
  double curvature = 0.0;
};

struct PolynomialCoefficients
{
  double d_a0 = 0.0;
  double d_a1 = 0.0;
  double d_a2 = 0.0;
  double d_a3 = 0.0;
  double d_a4 = 0.0;
  double d_a5 = 0.0;
  double s_a0 = 0.0;
  double s_a1 = 0.0;
  double s_a2 = 0.0;
  double s_a3 = 0.0;
  double s_a4 = 0.0;
};

template <typename T>
T clampValue(T value, T low, T high)
{
  return std::max(low, std::min(high, value));
}

double protocolHeadingFromYawRad(double yaw_rad)
{
  return ego_trajectory_udp::normalizeHeadingDeg(90.0 - yaw_rad * 180.0 / ego_trajectory_udp::kPi);
}

double normalizeAngleRad(double angle)
{
  while (angle > ego_trajectory_udp::kPi)
  {
    angle -= 2.0 * ego_trajectory_udp::kPi;
  }
  while (angle < -ego_trajectory_udp::kPi)
  {
    angle += 2.0 * ego_trajectory_udp::kPi;
  }
  return angle;
}

double quinticPoint(const PolynomialCoefficients& c, double t)
{
  const double t2 = t * t;
  const double t3 = t2 * t;
  const double t4 = t3 * t;
  const double t5 = t4 * t;
  return c.d_a0 + c.d_a1 * t + c.d_a2 * t2 + c.d_a3 * t3 + c.d_a4 * t4 + c.d_a5 * t5;
}

double quinticFirstDerivative(const PolynomialCoefficients& c, double t)
{
  const double t2 = t * t;
  const double t3 = t2 * t;
  const double t4 = t3 * t;
  return c.d_a1 + 2.0 * c.d_a2 * t + 3.0 * c.d_a3 * t2 + 4.0 * c.d_a4 * t3 + 5.0 * c.d_a5 * t4;
}

double quinticSecondDerivative(const PolynomialCoefficients& c, double t)
{
  const double t2 = t * t;
  const double t3 = t2 * t;
  return 2.0 * c.d_a2 + 6.0 * c.d_a3 * t + 12.0 * c.d_a4 * t2 + 20.0 * c.d_a5 * t3;
}

double quarticPoint(const PolynomialCoefficients& c, double t)
{
  const double t2 = t * t;
  const double t3 = t2 * t;
  const double t4 = t3 * t;
  return c.s_a0 + c.s_a1 * t + c.s_a2 * t2 + c.s_a3 * t3 + c.s_a4 * t4;
}

double quarticFirstDerivative(const PolynomialCoefficients& c, double t)
{
  const double t2 = t * t;
  const double t3 = t2 * t;
  return c.s_a1 + 2.0 * c.s_a2 * t + 3.0 * c.s_a3 * t2 + 4.0 * c.s_a4 * t3;
}

double quarticSecondDerivative(const PolynomialCoefficients& c, double t)
{
  const double t2 = t * t;
  return 2.0 * c.s_a2 + 6.0 * c.s_a3 * t + 12.0 * c.s_a4 * t2;
}

double guardedFrenetScale(double scale)
{
  if (std::abs(scale) >= 0.1)
  {
    return scale;
  }
  return scale < 0.0 ? -0.1 : 0.1;
}
}  // namespace

class TrajectoryPolynomialUdpNode
{
public:
  TrajectoryPolynomialUdpNode() : private_nh_("~")
  {
    private_nh_.param<std::string>("trajectory", trajectory_name_, "straight");
    private_nh_.param<std::string>("frame_id", frame_id_, "map");
    private_nh_.param<std::string>("ads_state_topic", ads_state_topic_, "ads_udp_state");
    private_nh_.param<double>("ads_state_timeout", ads_state_timeout_s_, 1.0);
    private_nh_.param<std::string>("udp_ip", udp_ip_, "192.168.88.100");
    private_nh_.param<int>("udp_port", udp_port_, 31000);
    private_nh_.param<int>("local_port", local_port_, 0);
    private_nh_.param<double>("rate_hz", rate_hz_, 10.0);
    private_nh_.param<int>("point_num", point_num_, 50);
    private_nh_.param<double>("dt", dt_, 0.1);
    private_nh_.param<double>("trajectory_length", trajectory_length_, 100.0);
    private_nh_.param<double>("lane_width", lane_width_, 3.5);
    private_nh_.param<double>("turn_radius", turn_radius_, 12.0);
    private_nh_.param<double>("speed", speed_, 3.0);
    private_nh_.param<std::string>("endian", endian_, "little");
    private_nh_.param<int>("sender", sender_, 10);
    private_nh_.param<int>("version", version_, 0xF0);
    private_nh_.param<int>("message_id", message_id_, 2);

    validateParams();

    ads_state_sub_ = nh_.subscribe(ads_state_topic_, 20, &TrajectoryPolynomialUdpNode::adsStateCallback, this);
    payload_pub_ = nh_.advertise<std_msgs::UInt8MultiArray>("trajectory_polynomial_udp_payload", 10);
    info_pub_ = nh_.advertise<std_msgs::String>("trajectory_polynomial_packet_info", 10);
    global_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_global_path", 1, true);
    local_path_pub_ = nh_.advertise<nav_msgs::Path>("trajectory_local_path", 10);

    openSocket();
    ROS_INFO("trajectory polynomial UDP node waiting for %s, peer=%s:%d, local_port=%d, Intel/little, message_id=%d",
             ads_state_topic_.c_str(),
             udp_ip_.c_str(),
             udp_port_,
             local_port_,
             message_id_);
  }

  ~TrajectoryPolynomialUdpNode()
  {
    if (socket_fd_ >= 0)
    {
      close(socket_fd_);
    }
  }

  void run()
  {
    ros::Rate rate(rate_hz_);
    while (ros::ok())
    {
      ros::spinOnce();
      if (!updateStateIfAvailable(ros::Time::now()))
      {
        rate.sleep();
        continue;
      }

      const PathProjection projection = nearestPathProjection(sim_x_, sim_y_);
      const double plan_time = static_cast<double>(point_num_) * dt_;
      const size_t target_index = std::min(projection.index + static_cast<size_t>(point_num_),
                                           trajectory_.points.empty() ? size_t(0) : trajectory_.points.size() - 1);
      const FrenetState start = makeStartState(projection);
      const FrenetState target = makeTargetState(target_index);
      const PolynomialCoefficients coefficients = solvePolynomials(start, target, plan_time);
      const std::vector<ego_trajectory_udp::TrajectoryPoint> local_points = makeLocalTrajectory(coefficients);
      const std::vector<uint8_t> payload = packPacket(coefficients);

      local_path_pub_.publish(ego_trajectory_udp::makePath(local_points, frame_id_, ros::Time::now()));
      publishAndSend(payload, buildInfoJson(payload.size(), projection, start, target, coefficients));

      ROS_INFO_THROTTLE(1.0,
                        "sent polynomial trajectory=%s start=%zu target=%zu bytes=%zu state=(%.2f, %.2f, %.1fdeg, %.2fmps)",
                        trajectory_.name.c_str(),
                        projection.index,
                        target_index,
                        payload.size(),
                        sim_x_,
                        sim_y_,
                        sim_heading_,
                        sim_speed_);

      counter_ = static_cast<uint8_t>((counter_ + 1) & 0xFF);
      ++packet_index_;
      rate.sleep();
    }
  }

private:
  void validateParams() const
  {
    if (udp_port_ <= 0 || udp_port_ > 65535)
    {
      throw std::runtime_error("~udp_port must be in 1..65535");
    }
    if (local_port_ < 0 || local_port_ > 65535)
    {
      throw std::runtime_error("~local_port must be 0 or in 1..65535");
    }
    if (rate_hz_ <= 0.0 || point_num_ <= 0 || dt_ <= 0.0 || trajectory_length_ <= 0.0 || speed_ <= 0.0)
    {
      throw std::runtime_error("invalid planning parameter");
    }
    if (endian_ != "little" && endian_ != "intel")
    {
      throw std::runtime_error("~endian must be 'little' or 'intel'; Motorola/big is not supported");
    }
    if (message_id_ != 2)
    {
      throw std::runtime_error("~message_id must be 2");
    }
  }

  int globalPointNum() const
  {
    return std::max(point_num_ + 1, static_cast<int>(std::ceil(trajectory_length_ / std::max(speed_ * dt_, 0.01))) + 1);
  }

  void adsStateCallback(const ego_trajectory_udp::AdsUdpState::ConstPtr& msg)
  {
    latest_ads_x_ = msg->x_m;
    latest_ads_y_ = msg->y_m;
    latest_ads_heading_ = ego_trajectory_udp::normalizeHeadingDeg(msg->heading_deg);
    latest_ads_speed_ = std::max(0.0, msg->speed_mps);
    latest_ads_ax_ = msg->ax_mps2;
    latest_ads_ay_ = msg->ay_mps2;
    latest_ads_stamp_ = msg->header.stamp.isZero() ? ros::Time::now() : msg->header.stamp;
    have_ads_state_ = true;
  }

  bool updateStateIfAvailable(const ros::Time& now)
  {
    if (!have_ads_state_)
    {
      ROS_WARN_THROTTLE(1.0, "waiting for first ads_udp_state, polynomial UDP is not sent yet");
      return false;
    }
    if (ads_state_timeout_s_ > 0.0 && (now - latest_ads_stamp_).toSec() > ads_state_timeout_s_)
    {
      ROS_WARN_THROTTLE(1.0,
                        "latest ads_udp_state is stale: age=%.3fs timeout=%.3fs, polynomial UDP is not sent",
                        (now - latest_ads_stamp_).toSec(),
                        ads_state_timeout_s_);
      return false;
    }

    sim_x_ = latest_ads_x_;
    sim_y_ = latest_ads_y_;
    sim_heading_ = ego_trajectory_udp::normalizeHeadingDeg(latest_ads_heading_);
    sim_speed_ = latest_ads_speed_;
    sim_ax_ = latest_ads_ax_;
    sim_ay_ = latest_ads_ay_;

    if (!global_initialized_)
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
      global_initialized_ = true;
      global_path_pub_.publish(ego_trajectory_udp::makePath(trajectory_.points, frame_id_, ros::Time::now()));
      ROS_INFO("initialized fixed polynomial global trajectory from first ads_udp_state: x=%.3f y=%.3f heading=%.2fdeg speed=%.2fmps",
               sim_x_,
               sim_y_,
               sim_heading_,
               sim_speed_);
    }
    return true;
  }

  void rebuildGlobalArcLengths()
  {
    global_s_.assign(trajectory_.points.size(), 0.0);
    for (size_t i = 1; i < trajectory_.points.size(); ++i)
    {
      const double dx = trajectory_.points[i].x - trajectory_.points[i - 1].x;
      const double dy = trajectory_.points[i].y - trajectory_.points[i - 1].y;
      global_s_[i] = global_s_[i - 1] + std::hypot(dx, dy);
    }

    global_kappa_.assign(trajectory_.points.size(), 0.0);
    if (trajectory_.points.size() < 3)
    {
      return;
    }

    for (size_t i = 0; i < trajectory_.points.size(); ++i)
    {
      const size_t prev = i == 0 ? 0 : i - 1;
      const size_t next = i + 1 < trajectory_.points.size() ? i + 1 : i;
      const double ds = global_s_[next] - global_s_[prev];
      if (ds <= 1e-9 || prev == next)
      {
        global_kappa_[i] = 0.0;
        continue;
      }

      const double yaw_prev = ego_trajectory_udp::protocolHeadingToYawRad(trajectory_.points[prev].heading_deg);
      const double yaw_next = ego_trajectory_udp::protocolHeadingToYawRad(trajectory_.points[next].heading_deg);
      global_kappa_[i] = normalizeAngleRad(yaw_next - yaw_prev) / ds;
    }
  }

  ReferenceSample sampleReferencePath(double s_m) const
  {
    ReferenceSample ref;
    if (trajectory_.points.empty() || global_s_.empty())
    {
      return ref;
    }
    if (trajectory_.points.size() == 1 || s_m <= 0.0)
    {
      ref.x = trajectory_.points.front().x;
      ref.y = trajectory_.points.front().y;
      ref.heading_deg = trajectory_.points.front().heading_deg;
      ref.curvature = global_kappa_.empty() ? 0.0 : global_kappa_.front();
      return ref;
    }
    if (s_m >= global_s_.back())
    {
      ref.x = trajectory_.points.back().x;
      ref.y = trajectory_.points.back().y;
      ref.heading_deg = trajectory_.points.back().heading_deg;
      ref.curvature = global_kappa_.empty() ? 0.0 : global_kappa_.back();
      return ref;
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

    ref.x = a.x + (b.x - a.x) * ratio;
    ref.y = a.y + (b.y - a.y) * ratio;
    const double yaw_a = ego_trajectory_udp::protocolHeadingToYawRad(a.heading_deg);
    const double yaw_b = ego_trajectory_udp::protocolHeadingToYawRad(b.heading_deg);
    ref.heading_deg = protocolHeadingFromYawRad(yaw_a + normalizeAngleRad(yaw_b - yaw_a) * ratio);
    if (global_kappa_.size() == trajectory_.points.size())
    {
      ref.curvature = global_kappa_[lo] + (global_kappa_[hi] - global_kappa_[lo]) * ratio;
    }
    return ref;
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
        best.heading_deg = ego_trajectory_udp::headingFromDelta(vx, vy);

        const double yaw = ego_trajectory_udp::protocolHeadingToYawRad(best.heading_deg);
        const double left_x = -std::sin(yaw);
        const double left_y = std::cos(yaw);
        best.d_m = dx * left_x + dy * left_y;
      }
    }
    best.curvature = sampleReferencePath(best.s_m).curvature;
    return best;
  }

  FrenetState makeStartState(const PathProjection& projection) const
  {
    FrenetState state;
    state.s = projection.s_m;
    state.d = projection.d_m;

    const double ego_yaw = ego_trajectory_udp::protocolHeadingToYawRad(sim_heading_);
    const double path_yaw = ego_trajectory_udp::protocolHeadingToYawRad(projection.heading_deg);
    const double delta_yaw = normalizeAngleRad(ego_yaw - path_yaw);
    const double frenet_scale = guardedFrenetScale(1.0 - projection.curvature * projection.d_m);
    state.s_d = sim_speed_ * std::cos(delta_yaw) / frenet_scale;
    state.d_d = sim_speed_ * std::sin(delta_yaw);

    const double ego_forward_x = std::cos(ego_yaw);
    const double ego_forward_y = std::sin(ego_yaw);
    const double ego_left_x = -std::sin(ego_yaw);
    const double ego_left_y = std::cos(ego_yaw);
    const double accel_x = sim_ax_ * ego_forward_x + sim_ay_ * ego_left_x;
    const double accel_y = sim_ax_ * ego_forward_y + sim_ay_ * ego_left_y;

    const double path_forward_x = std::cos(path_yaw);
    const double path_forward_y = std::sin(path_yaw);
    const double path_left_x = -std::sin(path_yaw);
    const double path_left_y = std::cos(path_yaw);
    const double accel_along_path = accel_x * path_forward_x + accel_y * path_forward_y;
    const double accel_left_of_path = accel_x * path_left_x + accel_y * path_left_y;
    state.s_dd = (accel_along_path + projection.curvature * state.d_d * state.s_d) / frenet_scale;
    state.d_dd = accel_left_of_path;
    return state;
  }

  FrenetState makeTargetState(size_t target_index) const
  {
    FrenetState state;
    if (trajectory_.points.empty() || global_s_.empty())
    {
      return state;
    }
    target_index = std::min(target_index, trajectory_.points.size() - 1);
    state.s = global_s_[target_index];
    state.s_d = trajectory_.points[target_index].vx;
    state.s_dd = trajectory_.points[target_index].ax;
    state.d = 0.0;
    state.d_d = 0.0;
    state.d_dd = 0.0;
    return state;
  }

  PolynomialCoefficients solvePolynomials(const FrenetState& start, const FrenetState& target, double t) const
  {
    PolynomialCoefficients c;

    c.d_a0 = start.d;
    c.d_a1 = start.d_d;
    c.d_a2 = start.d_dd / 2.0;
    const double t2 = t * t;
    const double t3 = t2 * t;
    const double t4 = t3 * t;
    const double t5 = t4 * t;
    const double lateral_delta = target.d - c.d_a0 - c.d_a1 * t - c.d_a2 * t2;
    const double lateral_v_delta = target.d_d - c.d_a1 - 2.0 * c.d_a2 * t;
    const double lateral_a_delta = target.d_dd - 2.0 * c.d_a2;
    c.d_a3 = (10.0 * lateral_delta - 4.0 * lateral_v_delta * t + 0.5 * lateral_a_delta * t2) / t3;
    c.d_a4 = (-15.0 * lateral_delta + 7.0 * lateral_v_delta * t - lateral_a_delta * t2) / t4;
    c.d_a5 = (6.0 * lateral_delta - 3.0 * lateral_v_delta * t + 0.5 * lateral_a_delta * t2) / t5;

    c.s_a0 = start.s;
    c.s_a1 = start.s_d;
    c.s_a2 = start.s_dd / 2.0;
    const double speed_delta = target.s_d - c.s_a1 - 2.0 * c.s_a2 * t;
    const double accel_delta = target.s_dd - 2.0 * c.s_a2;
    c.s_a3 = speed_delta / t2 - accel_delta / (3.0 * t);
    c.s_a4 = accel_delta / (4.0 * t2) - speed_delta / (2.0 * t3);
    return c;
  }

  std::vector<ego_trajectory_udp::TrajectoryPoint> makeLocalTrajectory(const PolynomialCoefficients& coefficients) const
  {
    std::vector<ego_trajectory_udp::TrajectoryPoint> points;
    points.reserve(static_cast<size_t>(point_num_));
    for (int i = 0; i < point_num_; ++i)
    {
      const double t = static_cast<double>(i) * dt_;
      const double s = quarticPoint(coefficients, t);
      const double d = quinticPoint(coefficients, t);
      const double s_d = quarticFirstDerivative(coefficients, t);
      const double d_d = quinticFirstDerivative(coefficients, t);
      const double s_dd = quarticSecondDerivative(coefficients, t);
      const double d_dd = quinticSecondDerivative(coefficients, t);
      const ReferenceSample ref = sampleReferencePath(s);
      const double ref_yaw = ego_trajectory_udp::protocolHeadingToYawRad(ref.heading_deg);
      const double left_x = -std::sin(ref_yaw);
      const double left_y = std::cos(ref_yaw);
      const double frenet_scale = guardedFrenetScale(1.0 - ref.curvature * d);
      const double longitudinal_velocity = frenet_scale * s_d;
      const double longitudinal_accel = frenet_scale * s_dd - ref.curvature * d_d * s_d;
      const double speed = std::hypot(longitudinal_velocity, d_d);
      const double yaw = ref_yaw + std::atan2(d_d, longitudinal_velocity);

      ego_trajectory_udp::TrajectoryPoint p;
      p.x = ref.x + d * left_x;
      p.y = ref.y + d * left_y;
      p.time_s = t;
      p.vx = speed;
      p.ax = speed > 1e-6 ? (longitudinal_velocity * longitudinal_accel + d_d * d_dd) / speed : 0.0;
      p.heading_deg = protocolHeadingFromYawRad(yaw);
      points.push_back(p);
    }
    return points;
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
      local_addr.sin_addr.s_addr = htonl(INADDR_ANY);
      local_addr.sin_port = htons(static_cast<uint16_t>(local_port_));
      if (bind(socket_fd_, reinterpret_cast<sockaddr*>(&local_addr), sizeof(local_addr)) < 0)
      {
        throw std::runtime_error(std::string("bind() local port failed: ") + strerror(errno));
      }
    }

    std::memset(&target_addr_, 0, sizeof(target_addr_));
    target_addr_.sin_family = AF_INET;
    target_addr_.sin_port = htons(static_cast<uint16_t>(udp_port_));
    if (inet_pton(AF_INET, udp_ip_.c_str(), &target_addr_.sin_addr) != 1)
    {
      throw std::runtime_error("invalid ~udp_ip: " + udp_ip_);
    }
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

  void pushU32(std::vector<uint8_t>& buffer, uint32_t value) const
  {
    buffer.push_back(static_cast<uint8_t>(value & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 8) & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 16) & 0xFF));
    buffer.push_back(static_cast<uint8_t>((value >> 24) & 0xFF));
  }

  void pushFloat32(std::vector<uint8_t>& buffer, double value) const
  {
    const float value_f = static_cast<float>(value);
    uint32_t raw = 0;
    std::memcpy(&raw, &value_f, sizeof(raw));
    pushU32(buffer, raw);
  }

  std::vector<uint8_t> packPacket(const PolynomialCoefficients& c) const
  {
    std::vector<uint8_t> payload;
    payload.reserve(kAppPayloadSize);
    pushU16(payload, kHeader);
    pushU8(payload, static_cast<uint8_t>(sender_ & 0xFF));
    pushU8(payload, static_cast<uint8_t>(version_ & 0xFF));
    pushU8(payload, static_cast<uint8_t>(message_id_ & 0xFF));
    pushU8(payload, counter_);
    pushU16(payload, kCoefNum);
    pushFloat32(payload, c.d_a0);
    pushFloat32(payload, c.d_a1);
    pushFloat32(payload, c.d_a2);
    pushFloat32(payload, c.d_a3);
    pushFloat32(payload, c.d_a4);
    pushFloat32(payload, c.d_a5);
    pushFloat32(payload, c.s_a0);
    pushFloat32(payload, c.s_a1);
    pushFloat32(payload, c.s_a2);
    pushFloat32(payload, c.s_a3);
    pushFloat32(payload, c.s_a4);
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

  std::string buildInfoJson(std::size_t payload_bytes,
                            const PathProjection& projection,
                            const FrenetState& start,
                            const FrenetState& target,
                            const PolynomialCoefficients& c) const
  {
    const double plan_time = static_cast<double>(point_num_) * dt_;
    std::ostringstream oss;
    oss << "{"
        << "\"counter\":" << static_cast<int>(counter_) << ","
        << "\"packet_index\":" << packet_index_ << ","
        << "\"payload_bytes\":" << payload_bytes << ","
        << "\"coef_num\":" << kCoefNum << ","
        << "\"endian\":\"little\","
        << "\"message_id\":" << message_id_ << ","
        << "\"trajectory\":\"" << trajectory_.name << "\","
        << "\"projection_index\":" << projection.index << ","
        << "\"projection_curvature\":" << projection.curvature << ","
        << "\"plan_time\":" << plan_time << ","
        << "\"start_s\":" << start.s << ","
        << "\"start_s_d\":" << start.s_d << ","
        << "\"start_s_dd\":" << start.s_dd << ","
        << "\"start_d\":" << start.d << ","
        << "\"start_d_d\":" << start.d_d << ","
        << "\"start_d_dd\":" << start.d_dd << ","
        << "\"target_s\":" << target.s << ","
        << "\"target_speed\":" << target.s_d << ","
        << "\"target_accel\":" << target.s_dd << ","
        << "\"predicted_end_s\":" << quarticPoint(c, plan_time) << ","
        << "\"predicted_end_d\":" << quinticPoint(c, plan_time) << ","
        << "\"d_coefficients\":[" << c.d_a0 << "," << c.d_a1 << "," << c.d_a2 << ","
        << c.d_a3 << "," << c.d_a4 << "," << c.d_a5 << "],"
        << "\"s_coefficients\":[" << c.s_a0 << "," << c.s_a1 << "," << c.s_a2 << ","
        << c.s_a3 << "," << c.s_a4 << "]}";
    return oss.str();
  }

  ros::NodeHandle nh_;
  ros::NodeHandle private_nh_;
  ros::Subscriber ads_state_sub_;
  ros::Publisher payload_pub_;
  ros::Publisher info_pub_;
  ros::Publisher global_path_pub_;
  ros::Publisher local_path_pub_;

  std::string trajectory_name_ = "straight";
  std::string frame_id_ = "map";
  std::string ads_state_topic_ = "ads_udp_state";
  double ads_state_timeout_s_ = 1.0;
  std::string udp_ip_ = "192.168.88.100";
  int udp_port_ = 31000;
  int local_port_ = 0;
  double rate_hz_ = 10.0;
  int point_num_ = 50;
  double dt_ = 0.1;
  double trajectory_length_ = 100.0;
  double lane_width_ = 3.5;
  double turn_radius_ = 12.0;
  double speed_ = 3.0;
  std::string endian_ = "little";
  int sender_ = 10;
  int version_ = 0xF0;
  int message_id_ = 2;

  bool have_ads_state_ = false;
  double latest_ads_x_ = 0.0;
  double latest_ads_y_ = 0.0;
  double latest_ads_heading_ = 0.0;
  double latest_ads_speed_ = 0.0;
  double latest_ads_ax_ = 0.0;
  double latest_ads_ay_ = 0.0;
  ros::Time latest_ads_stamp_;
  bool global_initialized_ = false;
  ego_trajectory_udp::Trajectory trajectory_;
  std::vector<double> global_s_;
  std::vector<double> global_kappa_;
  double sim_x_ = 0.0;
  double sim_y_ = 0.0;
  double sim_heading_ = 0.0;
  double sim_speed_ = 0.0;
  double sim_ax_ = 0.0;
  double sim_ay_ = 0.0;
  uint8_t counter_ = 0;
  uint32_t packet_index_ = 0;
  int socket_fd_ = -1;
  sockaddr_in target_addr_;
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "trajectory_polynomial_udp_node");
  try
  {
    TrajectoryPolynomialUdpNode node;
    node.run();
  }
  catch (const std::exception& e)
  {
    ROS_FATAL_STREAM("trajectory_polynomial_udp_node failed: " << e.what());
    return 1;
  }
  return 0;
}
