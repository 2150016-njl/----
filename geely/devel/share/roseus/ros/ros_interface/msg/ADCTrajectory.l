;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ADCTrajectory)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ADCTrajectory (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ADCTRAJECTORY")
  (make-package "ROS_INTERFACE::ADCTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude ADCTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ADCTrajectory
  :super ros::object
  :slots (_header _total_path_length _total_path_time _trajectory_points _car_action _behaviour_lat_state _behaviour_lon_state _scenario _driving_mode _adc_trajectory_type _estop _is_replan _replan_reason _right_of_way_status _rss_info ))

(defmethod ros_interface::ADCTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:total_path_length __total_path_length) 0.0)
    ((:total_path_time __total_path_time) 0.0)
    ((:trajectory_points __trajectory_points) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
    ((:car_action __car_action) 0)
    ((:behaviour_lat_state __behaviour_lat_state) 0)
    ((:behaviour_lon_state __behaviour_lon_state) 0)
    ((:scenario __scenario) 0)
    ((:driving_mode __driving_mode) 0)
    ((:adc_trajectory_type __adc_trajectory_type) 0)
    ((:estop __estop) (instance ros_interface::EStop :init))
    ((:is_replan __is_replan) nil)
    ((:replan_reason __replan_reason) "")
    ((:right_of_way_status __right_of_way_status) 0)
    ((:rss_info __rss_info) (instance ros_interface::RSSInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _total_path_length (float __total_path_length))
   (setq _total_path_time (float __total_path_time))
   (setq _trajectory_points __trajectory_points)
   (setq _car_action (round __car_action))
   (setq _behaviour_lat_state (round __behaviour_lat_state))
   (setq _behaviour_lon_state (round __behaviour_lon_state))
   (setq _scenario (round __scenario))
   (setq _driving_mode (round __driving_mode))
   (setq _adc_trajectory_type (round __adc_trajectory_type))
   (setq _estop __estop)
   (setq _is_replan __is_replan)
   (setq _replan_reason (string __replan_reason))
   (setq _right_of_way_status (round __right_of_way_status))
   (setq _rss_info __rss_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:total_path_length
   (&optional __total_path_length)
   (if __total_path_length (setq _total_path_length __total_path_length)) _total_path_length)
  (:total_path_time
   (&optional __total_path_time)
   (if __total_path_time (setq _total_path_time __total_path_time)) _total_path_time)
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:car_action
   (&optional __car_action)
   (if __car_action (setq _car_action __car_action)) _car_action)
  (:behaviour_lat_state
   (&optional __behaviour_lat_state)
   (if __behaviour_lat_state (setq _behaviour_lat_state __behaviour_lat_state)) _behaviour_lat_state)
  (:behaviour_lon_state
   (&optional __behaviour_lon_state)
   (if __behaviour_lon_state (setq _behaviour_lon_state __behaviour_lon_state)) _behaviour_lon_state)
  (:scenario
   (&optional __scenario)
   (if __scenario (setq _scenario __scenario)) _scenario)
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:adc_trajectory_type
   (&optional __adc_trajectory_type)
   (if __adc_trajectory_type (setq _adc_trajectory_type __adc_trajectory_type)) _adc_trajectory_type)
  (:estop
   (&rest __estop)
   (if (keywordp (car __estop))
       (send* _estop __estop)
     (progn
       (if __estop (setq _estop (car __estop)))
       _estop)))
  (:is_replan
   (&optional __is_replan)
   (if __is_replan (setq _is_replan __is_replan)) _is_replan)
  (:replan_reason
   (&optional __replan_reason)
   (if __replan_reason (setq _replan_reason __replan_reason)) _replan_reason)
  (:right_of_way_status
   (&optional __right_of_way_status)
   (if __right_of_way_status (setq _right_of_way_status __right_of_way_status)) _right_of_way_status)
  (:rss_info
   (&rest __rss_info)
   (if (keywordp (car __rss_info))
       (send* _rss_info __rss_info)
     (progn
       (if __rss_info (setq _rss_info (car __rss_info)))
       _rss_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _total_path_length
    8
    ;; float64 _total_path_time
    8
    ;; ros_interface/TrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ;; int32 _car_action
    4
    ;; int32 _behaviour_lat_state
    4
    ;; int32 _behaviour_lon_state
    4
    ;; int32 _scenario
    4
    ;; int32 _driving_mode
    4
    ;; int32 _adc_trajectory_type
    4
    ;; ros_interface/EStop _estop
    (send _estop :serialization-length)
    ;; bool _is_replan
    1
    ;; string _replan_reason
    4 (length _replan_reason)
    ;; int32 _right_of_way_status
    4
    ;; ros_interface/RSSInfo _rss_info
    (send _rss_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _total_path_length
       (sys::poke _total_path_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_path_time
       (sys::poke _total_path_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/TrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;; int32 _car_action
       (write-long _car_action s)
     ;; int32 _behaviour_lat_state
       (write-long _behaviour_lat_state s)
     ;; int32 _behaviour_lon_state
       (write-long _behaviour_lon_state s)
     ;; int32 _scenario
       (write-long _scenario s)
     ;; int32 _driving_mode
       (write-long _driving_mode s)
     ;; int32 _adc_trajectory_type
       (write-long _adc_trajectory_type s)
     ;; ros_interface/EStop _estop
       (send _estop :serialize s)
     ;; bool _is_replan
       (if _is_replan (write-byte -1 s) (write-byte 0 s))
     ;; string _replan_reason
       (write-long (length _replan_reason) s) (princ _replan_reason s)
     ;; int32 _right_of_way_status
       (write-long _right_of_way_status s)
     ;; ros_interface/RSSInfo _rss_info
       (send _rss_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _total_path_length
     (setq _total_path_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_path_time
     (setq _total_path_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/TrajectoryPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _car_action
     (setq _car_action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _behaviour_lat_state
     (setq _behaviour_lat_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _behaviour_lon_state
     (setq _behaviour_lon_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _scenario
     (setq _scenario (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _adc_trajectory_type
     (setq _adc_trajectory_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/EStop _estop
     (send _estop :deserialize buf ptr-) (incf ptr- (send _estop :serialization-length))
   ;; bool _is_replan
     (setq _is_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _replan_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _replan_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _right_of_way_status
     (setq _right_of_way_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/RSSInfo _rss_info
     (send _rss_info :deserialize buf ptr-) (incf ptr- (send _rss_info :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::ADCTrajectory :md5sum-) "75d0aed975a882d16ca3fd604ed666f1")
(setf (get ros_interface::ADCTrajectory :datatype-) "ros_interface/ADCTrajectory")
(setf (get ros_interface::ADCTrajectory :definition-)
      "Header   header     # timestamp is included in header
float64   total_path_length     # unit meters(m)
float64   total_path_time     # unit seconds(s)
TrajectoryPoint[] trajectory_points # 规划轨迹点列
int32   car_action     # 车辆行为： CAR_ACTION_NONE=0  //无效值 CAR_ACTION_SINGLE=1 //单车 CAR_ACTION_PLATOON_HEAD=2 //车队头车 CAR_ACTION_PLATOON_OTHER=3 //车队其他车辆
int32   behaviour_lat_state     # 自动驾驶状态（主要指横向状态）
int32   behaviour_lon_state     # 自动驾驶状态（主要指纵向状态）
int32   scenario     # 驾驶场景 0-UNKNOWN, 1-CRUISE, 2-CRUISE_URBAN 3-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN
int32   driving_mode     # 驾驶模式： 1：人工驾驶， 2：辅助驾驶， 3：自动驾驶
int32   adc_trajectory_type     # 轨迹类型： TRAJECTORY_TYPE_ABSOLUTE=0 //绝对规划轨迹 TRAJECTORY_TYPE_RELATIVE=1 //相对规划轨迹 TRAJECTORY_TYPE_INVALID=2 //无效规划轨迹
EStop   estop     # emergency stop
bool   is_replan     # is_replan == truemean replan triggered(default = false)
string   replan_reason     #  
int32   right_of_way_status     # UNPROTECTED = 0;PROTECTED = 1;
RSSInfo   rss_info     # output related to RSS

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
MSG: ros_interface/EStop
bool   is_estop     # is_estop == true when emergency stop is required
string   reason     # 原因

================================================================================
MSG: ros_interface/RSSInfo
bool   is_rss_safe     #  
float64   cur_dist_lon     # current longitudinal distance
float64   rss_safe_dist_lon     # longitudinal safe distance of rss
float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration
float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration
float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration
float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration
float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration
float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration

")



(provide :ros_interface/ADCTrajectory "75d0aed975a882d16ca3fd604ed666f1")


