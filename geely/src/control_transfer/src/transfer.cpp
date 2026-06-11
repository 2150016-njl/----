#include <ros/ros.h>
#include <ros/console.h>  
#include <ros_interface/ADCTrajectory.h>
#include <ros_interface/TrajectoryPoint.h>
#include <ros_interface/PathPoint.h>
#include <ros_interface/ObuCmd.h>
#include <ros_interface/ObuCmdMsg.h>
#include <ros_interface/PlanningCmd.h>
#include <rl_planning/RLPlanningPath.h>

class ControlTransfer
{
public:
    ControlTransfer()
        : val_(0), code_(0), mode_(0)  
    {
        if(ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, 
                                         ros::console::levels::Debug)) {
            ros::console::notifyLoggerLevelsChanged();
        }

        ROS_INFO("#####################");
        ROS_INFO("control transfer node processing...");
        ROS_INFO("#####################\n");

        /* ----  定时器 0.1 s 发布一次 ADCTrajectory  ---- */
        timer_ = nh_.createTimer(ros::Duration(0.1),
                                 &ControlTransfer::publish_adc_path_periodic,  
                                 this);

        /* ---- 订阅 /RL_Planning_Path ---- */
        rl_planning_path_sub_ = nh_.subscribe(
            "/RL_Planning_Path", 10,
            &ControlTransfer::rlPlanningPathCallback, this);

        /* ---- 发布 ADCTrajectory 与 PlanningCmd ---- */
        adc_trajectory_pub_ = nh_.advertise<ros_interface::ADCTrajectory>(
            "/planning/ADCTrajectory", 10);
        planning_cmd_pub_ = nh_.advertise<ros_interface::PlanningCmd>(
            "/planning/PlanningCmd", 10);

        /* ---- 订阅 OBU 指令 ---- */
        obucmdmsg_sub_ = nh_.subscribe(
            "/vui_client/ObuCmdMsg", 10,
            &ControlTransfer::ObuCmdCallback, this);

        /* 初始化空的 ADCTrajectory */
        adc_trajectory_ = ros_interface::ADCTrajectory();
    }

    void run() {
        ros::spin(); 
    }

private:
    void ObuCmdCallback(const ros_interface::ObuCmdMsgConstPtr& msg)
    {
        for (const auto& obu_cmd : msg->obu_cmd_list)
        {
            val_  = obu_cmd.val;
            code_ = obu_cmd.code;
        }
    }

    /* ------------------------------------------------------------
     *                回调：接收 RLPlanningPath
     * ------------------------------------------------------------ */
    void rlPlanningPathCallback(const rl_planning::RLPlanningPath::ConstPtr& msg)
    {

        ros_interface::ADCTrajectory adc_trajectory;

        adc_trajectory.total_path_length = msg->s.back() - msg->s.front();
        adc_trajectory.total_path_time = 5.0;

        if (code_ == 10001) {
            if (val_ == 1) mode_ = 1;
            else if (val_ == 2) mode_ = 0;
        }
        else if (code_ == 10042) {
            if (val_ == 2) mode_ = 1;
        }
        adc_trajectory.driving_mode = mode_;

        std::vector<ros_interface::TrajectoryPoint> trajectory_points;
        
        for (int i = 0; i < 500; ++i) {
            ros_interface::TrajectoryPoint trajectory_point;
            ros_interface::PathPoint path_point;
            
            // 坐标转换
            path_point.x = msg->fx[i];
            path_point.y = msg->fy[i];
            path_point.z = 0.0;
            path_point.theta = msg->theta[i];
            path_point.kappa = msg->kappa[i];
            path_point.s = msg->s[i] - msg->s[0];
            
            trajectory_point.path_point = path_point;
            trajectory_point.a = msg->a[i];
            trajectory_point.v = msg->v[i];
            trajectory_point.relative_time = i * 0.05;  
            trajectory_point.gear = 1;
            trajectory_point.is_steer_valid = false;
            
            trajectory_points.push_back(trajectory_point);
        }
        
        adc_trajectory.header.stamp = ros::Time::now();
        adc_trajectory.trajectory_points = trajectory_points;
        adc_trajectory_ = adc_trajectory;  

        // 创建并发布PlanningCmd消息
        ros_interface::PlanningCmd planning_cmd;
        planning_cmd.header.stamp = ros::Time::now();
        planning_cmd_pub_.publish(planning_cmd);

        ROS_INFO_THROTTLE(1.0, "Control Transfer processing...");
        ROS_DEBUG("driving mode: %i\n", mode_);  
    }

    /* ------------------------------------------------------------
     *                定时器：发布 ADCTrajectory
     * ------------------------------------------------------------ */
    void publish_adc_path_periodic(const ros::TimerEvent&)  
    {
        ROS_INFO_THROTTLE(0.5, "publishing adc trajectory...");
        adc_trajectory_pub_.publish(adc_trajectory_);
    }

    ros::NodeHandle nh_;
    ros::Timer      timer_;

    ros::Subscriber rl_planning_path_sub_;
    ros::Subscriber obucmdmsg_sub_;
    ros::Publisher  adc_trajectory_pub_;
    ros::Publisher  planning_cmd_pub_;

    int  val_, code_, mode_;                       // OBU 指令状态
    ros_interface::ADCTrajectory adc_trajectory_;  // 最新轨迹缓存
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "control_transfer", 
             ros::init_options::AnonymousName);
    
    ControlTransfer node;
    node.run();
    return 0;
}