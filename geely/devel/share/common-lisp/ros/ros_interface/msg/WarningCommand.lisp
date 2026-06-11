; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude WarningCommand.msg.html

(cl:defclass <WarningCommand> (roslisp-msg-protocol:ros-message)
  ((sound_alarm
    :reader sound_alarm
    :initarg :sound_alarm
    :type cl:integer
    :initform 0)
   (light_alarm
    :reader light_alarm
    :initarg :light_alarm
    :type cl:integer
    :initform 0)
   (media_alarm
    :reader media_alarm
    :initarg :media_alarm
    :type cl:integer
    :initform 0)
   (motion_alarm
    :reader motion_alarm
    :initarg :motion_alarm
    :type cl:integer
    :initform 0))
)

(cl:defclass WarningCommand (<WarningCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<WarningCommand> is deprecated: use ros_interface-msg:WarningCommand instead.")))

(cl:ensure-generic-function 'sound_alarm-val :lambda-list '(m))
(cl:defmethod sound_alarm-val ((m <WarningCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sound_alarm-val is deprecated.  Use ros_interface-msg:sound_alarm instead.")
  (sound_alarm m))

(cl:ensure-generic-function 'light_alarm-val :lambda-list '(m))
(cl:defmethod light_alarm-val ((m <WarningCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:light_alarm-val is deprecated.  Use ros_interface-msg:light_alarm instead.")
  (light_alarm m))

(cl:ensure-generic-function 'media_alarm-val :lambda-list '(m))
(cl:defmethod media_alarm-val ((m <WarningCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:media_alarm-val is deprecated.  Use ros_interface-msg:media_alarm instead.")
  (media_alarm m))

(cl:ensure-generic-function 'motion_alarm-val :lambda-list '(m))
(cl:defmethod motion_alarm-val ((m <WarningCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:motion_alarm-val is deprecated.  Use ros_interface-msg:motion_alarm instead.")
  (motion_alarm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningCommand>) ostream)
  "Serializes a message object of type '<WarningCommand>"
  (cl:let* ((signed (cl:slot-value msg 'sound_alarm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'light_alarm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'media_alarm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motion_alarm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningCommand>) istream)
  "Deserializes a message object of type '<WarningCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sound_alarm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light_alarm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'media_alarm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_alarm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningCommand>)))
  "Returns string type for a message object of type '<WarningCommand>"
  "ros_interface/WarningCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningCommand)))
  "Returns string type for a message object of type 'WarningCommand"
  "ros_interface/WarningCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningCommand>)))
  "Returns md5sum for a message object of type '<WarningCommand>"
  "4a3d05783924d6451d7d0d7d30d200dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningCommand)))
  "Returns md5sum for a message object of type 'WarningCommand"
  "4a3d05783924d6451d7d0d7d30d200dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningCommand>)))
  "Returns full string definition for message of type '<WarningCommand>"
  (cl:format cl:nil "int32   sound_alarm     # 声音告警~%int32   light_alarm     # 车灯告警~%int32   media_alarm     # 媒体告警~%int32   motion_alarm     # 震动告警~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningCommand)))
  "Returns full string definition for message of type 'WarningCommand"
  (cl:format cl:nil "int32   sound_alarm     # 声音告警~%int32   light_alarm     # 车灯告警~%int32   media_alarm     # 媒体告警~%int32   motion_alarm     # 震动告警~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningCommand>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningCommand
    (cl:cons ':sound_alarm (sound_alarm msg))
    (cl:cons ':light_alarm (light_alarm msg))
    (cl:cons ':media_alarm (media_alarm msg))
    (cl:cons ':motion_alarm (motion_alarm msg))
))
