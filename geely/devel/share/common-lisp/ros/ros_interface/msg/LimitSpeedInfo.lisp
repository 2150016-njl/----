; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude LimitSpeedInfo.msg.html

(cl:defclass <LimitSpeedInfo> (roslisp-msg-protocol:ros-message)
  ((limitspeed_valid_flag
    :reader limitspeed_valid_flag
    :initarg :limitspeed_valid_flag
    :type cl:integer
    :initform 0)
   (limit_speed
    :reader limit_speed
    :initarg :limit_speed
    :type cl:float
    :initform 0.0)
   (limit_distance
    :reader limit_distance
    :initarg :limit_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass LimitSpeedInfo (<LimitSpeedInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LimitSpeedInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LimitSpeedInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<LimitSpeedInfo> is deprecated: use ros_interface-msg:LimitSpeedInfo instead.")))

(cl:ensure-generic-function 'limitspeed_valid_flag-val :lambda-list '(m))
(cl:defmethod limitspeed_valid_flag-val ((m <LimitSpeedInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:limitspeed_valid_flag-val is deprecated.  Use ros_interface-msg:limitspeed_valid_flag instead.")
  (limitspeed_valid_flag m))

(cl:ensure-generic-function 'limit_speed-val :lambda-list '(m))
(cl:defmethod limit_speed-val ((m <LimitSpeedInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:limit_speed-val is deprecated.  Use ros_interface-msg:limit_speed instead.")
  (limit_speed m))

(cl:ensure-generic-function 'limit_distance-val :lambda-list '(m))
(cl:defmethod limit_distance-val ((m <LimitSpeedInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:limit_distance-val is deprecated.  Use ros_interface-msg:limit_distance instead.")
  (limit_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LimitSpeedInfo>) ostream)
  "Serializes a message object of type '<LimitSpeedInfo>"
  (cl:let* ((signed (cl:slot-value msg 'limitspeed_valid_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'limit_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'limit_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LimitSpeedInfo>) istream)
  "Deserializes a message object of type '<LimitSpeedInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'limitspeed_valid_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LimitSpeedInfo>)))
  "Returns string type for a message object of type '<LimitSpeedInfo>"
  "ros_interface/LimitSpeedInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LimitSpeedInfo)))
  "Returns string type for a message object of type 'LimitSpeedInfo"
  "ros_interface/LimitSpeedInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LimitSpeedInfo>)))
  "Returns md5sum for a message object of type '<LimitSpeedInfo>"
  "60f4e9d159cc502ec9c6b727aad50d08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LimitSpeedInfo)))
  "Returns md5sum for a message object of type 'LimitSpeedInfo"
  "60f4e9d159cc502ec9c6b727aad50d08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LimitSpeedInfo>)))
  "Returns full string definition for message of type '<LimitSpeedInfo>"
  (cl:format cl:nil "int32   limitspeed_valid_flag     # 限速有效性标志位~%float64   limit_speed     # 限速大小（m/s）~%float64   limit_distance     # 开始减速距离(m)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LimitSpeedInfo)))
  "Returns full string definition for message of type 'LimitSpeedInfo"
  (cl:format cl:nil "int32   limitspeed_valid_flag     # 限速有效性标志位~%float64   limit_speed     # 限速大小（m/s）~%float64   limit_distance     # 开始减速距离(m)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LimitSpeedInfo>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LimitSpeedInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LimitSpeedInfo
    (cl:cons ':limitspeed_valid_flag (limitspeed_valid_flag msg))
    (cl:cons ':limit_speed (limit_speed msg))
    (cl:cons ':limit_distance (limit_distance msg))
))
