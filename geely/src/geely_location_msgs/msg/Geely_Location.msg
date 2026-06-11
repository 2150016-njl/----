# Geely_Location.msg
# /localization/global_fusion/Location/tju 对应的消息类型

# 时间戳
float64 time

# 标准 ROS 头
std_msgs/Header header

# 原始经纬高
# 约定：x=lon, y=lat, z=height（仅占位，不影响UTM使用）
geometry_msgs/Point position

# 姿态（弧度）
float64 pitch
float64 roll
float64 heading

# ENU 速度/加速度/角速度（单位：m/s, m/s^2, rad/s）
geometry_msgs/Vector3 linear_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 angular_velocity

# 状态标志
int32 rtk_flag
int32 odom_type
int32 auxiliary_type
int32 location_valid_flag

# 原点信息
float64 origin_lat
float64 origin_lon

# UTM 位置（m）：x=East, y=North, z=Up
geometry_msgs/Point utm_position

# 原点切换标记与下一帧UTM
int32 change_origin_flag
geometry_msgs/Point utm_position_next

# 各类标准差（Vector3）
geometry_msgs/Vector3 position_std_dev
geometry_msgs/Vector3 orientation_std_dev
geometry_msgs/Vector3 linear_velocity_std_dev
geometry_msgs/Vector3 linear_acceleration_std_dev
geometry_msgs/Vector3 angular_velocity_std_dev
