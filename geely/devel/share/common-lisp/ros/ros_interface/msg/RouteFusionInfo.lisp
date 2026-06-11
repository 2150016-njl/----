; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RouteFusionInfo.msg.html

(cl:defclass <RouteFusionInfo> (roslisp-msg-protocol:ros-message)
  ((fusion_flag
    :reader fusion_flag
    :initarg :fusion_flag
    :type cl:integer
    :initform 0)
   (fusion_reason
    :reader fusion_reason
    :initarg :fusion_reason
    :type cl:string
    :initform ""))
)

(cl:defclass RouteFusionInfo (<RouteFusionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteFusionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteFusionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RouteFusionInfo> is deprecated: use ros_interface-msg:RouteFusionInfo instead.")))

(cl:ensure-generic-function 'fusion_flag-val :lambda-list '(m))
(cl:defmethod fusion_flag-val ((m <RouteFusionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:fusion_flag-val is deprecated.  Use ros_interface-msg:fusion_flag instead.")
  (fusion_flag m))

(cl:ensure-generic-function 'fusion_reason-val :lambda-list '(m))
(cl:defmethod fusion_reason-val ((m <RouteFusionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:fusion_reason-val is deprecated.  Use ros_interface-msg:fusion_reason instead.")
  (fusion_reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteFusionInfo>) ostream)
  "Serializes a message object of type '<RouteFusionInfo>"
  (cl:let* ((signed (cl:slot-value msg 'fusion_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fusion_reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fusion_reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteFusionInfo>) istream)
  "Deserializes a message object of type '<RouteFusionInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fusion_reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteFusionInfo>)))
  "Returns string type for a message object of type '<RouteFusionInfo>"
  "ros_interface/RouteFusionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteFusionInfo)))
  "Returns string type for a message object of type 'RouteFusionInfo"
  "ros_interface/RouteFusionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteFusionInfo>)))
  "Returns md5sum for a message object of type '<RouteFusionInfo>"
  "272fcd54e54c0a49dcdbc692af0ea8a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteFusionInfo)))
  "Returns md5sum for a message object of type 'RouteFusionInfo"
  "272fcd54e54c0a49dcdbc692af0ea8a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteFusionInfo>)))
  "Returns full string definition for message of type '<RouteFusionInfo>"
  (cl:format cl:nil "int32   fusion_flag     # 是否有效标志位~%string   fusion_reason     # 融合原因~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteFusionInfo)))
  "Returns full string definition for message of type 'RouteFusionInfo"
  (cl:format cl:nil "int32   fusion_flag     # 是否有效标志位~%string   fusion_reason     # 融合原因~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteFusionInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'fusion_reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteFusionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteFusionInfo
    (cl:cons ':fusion_flag (fusion_flag msg))
    (cl:cons ':fusion_reason (fusion_reason msg))
))
