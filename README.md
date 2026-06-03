# 轨迹 UDP 发布与可视化

ROS1 C++ 工程：从 OSM 道路数据生成三条全局轨迹，按 50 点局部轨迹窗口定频发布 ROS 话题并打包 UDP，同时用 RViz Marker 显示地图、全局路径和当前局部路径。

## 1. 导出同济嘉定 OSM 地图

打开：

```text
https://overpass-turbo.eu/
```

输入查询：

```text
[out:json][timeout:60];
(
  way["highway"](around:800,31.29171,121.20927);
);
out geom;
```

点击 `Run`，成功后选择：

```text
Export -> raw data -> download/copy
```

保存为工程根目录：

```text
export.json
```

## 2. 画地图和全局路径

Windows PowerShell：

```powershell
python .\scripts\plot_export_map.py
```

输出：

```text
output/road_map.svg
output/road_summary.csv
output/trajectory_manifest.csv
output/trajectory_straight_jiasi.csv
output/trajectory_lane_change_changji.csv
output/trajectory_circle_luhuan.csv
```

`road_map.svg` 中：

```text
灰色：OSM 地图道路
红色虚线：straight，嘉四路直行
橙色虚线：lane_change，昌吉东路换道
紫色虚线：circle，绿环路绕行/转圈
```

## 3. 启动 ROS 节点

编译：

```bash
cd ~/catkin_ws
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source devel/setup.bash
```

同时启动轨迹发布节点和 RViz Marker 可视化节点，启动rosbridge server：

```bash
roslaunch trajectory_udp_sender trajectory_demo.launch udp_ip:=192.168.88.100 trajectory:=straight
roslaunch rosbridge_server rosbridge_websocket.launch
登录webviz网站
检查udp是否发送正常：
python3 -c "
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind(('192.168.88.3', 31100))
print('📡 正在严格监听 192.168.88.3:31100...')
while True:
    data, addr = s.recvfrom(4096)
    print(f'✅ 成功收到 {len(data)} 字节, 来源: {addr}')
"
```

切换轨迹：

```bash
trajectory:=straight
trajectory:=lane_change
trajectory:=circle
```

轨迹发布节点：

```text
trajectory_udp_node
```

功能：

```text
生成选中的 1000 点全局路径
每次截取 50 个点作为局部路径
按 rate_hz 定频发布
打包为 UDP payload 发送到底盘
```

ROS 话题：

```text
/trajectory_global_path   nav_msgs/Path，完整全局路径
/trajectory_local_path    nav_msgs/Path，当前 50 点局部路径
/trajectory_udp_payload   std_msgs/UInt8MultiArray，UDP payload 字节
/trajectory_packet_info   std_msgs/String，调试信息
```

RViz 可视化节点：

```text
trajectory_visualizer_node
```

发布：

```text
/trajectory_markers       visualization_msgs/MarkerArray
```

RViz 设置：

```text
Fixed Frame: map
Add -> MarkerArray
Topic: /trajectory_markers
```

## UDP payload

默认每包固定 50 点：

```text
8 + 16 * 50 = 808 bytes
```

每个点字段：

```text
Relative X, Relative Y, Heading, Vx, ax, Trajectory time
```

坐标系：

```text
局部 ENU 坐标
+x：东
+y：北
heading：0 deg 指北，90 deg 指东，顺时针增大
原点：31.29171, 121.20927
```
