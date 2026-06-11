; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude CommandRespond.msg.html

(cl:defclass <CommandRespond> (roslisp-msg-protocol:ros-message)
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
   (respond_id
    :reader respond_id
    :initarg :respond_id
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (fail_code
    :reader fail_code
    :initarg :fail_code
    :type cl:integer
    :initform 0))
)

(cl:defclass CommandRespond (<CommandRespond>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandRespond>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandRespond)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<CommandRespond> is deprecated: use ros_interface-msg:CommandRespond instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommandRespond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CommandRespond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'self_id-val :lambda-list '(m))
(cl:defmethod self_id-val ((m <CommandRespond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:self_id-val is deprecated.  Use ros_interface-msg:self_id instead.")
  (self_id m))

(cl:ensure-generic-function 'respond_id-val :lambda-list '(m))
(cl:defmethod respond_id-val ((m <CommandRespond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:respond_id-val is deprecated.  Use ros_interface-msg:respond_id instead.")
  (respond_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CommandRespond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:status-val is deprecated.  Use ros_interface-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'fail_code-val :lambda-list '(m))
(cl:defmethod fail_code-val ((m <CommandRespond>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:fail_code-val is deprecated.  Use ros_interface-msg:fail_code instead.")
  (fail_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandRespond>) ostream)
  "Serializes a message object of type '<CommandRespond>"
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
  (cl:let* ((signed (cl:slot-value msg 'respond_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fail_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandRespond>) istream)
  "Deserializes a message object of type '<CommandRespond>"
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
      (cl:setf (cl:slot-value msg 'respond_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fail_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandRespond>)))
  "Returns string type for a message object of type '<CommandRespond>"
  "ros_interface/CommandRespond")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRespond)))
  "Returns string type for a message object of type 'CommandRespond"
  "ros_interface/CommandRespond")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandRespond>)))
  "Returns md5sum for a message object of type '<CommandRespond>"
  "351adec90bf32bafe2da3e2e3f26375e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandRespond)))
  "Returns md5sum for a message object of type 'CommandRespond"
  "351adec90bf32bafe2da3e2e3f26375e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandRespond>)))
  "Returns full string definition for message of type '<CommandRespond>"
  (cl:format cl:nil "Header   header     #  ~%string   name     # 发送指令的节点名称~%int8   self_id     # 发送节点的ID号，参考apps描述~%int8   respond_id     #  ~%int8   status     # 0 无响应 1 响应失败 2 响应成功~%int32   fail_code     # 失败原因~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandRespond)))
  "Returns full string definition for message of type 'CommandRespond"
  (cl:format cl:nil "Header   header     #  ~%string   name     # 发送指令的节点名称~%int8   self_id     # 发送节点的ID号，参考apps描述~%int8   respond_id     #  ~%int8   status     # 0 无响应 1 响应失败 2 响应成功~%int32   fail_code     # 失败原因~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandRespond>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandRespond>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandRespond
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':self_id (self_id msg))
    (cl:cons ':respond_id (respond_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':fail_code (fail_code msg))
))
