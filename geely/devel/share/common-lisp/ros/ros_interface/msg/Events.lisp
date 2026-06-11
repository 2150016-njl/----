; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Events.msg.html

(cl:defclass <Events> (roslisp-msg-protocol:ros-message)
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
   (events
    :reader events
    :initarg :events
    :type (cl:vector ros_interface-msg:Event)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Event :initial-element (cl:make-instance 'ros_interface-msg:Event))))
)

(cl:defclass Events (<Events>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Events>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Events)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Events> is deprecated: use ros_interface-msg:Events instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Events>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <Events>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:version-val is deprecated.  Use ros_interface-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'events-val :lambda-list '(m))
(cl:defmethod events-val ((m <Events>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:events-val is deprecated.  Use ros_interface-msg:events instead.")
  (events m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Events>) ostream)
  "Serializes a message object of type '<Events>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'events))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'events))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Events>) istream)
  "Deserializes a message object of type '<Events>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'events) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'events)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Event))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Events>)))
  "Returns string type for a message object of type '<Events>"
  "ros_interface/Events")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Events)))
  "Returns string type for a message object of type 'Events"
  "ros_interface/Events")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Events>)))
  "Returns md5sum for a message object of type '<Events>"
  "73f541641194ab537b3c1e4b0b947301")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Events)))
  "Returns md5sum for a message object of type 'Events"
  "73f541641194ab537b3c1e4b0b947301")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Events>)))
  "Returns full string definition for message of type '<Events>"
  (cl:format cl:nil "Header   header     #  ~%int32   version     # 软件模块版本号~%Event[] events # 时间集~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Event~%Time   timestamp     # 时间戳~%uint64   code     # 0：invalid； 1：不可泊车；2：可以泊车；3：泊车完成； 4：不可泊出；5：可以泊出；6：泊出完成;   7 :  不可行车；8：可以行车；9：行车完成； 1X：退出自动驾驶（视退出场景可细分） 10：轨迹太短，请求退出自动驾驶; 20：拨杆换道驳回；21：执行向左拨杆换道;22：执行向右拨杆换道；23：拨杆换道完成 30：准备主动向左换道；31：执行主动向左换道；32：准备主动向右换道；33：执行主动向右换道；34：主动换道完成; 147: localmap的车道线效果不好，请求人工接管或者退出自动驾驶~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Events)))
  "Returns full string definition for message of type 'Events"
  (cl:format cl:nil "Header   header     #  ~%int32   version     # 软件模块版本号~%Event[] events # 时间集~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Event~%Time   timestamp     # 时间戳~%uint64   code     # 0：invalid； 1：不可泊车；2：可以泊车；3：泊车完成； 4：不可泊出；5：可以泊出；6：泊出完成;   7 :  不可行车；8：可以行车；9：行车完成； 1X：退出自动驾驶（视退出场景可细分） 10：轨迹太短，请求退出自动驾驶; 20：拨杆换道驳回；21：执行向左拨杆换道;22：执行向右拨杆换道；23：拨杆换道完成 30：准备主动向左换道；31：执行主动向左换道；32：准备主动向右换道；33：执行主动向右换道；34：主动换道完成; 147: localmap的车道线效果不好，请求人工接管或者退出自动驾驶~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Events>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'events) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Events>))
  "Converts a ROS message object to a list"
  (cl:list 'Events
    (cl:cons ':header (header msg))
    (cl:cons ':version (version msg))
    (cl:cons ':events (events msg))
))
