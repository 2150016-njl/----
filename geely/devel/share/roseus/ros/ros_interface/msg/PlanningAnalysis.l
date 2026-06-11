;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PlanningAnalysis)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PlanningAnalysis (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PLANNINGANALYSIS")
  (make-package "ROS_INTERFACE::PLANNINGANALYSIS"))

(in-package "ROS")
;;//! \htmlinclude PlanningAnalysis.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::PlanningAnalysis
  :super ros::object
  :slots (_header _frame_update_time _generator_time _evaluator_time _selector_time _planning_parking_debug _dis_to_center_line _diff_to_velocity _referencline_kappa ))

(defmethod ros_interface::PlanningAnalysis
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_update_time __frame_update_time) 0.0)
    ((:generator_time __generator_time) 0.0)
    ((:evaluator_time __evaluator_time) (let (r) (dotimes (i 0) (push (instance ros_interface::TimeConsume :init) r)) r))
    ((:selector_time __selector_time) 0.0)
    ((:planning_parking_debug __planning_parking_debug) (instance ros_interface::PlanningParkingDebug :init))
    ((:dis_to_center_line __dis_to_center_line) 0.0)
    ((:diff_to_velocity __diff_to_velocity) 0.0)
    ((:referencline_kappa __referencline_kappa) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_update_time (float __frame_update_time))
   (setq _generator_time (float __generator_time))
   (setq _evaluator_time __evaluator_time)
   (setq _selector_time (float __selector_time))
   (setq _planning_parking_debug __planning_parking_debug)
   (setq _dis_to_center_line (float __dis_to_center_line))
   (setq _diff_to_velocity (float __diff_to_velocity))
   (setq _referencline_kappa (float __referencline_kappa))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_update_time
   (&optional __frame_update_time)
   (if __frame_update_time (setq _frame_update_time __frame_update_time)) _frame_update_time)
  (:generator_time
   (&optional __generator_time)
   (if __generator_time (setq _generator_time __generator_time)) _generator_time)
  (:evaluator_time
   (&rest __evaluator_time)
   (if (keywordp (car __evaluator_time))
       (send* _evaluator_time __evaluator_time)
     (progn
       (if __evaluator_time (setq _evaluator_time (car __evaluator_time)))
       _evaluator_time)))
  (:selector_time
   (&optional __selector_time)
   (if __selector_time (setq _selector_time __selector_time)) _selector_time)
  (:planning_parking_debug
   (&rest __planning_parking_debug)
   (if (keywordp (car __planning_parking_debug))
       (send* _planning_parking_debug __planning_parking_debug)
     (progn
       (if __planning_parking_debug (setq _planning_parking_debug (car __planning_parking_debug)))
       _planning_parking_debug)))
  (:dis_to_center_line
   (&optional __dis_to_center_line)
   (if __dis_to_center_line (setq _dis_to_center_line __dis_to_center_line)) _dis_to_center_line)
  (:diff_to_velocity
   (&optional __diff_to_velocity)
   (if __diff_to_velocity (setq _diff_to_velocity __diff_to_velocity)) _diff_to_velocity)
  (:referencline_kappa
   (&optional __referencline_kappa)
   (if __referencline_kappa (setq _referencline_kappa __referencline_kappa)) _referencline_kappa)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _frame_update_time
    8
    ;; float64 _generator_time
    8
    ;; ros_interface/TimeConsume[] _evaluator_time
    (apply #'+ (send-all _evaluator_time :serialization-length)) 4
    ;; float64 _selector_time
    8
    ;; ros_interface/PlanningParkingDebug _planning_parking_debug
    (send _planning_parking_debug :serialization-length)
    ;; float64 _dis_to_center_line
    8
    ;; float64 _diff_to_velocity
    8
    ;; float64 _referencline_kappa
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _frame_update_time
       (sys::poke _frame_update_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _generator_time
       (sys::poke _generator_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/TimeConsume[] _evaluator_time
     (write-long (length _evaluator_time) s)
     (dolist (elem _evaluator_time)
       (send elem :serialize s)
       )
     ;; float64 _selector_time
       (sys::poke _selector_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/PlanningParkingDebug _planning_parking_debug
       (send _planning_parking_debug :serialize s)
     ;; float64 _dis_to_center_line
       (sys::poke _dis_to_center_line (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_to_velocity
       (sys::poke _diff_to_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _referencline_kappa
       (sys::poke _referencline_kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _frame_update_time
     (setq _frame_update_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _generator_time
     (setq _generator_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/TimeConsume[] _evaluator_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _evaluator_time (let (r) (dotimes (i n) (push (instance ros_interface::TimeConsume :init) r)) r))
     (dolist (elem- _evaluator_time)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _selector_time
     (setq _selector_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/PlanningParkingDebug _planning_parking_debug
     (send _planning_parking_debug :deserialize buf ptr-) (incf ptr- (send _planning_parking_debug :serialization-length))
   ;; float64 _dis_to_center_line
     (setq _dis_to_center_line (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_to_velocity
     (setq _diff_to_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _referencline_kappa
     (setq _referencline_kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::PlanningAnalysis :md5sum-) "c63a3ff5e3802e16819f364cf95482ed")
(setf (get ros_interface::PlanningAnalysis :datatype-) "ros_interface/PlanningAnalysis")
(setf (get ros_interface::PlanningAnalysis :definition-)
      "Header   header     #  
float64   frame_update_time     # frame update计算时间
float64   generator_time     # 轨迹生成 计算时间
TimeConsume[] evaluator_time # 轨迹评估计算时间
float64   selector_time     # 轨迹选择计算时间
PlanningParkingDebug   planning_parking_debug     # planning泊车调试消息
float64   dis_to_center_line     # 车辆距离车道中心线的垂直距离
float64   diff_to_velocity     # 目标速度与规划速度之差
float64   referencline_kappa     # 参考线曲率

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
MSG: ros_interface/TimeConsume
string   name     #  
float64   time_consume     #  

================================================================================
MSG: ros_interface/PlanningParkingDebug
Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形
Polygon2D[] obstacles_polygon # 障碍物多边形
PathPoint[] path_points # 轨迹点
float64   lat_error     # 横向误差
float64   lon_error     # 纵向误差
float64   yaw_error     # 角度误差(度)
Point2dList[] obstacles_vec #  
TrajectoryPoint[] warm_start_traj #  
TrajectoryPoint[] smoothed_traj_stage1 #  
TrajectoryPoint[] smoothed_traj_stage2 #  
Trajectory   reference_line     #  
Trajectory[] trajectory_array # 轨迹簇
Trajectory   optimal_coarse_trajectory     #  
Trajectory   optimal_smooth_trajectory     #  
float64   hybrid_a_star_map_time     #  
float64   hybrid_a_star_heuristic_time     #  
float64   hybrid_a_star_rs_time     #  
float64   hybrid_a_star_total_time     #  
float64   ias_collision_avoidance_time     #  
float64   ias_path_smooth_time     #  
float64   ias_speed_smooth_time     #  
float64   ias_total_time     #  
float64   samping_trajectory_time     #  
bool   is_replan     #  
string   replan_reason     #  
float64   replan_time     #  
int32   replan_num     #  
int32   optimizer_thread_counter     #  
int32   replan_by_context_update_counter     #  
int32   replan_by_large_error_counter     #  
int32   parking_type     #  
int32   moves_counter     # 揉库次数
float64   remain_distance     # 剩余距离
float64   distance_to_leader_obj     # 距离最近障碍物距离
int32   state     #  

================================================================================
MSG: ros_interface/Polygon2D
int32   coordinate_system     # 坐标系
Point2D[] points # 二维点集

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

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
MSG: ros_interface/Point2dList
Point2D[] point2d_list #  

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
MSG: ros_interface/GaussianInfo
float64   sigma_x     # 标准差x
float64   sigma_y     # 标准差y
float64   correlation     # 相关性
float64   area_probability     # Information of representative uncertainty area
float64   ellipse_a     # 椭圆长轴
float64   ellipse_b     # 椭圆短轴
float64   theta_a     # 椭圆朝向

================================================================================
MSG: ros_interface/Trajectory
string   name     # 轨迹名称
TrajectoryPoint[] trajectory_points # 轨迹点

")



(provide :ros_interface/PlanningAnalysis "c63a3ff5e3802e16819f364cf95482ed")


