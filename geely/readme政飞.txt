工控机
1.atheta-spy 查看lcm 查看obucmd list话题
2.sh start tab
本地
0.
m           车辆激活
rostopic pub -1 /vui_client/ObuCmdMsg ros_interface/ObuCmdMsg "{header: {stamp: now, frame_id: ''}, id: 0, name: '', obu_cmd_list: [ {code: 10001, val: 1} ]}"自动驾驶激活
1.geely_geek.sh
2.webviz 关注：/RL_Planning_Path的v
3.按auto按钮，就可以动了
4.人接管的
rostopic pub -1 /vui_client/ObuCmdMsg ros_interface/ObuCmdMsg "{header: {stamp: now, frame_id: ''}, id: 0, name: '', obu_cmd_list: [ {code: 10001, val: 2} ]}"退出自动驾驶


主要的文件：Learning_based_replanning_node.py和Learning_based_replanning_process.py
/home/nie/geely/src/rl_planning/scripts/Learning_based_replanning_node.py
calc_safe_acc函数，目前状态的，不能正常避障（min(self.v_target self.rt_safe_speed, v_lim),慢，快，曲率限速）
v_target_network，中期状态的
fpath_interpolate函数：从里面找下发目标速度，target_speed下发的目标速度、

object_and_loc_to_vehicle_info_node.cpp文件（/home/nie/geely/src/vehicle_info_msgs/src/object_and_loc_to_vehicle_info_node.cpp）
本地：/home/nie/geely/src/vehicle_info_msgs/src/1_rosbag_play_shuo.cpp；网络
实车：/home/nie/geely/src/vehicle_info_msgs/src/2_real_car_shuo.cpp；网络
改完cpp要编译

网络（命令gedit ~/.bashrc，改完之后要source ~/.bashrc）：
export ROS_MASTER_URI=http://100.65.17.158:11311 #http://127.0.0.1:11311 #本地ros # 192.168.0.166
unset ROS_IP #本地ros
unset ROS_HOSTNAME #本地ros
#geely_geek
# 在运行节点的机器上执行（192.168.1.201）
#export ROS_MASTER_URI=http://192.168.1.200:11311
#export ROS_IP=192.168.1.201
# 关键：显式设置主机名，避免使用localhost
#export ROS_HOSTNAME=192.168.1.201