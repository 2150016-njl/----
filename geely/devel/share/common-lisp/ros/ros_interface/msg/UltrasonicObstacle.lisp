; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude UltrasonicObstacle.msg.html

(cl:defclass <UltrasonicObstacle> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0))
)

(cl:defclass UltrasonicObstacle (<UltrasonicObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<UltrasonicObstacle> is deprecated: use ros_interface-msg:UltrasonicObstacle instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UltrasonicObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:id-val is deprecated.  Use ros_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <UltrasonicObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:range-val is deprecated.  Use ros_interface-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicObstacle>) ostream)
  "Serializes a message object of type '<UltrasonicObstacle>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicObstacle>) istream)
  "Deserializes a message object of type '<UltrasonicObstacle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicObstacle>)))
  "Returns string type for a message object of type '<UltrasonicObstacle>"
  "ros_interface/UltrasonicObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicObstacle)))
  "Returns string type for a message object of type 'UltrasonicObstacle"
  "ros_interface/UltrasonicObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicObstacle>)))
  "Returns md5sum for a message object of type '<UltrasonicObstacle>"
  "8a071cc49f1c1d100af28eb6b14c404b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicObstacle)))
  "Returns md5sum for a message object of type 'UltrasonicObstacle"
  "8a071cc49f1c1d100af28eb6b14c404b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicObstacle>)))
  "Returns full string definition for message of type '<UltrasonicObstacle>"
  (cl:format cl:nil "int32   id     # 障碍物id~%float64   range     # 障碍物距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicObstacle)))
  "Returns full string definition for message of type 'UltrasonicObstacle"
  (cl:format cl:nil "int32   id     # 障碍物id~%float64   range     # 障碍物距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicObstacle>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicObstacle
    (cl:cons ':id (id msg))
    (cl:cons ':range (range msg))
))
