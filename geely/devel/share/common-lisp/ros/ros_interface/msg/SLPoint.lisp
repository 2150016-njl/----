; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude SLPoint.msg.html

(cl:defclass <SLPoint> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (l
    :reader l
    :initarg :l
    :type cl:float
    :initform 0.0))
)

(cl:defclass SLPoint (<SLPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SLPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SLPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<SLPoint> is deprecated: use ros_interface-msg:SLPoint instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <SLPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:s-val is deprecated.  Use ros_interface-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <SLPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:l-val is deprecated.  Use ros_interface-msg:l instead.")
  (l m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SLPoint>) ostream)
  "Serializes a message object of type '<SLPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SLPoint>) istream)
  "Deserializes a message object of type '<SLPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SLPoint>)))
  "Returns string type for a message object of type '<SLPoint>"
  "ros_interface/SLPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SLPoint)))
  "Returns string type for a message object of type 'SLPoint"
  "ros_interface/SLPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SLPoint>)))
  "Returns md5sum for a message object of type '<SLPoint>"
  "7c66d5c7666978e3c96dd85019fef0f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SLPoint)))
  "Returns md5sum for a message object of type 'SLPoint"
  "7c66d5c7666978e3c96dd85019fef0f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SLPoint>)))
  "Returns full string definition for message of type '<SLPoint>"
  (cl:format cl:nil "float64   s     # 纵向位移~%float64   l     # 横向位移~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SLPoint)))
  "Returns full string definition for message of type 'SLPoint"
  (cl:format cl:nil "float64   s     # 纵向位移~%float64   l     # 横向位移~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SLPoint>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SLPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'SLPoint
    (cl:cons ':s (s msg))
    (cl:cons ':l (l msg))
))
