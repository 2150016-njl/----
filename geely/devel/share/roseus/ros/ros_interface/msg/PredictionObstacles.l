;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PredictionObstacles)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PredictionObstacles (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PREDICTIONOBSTACLES")
  (make-package "ROS_INTERFACE::PREDICTIONOBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude PredictionObstacles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::PredictionObstacles
  :super ros::object
  :slots (_header _prediction_obstacles _change_origin_flag _start_timestamp _end_timestamp _self_intent _scenario ))

(defmethod ros_interface::PredictionObstacles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:prediction_obstacles __prediction_obstacles) (let (r) (dotimes (i 0) (push (instance ros_interface::PredictionObstacle :init) r)) r))
    ((:change_origin_flag __change_origin_flag) 0)
    ((:start_timestamp __start_timestamp) 0.0)
    ((:end_timestamp __end_timestamp) 0.0)
    ((:self_intent __self_intent) 0)
    ((:scenario __scenario) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _prediction_obstacles __prediction_obstacles)
   (setq _change_origin_flag (round __change_origin_flag))
   (setq _start_timestamp (float __start_timestamp))
   (setq _end_timestamp (float __end_timestamp))
   (setq _self_intent (round __self_intent))
   (setq _scenario (round __scenario))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:prediction_obstacles
   (&rest __prediction_obstacles)
   (if (keywordp (car __prediction_obstacles))
       (send* _prediction_obstacles __prediction_obstacles)
     (progn
       (if __prediction_obstacles (setq _prediction_obstacles (car __prediction_obstacles)))
       _prediction_obstacles)))
  (:change_origin_flag
   (&optional __change_origin_flag)
   (if __change_origin_flag (setq _change_origin_flag __change_origin_flag)) _change_origin_flag)
  (:start_timestamp
   (&optional __start_timestamp)
   (if __start_timestamp (setq _start_timestamp __start_timestamp)) _start_timestamp)
  (:end_timestamp
   (&optional __end_timestamp)
   (if __end_timestamp (setq _end_timestamp __end_timestamp)) _end_timestamp)
  (:self_intent
   (&optional __self_intent)
   (if __self_intent (setq _self_intent __self_intent)) _self_intent)
  (:scenario
   (&optional __scenario)
   (if __scenario (setq _scenario __scenario)) _scenario)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/PredictionObstacle[] _prediction_obstacles
    (apply #'+ (send-all _prediction_obstacles :serialization-length)) 4
    ;; int32 _change_origin_flag
    4
    ;; float64 _start_timestamp
    8
    ;; float64 _end_timestamp
    8
    ;; int32 _self_intent
    4
    ;; int32 _scenario
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/PredictionObstacle[] _prediction_obstacles
     (write-long (length _prediction_obstacles) s)
     (dolist (elem _prediction_obstacles)
       (send elem :serialize s)
       )
     ;; int32 _change_origin_flag
       (write-long _change_origin_flag s)
     ;; float64 _start_timestamp
       (sys::poke _start_timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_timestamp
       (sys::poke _end_timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _self_intent
       (write-long _self_intent s)
     ;; int32 _scenario
       (write-long _scenario s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/PredictionObstacle[] _prediction_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prediction_obstacles (let (r) (dotimes (i n) (push (instance ros_interface::PredictionObstacle :init) r)) r))
     (dolist (elem- _prediction_obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _change_origin_flag
     (setq _change_origin_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _start_timestamp
     (setq _start_timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_timestamp
     (setq _end_timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _self_intent
     (setq _self_intent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _scenario
     (setq _scenario (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::PredictionObstacles :md5sum-) "9354ec2a726cf7a2762b6008aa699e3f")
(setf (get ros_interface::PredictionObstacles :datatype-) "ros_interface/PredictionObstacles")
(setf (get ros_interface::PredictionObstacles :definition-)
      "Header   header     # timestamp is included in header
PredictionObstacle[] prediction_obstacles # make prediction for multiple obstacles
int32   change_origin_flag     # 0:坐标系切换成功 1:坐标系切换中 2:坐标系切换故障
float64   start_timestamp     # start timestamp
float64   end_timestamp     # end timestamp
int32   self_intent     # 自动驾驶车辆意图  0-UNKNOWN, 1-STOP, 2-CRUISE, 3-CHANGE_LANE
int32   scenario     # 场景              0-UNKNOWN, 1000-CRUISE, 1001-CRUISE_URBAN 1002-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/PredictionObstacle
PerceptionObstacle   perception_obstacle     # perception info of obstacle
float64   timestamp     # GPS time in seconds
float64   predicted_period     # the length of the time for this prediction (e.g. 10s)
TrajectoryInPrediction[] trajectory # can have multiple trajectories per obstacle
ObstacleIntent   intent     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, 
ObstaclePriority   priority     # 障碍物优先级               1-CAUTION, 2-NORMAL, 3-IGNORE
ObstacleInteractiveTag   interactive_tag     #  
bool   is_static     # is obstacle static (default = false)

================================================================================
MSG: ros_interface/PerceptionObstacle
int32   id     #  
Point3D   position     #  
float64   theta     #  
Point3D   velocity     #  
float64   length     #  
float64   width     #  
float64   height     #  
Point3D[] polygon_point #  
float64   tracking_time     #  
int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle
int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
float64   confidence     #  
float64   timestamp     #  
uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD
Point3D   drops     #  
Point3D   acceleration     #  
Point3D   anchor_point     #  
Point3D[] bounding_box #  
int32   sub_type     #  
float64   height_above_ground     #  
float64[] position_covariance #  
float64[] velocity_covariance #  
float64[] acceleration_covariance #  
uint8   light_status     #  

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/TrajectoryInPrediction
float64   probability     # probability of this trajectory
TrajectoryPoint[] trajectory_points #  

================================================================================
MSG: ros_interface/TrajectoryPoint
PathPoint   path_point     # path point
float64   v     # linear velocity
float64   a     # linear acceleration
float64   relative_time     # relative time from beginning of the trajectory
float64   da     # longitudinal jerk
bool   is_steer_valid     # 转向是否有效
float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis
float64   rear_steer     # 后轮转角
int32   gear     # 档位
GaussianInfo   gaussian_info     # Gaussian probability information

================================================================================
MSG: ros_interface/PathPoint
float64   x     # coordinates x
float64   y     # coordinates y
float64   z     # coordinates z
float64   theta     # direction on the x-y plane
float64   kappa     # curvature on the x-y planning
float64   s     # accumulated distance from beginning of the path
float64   dkappa     # derivative of kappa w.r.t s.
float64   ddkappa     # derivative of derivative of kappa w.r.t s.
float64   lane_id     # The lane ID where the path point is on
float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline
float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline

================================================================================
MSG: ros_interface/GaussianInfo
float64   sigma_x     # 标准差x
float64   sigma_y     # 标准差y
float64   correlation     # 相关性
float64   area_probability     # Information of representative uncertainty area
float64   ellipse_a     # 椭圆长轴
float64   ellipse_b     # 椭圆短轴
float64   theta_a     # 椭圆朝向

================================================================================
MSG: ros_interface/ObstacleIntent
int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, 

================================================================================
MSG: ros_interface/ObstaclePriority
int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;

================================================================================
MSG: ros_interface/ObstacleInteractiveTag
int32   interactive_tag     #  

")



(provide :ros_interface/PredictionObstacles "9354ec2a726cf7a2762b6008aa699e3f")


