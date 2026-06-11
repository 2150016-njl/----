; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ObstacleIntent.msg.html

(cl:defclass <ObstacleIntent> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass ObstacleIntent (<ObstacleIntent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleIntent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleIntent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ObstacleIntent> is deprecated: use ros_interface-msg:ObstacleIntent instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ObstacleIntent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:type-val is deprecated.  Use ros_interface-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleIntent>) ostream)
  "Serializes a message object of type '<ObstacleIntent>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleIntent>) istream)
  "Deserializes a message object of type '<ObstacleIntent>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleIntent>)))
  "Returns string type for a message object of type '<ObstacleIntent>"
  "ros_interface/ObstacleIntent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleIntent)))
  "Returns string type for a message object of type 'ObstacleIntent"
  "ros_interface/ObstacleIntent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleIntent>)))
  "Returns md5sum for a message object of type '<ObstacleIntent>"
  "bda37decd5e3814bcc042f341d2e60a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleIntent)))
  "Returns md5sum for a message object of type 'ObstacleIntent"
  "bda37decd5e3814bcc042f341d2e60a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleIntent>)))
  "Returns full string definition for message of type '<ObstacleIntent>"
  (cl:format cl:nil "int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleIntent)))
  "Returns full string definition for message of type 'ObstacleIntent"
  (cl:format cl:nil "int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleIntent>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleIntent>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleIntent
    (cl:cons ':type (type msg))
))
