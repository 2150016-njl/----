#include <ros/ros.h>
#include <ros_interface/ObuCmdMsg.h>
#include <ros_interface/ObuCmd.h>
#include <std_msgs/Header.h>

int main(int argc, char** argv)
{
    // 初始化ROS节点
    ros::init(argc, argv, "obu_cmd_publisher");
    ros::NodeHandle nh;
    
    // 创建发布者
    ros::Publisher obu_cmd_pub = nh.advertise<ros_interface::ObuCmdMsg>("/vui_client/ObuCmdMsg", 10);
    
    // 设置发布频率 (1Hz)
    ros::Rate rate(1.0);
    
    ROS_INFO("ObuCmdMsg Publisher started, publishing to /vui_client/ObuCmdMsg");
    
    while (ros::ok())
    {
        // 创建消息
        ros_interface::ObuCmdMsg msg;
        
        // 设置header - 使用标准ROS Header格式
        msg.header.stamp = ros::Time::now();
        msg.header.frame_id = "hmi_bridge";
        
        // 设置固定值
        msg.id = 0;
        msg.name = "hmi_bridge";
        
        // 创建命令列表
        ros_interface::ObuCmd cmd;
        cmd.code = 10001;  // 指令编码
        cmd.val = 1;      // 编码值
        
        // 添加到命令列表
        msg.obu_cmd_list.clear();
        msg.obu_cmd_list.push_back(cmd);
        
        // 发布消息
        obu_cmd_pub.publish(msg);
        
        ROS_INFO("Published ObuCmdMsg: code=%d, val=%d", cmd.code, cmd.val);
        
        // 等待下一个发布周期
        rate.sleep();
    }
    
    return 0;
}