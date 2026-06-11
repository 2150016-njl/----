; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude LaneletInfo.msg.html

(cl:defclass <LaneletInfo> (roslisp-msg-protocol:ros-message)
  ((lanelet_id
    :reader lanelet_id
    :initarg :lanelet_id
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneletInfo (<LaneletInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneletInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneletInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<LaneletInfo> is deprecated: use ros_interface-msg:LaneletInfo instead.")))

(cl:ensure-generic-function 'lanelet_id-val :lambda-list '(m))
(cl:defmethod lanelet_id-val ((m <LaneletInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lanelet_id-val is deprecated.  Use ros_interface-msg:lanelet_id instead.")
  (lanelet_id m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LaneletInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:length-val is deprecated.  Use ros_interface-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneletInfo>) ostream)
  "Serializes a message object of type '<LaneletInfo>"
  (cl:let* ((signed (cl:slot-value msg 'lanelet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneletInfo>) istream)
  "Deserializes a message object of type '<LaneletInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lanelet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneletInfo>)))
  "Returns string type for a message object of type '<LaneletInfo>"
  "ros_interface/LaneletInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneletInfo)))
  "Returns string type for a message object of type 'LaneletInfo"
  "ros_interface/LaneletInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneletInfo>)))
  "Returns md5sum for a message object of type '<LaneletInfo>"
  "8334b4ef7667c6933a33c30277189203")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneletInfo)))
  "Returns md5sum for a message object of type 'LaneletInfo"
  "8334b4ef7667c6933a33c30277189203")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneletInfo>)))
  "Returns full string definition for message of type '<LaneletInfo>"
  (cl:format cl:nil "int32   lanelet_id     # 道路id，与地图文件对应~%float64   length     # 道路长度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneletInfo)))
  "Returns full string definition for message of type 'LaneletInfo"
  (cl:format cl:nil "int32   lanelet_id     # 道路id，与地图文件对应~%float64   length     # 道路长度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneletInfo>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneletInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneletInfo
    (cl:cons ':lanelet_id (lanelet_id msg))
    (cl:cons ':length (length msg))
))
