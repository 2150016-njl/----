; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude AlarmMessage.msg.html

(cl:defclass <AlarmMessage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (alarm_proc
    :reader alarm_proc
    :initarg :alarm_proc
    :type cl:string
    :initform "")
   (alarm_level
    :reader alarm_level
    :initarg :alarm_level
    :type cl:integer
    :initform 0)
   (alarm_type
    :reader alarm_type
    :initarg :alarm_type
    :type cl:integer
    :initform 0)
   (alarm_id
    :reader alarm_id
    :initarg :alarm_id
    :type cl:integer
    :initform 0)
   (alarm_display
    :reader alarm_display
    :initarg :alarm_display
    :type cl:integer
    :initform 0)
   (alarm_data
    :reader alarm_data
    :initarg :alarm_data
    :type cl:string
    :initform ""))
)

(cl:defclass AlarmMessage (<AlarmMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlarmMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlarmMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<AlarmMessage> is deprecated: use ros_interface-msg:AlarmMessage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'alarm_proc-val :lambda-list '(m))
(cl:defmethod alarm_proc-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_proc-val is deprecated.  Use ros_interface-msg:alarm_proc instead.")
  (alarm_proc m))

(cl:ensure-generic-function 'alarm_level-val :lambda-list '(m))
(cl:defmethod alarm_level-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_level-val is deprecated.  Use ros_interface-msg:alarm_level instead.")
  (alarm_level m))

(cl:ensure-generic-function 'alarm_type-val :lambda-list '(m))
(cl:defmethod alarm_type-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_type-val is deprecated.  Use ros_interface-msg:alarm_type instead.")
  (alarm_type m))

(cl:ensure-generic-function 'alarm_id-val :lambda-list '(m))
(cl:defmethod alarm_id-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_id-val is deprecated.  Use ros_interface-msg:alarm_id instead.")
  (alarm_id m))

(cl:ensure-generic-function 'alarm_display-val :lambda-list '(m))
(cl:defmethod alarm_display-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_display-val is deprecated.  Use ros_interface-msg:alarm_display instead.")
  (alarm_display m))

(cl:ensure-generic-function 'alarm_data-val :lambda-list '(m))
(cl:defmethod alarm_data-val ((m <AlarmMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_data-val is deprecated.  Use ros_interface-msg:alarm_data instead.")
  (alarm_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlarmMessage>) ostream)
  "Serializes a message object of type '<AlarmMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_proc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_proc))
  (cl:let* ((signed (cl:slot-value msg 'alarm_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alarm_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alarm_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alarm_display)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alarm_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alarm_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlarmMessage>) istream)
  "Deserializes a message object of type '<AlarmMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_proc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_proc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_display) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alarm_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlarmMessage>)))
  "Returns string type for a message object of type '<AlarmMessage>"
  "ros_interface/AlarmMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlarmMessage)))
  "Returns string type for a message object of type 'AlarmMessage"
  "ros_interface/AlarmMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlarmMessage>)))
  "Returns md5sum for a message object of type '<AlarmMessage>"
  "560775a3f63608849dea5a7c395bc22e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlarmMessage)))
  "Returns md5sum for a message object of type 'AlarmMessage"
  "560775a3f63608849dea5a7c395bc22e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlarmMessage>)))
  "Returns full string definition for message of type '<AlarmMessage>"
  (cl:format cl:nil "Header   header     # 消息头~%string   alarm_proc     # 产生告警的进程名~%int32   alarm_level     # 告警等级~%int32   alarm_type     # 告警类型~%int32   alarm_id     # 告警序列号，用于恢复告警~%int32   alarm_display     # 告警展示类型~%string   alarm_data     # 告警正文~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlarmMessage)))
  "Returns full string definition for message of type 'AlarmMessage"
  (cl:format cl:nil "Header   header     # 消息头~%string   alarm_proc     # 产生告警的进程名~%int32   alarm_level     # 告警等级~%int32   alarm_type     # 告警类型~%int32   alarm_id     # 告警序列号，用于恢复告警~%int32   alarm_display     # 告警展示类型~%string   alarm_data     # 告警正文~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlarmMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'alarm_proc))
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'alarm_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlarmMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'AlarmMessage
    (cl:cons ':header (header msg))
    (cl:cons ':alarm_proc (alarm_proc msg))
    (cl:cons ':alarm_level (alarm_level msg))
    (cl:cons ':alarm_type (alarm_type msg))
    (cl:cons ':alarm_id (alarm_id msg))
    (cl:cons ':alarm_display (alarm_display msg))
    (cl:cons ':alarm_data (alarm_data msg))
))
