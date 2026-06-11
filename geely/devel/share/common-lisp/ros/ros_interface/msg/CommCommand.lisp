; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude CommCommand.msg.html

(cl:defclass <CommCommand> (roslisp-msg-protocol:ros-message)
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
   (commands
    :reader commands
    :initarg :commands
    :type (cl:vector ros_interface-msg:Command)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Command :initial-element (cl:make-instance 'ros_interface-msg:Command))))
)

(cl:defclass CommCommand (<CommCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<CommCommand> is deprecated: use ros_interface-msg:CommCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CommCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'self_id-val :lambda-list '(m))
(cl:defmethod self_id-val ((m <CommCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:self_id-val is deprecated.  Use ros_interface-msg:self_id instead.")
  (self_id m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <CommCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:commands-val is deprecated.  Use ros_interface-msg:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommCommand>) ostream)
  "Serializes a message object of type '<CommCommand>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommCommand>) istream)
  "Deserializes a message object of type '<CommCommand>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Command))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommCommand>)))
  "Returns string type for a message object of type '<CommCommand>"
  "ros_interface/CommCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommCommand)))
  "Returns string type for a message object of type 'CommCommand"
  "ros_interface/CommCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommCommand>)))
  "Returns md5sum for a message object of type '<CommCommand>"
  "5dde9e6ab676652bc277f2b5bb9c1efa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommCommand)))
  "Returns md5sum for a message object of type 'CommCommand"
  "5dde9e6ab676652bc277f2b5bb9c1efa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommCommand>)))
  "Returns full string definition for message of type '<CommCommand>"
  (cl:format cl:nil "Header   header     #  ~%string   name     # 发送指令的节点名称~%int8   self_id     # 发送节点的ID号，参考apps描述~%Command[] commands # 需要发送的指令，如果需要发送给多个节点，需要使用多个command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Command~%string   target_module     # 目标节点名称~%int8   target_id     # 目标节点ID~%int32   target_switch     # 0:保持target_module的状态  1:打开target_module 2:关闭target_module~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommCommand)))
  "Returns full string definition for message of type 'CommCommand"
  (cl:format cl:nil "Header   header     #  ~%string   name     # 发送指令的节点名称~%int8   self_id     # 发送节点的ID号，参考apps描述~%Command[] commands # 需要发送的指令，如果需要发送给多个节点，需要使用多个command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Command~%string   target_module     # 目标节点名称~%int8   target_id     # 目标节点ID~%int32   target_switch     # 0:保持target_module的状态  1:打开target_module 2:关闭target_module~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'CommCommand
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':self_id (self_id msg))
    (cl:cons ':commands (commands msg))
))
