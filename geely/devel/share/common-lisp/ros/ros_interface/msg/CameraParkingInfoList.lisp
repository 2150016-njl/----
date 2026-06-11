; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude CameraParkingInfoList.msg.html

(cl:defclass <CameraParkingInfoList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:integer
    :initform 0)
   (camera_parking
    :reader camera_parking
    :initarg :camera_parking
    :type (cl:vector ros_interface-msg:CameraParkingInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:CameraParkingInfo :initial-element (cl:make-instance 'ros_interface-msg:CameraParkingInfo)))
   (camera_parking_stoppers
    :reader camera_parking_stoppers
    :initarg :camera_parking_stoppers
    :type (cl:vector ros_interface-msg:CameraParkingStopper)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:CameraParkingStopper :initial-element (cl:make-instance 'ros_interface-msg:CameraParkingStopper)))
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

(cl:defclass CameraParkingInfoList (<CameraParkingInfoList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraParkingInfoList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraParkingInfoList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<CameraParkingInfoList> is deprecated: use ros_interface-msg:CameraParkingInfoList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <CameraParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_id-val is deprecated.  Use ros_interface-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'camera_parking-val :lambda-list '(m))
(cl:defmethod camera_parking-val ((m <CameraParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:camera_parking-val is deprecated.  Use ros_interface-msg:camera_parking instead.")
  (camera_parking m))

(cl:ensure-generic-function 'camera_parking_stoppers-val :lambda-list '(m))
(cl:defmethod camera_parking_stoppers-val ((m <CameraParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:camera_parking_stoppers-val is deprecated.  Use ros_interface-msg:camera_parking_stoppers instead.")
  (camera_parking_stoppers m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CameraParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <CameraParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraParkingInfoList>) ostream)
  "Serializes a message object of type '<CameraParkingInfoList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_parking))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_parking))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_parking_stoppers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_parking_stoppers))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraParkingInfoList>) istream)
  "Deserializes a message object of type '<CameraParkingInfoList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_parking) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_parking)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:CameraParkingInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_parking_stoppers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_parking_stoppers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:CameraParkingStopper))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraParkingInfoList>)))
  "Returns string type for a message object of type '<CameraParkingInfoList>"
  "ros_interface/CameraParkingInfoList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraParkingInfoList)))
  "Returns string type for a message object of type 'CameraParkingInfoList"
  "ros_interface/CameraParkingInfoList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraParkingInfoList>)))
  "Returns md5sum for a message object of type '<CameraParkingInfoList>"
  "d4caa94d6814e1d645bcbe41c8c0b57d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraParkingInfoList)))
  "Returns md5sum for a message object of type 'CameraParkingInfoList"
  "d4caa94d6814e1d645bcbe41c8c0b57d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraParkingInfoList>)))
  "Returns full string definition for message of type '<CameraParkingInfoList>"
  (cl:format cl:nil "Header   header     # 消息头，时间戳使用接收的图像的时间戳~%int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合~%CameraParkingInfo[] camera_parking # 检测出的障碍物数组~%CameraParkingStopper[] camera_parking_stoppers # 检测出的限位器数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 障碍物数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/CameraParkingInfo~%Header   header     # timestamp is  included in header~%int32   parking_space_id     # 停车位id~%int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//垂直泊车 PARKING_TYPE=2//水平泊车 PARKING_TYPE=3//倾斜泊车~%bool   is_parking_enable     # PARKING_ENABLE=0//不可泊入 PARKING_ENABLE=1//可泊入~%float64   confidence     # 停车位置信度~%Point3D   center_point_of_parking     # 车辆坐标系的停车位中心点~%float64   theta     # 车辆坐标系下停车位的朝向~%float64   width     # 停车位宽~%float64   length     # 停车位长~%float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角~%ImageKeyPoint[] parking_points_in_image # 图像坐标系下停车位关键点，顺时针方向~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ImageKeyPoint~%float64   x     # 车位图像关键点x坐标~%float64   y     # 车位图像关键点y坐标~%float64   confidence     # 置信度~%~%================================================================================~%MSG: ros_interface/CameraParkingStopper~%Header   header     # timestamp is  included in header~%BBox2D   bbox2d     # 限位器图像框~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraParkingInfoList)))
  "Returns full string definition for message of type 'CameraParkingInfoList"
  (cl:format cl:nil "Header   header     # 消息头，时间戳使用接收的图像的时间戳~%int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合~%CameraParkingInfo[] camera_parking # 检测出的障碍物数组~%CameraParkingStopper[] camera_parking_stoppers # 检测出的限位器数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 障碍物数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/CameraParkingInfo~%Header   header     # timestamp is  included in header~%int32   parking_space_id     # 停车位id~%int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//垂直泊车 PARKING_TYPE=2//水平泊车 PARKING_TYPE=3//倾斜泊车~%bool   is_parking_enable     # PARKING_ENABLE=0//不可泊入 PARKING_ENABLE=1//可泊入~%float64   confidence     # 停车位置信度~%Point3D   center_point_of_parking     # 车辆坐标系的停车位中心点~%float64   theta     # 车辆坐标系下停车位的朝向~%float64   width     # 停车位宽~%float64   length     # 停车位长~%float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角~%ImageKeyPoint[] parking_points_in_image # 图像坐标系下停车位关键点，顺时针方向~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ImageKeyPoint~%float64   x     # 车位图像关键点x坐标~%float64   y     # 车位图像关键点y坐标~%float64   confidence     # 置信度~%~%================================================================================~%MSG: ros_interface/CameraParkingStopper~%Header   header     # timestamp is  included in header~%BBox2D   bbox2d     # 限位器图像框~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraParkingInfoList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_parking) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_parking_stoppers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraParkingInfoList>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraParkingInfoList
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':camera_parking (camera_parking msg))
    (cl:cons ':camera_parking_stoppers (camera_parking_stoppers msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_valid (is_valid msg))
))
