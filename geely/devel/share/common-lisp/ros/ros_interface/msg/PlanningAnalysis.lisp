; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PlanningAnalysis.msg.html

(cl:defclass <PlanningAnalysis> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frame_update_time
    :reader frame_update_time
    :initarg :frame_update_time
    :type cl:float
    :initform 0.0)
   (generator_time
    :reader generator_time
    :initarg :generator_time
    :type cl:float
    :initform 0.0)
   (evaluator_time
    :reader evaluator_time
    :initarg :evaluator_time
    :type (cl:vector ros_interface-msg:TimeConsume)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TimeConsume :initial-element (cl:make-instance 'ros_interface-msg:TimeConsume)))
   (selector_time
    :reader selector_time
    :initarg :selector_time
    :type cl:float
    :initform 0.0)
   (planning_parking_debug
    :reader planning_parking_debug
    :initarg :planning_parking_debug
    :type ros_interface-msg:PlanningParkingDebug
    :initform (cl:make-instance 'ros_interface-msg:PlanningParkingDebug))
   (dis_to_center_line
    :reader dis_to_center_line
    :initarg :dis_to_center_line
    :type cl:float
    :initform 0.0)
   (diff_to_velocity
    :reader diff_to_velocity
    :initarg :diff_to_velocity
    :type cl:float
    :initform 0.0)
   (referencline_kappa
    :reader referencline_kappa
    :initarg :referencline_kappa
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlanningAnalysis (<PlanningAnalysis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningAnalysis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningAnalysis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PlanningAnalysis> is deprecated: use ros_interface-msg:PlanningAnalysis instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame_update_time-val :lambda-list '(m))
(cl:defmethod frame_update_time-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:frame_update_time-val is deprecated.  Use ros_interface-msg:frame_update_time instead.")
  (frame_update_time m))

(cl:ensure-generic-function 'generator_time-val :lambda-list '(m))
(cl:defmethod generator_time-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:generator_time-val is deprecated.  Use ros_interface-msg:generator_time instead.")
  (generator_time m))

(cl:ensure-generic-function 'evaluator_time-val :lambda-list '(m))
(cl:defmethod evaluator_time-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:evaluator_time-val is deprecated.  Use ros_interface-msg:evaluator_time instead.")
  (evaluator_time m))

(cl:ensure-generic-function 'selector_time-val :lambda-list '(m))
(cl:defmethod selector_time-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:selector_time-val is deprecated.  Use ros_interface-msg:selector_time instead.")
  (selector_time m))

(cl:ensure-generic-function 'planning_parking_debug-val :lambda-list '(m))
(cl:defmethod planning_parking_debug-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:planning_parking_debug-val is deprecated.  Use ros_interface-msg:planning_parking_debug instead.")
  (planning_parking_debug m))

(cl:ensure-generic-function 'dis_to_center_line-val :lambda-list '(m))
(cl:defmethod dis_to_center_line-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:dis_to_center_line-val is deprecated.  Use ros_interface-msg:dis_to_center_line instead.")
  (dis_to_center_line m))

(cl:ensure-generic-function 'diff_to_velocity-val :lambda-list '(m))
(cl:defmethod diff_to_velocity-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:diff_to_velocity-val is deprecated.  Use ros_interface-msg:diff_to_velocity instead.")
  (diff_to_velocity m))

(cl:ensure-generic-function 'referencline_kappa-val :lambda-list '(m))
(cl:defmethod referencline_kappa-val ((m <PlanningAnalysis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:referencline_kappa-val is deprecated.  Use ros_interface-msg:referencline_kappa instead.")
  (referencline_kappa m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningAnalysis>) ostream)
  "Serializes a message object of type '<PlanningAnalysis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'frame_update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'generator_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'evaluator_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'evaluator_time))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'selector_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'planning_parking_debug) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dis_to_center_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'diff_to_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'referencline_kappa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningAnalysis>) istream)
  "Deserializes a message object of type '<PlanningAnalysis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frame_update_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'generator_time) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'evaluator_time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'evaluator_time)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TimeConsume))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'selector_time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'planning_parking_debug) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_to_center_line) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_to_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'referencline_kappa) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningAnalysis>)))
  "Returns string type for a message object of type '<PlanningAnalysis>"
  "ros_interface/PlanningAnalysis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningAnalysis)))
  "Returns string type for a message object of type 'PlanningAnalysis"
  "ros_interface/PlanningAnalysis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningAnalysis>)))
  "Returns md5sum for a message object of type '<PlanningAnalysis>"
  "c63a3ff5e3802e16819f364cf95482ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningAnalysis)))
  "Returns md5sum for a message object of type 'PlanningAnalysis"
  "c63a3ff5e3802e16819f364cf95482ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningAnalysis>)))
  "Returns full string definition for message of type '<PlanningAnalysis>"
  (cl:format cl:nil "Header   header     #  ~%float64   frame_update_time     # frame update计算时间~%float64   generator_time     # 轨迹生成 计算时间~%TimeConsume[] evaluator_time # 轨迹评估计算时间~%float64   selector_time     # 轨迹选择计算时间~%PlanningParkingDebug   planning_parking_debug     # planning泊车调试消息~%float64   dis_to_center_line     # 车辆距离车道中心线的垂直距离~%float64   diff_to_velocity     # 目标速度与规划速度之差~%float64   referencline_kappa     # 参考线曲率~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/TimeConsume~%string   name     #  ~%float64   time_consume     #  ~%~%================================================================================~%MSG: ros_interface/PlanningParkingDebug~%Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形~%Polygon2D[] obstacles_polygon # 障碍物多边形~%PathPoint[] path_points # 轨迹点~%float64   lat_error     # 横向误差~%float64   lon_error     # 纵向误差~%float64   yaw_error     # 角度误差(度)~%Point2dList[] obstacles_vec #  ~%TrajectoryPoint[] warm_start_traj #  ~%TrajectoryPoint[] smoothed_traj_stage1 #  ~%TrajectoryPoint[] smoothed_traj_stage2 #  ~%Trajectory   reference_line     #  ~%Trajectory[] trajectory_array # 轨迹簇~%Trajectory   optimal_coarse_trajectory     #  ~%Trajectory   optimal_smooth_trajectory     #  ~%float64   hybrid_a_star_map_time     #  ~%float64   hybrid_a_star_heuristic_time     #  ~%float64   hybrid_a_star_rs_time     #  ~%float64   hybrid_a_star_total_time     #  ~%float64   ias_collision_avoidance_time     #  ~%float64   ias_path_smooth_time     #  ~%float64   ias_speed_smooth_time     #  ~%float64   ias_total_time     #  ~%float64   samping_trajectory_time     #  ~%bool   is_replan     #  ~%string   replan_reason     #  ~%float64   replan_time     #  ~%int32   replan_num     #  ~%int32   optimizer_thread_counter     #  ~%int32   replan_by_context_update_counter     #  ~%int32   replan_by_large_error_counter     #  ~%int32   parking_type     #  ~%int32   moves_counter     # 揉库次数~%float64   remain_distance     # 剩余距离~%float64   distance_to_leader_obj     # 距离最近障碍物距离~%int32   state     #  ~%~%================================================================================~%MSG: ros_interface/Polygon2D~%int32   coordinate_system     # 坐标系~%Point2D[] points # 二维点集~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/Point2dList~%Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/Trajectory~%string   name     # 轨迹名称~%TrajectoryPoint[] trajectory_points # 轨迹点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningAnalysis)))
  "Returns full string definition for message of type 'PlanningAnalysis"
  (cl:format cl:nil "Header   header     #  ~%float64   frame_update_time     # frame update计算时间~%float64   generator_time     # 轨迹生成 计算时间~%TimeConsume[] evaluator_time # 轨迹评估计算时间~%float64   selector_time     # 轨迹选择计算时间~%PlanningParkingDebug   planning_parking_debug     # planning泊车调试消息~%float64   dis_to_center_line     # 车辆距离车道中心线的垂直距离~%float64   diff_to_velocity     # 目标速度与规划速度之差~%float64   referencline_kappa     # 参考线曲率~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/TimeConsume~%string   name     #  ~%float64   time_consume     #  ~%~%================================================================================~%MSG: ros_interface/PlanningParkingDebug~%Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形~%Polygon2D[] obstacles_polygon # 障碍物多边形~%PathPoint[] path_points # 轨迹点~%float64   lat_error     # 横向误差~%float64   lon_error     # 纵向误差~%float64   yaw_error     # 角度误差(度)~%Point2dList[] obstacles_vec #  ~%TrajectoryPoint[] warm_start_traj #  ~%TrajectoryPoint[] smoothed_traj_stage1 #  ~%TrajectoryPoint[] smoothed_traj_stage2 #  ~%Trajectory   reference_line     #  ~%Trajectory[] trajectory_array # 轨迹簇~%Trajectory   optimal_coarse_trajectory     #  ~%Trajectory   optimal_smooth_trajectory     #  ~%float64   hybrid_a_star_map_time     #  ~%float64   hybrid_a_star_heuristic_time     #  ~%float64   hybrid_a_star_rs_time     #  ~%float64   hybrid_a_star_total_time     #  ~%float64   ias_collision_avoidance_time     #  ~%float64   ias_path_smooth_time     #  ~%float64   ias_speed_smooth_time     #  ~%float64   ias_total_time     #  ~%float64   samping_trajectory_time     #  ~%bool   is_replan     #  ~%string   replan_reason     #  ~%float64   replan_time     #  ~%int32   replan_num     #  ~%int32   optimizer_thread_counter     #  ~%int32   replan_by_context_update_counter     #  ~%int32   replan_by_large_error_counter     #  ~%int32   parking_type     #  ~%int32   moves_counter     # 揉库次数~%float64   remain_distance     # 剩余距离~%float64   distance_to_leader_obj     # 距离最近障碍物距离~%int32   state     #  ~%~%================================================================================~%MSG: ros_interface/Polygon2D~%int32   coordinate_system     # 坐标系~%Point2D[] points # 二维点集~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/Point2dList~%Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/Trajectory~%string   name     # 轨迹名称~%TrajectoryPoint[] trajectory_points # 轨迹点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningAnalysis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'evaluator_time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'planning_parking_debug))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningAnalysis>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningAnalysis
    (cl:cons ':header (header msg))
    (cl:cons ':frame_update_time (frame_update_time msg))
    (cl:cons ':generator_time (generator_time msg))
    (cl:cons ':evaluator_time (evaluator_time msg))
    (cl:cons ':selector_time (selector_time msg))
    (cl:cons ':planning_parking_debug (planning_parking_debug msg))
    (cl:cons ':dis_to_center_line (dis_to_center_line msg))
    (cl:cons ':diff_to_velocity (diff_to_velocity msg))
    (cl:cons ':referencline_kappa (referencline_kappa msg))
))
