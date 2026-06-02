#ifndef EGO_TRAJECTORY_UDP_EGO_TRAJECTORY_COMMON_HPP
#define EGO_TRAJECTORY_UDP_EGO_TRAJECTORY_COMMON_HPP

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Quaternion.h>
#include <nav_msgs/Path.h>
#include <ros/ros.h>

#include <cmath>
#include <stdexcept>
#include <string>
#include <vector>

namespace ego_trajectory_udp
{
constexpr double kPi = 3.14159265358979323846;

struct TrajectoryPoint
{
  double x = 0.0;
  double y = 0.0;
  double heading_deg = 0.0;
  double vx = 0.0;
  double ax = 0.0;
  double time_s = 0.0;
};

struct Trajectory
{
  std::string name;
  uint8_t id = 0;
  std::vector<TrajectoryPoint> points;
};

inline double normalizeHeadingDeg(double heading_deg)
{
  double heading = std::fmod(heading_deg, 360.0);
  return heading < 0.0 ? heading + 360.0 : heading;
}

inline double headingFromDelta(double dx, double dy)
{
  if (std::abs(dx) < 1e-9 && std::abs(dy) < 1e-9)
  {
    return 0.0;
  }
  return normalizeHeadingDeg(std::atan2(dx, dy) * 180.0 / kPi);
}

inline geometry_msgs::Quaternion yawToQuaternion(double yaw_rad)
{
  geometry_msgs::Quaternion q;
  q.x = 0.0;
  q.y = 0.0;
  q.z = std::sin(yaw_rad * 0.5);
  q.w = std::cos(yaw_rad * 0.5);
  return q;
}

inline void egoLocalToMap(double ego_x,
                          double ego_y,
                          double ego_heading_deg,
                          double forward_m,
                          double left_m,
                          double& x,
                          double& y)
{
  const double h = ego_heading_deg * kPi / 180.0;
  const double fx = std::sin(h);
  const double fy = std::cos(h);
  const double lx = -std::cos(h);
  const double ly = std::sin(h);
  x = ego_x + forward_m * fx + left_m * lx;
  y = ego_y + forward_m * fy + left_m * ly;
}

inline uint8_t trajectoryId(const std::string& name)
{
  if (name == "straight")
  {
    return 1;
  }
  if (name == "left_lane_change")
  {
    return 2;
  }
  if (name == "right_turn")
  {
    return 3;
  }
  return 0;
}

inline std::vector<TrajectoryPoint> generateBasePoints(const std::string& name,
                                                       double ego_x,
                                                       double ego_y,
                                                       double ego_heading_deg,
                                                       int point_num,
                                                       double length_m,
                                                       double lane_width_m,
                                                       double turn_radius_m,
                                                       double speed_mps,
                                                       double dt)
{
  if (point_num < 2)
  {
    throw std::runtime_error("point_num must be at least 2");
  }
  if (length_m <= 0.0)
  {
    throw std::runtime_error("trajectory length must be positive");
  }
  if (turn_radius_m <= 0.0)
  {
    throw std::runtime_error("turn_radius must be positive");
  }

  std::vector<TrajectoryPoint> points;
  points.reserve(static_cast<size_t>(point_num));

  for (int i = 0; i < point_num; ++i)
  {
    const double ratio = static_cast<double>(i) / static_cast<double>(point_num - 1);
    const double s = ratio * length_m;
    double forward = s;
    double left = 0.0;

    if (name == "straight")
    {
      left = 0.0;
    }
    else if (name == "left_lane_change")
    {
      left = 0.5 * lane_width_m * (1.0 - std::cos(kPi * ratio));
    }
    else if (name == "right_turn")
    {
      const double phi = s / turn_radius_m;
      forward = turn_radius_m * std::sin(phi);
      left = -turn_radius_m * (1.0 - std::cos(phi));
    }
    else
    {
      throw std::runtime_error("unknown trajectory: " + name);
    }

    TrajectoryPoint p;
    egoLocalToMap(ego_x, ego_y, ego_heading_deg, forward, left, p.x, p.y);
    p.vx = speed_mps;
    p.ax = 0.0;
    p.time_s = static_cast<double>(i) * dt;
    points.push_back(p);
  }

  for (size_t i = 0; i < points.size(); ++i)
  {
    double dx = 0.0;
    double dy = 0.0;
    if (i + 1 < points.size())
    {
      dx = points[i + 1].x - points[i].x;
      dy = points[i + 1].y - points[i].y;
    }
    else
    {
      dx = points[i].x - points[i - 1].x;
      dy = points[i].y - points[i - 1].y;
    }
    points[i].heading_deg = headingFromDelta(dx, dy);
  }

  return points;
}

inline Trajectory makeTrajectory(const std::string& name,
                                 double ego_x,
                                 double ego_y,
                                 double ego_heading_deg,
                                 int point_num,
                                 double length_m,
                                 double lane_width_m,
                                 double turn_radius_m,
                                 double speed_mps,
                                 double dt)
{
  Trajectory trajectory;
  trajectory.name = name;
  trajectory.id = trajectoryId(name);
  if (trajectory.id == 0)
  {
    throw std::runtime_error("unknown trajectory: " + name);
  }
  trajectory.points = generateBasePoints(name,
                                         ego_x,
                                         ego_y,
                                         ego_heading_deg,
                                         point_num,
                                         length_m,
                                         lane_width_m,
                                         turn_radius_m,
                                         speed_mps,
                                         dt);
  return trajectory;
}

inline geometry_msgs::PoseStamped pointToPose(const TrajectoryPoint& point,
                                              const std::string& frame_id,
                                              const ros::Time& stamp)
{
  geometry_msgs::PoseStamped pose;
  pose.header.frame_id = frame_id;
  pose.header.stamp = stamp;
  pose.pose.position.x = point.x;
  pose.pose.position.y = point.y;
  pose.pose.position.z = 0.0;
  const double yaw = (90.0 - point.heading_deg) * kPi / 180.0;
  pose.pose.orientation = yawToQuaternion(yaw);
  return pose;
}

inline nav_msgs::Path makePath(const std::vector<TrajectoryPoint>& points,
                               const std::string& frame_id,
                               const ros::Time& stamp)
{
  nav_msgs::Path path;
  path.header.frame_id = frame_id;
  path.header.stamp = stamp;
  path.poses.reserve(points.size());
  for (const auto& p : points)
  {
    path.poses.push_back(pointToPose(p, frame_id, stamp));
  }
  return path;
}

}  // namespace ego_trajectory_udp

#endif  // EGO_TRAJECTORY_UDP_EGO_TRAJECTORY_COMMON_HPP
