#include<ros/ros.h>
#include<message_filters/subscriber.h>
#include<message_filters/synchronizer.h>
#include<message_filters/sync_policies/approximate_time.h>
#include<std_msgs/Float64.h>
#include<std_msgs/Int32.h>
#include<std_msgs/Header.h>
#include<geometry_msgs/Pose.h>
#include<geometry_msgs/Twist.h>
#include<vector>
#include <geometry_msgs/PolygonStamped.h>
#include <geometry_msgs/Point32.h>
#include <cmath>

#include<ros_interface/RoutingResponse.h>
#include<ros_interface/Location.h>
#include<ros_interface/PredictionObstacles.h>

#include<rl_planning/Point.h>
#include<rl_planning/Vector3D.h>
#include<rl_planning/VehicleInfo.h>
#include<rl_planning/VehicleInfoBatch.h>

// #include<interface/interface_util.h>
// #include<interface/GNSS_process.hpp>
#include<interface/Global_route.h>
#include<interface/Route_point.h>
#include<interface/Lanes.h>
#include<interface/Lane.h>

using namespace std;

ros_interface::RoutingResponse Routing_info;


void Callback(const ros_interface::Location ::ConstPtr &loc_msg, \
            const ros_interface::PredictionObstacles::ConstPtr & obj_msg, \
            ros::Publisher &pub){

    //  ROS_INFO("*****************************");
    // !!!!!!!!!!!!!!!!!!!!!!!!!!
    //      定位 X、Y 相反
    // !!!!!!!!!!!!!!!!!!!!!!!!!!

    // 主车信息
    rl_planning::Point ego_actor_pos;

    // 赋值吉利车
    ego_actor_pos.x = loc_msg->utm_position.x;
    ego_actor_pos.y =loc_msg->utm_position.y;
    ego_actor_pos.z =loc_msg->utm_position.z;

    double ego_actor_psi =loc_msg->heading;
      // -pi~pi

    rl_planning::Vector3D ego_actor_vel, ego_actor_acc;

    ego_actor_vel.x = loc_msg->linear_velocity.x;
    ego_actor_vel.y = loc_msg->linear_velocity.y;
    ego_actor_vel.z = loc_msg->linear_velocity.z;

    double ego_actor_speed = pow(pow(ego_actor_vel.x, 2) + 
        pow(ego_actor_vel.y, 2) + pow(ego_actor_vel.z, 2), 0.5);

    ego_actor_acc.x = loc_msg->linear_acceleration.x;
    ego_actor_acc.y = loc_msg->linear_acceleration.y;
    ego_actor_acc.z = loc_msg->linear_acceleration.z;

    rl_planning::VehicleInfo ego_vehicle_info;
    ego_vehicle_info.id = 666;
    ego_vehicle_info.label = "ego";
    ego_vehicle_info.height = 1.6;

    ego_vehicle_info.actor_pos = ego_actor_pos;
    ego_vehicle_info.actor_vel = ego_actor_vel;
    ego_vehicle_info.actor_acc = ego_actor_acc;
    ego_vehicle_info.actor_speed = ego_actor_speed;

    // ego_actor_psi= azimuth_coordinate_rad(ego_actor_psi);

    ego_vehicle_info.actor_psi = ego_actor_psi;



    // 创建一个geometry_msgs/PolygonStamped类型的变量
    geometry_msgs::PolygonStamped polygon_stamped;
    // 设置时间戳和参考坐标系的帧ID
    polygon_stamped.header.stamp = ros::Time::now();  // 当前时间
    polygon_stamped.header.frame_id = "global_world";    // 参考坐标系的名称

    // 计算四个角点的坐标
    double halfLength = 3.0 / 2.0;
    double halfWidth =  6.0 / 2.0;

    geometry_msgs::Point32 point_1, point_2, point_3, point_4;


     float pos_x = ego_actor_pos.x;
     float pos_y = ego_actor_pos.y;
    point_1.x = pos_x + cos(ego_actor_psi)*halfWidth - sin(ego_actor_psi)*halfLength;
    point_1.y =pos_y + sin(ego_actor_psi)*halfWidth + cos(ego_actor_psi)*halfLength;

    point_2.x = pos_x + cos(ego_actor_psi)*halfWidth + sin(ego_actor_psi)*halfLength;
    point_2.y =pos_y + sin(ego_actor_psi)*halfWidth - cos(ego_actor_psi)*halfLength;

    point_3.x = pos_x - cos(ego_actor_psi)*halfWidth + sin(ego_actor_psi)*halfLength;
    point_3.y =pos_y - sin(ego_actor_psi)*halfWidth - cos(ego_actor_psi)*halfLength;

    point_4.x = pos_x - cos(ego_actor_psi)*halfWidth - sin(ego_actor_psi)*halfLength;
    point_4.y =pos_y - sin(ego_actor_psi)*halfWidth + cos(ego_actor_psi)*halfLength;

    polygon_stamped.polygon.points.push_back(point_1);
    polygon_stamped.polygon.points.push_back(point_2);
    polygon_stamped.polygon.points.push_back(point_3);
    polygon_stamped.polygon.points.push_back(point_4);

   ego_vehicle_info.convex_hull = polygon_stamped;
    // 发布消息 v_info_batch
    // [0]: 主车    [1: ]: 其他车辆
    rl_planning::VehicleInfoBatch v_info_batch;
    
    // Header信息
    std_msgs::Header header;
    header.frame_id = "geely";
    header.seq = 1000;
    header.stamp = ros::Time::now();
    v_info_batch.header = header;

    v_info_batch.vehicle_info_batch.push_back(ego_vehicle_info);

    // 其他车辆信息
    // 东风车辆坐标系：车头朝向y轴，车辆右侧为x轴， 从东向北0-360
    // planning坐标系：车头x，车辆左侧y

    int i = 1;
    uint64_t id;
    for (int i = 0; i < obj_msg->prediction_obstacles.size();i++){
            rl_planning::VehicleInfo vehicle_info;
            vehicle_info.id = obj_msg->prediction_obstacles[i].perception_obstacle.id;
            vehicle_info.actor_pos.x =  obj_msg->prediction_obstacles[i].perception_obstacle.position.x;
            vehicle_info.actor_pos.y = obj_msg->prediction_obstacles[i].perception_obstacle.position.y;
            vehicle_info.actor_pos.z = 0.0;

           // 创建一个geometry_msgs/PolygonStamped类型的变量
            geometry_msgs::PolygonStamped polygon_stamped;
            // 设置时间戳和参考坐标系的帧ID
            polygon_stamped.header.stamp = ros::Time::now();  // 当前时间
            polygon_stamped.header.frame_id = "global_world";    // 参考坐标系的名称
            for(int j = 0;  j <obj_msg->prediction_obstacles[i].perception_obstacle.polygon_point.size(); j++ ){
                    geometry_msgs::Point32 point;
                    point.x =  obj_msg->prediction_obstacles[i].perception_obstacle.polygon_point[j].x;
                    point.y =  obj_msg->prediction_obstacles[i].perception_obstacle.polygon_point[j].y;
                    polygon_stamped.polygon.points.push_back(point);
            }
           vehicle_info.convex_hull = polygon_stamped;
           // 创建一个geometry_msgs/PolygonStamped类型的变量

        vehicle_info.height =  obj_msg->prediction_obstacles[i].perception_obstacle.height;
        vehicle_info.actor_pos.x = obj_msg->prediction_obstacles[i].perception_obstacle.position.x;
        vehicle_info.actor_pos.y = obj_msg->prediction_obstacles[i].perception_obstacle.position.y;
        vehicle_info.actor_pos.z = ego_actor_pos.z;
        
        rl_planning::Vector3D actor_vel, actor_acc;

        vehicle_info.actor_psi = obj_msg->prediction_obstacles[i].perception_obstacle.theta;
         actor_vel.x = obj_msg->prediction_obstacles[i].perception_obstacle.velocity.x;
         actor_vel.y = obj_msg->prediction_obstacles[i].perception_obstacle.velocity.y;
         actor_vel.z = obj_msg->prediction_obstacles[i].perception_obstacle.velocity.z;

        vehicle_info.actor_vel = actor_vel;

        vehicle_info.actor_speed =  std::sqrt(actor_vel.x *actor_vel.x + actor_vel.y* actor_vel.y);


        actor_acc.x = obj_msg->prediction_obstacles[i].perception_obstacle.acceleration.x;
        actor_acc.y = obj_msg->prediction_obstacles[i].perception_obstacle.acceleration.y;
        actor_acc.z = obj_msg->prediction_obstacles[i].perception_obstacle.acceleration.z;
        vehicle_info.actor_acc = actor_acc;

        double delta_x = vehicle_info.actor_pos.x - ego_actor_pos.x;
        double delta_y = vehicle_info.actor_pos.y - ego_actor_pos.y;
        vehicle_info.actor_rel_pos.x = delta_x * cos(ego_actor_psi) + delta_y * sin(ego_actor_psi);
        vehicle_info.actor_rel_pos.y = delta_y * cos(ego_actor_psi) - delta_x * sin(ego_actor_psi);

        v_info_batch.vehicle_info_batch.push_back(vehicle_info);

    }
  
    // 调试
    ROS_DEBUG_STREAM("ego_x: " << ego_actor_pos.x << " ego_y: " << ego_actor_pos.y);
    ROS_DEBUG_STREAM("ego_psi: " << ego_actor_psi);
    ROS_DEBUG_STREAM("ego_speed: " << ego_actor_speed);

    ROS_DEBUG_STREAM("num obstacles: " << obj_msg->prediction_obstacles.size() << endl);

    // ROS_INFO_STREAM(v_info_batch);
    ROS_INFO_THROTTLE(1.0, "GPS & Perception processing...");

    // vehicle_info_batch 话题发布
    pub.publish(v_info_batch);
}

// 定义消息回调函数
void Routing_callback(const ros_interface::RoutingResponse::ConstPtr& route_response_msg)
{
    Routing_info = *route_response_msg;
    ROS_INFO_ONCE("Routing processing...");
}

void timer_callback(ros::Publisher &pub)
{

    // 全局路径信息
        interface::Global_route global_route_info;
        interface::Route route;
        interface::Route_point point;
            // 从全局变量中读取消息并发布

    if  (not Routing_info.lane_list.empty())
    {
        // ROS_INFO("routing_x_first:%0.3f\n",Routing_info.lane_list[0].lane_points[0].point.x);
        for (int j = 0; j < Routing_info.lane_list.size(); j++) {
            vector<interface::Route_point> route_points;
            for (int i = 0; i < Routing_info.lane_list[j].lane_points.size(); i++){
                point.x = Routing_info.lane_list[j].lane_points[i].point.x;
                point.y = Routing_info.lane_list[j].lane_points[i].point.y;
                route_points.push_back(point);
            }
            route.points = route_points;
            global_route_info.routes.push_back(route);
        }
        int target_idx = 0;
        float max_length = 0;
        for (int j = 0; j < Routing_info.lane_list.size(); j++) {
            if (Routing_info.lane_list[j].lane_points[-1].mileage > max_length) {
                target_idx = j;
                max_length = Routing_info.lane_list[j].lane_points[-1].mileage;
            }
        }
        global_route_info.target_route_id = 1;

        // Header信息
        std_msgs::Header header;

        header.frame_id = "geely";
        header.seq = 1000;
        header.stamp = ros::Time::now();
        global_route_info.header = header;

        // global_route_info 话题发布
        pub.publish(global_route_info);

        ROS_DEBUG_STREAM_THROTTLE(1.0, "selected route: \n" << global_route_info.target_route_id);
    }

}


int main(int argc, char * argv[]){
    ros::init(argc, argv, "planning_interface");
    ROS_INFO("*****************************");
    ROS_INFO("planning_interface node is on") ;        
    ROS_INFO("*****************************");

    ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Debug);

    ros::NodeHandle nh;

    ros::Rate loop_rate(50);

    // 定位与感知车辆信息转换接口
    message_filters::Subscriber<ros_interface::Location>loc_sub(nh, "/localization/global_fusion/Location/tju", 50);
    message_filters::Subscriber<ros_interface::PredictionObstacles> objects_sub(nh, "/prediction/PredictionObstacles", 50);

    ros::Publisher pub = nh.advertise<rl_planning::VehicleInfoBatch>("/vehicle_info_batch", 20);

    typedef message_filters::sync_policies::ApproximateTime<ros_interface::Location, ros_interface::PredictionObstacles> sync_policy;
    message_filters::Synchronizer<sync_policy> sync(sync_policy(100), loc_sub, objects_sub);
    sync.registerCallback(boost::bind(Callback, _1, _2, ref(pub)));

    // 全局路径信息接口
    ros::Publisher route_pub = nh.advertise<interface::Global_route>("/global_route_info", 2);
    ros::Subscriber sub = nh.subscribe("/routing/RoutingResponse", 10, Routing_callback);

    while (ros::ok())
    {
        ros::spinOnce();
        timer_callback(ref(route_pub));
        loop_rate.sleep();
    }

    return 0;
}
