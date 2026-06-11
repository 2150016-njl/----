; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMIObuCmd.msg.html

(cl:defclass <HMIObuCmd> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0)
   (val
    :reader val
    :initarg :val
    :type cl:integer
    :initform 0))
)

(cl:defclass HMIObuCmd (<HMIObuCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIObuCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIObuCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMIObuCmd> is deprecated: use ros_interface-msg:HMIObuCmd instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <HMIObuCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:code-val is deprecated.  Use ros_interface-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <HMIObuCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:val-val is deprecated.  Use ros_interface-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIObuCmd>) ostream)
  "Serializes a message object of type '<HMIObuCmd>"
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIObuCmd>) istream)
  "Deserializes a message object of type '<HMIObuCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIObuCmd>)))
  "Returns string type for a message object of type '<HMIObuCmd>"
  "ros_interface/HMIObuCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIObuCmd)))
  "Returns string type for a message object of type 'HMIObuCmd"
  "ros_interface/HMIObuCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIObuCmd>)))
  "Returns md5sum for a message object of type '<HMIObuCmd>"
  "91ea1945ea9eb75814f68563f19c738f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIObuCmd)))
  "Returns md5sum for a message object of type 'HMIObuCmd"
  "91ea1945ea9eb75814f68563f19c738f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIObuCmd>)))
  "Returns full string definition for message of type '<HMIObuCmd>"
  (cl:format cl:nil "int32   code     # 指令编码：10001、自动驾驶使能开关；~%int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIObuCmd)))
  "Returns full string definition for message of type 'HMIObuCmd"
  (cl:format cl:nil "int32   code     # 指令编码：10001、自动驾驶使能开关；~%int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIObuCmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIObuCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIObuCmd
    (cl:cons ':code (code msg))
    (cl:cons ':val (val msg))
))
