; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ObstacleInteractiveTag.msg.html

(cl:defclass <ObstacleInteractiveTag> (roslisp-msg-protocol:ros-message)
  ((interactive_tag
    :reader interactive_tag
    :initarg :interactive_tag
    :type cl:integer
    :initform 0))
)

(cl:defclass ObstacleInteractiveTag (<ObstacleInteractiveTag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleInteractiveTag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleInteractiveTag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ObstacleInteractiveTag> is deprecated: use ros_interface-msg:ObstacleInteractiveTag instead.")))

(cl:ensure-generic-function 'interactive_tag-val :lambda-list '(m))
(cl:defmethod interactive_tag-val ((m <ObstacleInteractiveTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:interactive_tag-val is deprecated.  Use ros_interface-msg:interactive_tag instead.")
  (interactive_tag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleInteractiveTag>) ostream)
  "Serializes a message object of type '<ObstacleInteractiveTag>"
  (cl:let* ((signed (cl:slot-value msg 'interactive_tag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleInteractiveTag>) istream)
  "Deserializes a message object of type '<ObstacleInteractiveTag>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interactive_tag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleInteractiveTag>)))
  "Returns string type for a message object of type '<ObstacleInteractiveTag>"
  "ros_interface/ObstacleInteractiveTag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInteractiveTag)))
  "Returns string type for a message object of type 'ObstacleInteractiveTag"
  "ros_interface/ObstacleInteractiveTag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleInteractiveTag>)))
  "Returns md5sum for a message object of type '<ObstacleInteractiveTag>"
  "c2e9ac94a7bb1e05f8d6dfc48cdf1b73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleInteractiveTag)))
  "Returns md5sum for a message object of type 'ObstacleInteractiveTag"
  "c2e9ac94a7bb1e05f8d6dfc48cdf1b73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleInteractiveTag>)))
  "Returns full string definition for message of type '<ObstacleInteractiveTag>"
  (cl:format cl:nil "int32   interactive_tag     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleInteractiveTag)))
  "Returns full string definition for message of type 'ObstacleInteractiveTag"
  (cl:format cl:nil "int32   interactive_tag     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleInteractiveTag>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleInteractiveTag>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleInteractiveTag
    (cl:cons ':interactive_tag (interactive_tag msg))
))
