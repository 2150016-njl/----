; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PredictionObstacles.msg.html

(cl:defclass <PredictionObstacles> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (prediction_obstacles
    :reader prediction_obstacles
    :initarg :prediction_obstacles
    :type (cl:vector ros_interface-msg:PredictionObstacle)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:PredictionObstacle :initial-element (cl:make-instance 'ros_interface-msg:PredictionObstacle)))
   (change_origin_flag
    :reader change_origin_flag
    :initarg :change_origin_flag
    :type cl:integer
    :initform 0)
   (start_timestamp
    :reader start_timestamp
    :initarg :start_timestamp
    :type cl:float
    :initform 0.0)
   (end_timestamp
    :reader end_timestamp
    :initarg :end_timestamp
    :type cl:float
    :initform 0.0)
   (self_intent
    :reader self_intent
    :initarg :self_intent
    :type cl:integer
    :initform 0)
   (scenario
    :reader scenario
    :initarg :scenario
    :type cl:integer
    :initform 0))
)

(cl:defclass PredictionObstacles (<PredictionObstacles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionObstacles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionObstacles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PredictionObstacles> is deprecated: use ros_interface-msg:PredictionObstacles instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'prediction_obstacles-val :lambda-list '(m))
(cl:defmethod prediction_obstacles-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:prediction_obstacles-val is deprecated.  Use ros_interface-msg:prediction_obstacles instead.")
  (prediction_obstacles m))

(cl:ensure-generic-function 'change_origin_flag-val :lambda-list '(m))
(cl:defmethod change_origin_flag-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:change_origin_flag-val is deprecated.  Use ros_interface-msg:change_origin_flag instead.")
  (change_origin_flag m))

(cl:ensure-generic-function 'start_timestamp-val :lambda-list '(m))
(cl:defmethod start_timestamp-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:start_timestamp-val is deprecated.  Use ros_interface-msg:start_timestamp instead.")
  (start_timestamp m))

(cl:ensure-generic-function 'end_timestamp-val :lambda-list '(m))
(cl:defmethod end_timestamp-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:end_timestamp-val is deprecated.  Use ros_interface-msg:end_timestamp instead.")
  (end_timestamp m))

(cl:ensure-generic-function 'self_intent-val :lambda-list '(m))
(cl:defmethod self_intent-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:self_intent-val is deprecated.  Use ros_interface-msg:self_intent instead.")
  (self_intent m))

(cl:ensure-generic-function 'scenario-val :lambda-list '(m))
(cl:defmethod scenario-val ((m <PredictionObstacles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:scenario-val is deprecated.  Use ros_interface-msg:scenario instead.")
  (scenario m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionObstacles>) ostream)
  "Serializes a message object of type '<PredictionObstacles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prediction_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'prediction_obstacles))
  (cl:let* ((signed (cl:slot-value msg 'change_origin_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'self_intent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'scenario)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionObstacles>) istream)
  "Deserializes a message object of type '<PredictionObstacles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prediction_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prediction_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:PredictionObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_origin_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_intent) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scenario) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionObstacles>)))
  "Returns string type for a message object of type '<PredictionObstacles>"
  "ros_interface/PredictionObstacles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionObstacles)))
  "Returns string type for a message object of type 'PredictionObstacles"
  "ros_interface/PredictionObstacles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionObstacles>)))
  "Returns md5sum for a message object of type '<PredictionObstacles>"
  "9354ec2a726cf7a2762b6008aa699e3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionObstacles)))
  "Returns md5sum for a message object of type 'PredictionObstacles"
  "9354ec2a726cf7a2762b6008aa699e3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionObstacles>)))
  "Returns full string definition for message of type '<PredictionObstacles>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%PredictionObstacle[] prediction_obstacles # make prediction for multiple obstacles~%int32   change_origin_flag     # 0:坐标系切换成功 1:坐标系切换中 2:坐标系切换故障~%float64   start_timestamp     # start timestamp~%float64   end_timestamp     # end timestamp~%int32   self_intent     # 自动驾驶车辆意图  0-UNKNOWN, 1-STOP, 2-CRUISE, 3-CHANGE_LANE~%int32   scenario     # 场景              0-UNKNOWN, 1000-CRUISE, 1001-CRUISE_URBAN 1002-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/PredictionObstacle~%PerceptionObstacle   perception_obstacle     # perception info of obstacle~%float64   timestamp     # GPS time in seconds~%float64   predicted_period     # the length of the time for this prediction (e.g. 10s)~%TrajectoryInPrediction[] trajectory # can have multiple trajectories per obstacle~%ObstacleIntent   intent     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%ObstaclePriority   priority     # 障碍物优先级               1-CAUTION, 2-NORMAL, 3-IGNORE~%ObstacleInteractiveTag   interactive_tag     #  ~%bool   is_static     # is obstacle static (default = false)~%~%================================================================================~%MSG: ros_interface/PerceptionObstacle~%int32   id     #  ~%Point3D   position     #  ~%float64   theta     #  ~%Point3D   velocity     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%Point3D[] polygon_point #  ~%float64   tracking_time     #  ~%int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   confidence     #  ~%float64   timestamp     #  ~%uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD~%Point3D   drops     #  ~%Point3D   acceleration     #  ~%Point3D   anchor_point     #  ~%Point3D[] bounding_box #  ~%int32   sub_type     #  ~%float64   height_above_ground     #  ~%float64[] position_covariance #  ~%float64[] velocity_covariance #  ~%float64[] acceleration_covariance #  ~%uint8   light_status     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/TrajectoryInPrediction~%float64   probability     # probability of this trajectory~%TrajectoryPoint[] trajectory_points #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/ObstacleIntent~%int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%~%================================================================================~%MSG: ros_interface/ObstaclePriority~%int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%================================================================================~%MSG: ros_interface/ObstacleInteractiveTag~%int32   interactive_tag     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionObstacles)))
  "Returns full string definition for message of type 'PredictionObstacles"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%PredictionObstacle[] prediction_obstacles # make prediction for multiple obstacles~%int32   change_origin_flag     # 0:坐标系切换成功 1:坐标系切换中 2:坐标系切换故障~%float64   start_timestamp     # start timestamp~%float64   end_timestamp     # end timestamp~%int32   self_intent     # 自动驾驶车辆意图  0-UNKNOWN, 1-STOP, 2-CRUISE, 3-CHANGE_LANE~%int32   scenario     # 场景              0-UNKNOWN, 1000-CRUISE, 1001-CRUISE_URBAN 1002-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/PredictionObstacle~%PerceptionObstacle   perception_obstacle     # perception info of obstacle~%float64   timestamp     # GPS time in seconds~%float64   predicted_period     # the length of the time for this prediction (e.g. 10s)~%TrajectoryInPrediction[] trajectory # can have multiple trajectories per obstacle~%ObstacleIntent   intent     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%ObstaclePriority   priority     # 障碍物优先级               1-CAUTION, 2-NORMAL, 3-IGNORE~%ObstacleInteractiveTag   interactive_tag     #  ~%bool   is_static     # is obstacle static (default = false)~%~%================================================================================~%MSG: ros_interface/PerceptionObstacle~%int32   id     #  ~%Point3D   position     #  ~%float64   theta     #  ~%Point3D   velocity     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%Point3D[] polygon_point #  ~%float64   tracking_time     #  ~%int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   confidence     #  ~%float64   timestamp     #  ~%uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD~%Point3D   drops     #  ~%Point3D   acceleration     #  ~%Point3D   anchor_point     #  ~%Point3D[] bounding_box #  ~%int32   sub_type     #  ~%float64   height_above_ground     #  ~%float64[] position_covariance #  ~%float64[] velocity_covariance #  ~%float64[] acceleration_covariance #  ~%uint8   light_status     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/TrajectoryInPrediction~%float64   probability     # probability of this trajectory~%TrajectoryPoint[] trajectory_points #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/ObstacleIntent~%int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%~%================================================================================~%MSG: ros_interface/ObstaclePriority~%int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%================================================================================~%MSG: ros_interface/ObstacleInteractiveTag~%int32   interactive_tag     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionObstacles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prediction_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionObstacles>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionObstacles
    (cl:cons ':header (header msg))
    (cl:cons ':prediction_obstacles (prediction_obstacles msg))
    (cl:cons ':change_origin_flag (change_origin_flag msg))
    (cl:cons ':start_timestamp (start_timestamp msg))
    (cl:cons ':end_timestamp (end_timestamp msg))
    (cl:cons ':self_intent (self_intent msg))
    (cl:cons ':scenario (scenario msg))
))
