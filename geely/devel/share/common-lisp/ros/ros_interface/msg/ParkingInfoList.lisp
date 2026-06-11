; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ParkingInfoList.msg.html

(cl:defclass <ParkingInfoList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parking_info
    :reader parking_info
    :initarg :parking_info
    :type (cl:vector ros_interface-msg:ParkingInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:ParkingInfo :initial-element (cl:make-instance 'ros_interface-msg:ParkingInfo)))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil)
   (parking_out_enable
    :reader parking_out_enable
    :initarg :parking_out_enable
    :type cl:boolean
    :initform cl:nil)
   (parking_out_direction
    :reader parking_out_direction
    :initarg :parking_out_direction
    :type cl:integer
    :initform 0)
   (parking_out_id
    :reader parking_out_id
    :initarg :parking_out_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ParkingInfoList (<ParkingInfoList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingInfoList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingInfoList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ParkingInfoList> is deprecated: use ros_interface-msg:ParkingInfoList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parking_info-val :lambda-list '(m))
(cl:defmethod parking_info-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_info-val is deprecated.  Use ros_interface-msg:parking_info instead.")
  (parking_info m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'parking_out_enable-val :lambda-list '(m))
(cl:defmethod parking_out_enable-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_enable-val is deprecated.  Use ros_interface-msg:parking_out_enable instead.")
  (parking_out_enable m))

(cl:ensure-generic-function 'parking_out_direction-val :lambda-list '(m))
(cl:defmethod parking_out_direction-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_direction-val is deprecated.  Use ros_interface-msg:parking_out_direction instead.")
  (parking_out_direction m))

(cl:ensure-generic-function 'parking_out_id-val :lambda-list '(m))
(cl:defmethod parking_out_id-val ((m <ParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_id-val is deprecated.  Use ros_interface-msg:parking_out_id instead.")
  (parking_out_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingInfoList>) ostream)
  "Serializes a message object of type '<ParkingInfoList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_info))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'parking_out_enable) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parking_out_direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parking_out_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingInfoList>) istream)
  "Deserializes a message object of type '<ParkingInfoList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:ParkingInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'parking_out_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_out_direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_out_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingInfoList>)))
  "Returns string type for a message object of type '<ParkingInfoList>"
  "ros_interface/ParkingInfoList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingInfoList)))
  "Returns string type for a message object of type 'ParkingInfoList"
  "ros_interface/ParkingInfoList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingInfoList>)))
  "Returns md5sum for a message object of type '<ParkingInfoList>"
  "77a3c4d9d65a30e730ec033b3edaced6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingInfoList)))
  "Returns md5sum for a message object of type 'ParkingInfoList"
  "77a3c4d9d65a30e730ec033b3edaced6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingInfoList>)))
  "Returns full string definition for message of type '<ParkingInfoList>"
  (cl:format cl:nil "Header   header     # 消息头~%ParkingInfo[] parking_info # 检测出的停车位数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 车位数据是否合法~%bool   parking_out_enable     # 是否能泊出~%int32   parking_out_direction     # 泊出方向~%int32   parking_out_id     # 当前自车所在车位ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/ParkingInfo~%Header   header     # timestamp is included in header~%int32   parking_space_id     # 停车位id~%int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//水平泊车 PARKING_TYPE=2//垂直泊车 PARKING_TYPE=3//倾斜泊车~%float64   confidence     # 车位置信度~%Point3D   center_point_of_parking     # 世界坐标系下停车位中心点~%float64   theta     # 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角~%float64   width     # 停车位宽（单位m）~%float64   length     # 停车位长单位m）~%float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角,(单位m）~%Polygon3D   polygon     # 世界坐标系下的车位多边形~%int32   sensor_id     # 车位数据来自相机id 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机 8-相机融合~%bool   is_lane_width_valid     # 车道宽度是否有效~%float64   lane_width     # 泊车可用(双)车道宽度~%ParkingStopper[] parking_stoppers # 车位内部的限位器数组~%int32   parking_direction_type     #   DIR_INVALID = 0,   LEFT = 1,   UP = 2,   RIGHT = 3,   DOWN = 4,~%int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Polygon3D~%int32   coordinate_system     # 坐标系~%Point3D[] points # 三维点集~%~%================================================================================~%MSG: ros_interface/ParkingStopper~%Header   header     # timestamp is  included in header~%Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标~%Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标~%Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点~%Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingInfoList)))
  "Returns full string definition for message of type 'ParkingInfoList"
  (cl:format cl:nil "Header   header     # 消息头~%ParkingInfo[] parking_info # 检测出的停车位数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 车位数据是否合法~%bool   parking_out_enable     # 是否能泊出~%int32   parking_out_direction     # 泊出方向~%int32   parking_out_id     # 当前自车所在车位ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/ParkingInfo~%Header   header     # timestamp is included in header~%int32   parking_space_id     # 停车位id~%int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//水平泊车 PARKING_TYPE=2//垂直泊车 PARKING_TYPE=3//倾斜泊车~%float64   confidence     # 车位置信度~%Point3D   center_point_of_parking     # 世界坐标系下停车位中心点~%float64   theta     # 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角~%float64   width     # 停车位宽（单位m）~%float64   length     # 停车位长单位m）~%float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角,(单位m）~%Polygon3D   polygon     # 世界坐标系下的车位多边形~%int32   sensor_id     # 车位数据来自相机id 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机 8-相机融合~%bool   is_lane_width_valid     # 车道宽度是否有效~%float64   lane_width     # 泊车可用(双)车道宽度~%ParkingStopper[] parking_stoppers # 车位内部的限位器数组~%int32   parking_direction_type     #   DIR_INVALID = 0,   LEFT = 1,   UP = 2,   RIGHT = 3,   DOWN = 4,~%int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Polygon3D~%int32   coordinate_system     # 坐标系~%Point3D[] points # 三维点集~%~%================================================================================~%MSG: ros_interface/ParkingStopper~%Header   header     # timestamp is  included in header~%Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标~%Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标~%Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点~%Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingInfoList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingInfoList>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingInfoList
    (cl:cons ':header (header msg))
    (cl:cons ':parking_info (parking_info msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':parking_out_enable (parking_out_enable msg))
    (cl:cons ':parking_out_direction (parking_out_direction msg))
    (cl:cons ':parking_out_id (parking_out_id msg))
))
