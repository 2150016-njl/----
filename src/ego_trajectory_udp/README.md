# ego_trajectory_udp

根据初始 ego 位姿生成轨迹，发布 ROS Path，并按固定 `50` 个轨迹点打包 UDP。

## 关键协议约定

- 字节序：Intel/little-endian，不使用 Motorola/big-endian。
- 下发 `MessageID` 默认值：`2`。
- `point_num` 固定为 `50`。
- 航向角：正北为 `0 deg`，顺时针增大，范围 `0..360 deg`。例如正东 `90 deg`，正南 `180 deg`，正西 `270 deg`。

## 轨迹类型

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
ego_heading   # deg，协议角：正北 0，顺时针为正
```

速度相关参数：

```text
accel_time    # 默认 2.0 s
speed         # 默认 3.0 m/s
```

## 局部轨迹更新模式

`local_update_mode:=1`

```text
内部运动学模型更新 ego 位置
根据 ego 当前坐标投影到全局轨迹
取最近路径点之后的 50 个点作为当前局部轨迹
```

`local_update_mode:=2`

```text
全程发布初始 50 点局部轨迹
```

## 启动

```bash
roslaunch ego_trajectory_udp ego_trajectory_demo.launch \
  trajectory:=right_turn \
  ego_x:=0.0 \
  ego_y:=5.0 \
  ego_heading:=180.0 \
  trajectory_length:=100.0 \
  speed:=3.0 \
  accel_time:=2.0 \
  local_update_mode:=1 \
  udp_ip:=192.168.88.100 \
  udp_port:=31000 \
  rate_hz:=10
```

## ROS 话题

```text
/trajectory_global_path   nav_msgs/Path
/trajectory_local_path    nav_msgs/Path，50 点局部轨迹
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

默认每包固定 `50` 个点：

```text
8 + 16 * 50 = 808 bytes
```

轨迹点字段：

```text
x, y, heading, vx, ax, time
```
