#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <geometry_msgs/Point.h>

#include <rl_planning/RLPlanningPath.h>
#include <rl_planning/Trajectory_planning.h>
#include <rl_planning/VehicleInfoBatch.h>
// #include <rl_planning/ObjInfoBatch.h>
#include <interface/Global_route.h>
#include <ros_interface/PredictionObstacles.h>
#include <ros_interface/Location.h>
#include <cmath>
#include <set>
#include <utility> 
using namespace std;

// Global variables without mutex protection
interface::Global_route::ConstPtr latest_global_route_msg;
ros_interface::Location::ConstPtr latest_location_msg;
rl_planning::VehicleInfoBatch::ConstPtr latest_obj_info_msg;

// Added helper: transform a world point (x, y) into ego-centric frame
geometry_msgs::Point transformToEgoFrame(
    double x, double y, double ego_x, double ego_y, double ego_psi) {
    geometry_msgs::Point p_local;
    double dx = x - ego_x;
    double dy = y - ego_y;
    double alpha = - ego_psi + M_PI_2;  // 使ego航向对齐Y轴
    p_local.x = cos(alpha) * dx - sin(alpha) * dy;
    p_local.y = sin(alpha) * dx + cos(alpha) * dy;
    p_local.z = 0.0;
    return p_local;
}

// Forward declarations
void create_route_markers(visualization_msgs::MarkerArray& marker_array,
                          const interface::Global_route::ConstPtr& glb_msg);
void create_ego_marker(visualization_msgs::MarkerArray& marker_array, 
                       const rl_planning::VehicleInfoBatch::ConstPtr& obj_msg);
void create_other_vehicle_markers(visualization_msgs::MarkerArray& marker_array,
                                  const rl_planning::VehicleInfoBatch::ConstPtr& obj_msg);

// 全局发布器
ros::Publisher global_route_marker_pub;
ros::Publisher ego_vehicle_marker_pub;
ros::Publisher other_vehicles_marker_pub;

// Global Route Callback
void global_route_callback(const interface::Global_route::ConstPtr& msg) {
    // 获取当前主车状态
    if (!latest_obj_info_msg || latest_obj_info_msg->vehicle_info_batch.empty()) {
        ROS_WARN("No ego vehicle info available for global route visualization");
        return;
    }

    visualization_msgs::MarkerArray marker_array;
    create_route_markers(marker_array, msg);
    global_route_marker_pub.publish(marker_array);
}

// Vehicle Info Callback - 现在同时处理主车和周车
void obj_info_callback(const rl_planning::VehicleInfoBatch::ConstPtr& msg) {
    // 更新全局车辆信息
    latest_obj_info_msg = msg;
    
    // 发布主车marker
    visualization_msgs::MarkerArray ego_marker_array;
    create_ego_marker(ego_marker_array, msg);
    ego_vehicle_marker_pub.publish(ego_marker_array);
    
    // 发布周车marker
    visualization_msgs::MarkerArray other_vehicles_marker_array;
    create_other_vehicle_markers(other_vehicles_marker_array, msg);
    other_vehicles_marker_pub.publish(other_vehicles_marker_array);
}

// Location Callback
void location_callback(const ros_interface::Location::ConstPtr& msg) {
    latest_location_msg = msg;
}

// Generic Marker generation function
template <typename T>
void generate_marker(const T& msg, visualization_msgs::MarkerArray& marker_array,
                     const string& ns, const string& frame_id, const vector<float>& color) {
    // 获取当前主车状态
    if (!latest_obj_info_msg || latest_obj_info_msg->vehicle_info_batch.empty()) {
        ROS_WARN("No ego vehicle info available for %s visualization", ns.c_str());
        return;
    }
    
    const auto& ego_info = latest_obj_info_msg->vehicle_info_batch[0];
    double ego_x = ego_info.actor_pos.x;
    double ego_y = ego_info.actor_pos.y;
    double ego_psi = ego_info.actor_psi;
    
    visualization_msgs::Marker marker;
    marker.header.frame_id = frame_id;
    marker.header.stamp = ros::Time::now();
    marker.ns = ns;
    marker.id = 0;
    marker.type = visualization_msgs::Marker::POINTS;
    marker.action = visualization_msgs::Marker::ADD;
    marker.pose.orientation.w = 1.0;
    marker.scale.x = 0.5;
    marker.scale.y = 0.5;
    marker.color.r = color[0];
    marker.color.g = color[1];
    marker.color.b = color[2];
    marker.color.a = color[3];
    marker.lifetime = ros::Duration(0.2);

    for (size_t i = 0; i < msg.fx.size(); ++i) {
        double wx = msg.fx[i];
        double wy = msg.fy[i];
        geometry_msgs::Point p = transformToEgoFrame(wx, wy, ego_x, ego_y, ego_psi);
        marker.points.push_back(p);
    }

    marker_array.markers.push_back(marker);
}

// Generic planning marker callback
template <typename T>
void planning_marker_callback(const typename T::ConstPtr& msg, ros::Publisher& marker_pub,
                              const string& ns, const string& frame_id, const vector<float>& color) {
    visualization_msgs::MarkerArray marker_array;
    generate_marker(*msg, marker_array, ns, frame_id, color);
    marker_pub.publish(marker_array);
}

// RL Planning Path callback
void planning_path_callback(const rl_planning::RLPlanningPath::ConstPtr& msg,
                            ros::Publisher& marker_pub) {
    planning_marker_callback<rl_planning::RLPlanningPath>(
        msg, marker_pub, "planning_path", "map", {1.0, 1.0, 0.0, 1.0});
}

// RL Planning Trajectory callback (newly added)
void planning_traj_callback(const rl_planning::RLPlanningPath::ConstPtr& msg,
                            ros::Publisher& marker_pub) {
    planning_marker_callback<rl_planning::RLPlanningPath>(
        msg, marker_pub, "planning_traj", "map", {0.0, 1.0, 1.0, 1.0});
}

// Create route markers
void create_route_markers(visualization_msgs::MarkerArray& marker_array,
                          const interface::Global_route::ConstPtr& glb_msg) {

    // 获取当前主车状态
    const auto& ego_info = latest_obj_info_msg->vehicle_info_batch[0];
    double ego_x = ego_info.actor_pos.x;

    double ego_y = ego_info.actor_pos.y;
    double ego_psi = ego_info.actor_psi;

    visualization_msgs::Marker route_marker;
    visualization_msgs::Marker target_route_marker;

    route_marker.header.frame_id = "map";
    route_marker.header.stamp = ros::Time::now();
    route_marker.ns = "routes";
    route_marker.id = 99;
    route_marker.type = visualization_msgs::Marker::POINTS;
    route_marker.action = 0;
    route_marker.pose.orientation.w = 1;
    route_marker.scale.x = 0.5;
    route_marker.scale.y = 0.5;
    route_marker.color.r = 255 / 255;
    route_marker.color.g = 0 / 255;
    route_marker.color.b = 0 / 255;
    route_marker.color.a = 0.4;
    route_marker.lifetime.sec = 0.2;

    target_route_marker = route_marker;
    target_route_marker.ns = "target_route";
    target_route_marker.color.r = 0 / 255;
    target_route_marker.color.g = 255 / 255;
    target_route_marker.color.b = 0 / 255;
    target_route_marker.color.a = 0.8;

    int lane_num = glb_msg->routes.size();

    for (int j = 0; j < lane_num; ++j) {
        for (size_t i = 0; i < glb_msg->routes[j].points.size(); ++i) {
            double wx = glb_msg->routes[j].points[i].x;
            double wy = glb_msg->routes[j].points[i].y;

            geometry_msgs::Point p = transformToEgoFrame(wx, wy, ego_x, ego_y, ego_psi);

            if (j == glb_msg->target_route_id) {
                target_route_marker.points.push_back(p);
            } else {
                route_marker.points.push_back(p);
            }
        }
        if (j == glb_msg->target_route_id) {
            marker_array.markers.push_back(target_route_marker);
        } else {
            marker_array.markers.push_back(route_marker);
        }
    }
}

// Create ego vehicle marker
void create_ego_marker(visualization_msgs::MarkerArray& marker_array, 
                       const rl_planning::VehicleInfoBatch::ConstPtr& obj_msg) {
    if (obj_msg->vehicle_info_batch.empty()) return;
    const auto& ego_info = obj_msg->vehicle_info_batch[0];

    double ego_x = ego_info.actor_pos.x;
    double ego_y = ego_info.actor_pos.y;
    double ego_psi = ego_info.actor_psi;

    visualization_msgs::Marker ego_marker;
    ego_marker.header.frame_id = "map";
    ego_marker.header.stamp = ros::Time::now();
    ego_marker.ns = "ego_vehicle";
    ego_marker.id = 33;
    ego_marker.type = visualization_msgs::Marker::LINE_LIST;
    ego_marker.action = visualization_msgs::Marker::ADD;
    ego_marker.scale.x = 0.2;
    ego_marker.scale.y = 0.2;
    ego_marker.color.r = 0 /255;
    ego_marker.color.g = 0 / 255;
    ego_marker.color.b = 255 / 255;
    ego_marker.color.a = 1.0;
    // ego_marker.color.r = 0 / 255.0;     // 红色分量 = 0
    // ego_marker.color.g = 255 / 255.0;   // 绿色分量 = 1.0（绿色）
    // ego_marker.color.b = 0 / 255.0;     // 蓝色分量 = 0
    // ego_marker.color.a = 1.0;
    ego_marker.lifetime = ros::Duration(0.15);

    // 使用凸包点绘制主车轮廓
    if (ego_info.convex_hull.polygon.points.size() >= 4) {
        double point_1[3] = {ego_info.convex_hull.polygon.points[0].x,
                             ego_info.convex_hull.polygon.points[0].y,
                             ego_info.convex_hull.polygon.points[0].z};
        double point_2[3] = {ego_info.convex_hull.polygon.points[1].x,
                            ego_info.convex_hull.polygon.points[1].y,
                            ego_info.convex_hull.polygon.points[1].z};
        double point_3[3] = {ego_info.convex_hull.polygon.points[2].x,
                            ego_info.convex_hull.polygon.points[2].y,
                            ego_info.convex_hull.polygon.points[2].z};
        double point_4[3] = {ego_info.convex_hull.polygon.points[3].x,
                            ego_info.convex_hull.polygon.points[3].y,
                            ego_info.convex_hull.polygon.points[3].z};

        geometry_msgs::Point p1, p2, p3, p4;
        p1 = transformToEgoFrame(point_1[0], point_1[1], ego_x, ego_y, ego_psi);
        p2 = transformToEgoFrame(point_2[0], point_2[1], ego_x, ego_y, ego_psi);
        p3 = transformToEgoFrame(point_3[0], point_3[1], ego_x, ego_y, ego_psi);
        p4 = transformToEgoFrame(point_4[0], point_4[1], ego_x, ego_y, ego_psi);

     ego_marker.color.r = 0 / 255.0;     // 红色分量 = 0
    // ego_marker.color.g = 255 / 255.0;   // 绿色分量 = 1.0（绿色）
    // ego_marker.color.b = 0 / 255.0;     // 蓝色分量 = 0
    // ego_marker.color.a = 1.0;   ego_marker.points.push_back(p1);
        ego_marker.points.push_back(p2);
        ego_marker.points.push_back(p2);
        ego_marker.points.push_back(p3);
        ego_marker.points.push_back(p3);
        ego_marker.points.push_back(p4);
        ego_marker.points.push_back(p4);
        ego_marker.points.push_back(p1);

        marker_array.markers.push_back(ego_marker);
    }
}

// Static variable for tracking obstacle IDs
static std::set<int> previous_obstacle_ids_;

// 修改后的函数：从VehicleInfoBatch中提取周车信息
// 修改后的周车绘制函数 - 使用和主车相同的矩形框绘制方法
void create_other_vehicle_markers(visualization_msgs::MarkerArray& marker_array,
                                  const rl_planning::VehicleInfoBatch::ConstPtr& obj_msg) {
    if (obj_msg->vehicle_info_batch.size() <= 1) {
        return;
    }

    // 获取当前主车状态
    const auto& ego_info = obj_msg->vehicle_info_batch[0];
    double ego_x = ego_info.actor_pos.x;
    double ego_y = ego_info.actor_pos.y;
    double ego_psi = ego_info.actor_psi;

    std::set<int> current_obstacle_ids;

    // 遍历所有周车（从索引1开始）
    for (size_t i = 1; i < obj_msg->vehicle_info_batch.size(); ++i) {
        const auto& other_vehicle = obj_msg->vehicle_info_batch[i];
        int id = i;
        current_obstacle_ids.insert(id);

        visualization_msgs::Marker box_marker;
        box_marker.header.frame_id = "map";
        box_marker.header.stamp = ros::Time::now();
        box_marker.ns = "other_vehicles";
        box_marker.id = id;
        box_marker.type = visualization_msgs::Marker::LINE_LIST;
        box_marker.action = visualization_msgs::Marker::ADD;
        box_marker.scale.x = 0.2;
        box_marker.color.a = 1.0;
        box_marker.color.r = 1.0;  // 橙色
        box_marker.color.g = 0.5;
        box_marker.color.b = 0.0;
        box_marker.lifetime = ros::Duration(0.2);

        // 文本标记
        visualization_msgs::Marker text_marker;
        text_marker.header = box_marker.header;
        text_marker.ns = "obstacle_ids";
        text_marker.id = id;
        text_marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
        text_marker.action = visualization_msgs::Marker::ADD;
        text_marker.scale.z = 0.5;
        text_marker.color.a = 1.0;
        text_marker.color.r = 1.0;
        text_marker.color.g = 1.0;
        text_marker.color.b = 1.0;
        text_marker.lifetime = box_marker.lifetime;
        text_marker.text = std::to_string(id);
        
        double global_text_x = other_vehicle.actor_pos.x;
        double global_text_y = other_vehicle.actor_pos.y;
        geometry_msgs::Point local_text_pos = transformToEgoFrame(global_text_x, global_text_y, ego_x, ego_y, ego_psi);
        text_marker.pose.position.x = local_text_pos.x;
        text_marker.pose.position.y = local_text_pos.y;
        text_marker.pose.position.z = other_vehicle.actor_pos.z + 1.0;

        // 使用和主车相同的凸包点方法绘制矩形框
        if (other_vehicle.convex_hull.polygon.points.size() >= 4) {
            // 提取四个角点 - 和主车绘制方法完全一样
            double point_1[3] = {other_vehicle.convex_hull.polygon.points[0].x,
                                 other_vehicle.convex_hull.polygon.points[0].y,
                                 other_vehicle.convex_hull.polygon.points[0].z};
            double point_2[3] = {other_vehicle.convex_hull.polygon.points[1].x,
                                other_vehicle.convex_hull.polygon.points[1].y,
                                other_vehicle.convex_hull.polygon.points[1].z};
            double point_3[3] = {other_vehicle.convex_hull.polygon.points[2].x,
                                other_vehicle.convex_hull.polygon.points[2].y,
                                other_vehicle.convex_hull.polygon.points[2].z};
            double point_4[3] = {other_vehicle.convex_hull.polygon.points[3].x,
                                other_vehicle.convex_hull.polygon.points[3].y,
                                other_vehicle.convex_hull.polygon.points[3].z};

            // 转换到主车坐标系
            geometry_msgs::Point p1, p2, p3, p4;
            p1 = transformToEgoFrame(point_1[0], point_1[1], ego_x, ego_y, ego_psi);
            p2 = transformToEgoFrame(point_2[0], point_2[1], ego_x, ego_y, ego_psi);
            p3 = transformToEgoFrame(point_3[0], point_3[1], ego_x, ego_y, ego_psi);
            p4 = transformToEgoFrame(point_4[0], point_4[1], ego_x, ego_y, ego_psi);

            // 绘制矩形边框 - 和主车绘制方法完全一样
            box_marker.points.push_back(p1);
            box_marker.points.push_back(p2);
            box_marker.points.push_back(p2);
            box_marker.points.push_back(p3);
            box_marker.points.push_back(p3);
            box_marker.points.push_back(p4);
            box_marker.points.push_back(p4);
            box_marker.points.push_back(p1);
        }

        marker_array.markers.push_back(box_marker);
        marker_array.markers.push_back(text_marker);
    }

    // 删除不再存在的周车marker
    for (const auto& old_id : previous_obstacle_ids_) {
        if (current_obstacle_ids.find(old_id) == current_obstacle_ids.end()) {
            visualization_msgs::Marker delete_box;
            delete_box.header.frame_id = "map";
            delete_box.header.stamp = ros::Time::now();
            delete_box.ns = "other_vehicles";
            delete_box.id = old_id;
            delete_box.action = visualization_msgs::Marker::DELETE;
            marker_array.markers.push_back(delete_box);

            visualization_msgs::Marker delete_text;
            delete_text.header = delete_box.header;
            delete_text.ns = "obstacle_ids";
            delete_text.id = old_id;
            delete_text.action = visualization_msgs::Marker::DELETE;
            marker_array.markers.push_back(delete_text);
        }
    }

    previous_obstacle_ids_ = current_obstacle_ids;
}

int main(int argc, char* argv[]) {
    ros::init(argc, argv, "rl_planning_marker");
    ros::NodeHandle nh;
    
    global_route_marker_pub = nh.advertise<visualization_msgs::MarkerArray>("/global_route_marker", 1);
    ego_vehicle_marker_pub  = nh.advertise<visualization_msgs::MarkerArray>("/ego_vehicle_marker", 1);
    other_vehicles_marker_pub = nh.advertise<visualization_msgs::MarkerArray>("/other_vehicles_marker", 1);

    ros::Publisher path_marker_pub = nh.advertise<visualization_msgs::MarkerArray>("/planning_path_marker", 1);
    ros::Publisher traj_marker_pub = nh.advertise<visualization_msgs::MarkerArray>("/planning_traj_marker", 1);

    ros::Subscriber planning_path_sub = nh.subscribe<rl_planning::RLPlanningPath>(
        "/RL_Planning_Path", 1, boost::bind(planning_path_callback, _1, boost::ref(path_marker_pub)));

    ros::Subscriber planning_traj_sub = nh.subscribe<rl_planning::RLPlanningPath>(
        "/RL_Planning_Traj", 1, boost::bind(planning_traj_callback, _1, boost::ref(traj_marker_pub)));

    ros::Subscriber global_route_sub = nh.subscribe<interface::Global_route>(
        "/global_route_info", 1, global_route_callback);
        
    // 只保留一个obj_info_sub，它会同时处理主车和周车
    ros::Subscriber obj_info_sub = nh.subscribe<rl_planning::VehicleInfoBatch>(
        "/vehicle_info_batch", 1, obj_info_callback);

    // 删除了prediction_sub

    ros::spin();
    return 0;
}