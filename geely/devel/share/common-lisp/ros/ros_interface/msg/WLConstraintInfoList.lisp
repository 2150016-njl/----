; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude WLConstraintInfoList.msg.html

(cl:defclass <WLConstraintInfoList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wl_constraint_info
    :reader wl_constraint_info
    :initarg :wl_constraint_info
    :type (cl:vector ros_interface-msg:WLConstraintInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:WLConstraintInfo :initial-element (cl:make-instance 'ros_interface-msg:WLConstraintInfo)))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WLConstraintInfoList (<WLConstraintInfoList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WLConstraintInfoList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WLConstraintInfoList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<WLConstraintInfoList> is deprecated: use ros_interface-msg:WLConstraintInfoList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WLConstraintInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wl_constraint_info-val :lambda-list '(m))
(cl:defmethod wl_constraint_info-val ((m <WLConstraintInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wl_constraint_info-val is deprecated.  Use ros_interface-msg:wl_constraint_info instead.")
  (wl_constraint_info m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <WLConstraintInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <WLConstraintInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WLConstraintInfoList>) ostream)
  "Serializes a message object of type '<WLConstraintInfoList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wl_constraint_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wl_constraint_info))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WLConstraintInfoList>) istream)
  "Deserializes a message object of type '<WLConstraintInfoList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wl_constraint_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wl_constraint_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:WLConstraintInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WLConstraintInfoList>)))
  "Returns string type for a message object of type '<WLConstraintInfoList>"
  "ros_interface/WLConstraintInfoList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WLConstraintInfoList)))
  "Returns string type for a message object of type 'WLConstraintInfoList"
  "ros_interface/WLConstraintInfoList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WLConstraintInfoList>)))
  "Returns md5sum for a message object of type '<WLConstraintInfoList>"
  "57cfab20f8d8e5a826bdb39e3e184a77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WLConstraintInfoList)))
  "Returns md5sum for a message object of type 'WLConstraintInfoList"
  "57cfab20f8d8e5a826bdb39e3e184a77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WLConstraintInfoList>)))
  "Returns full string definition for message of type '<WLConstraintInfoList>"
  (cl:format cl:nil "Header   header     # 消息头~%WLConstraintInfo[] wl_constraint_info # 检测出的wheel_location所需约束信息队列~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 障碍物数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/WLConstraintInfo~%Header   header     # timestamp is included in header~%int32   id     # id~%Point3D   vehicle_point1     # 车辆坐标系下约束点1~%Point3D   vehicle_point2     # 车辆坐标系下约束点2~%Point3D   abs_point1     # 绝对坐标系下约束点1~%Point3D   abs_point2     # 绝对坐标系下约束点2~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WLConstraintInfoList)))
  "Returns full string definition for message of type 'WLConstraintInfoList"
  (cl:format cl:nil "Header   header     # 消息头~%WLConstraintInfo[] wl_constraint_info # 检测出的wheel_location所需约束信息队列~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 障碍物数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/WLConstraintInfo~%Header   header     # timestamp is included in header~%int32   id     # id~%Point3D   vehicle_point1     # 车辆坐标系下约束点1~%Point3D   vehicle_point2     # 车辆坐标系下约束点2~%Point3D   abs_point1     # 绝对坐标系下约束点1~%Point3D   abs_point2     # 绝对坐标系下约束点2~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WLConstraintInfoList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wl_constraint_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WLConstraintInfoList>))
  "Converts a ROS message object to a list"
  (cl:list 'WLConstraintInfoList
    (cl:cons ':header (header msg))
    (cl:cons ':wl_constraint_info (wl_constraint_info msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_valid (is_valid msg))
))
