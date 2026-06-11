; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Faults.msg.html

(cl:defclass <Faults> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (version
    :reader version
    :initarg :version
    :type cl:integer
    :initform 0)
   (app_id
    :reader app_id
    :initarg :app_id
    :type cl:integer
    :initform 0)
   (is_active
    :reader is_active
    :initarg :is_active
    :type cl:boolean
    :initform cl:nil)
   (faults
    :reader faults
    :initarg :faults
    :type (cl:vector ros_interface-msg:Fault)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Fault :initial-element (cl:make-instance 'ros_interface-msg:Fault))))
)

(cl:defclass Faults (<Faults>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Faults>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Faults)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Faults> is deprecated: use ros_interface-msg:Faults instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Faults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <Faults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:version-val is deprecated.  Use ros_interface-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'app_id-val :lambda-list '(m))
(cl:defmethod app_id-val ((m <Faults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:app_id-val is deprecated.  Use ros_interface-msg:app_id instead.")
  (app_id m))

(cl:ensure-generic-function 'is_active-val :lambda-list '(m))
(cl:defmethod is_active-val ((m <Faults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_active-val is deprecated.  Use ros_interface-msg:is_active instead.")
  (is_active m))

(cl:ensure-generic-function 'faults-val :lambda-list '(m))
(cl:defmethod faults-val ((m <Faults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:faults-val is deprecated.  Use ros_interface-msg:faults instead.")
  (faults m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Faults>) ostream)
  "Serializes a message object of type '<Faults>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'app_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_active) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faults))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faults))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Faults>) istream)
  "Deserializes a message object of type '<Faults>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'app_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_active) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faults) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faults)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Fault))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Faults>)))
  "Returns string type for a message object of type '<Faults>"
  "ros_interface/Faults")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Faults)))
  "Returns string type for a message object of type 'Faults"
  "ros_interface/Faults")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Faults>)))
  "Returns md5sum for a message object of type '<Faults>"
  "b11ea54ef0a0c41706887becbb1308cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Faults)))
  "Returns md5sum for a message object of type 'Faults"
  "b11ea54ef0a0c41706887becbb1308cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Faults>)))
  "Returns full string definition for message of type '<Faults>"
  (cl:format cl:nil "Header   header     # 消息头~%int32   version     # 版本号~%int32   app_id     # 应用app所分配的id~%bool   is_active     # 应用是否激活，激活为true，未激活为false~%Fault[] faults # 故障集~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Fault~%Time   timestamp     # 时间戳~%uint64   code     # 故障码~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Faults)))
  "Returns full string definition for message of type 'Faults"
  (cl:format cl:nil "Header   header     # 消息头~%int32   version     # 版本号~%int32   app_id     # 应用app所分配的id~%bool   is_active     # 应用是否激活，激活为true，未激活为false~%Fault[] faults # 故障集~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Fault~%Time   timestamp     # 时间戳~%uint64   code     # 故障码~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Faults>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faults) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Faults>))
  "Converts a ROS message object to a list"
  (cl:list 'Faults
    (cl:cons ':header (header msg))
    (cl:cons ':version (version msg))
    (cl:cons ':app_id (app_id msg))
    (cl:cons ':is_active (is_active msg))
    (cl:cons ':faults (faults msg))
))
