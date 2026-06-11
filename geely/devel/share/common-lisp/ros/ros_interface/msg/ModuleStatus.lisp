; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ModuleStatus.msg.html

(cl:defclass <ModuleStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (self_id
    :reader self_id
    :initarg :self_id
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (messages
    :reader messages
    :initarg :messages
    :type (cl:vector ros_interface-msg:Message)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Message :initial-element (cl:make-instance 'ros_interface-msg:Message))))
)

(cl:defclass ModuleStatus (<ModuleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ModuleStatus> is deprecated: use ros_interface-msg:ModuleStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'self_id-val :lambda-list '(m))
(cl:defmethod self_id-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:self_id-val is deprecated.  Use ros_interface-msg:self_id instead.")
  (self_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:status-val is deprecated.  Use ros_interface-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'messages-val :lambda-list '(m))
(cl:defmethod messages-val ((m <ModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:messages-val is deprecated.  Use ros_interface-msg:messages instead.")
  (messages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleStatus>) ostream)
  "Serializes a message object of type '<ModuleStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'self_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'messages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'messages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleStatus>) istream)
  "Deserializes a message object of type '<ModuleStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'messages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'messages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Message))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleStatus>)))
  "Returns string type for a message object of type '<ModuleStatus>"
  "ros_interface/ModuleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleStatus)))
  "Returns string type for a message object of type 'ModuleStatus"
  "ros_interface/ModuleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleStatus>)))
  "Returns md5sum for a message object of type '<ModuleStatus>"
  "bafbac172c87dca139533a49edfbc129")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleStatus)))
  "Returns md5sum for a message object of type 'ModuleStatus"
  "bafbac172c87dca139533a49edfbc129")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleStatus>)))
  "Returns full string definition for message of type '<ModuleStatus>"
  (cl:format cl:nil "Header   header     #  ~%string   name     # 发送指令的节点名称~%int8   self_id     # 发送节点的ID号，参考apps描述~%int32   status     #  枚举方式 sef_id+status,比如设置1为开，2为关，当前sef_id是21，则在关闭状态下反馈值是 212~%Message[] messages # 需要输出的消息列表：eg:要求显示剩余里程数为100米，self_id 为21，里程数id为08，code值为2108，value值为10000，精度为cm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Message~%int32   code     # 指定需要显示的值的code定义，需要与self_id绑定 作为前缀~%int32   value     # 对应显示的值或表达的状态~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleStatus)))
  "Returns full string definition for message of type 'ModuleStatus"
  (cl:format cl:nil "Header   header     #  ~%string   name     # 发送指令的节点名称~%int8   self_id     # 发送节点的ID号，参考apps描述~%int32   status     #  枚举方式 sef_id+status,比如设置1为开，2为关，当前sef_id是21，则在关闭状态下反馈值是 212~%Message[] messages # 需要输出的消息列表：eg:要求显示剩余里程数为100米，self_id 为21，里程数id为08，code值为2108，value值为10000，精度为cm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Message~%int32   code     # 指定需要显示的值的code定义，需要与self_id绑定 作为前缀~%int32   value     # 对应显示的值或表达的状态~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'messages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleStatus
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':self_id (self_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':messages (messages msg))
))
