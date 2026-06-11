# 单个车辆信息
uint32 id
string label

# 新增：原始点集合（一般取目标的凸包点）
geometry_msgs/Point32[] points

# 新增：凸包（带坐标系和时间戳）
geometry_msgs/PolygonStamped convex_hull

# 目标高度（m）
float64 height

# 绝对坐标（全局/地图坐标系）
geometry_msgs/Point actor_pos

# 相对自车坐标（若无法计算，可与绝对坐标一致或置零）
geometry_msgs/Point actor_rel_pos

# 速度/相对速度/加速度（m/s, m/s, m/s^2）
geometry_msgs/Vector3 actor_vel
geometry_msgs/Vector3 actor_rel_vel
geometry_msgs/Vector3 actor_acc

# 航向（rad，右手系，建议与 plusgo 的 theta 一致）
float64 actor_psi

# 速度标量（m/s）
float64 actor_speed
