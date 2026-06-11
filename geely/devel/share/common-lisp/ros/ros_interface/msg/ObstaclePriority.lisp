; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ObstaclePriority.msg.html

(cl:defclass <ObstaclePriority> (roslisp-msg-protocol:ros-message)
  ((priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0))
)

(cl:defclass ObstaclePriority (<ObstaclePriority>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstaclePriority>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstaclePriority)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ObstaclePriority> is deprecated: use ros_interface-msg:ObstaclePriority instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ObstaclePriority>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:priority-val is deprecated.  Use ros_interface-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstaclePriority>) ostream)
  "Serializes a message object of type '<ObstaclePriority>"
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstaclePriority>) istream)
  "Deserializes a message object of type '<ObstaclePriority>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstaclePriority>)))
  "Returns string type for a message object of type '<ObstaclePriority>"
  "ros_interface/ObstaclePriority")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclePriority)))
  "Returns string type for a message object of type 'ObstaclePriority"
  "ros_interface/ObstaclePriority")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstaclePriority>)))
  "Returns md5sum for a message object of type '<ObstaclePriority>"
  "74910a325dfb2ab2393f7e42b1a1a337")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstaclePriority)))
  "Returns md5sum for a message object of type 'ObstaclePriority"
  "74910a325dfb2ab2393f7e42b1a1a337")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstaclePriority>)))
  "Returns full string definition for message of type '<ObstaclePriority>"
  (cl:format cl:nil "int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstaclePriority)))
  "Returns full string definition for message of type 'ObstaclePriority"
  (cl:format cl:nil "int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstaclePriority>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstaclePriority>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstaclePriority
    (cl:cons ':priority (priority msg))
))
