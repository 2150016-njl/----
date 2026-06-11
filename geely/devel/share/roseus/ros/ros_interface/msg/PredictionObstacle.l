;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PredictionObstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PredictionObstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PREDICTIONOBSTACLE")
  (make-package "ROS_INTERFACE::PREDICTIONOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude PredictionObstacle.msg.html


(defclass ros_interface::PredictionObstacle
  :super ros::object
  :slots (_perception_obstacle _timestamp _predicted_period _trajectory _intent _priority _interactive_tag _is_static ))

(defmethod ros_interface::PredictionObstacle
  (:init
   (&key
    ((:perception_obstacle __perception_obstacle) (instance ros_interface::PerceptionObstacle :init))
    ((:timestamp __timestamp) 0.0)
    ((:predicted_period __predicted_period) 0.0)
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryInPrediction :init) r)) r))
    ((:intent __intent) (instance ros_interface::ObstacleIntent :init))
    ((:priority __priority) (instance ros_interface::ObstaclePriority :init))
    ((:interactive_tag __interactive_tag) (instance ros_interface::ObstacleInteractiveTag :init))
    ((:is_static __is_static) nil)
    )
   (send-super :init)
   (setq _perception_obstacle __perception_obstacle)
   (setq _timestamp (float __timestamp))
   (setq _predicted_period (float __predicted_period))
   (setq _trajectory __trajectory)
   (setq _intent __intent)
   (setq _priority __priority)
   (setq _interactive_tag __interactive_tag)
   (setq _is_static __is_static)
   self)
  (:perception_obstacle
   (&rest __perception_obstacle)
   (if (keywordp (car __perception_obstacle))
       (send* _perception_obstacle __perception_obstacle)
     (progn
       (if __perception_obstacle (setq _perception_obstacle (car __perception_obstacle)))
       _perception_obstacle)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:predicted_period
   (&optional __predicted_period)
   (if __predicted_period (setq _predicted_period __predicted_period)) _predicted_period)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:intent
   (&rest __intent)
   (if (keywordp (car __intent))
       (send* _intent __intent)
     (progn
       (if __intent (setq _intent (car __intent)))
       _intent)))
  (:priority
   (&rest __priority)
   (if (keywordp (car __priority))
       (send* _priority __priority)
     (progn
       (if __priority (setq _priority (car __priority)))
       _priority)))
  (:interactive_tag
   (&rest __interactive_tag)
   (if (keywordp (car __interactive_tag))
       (send* _interactive_tag __interactive_tag)
     (progn
       (if __interactive_tag (setq _interactive_tag (car __interactive_tag)))
       _interactive_tag)))
  (:is_static
   (&optional __is_static)
   (if __is_static (setq _is_static __is_static)) _is_static)
  (:serialization-length
   ()
   (+
    ;; ros_interface/PerceptionObstacle _perception_obstacle
    (send _perception_obstacle :serialization-length)
    ;; float64 _timestamp
    8
    ;; float64 _predicted_period
    8
    ;; ros_interface/TrajectoryInPrediction[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ;; ros_interface/ObstacleIntent _intent
    (send _intent :serialization-length)
    ;; ros_interface/ObstaclePriority _priority
    (send _priority :serialization-length)
    ;; ros_interface/ObstacleInteractiveTag _interactive_tag
    (send _interactive_tag :serialization-length)
    ;; bool _is_static
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/PerceptionObstacle _perception_obstacle
       (send _perception_obstacle :serialize s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _predicted_period
       (sys::poke _predicted_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/TrajectoryInPrediction[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;; ros_interface/ObstacleIntent _intent
       (send _intent :serialize s)
     ;; ros_interface/ObstaclePriority _priority
       (send _priority :serialize s)
     ;; ros_interface/ObstacleInteractiveTag _interactive_tag
       (send _interactive_tag :serialize s)
     ;; bool _is_static
       (if _is_static (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/PerceptionObstacle _perception_obstacle
     (send _perception_obstacle :deserialize buf ptr-) (incf ptr- (send _perception_obstacle :serialization-length))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _predicted_period
     (setq _predicted_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/TrajectoryInPrediction[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryInPrediction :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/ObstacleIntent _intent
     (send _intent :deserialize buf ptr-) (incf ptr- (send _intent :serialization-length))
   ;; ros_interface/ObstaclePriority _priority
     (send _priority :deserialize buf ptr-) (incf ptr- (send _priority :serialization-length))
   ;; ros_interface/ObstacleInteractiveTag _interactive_tag
     (send _interactive_tag :deserialize buf ptr-) (incf ptr- (send _interactive_tag :serialization-length))
   ;; bool _is_static
     (setq _is_static (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::PredictionObstacle :md5sum-) "de205312bb9fab36d338b8733d52dd18")
(setf (get ros_interface::PredictionObstacle :datatype-) "ros_interface/PredictionObstacle")
(setf (get ros_interface::PredictionObstacle :definition-)
      "PerceptionObstacle   perception_obstacle     # perception info of obstacle
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



(provide :ros_interface/PredictionObstacle "de205312bb9fab36d338b8733d52dd18")


