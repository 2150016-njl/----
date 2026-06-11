; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ADCTrajectory.msg.html

(cl:defclass <ADCTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (total_path_length
    :reader total_path_length
    :initarg :total_path_length
    :type cl:float
    :initform 0.0)
   (total_path_time
    :reader total_path_time
    :initarg :total_path_time
    :type cl:float
    :initform 0.0)
   (trajectory_points
    :reader trajectory_points
    :initarg :trajectory_points
    :type (cl:vector ros_interface-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryPoint :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryPoint)))
   (car_action
    :reader car_action
    :initarg :car_action
    :type cl:integer
    :initform 0)
   (behaviour_lat_state
    :reader behaviour_lat_state
    :initarg :behaviour_lat_state
    :type cl:integer
    :initform 0)
   (behaviour_lon_state
    :reader behaviour_lon_state
    :initarg :behaviour_lon_state
    :type cl:integer
    :initform 0)
   (scenario
    :reader scenario
    :initarg :scenario
    :type cl:integer
    :initform 0)
   (driving_mode
    :reader driving_mode
    :initarg :driving_mode
    :type cl:integer
    :initform 0)
   (adc_trajectory_type
    :reader adc_trajectory_type
    :initarg :adc_trajectory_type
    :type cl:integer
    :initform 0)
   (estop
    :reader estop
    :initarg :estop
    :type ros_interface-msg:EStop
    :initform (cl:make-instance 'ros_interface-msg:EStop))
   (is_replan
    :reader is_replan
    :initarg :is_replan
    :type cl:boolean
    :initform cl:nil)
   (replan_reason
    :reader replan_reason
    :initarg :replan_reason
    :type cl:string
    :initform "")
   (right_of_way_status
    :reader right_of_way_status
    :initarg :right_of_way_status
    :type cl:integer
    :initform 0)
   (rss_info
    :reader rss_info
    :initarg :rss_info
    :type ros_interface-msg:RSSInfo
    :initform (cl:make-instance 'ros_interface-msg:RSSInfo)))
)

(cl:defclass ADCTrajectory (<ADCTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ADCTrajectory> is deprecated: use ros_interface-msg:ADCTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'total_path_length-val :lambda-list '(m))
(cl:defmethod total_path_length-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:total_path_length-val is deprecated.  Use ros_interface-msg:total_path_length instead.")
  (total_path_length m))

(cl:ensure-generic-function 'total_path_time-val :lambda-list '(m))
(cl:defmethod total_path_time-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:total_path_time-val is deprecated.  Use ros_interface-msg:total_path_time instead.")
  (total_path_time m))

(cl:ensure-generic-function 'trajectory_points-val :lambda-list '(m))
(cl:defmethod trajectory_points-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory_points-val is deprecated.  Use ros_interface-msg:trajectory_points instead.")
  (trajectory_points m))

(cl:ensure-generic-function 'car_action-val :lambda-list '(m))
(cl:defmethod car_action-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:car_action-val is deprecated.  Use ros_interface-msg:car_action instead.")
  (car_action m))

(cl:ensure-generic-function 'behaviour_lat_state-val :lambda-list '(m))
(cl:defmethod behaviour_lat_state-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:behaviour_lat_state-val is deprecated.  Use ros_interface-msg:behaviour_lat_state instead.")
  (behaviour_lat_state m))

(cl:ensure-generic-function 'behaviour_lon_state-val :lambda-list '(m))
(cl:defmethod behaviour_lon_state-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:behaviour_lon_state-val is deprecated.  Use ros_interface-msg:behaviour_lon_state instead.")
  (behaviour_lon_state m))

(cl:ensure-generic-function 'scenario-val :lambda-list '(m))
(cl:defmethod scenario-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:scenario-val is deprecated.  Use ros_interface-msg:scenario instead.")
  (scenario m))

(cl:ensure-generic-function 'driving_mode-val :lambda-list '(m))
(cl:defmethod driving_mode-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:driving_mode-val is deprecated.  Use ros_interface-msg:driving_mode instead.")
  (driving_mode m))

(cl:ensure-generic-function 'adc_trajectory_type-val :lambda-list '(m))
(cl:defmethod adc_trajectory_type-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:adc_trajectory_type-val is deprecated.  Use ros_interface-msg:adc_trajectory_type instead.")
  (adc_trajectory_type m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:estop-val is deprecated.  Use ros_interface-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'is_replan-val :lambda-list '(m))
(cl:defmethod is_replan-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_replan-val is deprecated.  Use ros_interface-msg:is_replan instead.")
  (is_replan m))

(cl:ensure-generic-function 'replan_reason-val :lambda-list '(m))
(cl:defmethod replan_reason-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_reason-val is deprecated.  Use ros_interface-msg:replan_reason instead.")
  (replan_reason m))

(cl:ensure-generic-function 'right_of_way_status-val :lambda-list '(m))
(cl:defmethod right_of_way_status-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:right_of_way_status-val is deprecated.  Use ros_interface-msg:right_of_way_status instead.")
  (right_of_way_status m))

(cl:ensure-generic-function 'rss_info-val :lambda-list '(m))
(cl:defmethod rss_info-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rss_info-val is deprecated.  Use ros_interface-msg:rss_info instead.")
  (rss_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCTrajectory>) ostream)
  "Serializes a message object of type '<ADCTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_path_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_path_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_points))
  (cl:let* ((signed (cl:slot-value msg 'car_action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'behaviour_lat_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'behaviour_lon_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'adc_trajectory_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estop) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_replan) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'replan_reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'replan_reason))
  (cl:let* ((signed (cl:slot-value msg 'right_of_way_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rss_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCTrajectory>) istream)
  "Deserializes a message object of type '<ADCTrajectory>"
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
    (cl:setf (cl:slot-value msg 'total_path_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_path_time) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behaviour_lat_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behaviour_lon_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scenario) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'adc_trajectory_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estop) istream)
    (cl:setf (cl:slot-value msg 'is_replan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'replan_reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_of_way_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rss_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCTrajectory>)))
  "Returns string type for a message object of type '<ADCTrajectory>"
  "ros_interface/ADCTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCTrajectory)))
  "Returns string type for a message object of type 'ADCTrajectory"
  "ros_interface/ADCTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCTrajectory>)))
  "Returns md5sum for a message object of type '<ADCTrajectory>"
  "75d0aed975a882d16ca3fd604ed666f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCTrajectory)))
  "Returns md5sum for a message object of type 'ADCTrajectory"
  "75d0aed975a882d16ca3fd604ed666f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCTrajectory>)))
  "Returns full string definition for message of type '<ADCTrajectory>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%float64   total_path_length     # unit meters(m)~%float64   total_path_time     # unit seconds(s)~%TrajectoryPoint[] trajectory_points # 规划轨迹点列~%int32   car_action     # 车辆行为： CAR_ACTION_NONE=0  //无效值 CAR_ACTION_SINGLE=1 //单车 CAR_ACTION_PLATOON_HEAD=2 //车队头车 CAR_ACTION_PLATOON_OTHER=3 //车队其他车辆~%int32   behaviour_lat_state     # 自动驾驶状态（主要指横向状态）~%int32   behaviour_lon_state     # 自动驾驶状态（主要指纵向状态）~%int32   scenario     # 驾驶场景 0-UNKNOWN, 1-CRUISE, 2-CRUISE_URBAN 3-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN~%int32   driving_mode     # 驾驶模式： 1：人工驾驶， 2：辅助驾驶， 3：自动驾驶~%int32   adc_trajectory_type     # 轨迹类型： TRAJECTORY_TYPE_ABSOLUTE=0 //绝对规划轨迹 TRAJECTORY_TYPE_RELATIVE=1 //相对规划轨迹 TRAJECTORY_TYPE_INVALID=2 //无效规划轨迹~%EStop   estop     # emergency stop~%bool   is_replan     # is_replan == truemean replan triggered(default = false)~%string   replan_reason     #  ~%int32   right_of_way_status     # UNPROTECTED = 0;PROTECTED = 1;~%RSSInfo   rss_info     # output related to RSS~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/EStop~%bool   is_estop     # is_estop == true when emergency stop is required~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/RSSInfo~%bool   is_rss_safe     #  ~%float64   cur_dist_lon     # current longitudinal distance~%float64   rss_safe_dist_lon     # longitudinal safe distance of rss~%float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration~%float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration~%float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration~%float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration~%float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration~%float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCTrajectory)))
  "Returns full string definition for message of type 'ADCTrajectory"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%float64   total_path_length     # unit meters(m)~%float64   total_path_time     # unit seconds(s)~%TrajectoryPoint[] trajectory_points # 规划轨迹点列~%int32   car_action     # 车辆行为： CAR_ACTION_NONE=0  //无效值 CAR_ACTION_SINGLE=1 //单车 CAR_ACTION_PLATOON_HEAD=2 //车队头车 CAR_ACTION_PLATOON_OTHER=3 //车队其他车辆~%int32   behaviour_lat_state     # 自动驾驶状态（主要指横向状态）~%int32   behaviour_lon_state     # 自动驾驶状态（主要指纵向状态）~%int32   scenario     # 驾驶场景 0-UNKNOWN, 1-CRUISE, 2-CRUISE_URBAN 3-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN~%int32   driving_mode     # 驾驶模式： 1：人工驾驶， 2：辅助驾驶， 3：自动驾驶~%int32   adc_trajectory_type     # 轨迹类型： TRAJECTORY_TYPE_ABSOLUTE=0 //绝对规划轨迹 TRAJECTORY_TYPE_RELATIVE=1 //相对规划轨迹 TRAJECTORY_TYPE_INVALID=2 //无效规划轨迹~%EStop   estop     # emergency stop~%bool   is_replan     # is_replan == truemean replan triggered(default = false)~%string   replan_reason     #  ~%int32   right_of_way_status     # UNPROTECTED = 0;PROTECTED = 1;~%RSSInfo   rss_info     # output related to RSS~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/EStop~%bool   is_estop     # is_estop == true when emergency stop is required~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/RSSInfo~%bool   is_rss_safe     #  ~%float64   cur_dist_lon     # current longitudinal distance~%float64   rss_safe_dist_lon     # longitudinal safe distance of rss~%float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration~%float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration~%float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration~%float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration~%float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration~%float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estop))
     1
     4 (cl:length (cl:slot-value msg 'replan_reason))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rss_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':total_path_length (total_path_length msg))
    (cl:cons ':total_path_time (total_path_time msg))
    (cl:cons ':trajectory_points (trajectory_points msg))
    (cl:cons ':car_action (car_action msg))
    (cl:cons ':behaviour_lat_state (behaviour_lat_state msg))
    (cl:cons ':behaviour_lon_state (behaviour_lon_state msg))
    (cl:cons ':scenario (scenario msg))
    (cl:cons ':driving_mode (driving_mode msg))
    (cl:cons ':adc_trajectory_type (adc_trajectory_type msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':is_replan (is_replan msg))
    (cl:cons ':replan_reason (replan_reason msg))
    (cl:cons ':right_of_way_status (right_of_way_status msg))
    (cl:cons ':rss_info (rss_info msg))
))
