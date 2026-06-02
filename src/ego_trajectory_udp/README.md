# ego_trajectory_udp

根据初始 ego 位姿生成轨迹，发布 ROS Path，并按 80 点固定数组打包 UDP。

## 轨迹

`trajectory` 可选：

```text
straight
left_lane_change
right_turn
```

输入初始位姿：

```text
ego_x
ego_y
ego_heading   # deg，当前代码约定 0 沿 +x，90 沿 +y
```

全局轨迹起步阶段会从 `0` 加速到 `speed`：

```text
accel_time    # 默认 2.0 s
speed         # 默认 3.0 m/s
```

## 局部轨迹更新模式

`local_update_mode:=1`

```text
内部运动学模型更新 ego 位置
根据 ego 当前位置投影到全局路径
取最近路径点之后的 80 个点作为当前局部轨迹
```

`local_update_mode:=2`

```text
全程发布初始 80 点局部轨迹
```

## 启动

```bash
roslaunch ego_trajectory_udp ego_trajectory_demo.launch \
  trajectory:=right_turn \
  ego_x:=0.0 \
  ego_y:=5.0 \
  ego_heading:=-90.0 \
  trajectory_length:=100.0 \
  speed:=3.0 \
  accel_time:=2.0 \
  local_update_mode:=1 \
  udp_ip:=127.0.0.1 \
  udp_port:=5005 \
  rate_hz:=10
```

## ROS 话题

```text
/trajectory_global_path   nav_msgs/Path
/trajectory_local_path    nav_msgs/Path，80 点局部轨迹
/trajectory_udp_payload   std_msgs/UInt8MultiArray
/trajectory_packet_info   std_msgs/String
/ego_trajectory_markers   visualization_msgs/MarkerArray
```

RViz：

```text
Fixed Frame: map
Add -> MarkerArray
Topic -> /ego_trajectory_markers
```

## UDP

默认 payload：

```text
8 + 16 * 80 = 1288 bytes
```

点字段：

```text
x, y, heading, vx, ax, time
```
