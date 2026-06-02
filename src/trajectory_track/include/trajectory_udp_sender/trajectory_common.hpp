#ifndef TRAJECTORY_UDP_SENDER_TRAJECTORY_COMMON_HPP
#define TRAJECTORY_UDP_SENDER_TRAJECTORY_COMMON_HPP

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace trajectory_udp_sender
{
constexpr double kDefaultOriginLat = 31.29171;
constexpr double kDefaultOriginLon = 121.20927;
constexpr double kEarthRadiusM = 6378137.0;
constexpr double kPi = 3.14159265358979323846;

struct LatLon
{
  double lat = 0.0;
  double lon = 0.0;

  // 1. 保留默认无参构造（防止其他地方用到默认初始化报错）
  LatLon() = default; 
  
  // 2. 增加双参数构造函数，让编译器认识大括号 {lat, lon}
  LatLon(double _lat, double _lon) : lat(_lat), lon(_lon) {}
};

struct TrajectoryPoint
{
  double x_m = 0.0;
  double y_m = 0.0;
  double lat_deg = 0.0;
  double lon_deg = 0.0;
  double heading_deg = 0.0;
  double vx_mps = 0.0;
  double ax_mps2 = 0.0;
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

inline std::pair<double, double> wgs84ToLocalXy(double origin_lat, double origin_lon, double lat, double lon)
{
  const double lat0 = origin_lat * kPi / 180.0;
  const double x = kEarthRadiusM * std::cos(lat0) * (lon - origin_lon) * kPi / 180.0;
  const double y = kEarthRadiusM * (lat - origin_lat) * kPi / 180.0;
  return std::make_pair(x, y);
}

inline std::pair<double, double> localXyToWgs84(double origin_lat, double origin_lon, double x_m, double y_m)
{
  const double lat = origin_lat + y_m / kEarthRadiusM * 180.0 / kPi;
  const double lon =
      origin_lon + x_m / (kEarthRadiusM * std::cos(origin_lat * kPi / 180.0)) * 180.0 / kPi;
  return std::make_pair(lat, lon);
}

inline double pointDistance(const TrajectoryPoint& a, const TrajectoryPoint& b)
{
  const double dx = b.x_m - a.x_m;
  const double dy = b.y_m - a.y_m;
  return std::sqrt(dx * dx + dy * dy);
}

inline double polylineLength(const std::vector<TrajectoryPoint>& points)
{
  double length = 0.0;
  for (size_t i = 1; i < points.size(); ++i)
  {
    length += pointDistance(points[i - 1], points[i]);
  }
  return length;
}

inline std::vector<TrajectoryPoint> latLonToLocal(const std::vector<LatLon>& lat_lon,
                                                  double origin_lat,
                                                  double origin_lon)
{
  std::vector<TrajectoryPoint> points;
  points.reserve(lat_lon.size());
  for (const auto& ll : lat_lon)
  {
    const auto xy = wgs84ToLocalXy(origin_lat, origin_lon, ll.lat, ll.lon);
    TrajectoryPoint p;
    p.x_m = xy.first;
    p.y_m = xy.second;
    p.lat_deg = ll.lat;
    p.lon_deg = ll.lon;
    points.push_back(p);
  }
  return points;
}

inline std::vector<TrajectoryPoint> resamplePolyline(const std::vector<TrajectoryPoint>& input, int count)
{
  if (input.size() < 2)
  {
    throw std::runtime_error("trajectory polyline must contain at least two points");
  }
  if (count <= 0)
  {
    throw std::runtime_error("trajectory point count must be positive");
  }

  const double total = polylineLength(input);
  const double step = total / std::max(count - 1, 1);
  std::vector<TrajectoryPoint> output;
  output.reserve(count);
  output.push_back(input.front());

  size_t seg = 1;
  double walked = 0.0;
  double target = step;
  while (static_cast<int>(output.size()) < count && seg < input.size())
  {
    const auto& a = input[seg - 1];
    const auto& b = input[seg];
    const double seg_len = pointDistance(a, b);
    if (target <= walked + seg_len + 1e-9)
    {
      const double ratio = seg_len <= 1e-9 ? 0.0 : (target - walked) / seg_len;
      TrajectoryPoint p;
      p.x_m = a.x_m + ratio * (b.x_m - a.x_m);
      p.y_m = a.y_m + ratio * (b.y_m - a.y_m);
      output.push_back(p);
      target += step;
    }
    else
    {
      walked += seg_len;
      ++seg;
    }
  }

  while (static_cast<int>(output.size()) < count)
  {
    output.push_back(input.back());
  }
  return output;
}

inline std::vector<TrajectoryPoint> applyLaneChangeOffset(const std::vector<TrajectoryPoint>& base,
                                                          double offset_m,
                                                          double transition_ratio)
{
  std::vector<TrajectoryPoint> output;
  output.reserve(base.size());
  const int n = static_cast<int>(base.size());
  const double transition = std::max(0.05, std::min(1.0, transition_ratio));

  for (int i = 0; i < n; ++i)
  {
    const TrajectoryPoint& p = base[i];
    double dx = 0.0;
    double dy = 0.0;
    if (i + 1 < n)
    {
      dx = base[i + 1].x_m - p.x_m;
      dy = base[i + 1].y_m - p.y_m;
    }
    else if (i > 0)
    {
      dx = p.x_m - base[i - 1].x_m;
      dy = p.y_m - base[i - 1].y_m;
    }

    const double len = std::sqrt(dx * dx + dy * dy);
    const double nx = len <= 1e-9 ? 0.0 : -dy / len;
    const double ny = len <= 1e-9 ? 0.0 : dx / len;
    const double s = n <= 1 ? 1.0 : static_cast<double>(i) / static_cast<double>(n - 1);
    const double u = std::min(s / transition, 1.0);
    const double offset = 0.5 * offset_m * (1.0 - std::cos(kPi * u));

    TrajectoryPoint q = p;
    q.x_m += nx * offset;
    q.y_m += ny * offset;
    output.push_back(q);
  }
  return output;
}

inline void fillTrajectoryMeta(std::vector<TrajectoryPoint>& points,
                               double origin_lat,
                               double origin_lon,
                               double speed,
                               double dt)
{
  for (size_t i = 0; i < points.size(); ++i)
  {
    double dx = 0.0;
    double dy = 0.0;
    if (i + 1 < points.size())
    {
      dx = points[i + 1].x_m - points[i].x_m;
      dy = points[i + 1].y_m - points[i].y_m;
    }
    else if (i > 0)
    {
      dx = points[i].x_m - points[i - 1].x_m;
      dy = points[i].y_m - points[i - 1].y_m;
    }

    const auto ll = localXyToWgs84(origin_lat, origin_lon, points[i].x_m, points[i].y_m);
    points[i].lat_deg = ll.first;
    points[i].lon_deg = ll.second;
    points[i].heading_deg = headingFromDelta(dx, dy);
    points[i].vx_mps = speed;
    points[i].ax_mps2 = 0.0;
    points[i].time_s = static_cast<double>(i) * dt;
  }
}

// 1. 短直行：只截取嘉实路最开头的 6 个点，距离短且紧挨起点
inline std::vector<LatLon> shortJiasiRoadLatLon()
{
  return {{31.2914788, 121.2055977}, {31.2913944, 121.2071470}, {31.2913716, 121.2079384},
          {31.2913452, 121.2086767}, {31.2913111, 121.2099152}, {31.2913000, 121.2102001}};
}

// 2. 真实路网短环线：紧贴嘉实路起点的真实闭环路段，最终完美回到起点
inline std::vector<LatLon> shortRingRoadLatLon()
{
  return {
    {31.2914788, 121.2055977}, {31.2916667, 121.2056633}, {31.2918496, 121.2057127},
    {31.2921206, 121.2057479}, {31.2922535, 121.2057318}, {31.2924323, 121.2056728},
    {31.2926477, 121.2055387}, {31.2928070, 121.2053904}, {31.2928632, 121.2052490},
    {31.2929274, 121.2051042}, {31.2929824, 121.2049111}, {31.2930374, 121.2029262},
    {31.2930224, 121.2026282}, {31.2929968, 121.2024335}, {31.2929143, 121.2022128},
    {31.2928715, 121.2021526}, {31.2928036, 121.2020572}, {31.2921687, 121.2014397},
    {31.2919464, 121.2013169}, {31.2917495, 121.2012764}, {31.2915155, 121.2013008},
    {31.2912771, 121.2014135}, {31.2911599, 121.2015267}, {31.2907451, 121.2019273},
    {31.2906173, 121.2020507}, {31.2898927, 121.2027331}, {31.2896910, 121.2029369},
    {31.2894480, 121.2031891}, {31.2892555, 121.2034358}, {31.2897002, 121.2040527},
    {31.2901231, 121.2045752}, {31.2903603, 121.2048681}, {31.2906124, 121.2050988},
    {31.2908920, 121.2053159}, {31.2910525, 121.2054046}, {31.2912267, 121.2054904},
    {31.2914788, 121.2055977} // 终点回到起点，形成闭环
  };
}

inline uint8_t trajectoryId(const std::string& name)
{
  if (name == "straight") return 1;
  if (name == "lane_change") return 2;
  if (name == "circle") return 3;
  return 0;
}

inline Trajectory makeGlobalTrajectory(const std::string& name,
                                       int total_points,
                                       double speed,
                                       double dt,
                                       double origin_lat,
                                       double origin_lon,
                                       double lane_change_offset_m)
{
  Trajectory trajectory;
  trajectory.name = name;
  trajectory.id = trajectoryId(name);
  if (trajectory.id == 0)
  {
    throw std::runtime_error("unknown trajectory: " + name);
  }

  // 1. 如果是直行：使用短嘉实路
  if (name == "straight")
  {
    trajectory.points = resamplePolyline(latLonToLocal(shortJiasiRoadLatLon(), origin_lat, origin_lon), total_points);
  }
  // 2. 如果是换道：依然使用短嘉实路作为基础(base)，在这个路段上生成横向偏移换道轨迹
  else if (name == "lane_change")
  {
    const auto base = resamplePolyline(latLonToLocal(shortJiasiRoadLatLon(), origin_lat, origin_lon), total_points);
    trajectory.points = applyLaneChangeOffset(base, lane_change_offset_m, 0.65);
  }
  // 3. 如果是转圈：使用在起点附近的闭环短环线
  else
  {
    trajectory.points = resamplePolyline(latLonToLocal(shortRingRoadLatLon(), origin_lat, origin_lon), total_points);
  }

  fillTrajectoryMeta(trajectory.points, origin_lat, origin_lon, speed, dt);
  return trajectory;
}

}  // namespace trajectory_udp_sender

#endif  // TRAJECTORY_UDP_SENDER_TRAJECTORY_COMMON_HPP