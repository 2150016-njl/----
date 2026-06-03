#include <geometry_msgs/Point.h>
#include <nav_msgs/Path.h>
#include <ros/ros.h>
#include <std_msgs/ColorRGBA.h>
#include <visualization_msgs/MarkerArray.h>

#include <fstream>
#include <cctype>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

#include "trajectory_udp_sender/trajectory_common.hpp"

namespace
{
double parseJsonNumber(const std::string& line)
{
  const size_t colon = line.find(':');
  if (colon == std::string::npos)
  {
    throw std::runtime_error("invalid numeric JSON line: " + line);
  }
  size_t begin = colon + 1;
  while (begin < line.size() && (line[begin] == ' ' || line[begin] == '\t'))
  {
    ++begin;
  }
  size_t end = begin;
  while (end < line.size() &&
         (std::isdigit(line[end]) || line[end] == '-' || line[end] == '+' || line[end] == '.'
          || line[end] == 'e' || line[end] == 'E'))
  {
    ++end;
  }
  return std::stod(line.substr(begin, end - begin));
}

std_msgs::ColorRGBA color(double r, double g, double b, double a)
{
  std_msgs::ColorRGBA c;
  c.r = static_cast<float>(r);
  c.g = static_cast<float>(g);
  c.b = static_cast<float>(b);
  c.a = static_cast<float>(a);
  return c;
}

geometry_msgs::Point makePoint(double x, double y, double z)
{
  geometry_msgs::Point p;
  p.x = x;
  p.y = y;
  p.z = z;
  return p;
}

visualization_msgs::Marker baseMarker(const std::string& frame_id,
                                      const ros::Time& stamp,
                                      const std::string& ns,
                                      int id,
                                      int type)
{
  visualization_msgs::Marker marker;
  marker.header.frame_id = frame_id;
  marker.header.stamp = stamp;
  marker.ns = ns;
  marker.id = id;
  marker.type = type;
  marker.action = visualization_msgs::Marker::ADD;
  marker.pose.orientation.w = 1.0;
  return marker;
}

visualization_msgs::Marker pathToLineStrip(const nav_msgs::Path& path,
                                           const std::string& frame_id,
                                           const ros::Time& stamp,
                                           const std::string& ns,
                                           int id,
                                           const std_msgs::ColorRGBA& c,
                                           double width,
                                           double z)
{
  auto marker = baseMarker(frame_id, stamp, ns, id, visualization_msgs::Marker::LINE_STRIP);
  marker.scale.x = width;
  marker.color = c;
  marker.points.reserve(path.poses.size());
  for (const auto& pose : path.poses)
  {
    marker.points.push_back(makePoint(pose.pose.position.x, pose.pose.position.y, z));
  }
  return marker;
}

visualization_msgs::Marker pathToSphereList(const nav_msgs::Path& path,
                                            const std::string& frame_id,
                                            const ros::Time& stamp,
                                            const std::string& ns,
                                            int id,
                                            const std_msgs::ColorRGBA& c,
                                            double radius,
                                            double z)
{
  auto marker = baseMarker(frame_id, stamp, ns, id, visualization_msgs::Marker::SPHERE_LIST);
  marker.scale.x = radius;
  marker.scale.y = radius;
  marker.scale.z = radius;
  marker.color = c;
  marker.points.reserve(path.poses.size());
  for (const auto& pose : path.poses)
  {
    marker.points.push_back(makePoint(pose.pose.position.x, pose.pose.position.y, z));
  }
  return marker;
}

}  // namespace

class TrajectoryVisualizerNode
{
public:
  TrajectoryVisualizerNode() : private_nh_("~")
  {
    private_nh_.param<std::string>("frame_id", frame_id_, "map");
    private_nh_.param<std::string>("map_json_path", map_json_path_, std::string("export.json"));
    private_nh_.param<double>("publish_rate", publish_rate_, 10.0);
    private_nh_.param<double>("origin_lat", origin_lat_, trajectory_udp_sender::kDefaultOriginLat);
    private_nh_.param<double>("origin_lon", origin_lon_, trajectory_udp_sender::kDefaultOriginLon);

    map_segments_ = loadMapSegments(map_json_path_);

    marker_pub_ = nh_.advertise<visualization_msgs::MarkerArray>("trajectory_markers", 1);
    global_sub_ = nh_.subscribe("trajectory_global_path", 1, &TrajectoryVisualizerNode::globalPathCallback, this);
    local_sub_ = nh_.subscribe("trajectory_local_path", 1, &TrajectoryVisualizerNode::localPathCallback, this);

    timer_ = nh_.createTimer(ros::Duration(1.0 / publish_rate_), &TrajectoryVisualizerNode::timerCallback, this);
    ROS_INFO("trajectory_visualizer_node loaded %zu map polylines from %s", map_segments_.size(), map_json_path_.c_str());
  }

private:
  std::vector<std::vector<geometry_msgs::Point>> loadMapSegments(const std::string& path) const
  {
    std::ifstream input(path.c_str());
    if (!input)
    {
      throw std::runtime_error("failed to open map_json_path: " + path);
    }

    std::vector<std::vector<geometry_msgs::Point>> segments;
    std::vector<geometry_msgs::Point> current;
    std::string line;
    bool in_geometry = false;
    bool have_lat = false;
    double lat = 0.0;

    while (std::getline(input, line))
    {
      if (!in_geometry && line.find("\"geometry\"") != std::string::npos)
      {
        in_geometry = true;
        have_lat = false;
        current.clear();
        continue;
      }

      if (!in_geometry)
      {
        continue;
      }

      if (line.find("\"lat\"") != std::string::npos)
      {
        lat = parseJsonNumber(line);
        have_lat = true;
        continue;
      }

      if (line.find("\"lon\"") != std::string::npos && have_lat)
      {
        const double lon = parseJsonNumber(line);
        const auto xy = trajectory_udp_sender::wgs84ToLocalXy(origin_lat_, origin_lon_, lat, lon);
        current.push_back(makePoint(xy.first, xy.second, 0.0));
        have_lat = false;
        continue;
      }

      if (line.find(']') != std::string::npos)
      {
        if (current.size() >= 2)
        {
          segments.push_back(current);
        }
        current.clear();
        in_geometry = false;
        have_lat = false;
      }
    }

    return segments;
  }

  void globalPathCallback(const nav_msgs::Path::ConstPtr& msg)
  {
    global_path_ = *msg;
    have_global_path_ = true;
  }

  void localPathCallback(const nav_msgs::Path::ConstPtr& msg)
  {
    local_path_ = *msg;
    have_local_path_ = true;
  }

  void timerCallback(const ros::TimerEvent&)
  {
    const ros::Time stamp = ros::Time::now();
    visualization_msgs::MarkerArray markers;
    markers.markers.reserve(5);

    auto map_marker = baseMarker(frame_id_, stamp, "map_roads_gray", 0, visualization_msgs::Marker::LINE_LIST);
    map_marker.scale.x = 0.55;
    map_marker.color = color(0.42, 0.42, 0.42, 0.9);
    for (const auto& segment : map_segments_)
    {
      for (size_t i = 1; i < segment.size(); ++i)
      {
        geometry_msgs::Point a = segment[i - 1];
        geometry_msgs::Point b = segment[i];
        a.z = -0.03;
        b.z = -0.03;
        map_marker.points.push_back(a);
        map_marker.points.push_back(b);
      }
    }
    markers.markers.push_back(map_marker);

    if (have_global_path_)
    {
      markers.markers.push_back(
          pathToLineStrip(global_path_, frame_id_, stamp, "selected_global_path", 1, color(0.08, 0.32, 0.95, 1.0), 1.2, 0.05));
    }

    if (have_local_path_)
    {
      markers.markers.push_back(
          pathToLineStrip(local_path_, frame_id_, stamp, "current_local_50_path", 2, color(1.0, 0.35, 0.02, 1.0), 2.6, 0.1));
      markers.markers.push_back(
          pathToSphereList(local_path_, frame_id_, stamp, "current_local_50_points", 3, color(1.0, 0.85, 0.05, 1.0), 1.1, 0.15));
    }

    marker_pub_.publish(markers);
  }

  ros::NodeHandle nh_;
  ros::NodeHandle private_nh_;
  ros::Publisher marker_pub_;
  ros::Subscriber global_sub_;
  ros::Subscriber local_sub_;
  ros::Timer timer_;

  std::string frame_id_ = "map";
  std::string map_json_path_ = "export.json";
  double publish_rate_ = 10.0;
  double origin_lat_ = trajectory_udp_sender::kDefaultOriginLat;
  double origin_lon_ = trajectory_udp_sender::kDefaultOriginLon;

  std::vector<std::vector<geometry_msgs::Point>> map_segments_;
  nav_msgs::Path global_path_;
  nav_msgs::Path local_path_;
  bool have_global_path_ = false;
  bool have_local_path_ = false;
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "trajectory_visualizer_node");
  try
  {
    TrajectoryVisualizerNode node;
    ros::spin();
  }
  catch (const std::exception& e)
  {
    ROS_FATAL_STREAM("trajectory_visualizer_node failed: " << e.what());
    return 1;
  }
  return 0;
}
