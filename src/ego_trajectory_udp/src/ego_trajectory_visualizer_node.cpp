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

// 修正：全部统一为绘制散点（用于绘制全局绿点和局部红点）
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
      // 1. 全局路径点（绿色）
      markers.markers.push_back(
          pathPoints(global_path_, frame_id_, stamp, "global_path_points", 0, color(0.0, 1.0, 0.0, 1.0), 0.2, 0.01));

      if (!global_path_.poses.empty())
      {
        const auto& start_pose = global_path_.poses.front().pose;

        // 2. 起点位置（蓝色的球）
        auto start_pt = baseMarker(frame_id_, stamp, "ego_start_point", 1, visualization_msgs::Marker::SPHERE);
        start_pt.scale.x = 0.5;
        start_pt.scale.y = 0.5;
        start_pt.scale.z = 0.5;
        start_pt.color = color(0.0, 0.5, 1.0, 1.0);
        start_pt.pose = start_pose;
        start_pt.pose.position.z = 0.1;
        markers.markers.push_back(start_pt);

        // 3. 初始航向（亮黄色的指示箭头）
        auto arrow = baseMarker(frame_id_, stamp, "ego_start_arrow", 2, visualization_msgs::Marker::ARROW);
        arrow.scale.x = 2.5;  // 箭头总长度
        arrow.scale.y = 0.4;  // 箭头粗细
        arrow.scale.z = 0.4;
        arrow.color = color(1.0, 1.0, 0.0, 1.0);
        arrow.pose = start_pose;
        arrow.pose.position.z = 0.2;
        markers.markers.push_back(arrow);
      }
    }

    if (have_local_path_)
    {
      // 4. 局部轨迹点（红色）
      markers.markers.push_back(
          pathPoints(local_path_, frame_id_, stamp, "local_path_points", 3, color(1.0, 0.0, 0.0, 1.0), 0.35, 0.05));
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