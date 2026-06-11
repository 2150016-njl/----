; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude UssParkingInfoList.msg.html

(cl:defclass <UssParkingInfoList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uss_parking_info
    :reader uss_parking_info
    :initarg :uss_parking_info
    :type (cl:vector ros_interface-msg:UssParkingInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:UssParkingInfo :initial-element (cl:make-instance 'ros_interface-msg:UssParkingInfo)))
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

(cl:defclass UssParkingInfoList (<UssParkingInfoList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssParkingInfoList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssParkingInfoList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<UssParkingInfoList> is deprecated: use ros_interface-msg:UssParkingInfoList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UssParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uss_parking_info-val :lambda-list '(m))
(cl:defmethod uss_parking_info-val ((m <UssParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:uss_parking_info-val is deprecated.  Use ros_interface-msg:uss_parking_info instead.")
  (uss_parking_info m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <UssParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <UssParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssParkingInfoList>) ostream)
  "Serializes a message object of type '<UssParkingInfoList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_parking_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_parking_info))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssParkingInfoList>) istream)
  "Deserializes a message object of type '<UssParkingInfoList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_parking_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_parking_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:UssParkingInfo))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssParkingInfoList>)))
  "Returns string type for a message object of type '<UssParkingInfoList>"
  "ros_interface/UssParkingInfoList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssParkingInfoList)))
  "Returns string type for a message object of type 'UssParkingInfoList"
  "ros_interface/UssParkingInfoList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssParkingInfoList>)))
  "Returns md5sum for a message object of type '<UssParkingInfoList>"
  "72d9bae584e181e4169ab23909311fd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssParkingInfoList)))
  "Returns md5sum for a message object of type 'UssParkingInfoList"
  "72d9bae584e181e4169ab23909311fd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssParkingInfoList>)))
  "Returns full string definition for message of type '<UssParkingInfoList>"
  (cl:format cl:nil "Header   header     # 消息头~%UssParkingInfo[] uss_parking_info # 超声波检测出的停车位数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 超声波车位数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/UssParkingInfo~%Header   header     # timestamp is included in header~%int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直~%Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置~%Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置~%Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置~%Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssParkingInfoList)))
  "Returns full string definition for message of type 'UssParkingInfoList"
  (cl:format cl:nil "Header   header     # 消息头~%UssParkingInfo[] uss_parking_info # 超声波检测出的停车位数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 超声波车位数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/UssParkingInfo~%Header   header     # timestamp is included in header~%int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直~%Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置~%Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置~%Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置~%Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssParkingInfoList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_parking_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssParkingInfoList>))
  "Converts a ROS message object to a list"
  (cl:list 'UssParkingInfoList
    (cl:cons ':header (header msg))
    (cl:cons ':uss_parking_info (uss_parking_info msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_valid (is_valid msg))
))
