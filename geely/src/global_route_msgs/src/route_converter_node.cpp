#include <ros/ros.h>
#include <cmath>
#include <vector>

#include <Planning_Module/trajectory_planning_msg.h>   // 上游：/Trajectory_Planning
#include <interface/Global_route.h>            // 下游：/global_route_info
#include <interface/Route.h>
#include <interface/Route_point.h>

class RouteConverter {
public:
  explicit RouteConverter(ros::NodeHandle& nh) {
    sub_ = nh.subscribe("/Trajectory_Planning", 10, &RouteConverter::cb, this);
    pub_ = nh.advertise<interface::Global_route>("/global_route_info", 2);
    ROS_INFO("[route_converter] Sub: /Trajectory_Planning  Pub: /global_route_info");
  }

private:
  static inline bool finite(double v) { return std::isfinite(v); }

  void cb(const Planning_Module::trajectory_planning_msg::ConstPtr& msg) {
    interface::Global_route out;

    // 1) 头信息透传（如需强制 frame_id，可自行覆盖）
    out.header = msg->header;
    // out.header.frame_id = "map";

    // 2) 仅用 fx/fy 生成一条 Route
    interface::Route route;
    route.points.reserve(200);

    for (int i = 0; i < 200; ++i) {
      const double x = msg->fx[i];
      const double y = msg->fy[i];
      if (!finite(x) || !finite(y)) continue;   // 跳过 NaN/Inf
      interface::Route_point p;
      p.x = x;
      p.y = y;
      route.points.push_back(p);
    }

    // 3) 组装 Global_route
    out.routes.clear();
    out.routes.push_back(route);
    out.target_route_id = 0;

    pub_.publish(out);
    // ROS_INFO_STREAM("Pub Global_route Success");
  }

  ros::Subscriber sub_;
  ros::Publisher  pub_;
};

int main(int argc, char** argv) {
  ros::init(argc, argv, "route_converter_node");
  ros::NodeHandle nh;
  RouteConverter node(nh);
  ros::spin();
  return 0;
}
