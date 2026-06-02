# ego_trajectory_udp

不解析地图，直接根据初始 ego 位姿生成 20 m 全局轨迹，并以固定 80 点数组定频发布 ROS Path 和 UDP payload。

## 轨迹类型

参数 `trajectory` 可选：

```text
straight          直行
left_lane_change  左换道
right_turn        右转
```

初始位姿参数：

```text
ego_x       起点 x
ego_y       起点 y
ego_heading 起点 heading，单位 deg，0 指北，90 指东
```

## 编译

```bash
cd ~/catkin_ws
catkin_make
source devel/setup.bash
```

## 启动

```bash
roslaunch ego_trajectory_udp ego_trajectory_demo.launch \
  trajectory:=left_lane_change \
  ego_x:=0.0 \
  ego_y:=0.0 \
  ego_heading:=90.0 \
  udp_ip:=192.168.1.100 \
  udp_port:=5005 \
  rate_hz:=10
```

## ROS 话题

发布节点：

```text
/trajectory_global_path   nav_msgs/Path，80 点全局路径
/trajectory_local_path    nav_msgs/Path，当前 80 点局部路径
/trajectory_udp_payload   std_msgs/UInt8MultiArray，UDP payload 字节
/trajectory_packet_info   std_msgs/String，JSON 调试信息
```

RViz 可视化节点：

```text
/ego_trajectory_markers   visualization_msgs/MarkerArray
```

RViz 设置：

```text
Fixed Frame: map
Add -> MarkerArray
Topic -> /ego_trajectory_markers
```

## UDP

默认每包固定 80 点：

```text
8 + 16 * 80 = 1288 bytes
```

若设置 `include_flags_in_udp:=true`，会在 `point_num` 后增加：

```text
trajectory_id:uint8 + packet_flag:uint8 + packet_index:uint16
```

此时：

```text
12 + 16 * 80 = 1292 bytes
```
