std_msgs/Header header
uint8  source
float32 exist_confidence

# "UNKNOWN","CONE","PED","BIC","CAR","TRUCK_BUS","ULTRA_VEHICLE"
int64  type
float32 type_confidence
int64  track_id
float32 tracking_time

int64  motion_state

geometry_msgs/Point32 anchor

# the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)
float32 theta

# the main direction is the bbox length orientation
geometry_msgs/Vector3 direction
geometry_msgs/Vector3 direction_cov
geometry_msgs/Point32  center
geometry_msgs/Point32  center_cov

# size of the oriented boundingbox, length is the size in the main direction
geometry_msgs/Vector3 size
geometry_msgs/Vector3 size_cov

bool is_absolute_position

geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 velocity_cov
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 acceleration_cov

float32 angle_velocity
float32 angle_velocity_cov
float32 angle_acceleration
float32 angle_acceleration_cov

geometry_msgs/Point32[]  trajectory
geometry_msgs/Point32[]  history_type
geometry_msgs/Vector3[]  history_velocity

Polygon    polygon
ImageRect  rect
