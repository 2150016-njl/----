; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PredictionObstacle.msg.html

(cl:defclass <PredictionObstacle> (roslisp-msg-protocol:ros-message)
  ((perception_obstacle
    :reader perception_obstacle
    :initarg :perception_obstacle
    :type ros_interface-msg:PerceptionObstacle
    :initform (cl:make-instance 'ros_interface-msg:PerceptionObstacle))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (predicted_period
    :reader predicted_period
    :initarg :predicted_period
    :type cl:float
    :initform 0.0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector ros_interface-msg:TrajectoryInPrediction)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryInPrediction :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryInPrediction)))
   (intent
    :reader intent
    :initarg :intent
    :type ros_interface-msg:ObstacleIntent
    :initform (cl:make-instance 'ros_interface-msg:ObstacleIntent))
   (priority
    :reader priority
    :initarg :priority
    :type ros_interface-msg:ObstaclePriority
    :initform (cl:make-instance 'ros_interface-msg:ObstaclePriority))
   (interactive_tag
    :reader interactive_tag
    :initarg :interactive_tag
    :type ros_interface-msg:ObstacleInteractiveTag
    :initform (cl:make-instance 'ros_interface-msg:ObstacleInteractiveTag))
   (is_static
    :reader is_static
    :initarg :is_static
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PredictionObstacle (<PredictionObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PredictionObstacle> is deprecated: use ros_interface-msg:PredictionObstacle instead.")))

(cl:ensure-generic-function 'perception_obstacle-val :lambda-list '(m))
(cl:defmethod perception_obstacle-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:perception_obstacle-val is deprecated.  Use ros_interface-msg:perception_obstacle instead.")
  (perception_obstacle m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:timestamp-val is deprecated.  Use ros_interface-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'predicted_period-val :lambda-list '(m))
(cl:defmethod predicted_period-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:predicted_period-val is deprecated.  Use ros_interface-msg:predicted_period instead.")
  (predicted_period m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory-val is deprecated.  Use ros_interface-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'intent-val :lambda-list '(m))
(cl:defmethod intent-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:intent-val is deprecated.  Use ros_interface-msg:intent instead.")
  (intent m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:priority-val is deprecated.  Use ros_interface-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'interactive_tag-val :lambda-list '(m))
(cl:defmethod interactive_tag-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:interactive_tag-val is deprecated.  Use ros_interface-msg:interactive_tag instead.")
  (interactive_tag m))

(cl:ensure-generic-function 'is_static-val :lambda-list '(m))
(cl:defmethod is_static-val ((m <PredictionObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_static-val is deprecated.  Use ros_interface-msg:is_static instead.")
  (is_static m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionObstacle>) ostream)
  "Serializes a message object of type '<PredictionObstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'perception_obstacle) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'predicted_period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intent) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'priority) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interactive_tag) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_static) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionObstacle>) istream)
  "Deserializes a message object of type '<PredictionObstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'perception_obstacle) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'predicted_period) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryInPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intent) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'priority) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interactive_tag) istream)
    (cl:setf (cl:slot-value msg 'is_static) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionObstacle>)))
  "Returns string type for a message object of type '<PredictionObstacle>"
  "ros_interface/PredictionObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionObstacle)))
  "Returns string type for a message object of type 'PredictionObstacle"
  "ros_interface/PredictionObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionObstacle>)))
  "Returns md5sum for a message object of type '<PredictionObstacle>"
  "de205312bb9fab36d338b8733d52dd18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionObstacle)))
  "Returns md5sum for a message object of type 'PredictionObstacle"
  "de205312bb9fab36d338b8733d52dd18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionObstacle>)))
  "Returns full string definition for message of type '<PredictionObstacle>"
  (cl:format cl:nil "PerceptionObstacle   perception_obstacle     # perception info of obstacle~%float64   timestamp     # GPS time in seconds~%float64   predicted_period     # the length of the time for this prediction (e.g. 10s)~%TrajectoryInPrediction[] trajectory # can have multiple trajectories per obstacle~%ObstacleIntent   intent     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%ObstaclePriority   priority     # 障碍物优先级               1-CAUTION, 2-NORMAL, 3-IGNORE~%ObstacleInteractiveTag   interactive_tag     #  ~%bool   is_static     # is obstacle static (default = false)~%~%================================================================================~%MSG: ros_interface/PerceptionObstacle~%int32   id     #  ~%Point3D   position     #  ~%float64   theta     #  ~%Point3D   velocity     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%Point3D[] polygon_point #  ~%float64   tracking_time     #  ~%int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   confidence     #  ~%float64   timestamp     #  ~%uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD~%Point3D   drops     #  ~%Point3D   acceleration     #  ~%Point3D   anchor_point     #  ~%Point3D[] bounding_box #  ~%int32   sub_type     #  ~%float64   height_above_ground     #  ~%float64[] position_covariance #  ~%float64[] velocity_covariance #  ~%float64[] acceleration_covariance #  ~%uint8   light_status     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/TrajectoryInPrediction~%float64   probability     # probability of this trajectory~%TrajectoryPoint[] trajectory_points #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/ObstacleIntent~%int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%~%================================================================================~%MSG: ros_interface/ObstaclePriority~%int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%================================================================================~%MSG: ros_interface/ObstacleInteractiveTag~%int32   interactive_tag     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionObstacle)))
  "Returns full string definition for message of type 'PredictionObstacle"
  (cl:format cl:nil "PerceptionObstacle   perception_obstacle     # perception info of obstacle~%float64   timestamp     # GPS time in seconds~%float64   predicted_period     # the length of the time for this prediction (e.g. 10s)~%TrajectoryInPrediction[] trajectory # can have multiple trajectories per obstacle~%ObstacleIntent   intent     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%ObstaclePriority   priority     # 障碍物优先级               1-CAUTION, 2-NORMAL, 3-IGNORE~%ObstacleInteractiveTag   interactive_tag     #  ~%bool   is_static     # is obstacle static (default = false)~%~%================================================================================~%MSG: ros_interface/PerceptionObstacle~%int32   id     #  ~%Point3D   position     #  ~%float64   theta     #  ~%Point3D   velocity     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%Point3D[] polygon_point #  ~%float64   tracking_time     #  ~%int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   confidence     #  ~%float64   timestamp     #  ~%uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD~%Point3D   drops     #  ~%Point3D   acceleration     #  ~%Point3D   anchor_point     #  ~%Point3D[] bounding_box #  ~%int32   sub_type     #  ~%float64   height_above_ground     #  ~%float64[] position_covariance #  ~%float64[] velocity_covariance #  ~%float64[] acceleration_covariance #  ~%uint8   light_status     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/TrajectoryInPrediction~%float64   probability     # probability of this trajectory~%TrajectoryPoint[] trajectory_points #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/ObstacleIntent~%int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%~%================================================================================~%MSG: ros_interface/ObstaclePriority~%int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%================================================================================~%MSG: ros_interface/ObstacleInteractiveTag~%int32   interactive_tag     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionObstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'perception_obstacle))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intent))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'priority))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interactive_tag))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionObstacle
    (cl:cons ':perception_obstacle (perception_obstacle msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':predicted_period (predicted_period msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':intent (intent msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':interactive_tag (interactive_tag msg))
    (cl:cons ':is_static (is_static msg))
))
