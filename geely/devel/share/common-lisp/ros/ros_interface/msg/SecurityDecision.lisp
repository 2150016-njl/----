; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude SecurityDecision.msg.html

(cl:defclass <SecurityDecision> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (warning_command
    :reader warning_command
    :initarg :warning_command
    :type ros_interface-msg:WarningCommand
    :initform (cl:make-instance 'ros_interface-msg:WarningCommand))
   (motion_alarm
    :reader motion_alarm
    :initarg :motion_alarm
    :type ros_interface-msg:WarningCommand
    :initform (cl:make-instance 'ros_interface-msg:WarningCommand))
   (brake_report
    :reader brake_report
    :initarg :brake_report
    :type cl:integer
    :initform 0)
   (change_lane_command
    :reader change_lane_command
    :initarg :change_lane_command
    :type cl:integer
    :initform 0)
   (trajectory_limit_command
    :reader trajectory_limit_command
    :initarg :trajectory_limit_command
    :type ros_interface-msg:TrajectoryLimitCommand
    :initform (cl:make-instance 'ros_interface-msg:TrajectoryLimitCommand))
   (park_command
    :reader park_command
    :initarg :park_command
    :type cl:integer
    :initform 0)
   (drivingmode_report
    :reader drivingmode_report
    :initarg :drivingmode_report
    :type cl:integer
    :initform 0))
)

(cl:defclass SecurityDecision (<SecurityDecision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SecurityDecision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SecurityDecision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<SecurityDecision> is deprecated: use ros_interface-msg:SecurityDecision instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'warning_command-val :lambda-list '(m))
(cl:defmethod warning_command-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:warning_command-val is deprecated.  Use ros_interface-msg:warning_command instead.")
  (warning_command m))

(cl:ensure-generic-function 'motion_alarm-val :lambda-list '(m))
(cl:defmethod motion_alarm-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:motion_alarm-val is deprecated.  Use ros_interface-msg:motion_alarm instead.")
  (motion_alarm m))

(cl:ensure-generic-function 'brake_report-val :lambda-list '(m))
(cl:defmethod brake_report-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:brake_report-val is deprecated.  Use ros_interface-msg:brake_report instead.")
  (brake_report m))

(cl:ensure-generic-function 'change_lane_command-val :lambda-list '(m))
(cl:defmethod change_lane_command-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:change_lane_command-val is deprecated.  Use ros_interface-msg:change_lane_command instead.")
  (change_lane_command m))

(cl:ensure-generic-function 'trajectory_limit_command-val :lambda-list '(m))
(cl:defmethod trajectory_limit_command-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory_limit_command-val is deprecated.  Use ros_interface-msg:trajectory_limit_command instead.")
  (trajectory_limit_command m))

(cl:ensure-generic-function 'park_command-val :lambda-list '(m))
(cl:defmethod park_command-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:park_command-val is deprecated.  Use ros_interface-msg:park_command instead.")
  (park_command m))

(cl:ensure-generic-function 'drivingmode_report-val :lambda-list '(m))
(cl:defmethod drivingmode_report-val ((m <SecurityDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:drivingmode_report-val is deprecated.  Use ros_interface-msg:drivingmode_report instead.")
  (drivingmode_report m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SecurityDecision>) ostream)
  "Serializes a message object of type '<SecurityDecision>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'warning_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_alarm) ostream)
  (cl:let* ((signed (cl:slot-value msg 'brake_report)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'change_lane_command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_limit_command) ostream)
  (cl:let* ((signed (cl:slot-value msg 'park_command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drivingmode_report)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SecurityDecision>) istream)
  "Deserializes a message object of type '<SecurityDecision>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'warning_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_alarm) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_report) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_lane_command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_limit_command) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'park_command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drivingmode_report) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SecurityDecision>)))
  "Returns string type for a message object of type '<SecurityDecision>"
  "ros_interface/SecurityDecision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SecurityDecision)))
  "Returns string type for a message object of type 'SecurityDecision"
  "ros_interface/SecurityDecision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SecurityDecision>)))
  "Returns md5sum for a message object of type '<SecurityDecision>"
  "12f094a22d15ee8e4e9e06d46a5b0c22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SecurityDecision)))
  "Returns md5sum for a message object of type 'SecurityDecision"
  "12f094a22d15ee8e4e9e06d46a5b0c22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SecurityDecision>)))
  "Returns full string definition for message of type '<SecurityDecision>"
  (cl:format cl:nil "Header   header     #  ~%WarningCommand   warning_command     # 告警指令~%WarningCommand   motion_alarm     #  ~%int32   brake_report     # 刹车报告~%int32   change_lane_command     # 换道指令~%TrajectoryLimitCommand   trajectory_limit_command     # 轨迹限制指令~%int32   park_command     # 停车指令~%int32   drivingmode_report     # 驾驶模式报告~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/WarningCommand~%int32   sound_alarm     # 声音告警~%int32   light_alarm     # 车灯告警~%int32   media_alarm     # 媒体告警~%int32   motion_alarm     # 震动告警~%~%================================================================================~%MSG: ros_interface/TrajectoryLimitCommand~%bool   speed_limit_enable     #  ~%float64   speed_limit     # m/s~%bool   kappa_limit_enable     #  ~%float64   kappa_limit     # deg/m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SecurityDecision)))
  "Returns full string definition for message of type 'SecurityDecision"
  (cl:format cl:nil "Header   header     #  ~%WarningCommand   warning_command     # 告警指令~%WarningCommand   motion_alarm     #  ~%int32   brake_report     # 刹车报告~%int32   change_lane_command     # 换道指令~%TrajectoryLimitCommand   trajectory_limit_command     # 轨迹限制指令~%int32   park_command     # 停车指令~%int32   drivingmode_report     # 驾驶模式报告~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/WarningCommand~%int32   sound_alarm     # 声音告警~%int32   light_alarm     # 车灯告警~%int32   media_alarm     # 媒体告警~%int32   motion_alarm     # 震动告警~%~%================================================================================~%MSG: ros_interface/TrajectoryLimitCommand~%bool   speed_limit_enable     #  ~%float64   speed_limit     # m/s~%bool   kappa_limit_enable     #  ~%float64   kappa_limit     # deg/m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SecurityDecision>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'warning_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_alarm))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_limit_command))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SecurityDecision>))
  "Converts a ROS message object to a list"
  (cl:list 'SecurityDecision
    (cl:cons ':header (header msg))
    (cl:cons ':warning_command (warning_command msg))
    (cl:cons ':motion_alarm (motion_alarm msg))
    (cl:cons ':brake_report (brake_report msg))
    (cl:cons ':change_lane_command (change_lane_command msg))
    (cl:cons ':trajectory_limit_command (trajectory_limit_command msg))
    (cl:cons ':park_command (park_command msg))
    (cl:cons ':drivingmode_report (drivingmode_report msg))
))
