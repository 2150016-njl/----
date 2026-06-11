; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ObuCmdMsg.msg.html

(cl:defclass <ObuCmdMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (obu_cmd_list
    :reader obu_cmd_list
    :initarg :obu_cmd_list
    :type (cl:vector ros_interface-msg:ObuCmd)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:ObuCmd :initial-element (cl:make-instance 'ros_interface-msg:ObuCmd))))
)

(cl:defclass ObuCmdMsg (<ObuCmdMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObuCmdMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObuCmdMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ObuCmdMsg> is deprecated: use ros_interface-msg:ObuCmdMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObuCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ObuCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:id-val is deprecated.  Use ros_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ObuCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'obu_cmd_list-val :lambda-list '(m))
(cl:defmethod obu_cmd_list-val ((m <ObuCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:obu_cmd_list-val is deprecated.  Use ros_interface-msg:obu_cmd_list instead.")
  (obu_cmd_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObuCmdMsg>) ostream)
  "Serializes a message object of type '<ObuCmdMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obu_cmd_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obu_cmd_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObuCmdMsg>) istream)
  "Deserializes a message object of type '<ObuCmdMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obu_cmd_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obu_cmd_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:ObuCmd))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObuCmdMsg>)))
  "Returns string type for a message object of type '<ObuCmdMsg>"
  "ros_interface/ObuCmdMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObuCmdMsg)))
  "Returns string type for a message object of type 'ObuCmdMsg"
  "ros_interface/ObuCmdMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObuCmdMsg>)))
  "Returns md5sum for a message object of type '<ObuCmdMsg>"
  "04b2793959a8d3e1b67e71cb9253a84d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObuCmdMsg)))
  "Returns md5sum for a message object of type 'ObuCmdMsg"
  "04b2793959a8d3e1b67e71cb9253a84d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObuCmdMsg>)))
  "Returns full string definition for message of type '<ObuCmdMsg>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   id     # obu的id身份~%string   name     # obu的名称~%ObuCmd[] obu_cmd_list # 命令列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/ObuCmd~%int32   code     # 指令编码：10001、自动驾驶使能开关；~%int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObuCmdMsg)))
  "Returns full string definition for message of type 'ObuCmdMsg"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   id     # obu的id身份~%string   name     # obu的名称~%ObuCmd[] obu_cmd_list # 命令列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/ObuCmd~%int32   code     # 指令编码：10001、自动驾驶使能开关；~%int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObuCmdMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obu_cmd_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObuCmdMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ObuCmdMsg
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':obu_cmd_list (obu_cmd_list msg))
))
