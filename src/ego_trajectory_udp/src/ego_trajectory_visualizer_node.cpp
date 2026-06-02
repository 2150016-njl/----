#include <geometry_msgs/Point.h>
#include <nav_msgs/Path.h>
#include <ros/ros.h>
#include <std_msgs/ColorRGBA.h>
#include <visualization_msgs/MarkerArray.h>

#include <string>

namespace
{
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

visualization_msgs::Marker pathLine(const nav_msgs::Path& path,
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

visualization_msgs::Marker pathPoints(const nav_msgs::Path& path,
                                      const std::string& frame_id,
                                      const ros::Time& stamp,
                                      const std::string& ns,
                                      int id,
                                      const std_msgs::ColorRGBA& c,
                                      double size,
                                      double z)
{
  auto marker = baseMarker(frame_id, stamp, ns, id, visualization_msgs::Marker::SPHERE_LIST);
  marker.scale.x = size;
  marker.scale.y = size;
  marker.scale.z = size;
  marker.color = c;
  marker.points.reserve(path.poses.size());
  for (const auto& pose : path.poses)
  {
    marker.points.push_back(makePoint(pose.pose.position.x, pose.pose.position.y, z));
  }
  return marker;
}
}  // namespace

class EgoTrajectoryVisualizerNode
{
public:
  EgoTrajectoryVisualizerNode() : private_nh_("~")
  {
    private_nh_.param<std::string>("frame_id", frame_id_, "map");
    private_nh_.param<double>("publish_rate", publish_rate_, 10.0);

    marker_pub_ = nh_.advertise<visualization_msgs::MarkerArray>("ego_trajectory_markers", 1);
    global_sub_ = nh_.subscribe("trajectory_global_path", 1, &EgoTrajectoryVisualizerNode::globalPathCallback, this);
    local_sub_ = nh_.subscribe("trajectory_local_path", 1, &EgoTrajectoryVisualizerNode::localPathCallback, this);
    timer_ = nh_.createTimer(ros::Duration(1.0 / publish_rate_), &EgoTrajectoryVisualizerNode::timerCallback, this);
  }

private:
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

    if (have_global_path_)
    {
      markers.markers.push_back(
          pathLine(global_path_, frame_id_, stamp, "global_path", 0, color(0.1, 0.35, 1.0, 1.0), 0.18, 0.02));
      if (!global_path_.poses.empty())
      {
        auto start = baseMarker(frame_id_, stamp, "ego_start", 1, visualization_msgs::Marker::SPHERE);
        start.scale.x = 0.7;
        start.scale.y = 0.7;
        start.scale.z = 0.7;
        start.color = color(0.0, 0.9, 0.2, 1.0);
        start.pose.position = global_path_.poses.front().pose.position;
        start.pose.position.z = 0.25;
        markers.markers.push_back(start);
      }
    }

    if (have_local_path_)
    {
      markers.markers.push_back(
          pathLine(local_path_, frame_id_, stamp, "local_path_80", 2, color(1.0, 0.25, 0.0, 1.0), 0.32, 0.08));
      markers.markers.push_back(
          pathPoints(local_path_, frame_id_, stamp, "local_points_80", 3, color(1.0, 0.85, 0.0, 1.0), 0.22, 0.12));
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
  double publish_rate_ = 10.0;
  nav_msgs::Path global_path_;
  nav_msgs::Path local_path_;
  bool have_global_path_ = false;
  bool have_local_path_ = false;
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "ego_trajectory_visualizer_node");
  EgoTrajectoryVisualizerNode node;
  ros::spin();
  return 0;
}
