; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ObstacleList.msg.html

(cl:defclass <ObstacleList> (roslisp-msg-protocol:ros-message)
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
   (obstacle
    :reader obstacle
    :initarg :obstacle
    :type (cl:vector ros_interface-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Obstacle :initial-element (cl:make-instance 'ros_interface-msg:Obstacle)))
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
   (change_origin_flag
    :reader change_origin_flag
    :initarg :change_origin_flag
    :type cl:integer
    :initform 0))
)

(cl:defclass ObstacleList (<ObstacleList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ObstacleList> is deprecated: use ros_interface-msg:ObstacleList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <ObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_id-val is deprecated.  Use ros_interface-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'obstacle-val :lambda-list '(m))
(cl:defmethod obstacle-val ((m <ObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:obstacle-val is deprecated.  Use ros_interface-msg:obstacle instead.")
  (obstacle m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <ObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'change_origin_flag-val :lambda-list '(m))
(cl:defmethod change_origin_flag-val ((m <ObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:change_origin_flag-val is deprecated.  Use ros_interface-msg:change_origin_flag instead.")
  (change_origin_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleList>) ostream)
  "Serializes a message object of type '<ObstacleList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'change_origin_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleList>) istream)
  "Deserializes a message object of type '<ObstacleList>"
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
  (cl:setf (cl:slot-value msg 'obstacle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_origin_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleList>)))
  "Returns string type for a message object of type '<ObstacleList>"
  "ros_interface/ObstacleList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleList)))
  "Returns string type for a message object of type 'ObstacleList"
  "ros_interface/ObstacleList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleList>)))
  "Returns md5sum for a message object of type '<ObstacleList>"
  "557209d27fc972d8822c67ecf57858ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleList)))
  "Returns md5sum for a message object of type 'ObstacleList"
  "557209d27fc972d8822c67ecf57858ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleList>)))
  "Returns full string definition for message of type '<ObstacleList>"
  (cl:format cl:nil "Header   header     # 消息头~%int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合~%Obstacle[] obstacle # 检测出的障碍物数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 障碍物数据是否合法~%int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Obstacle~%Time   timestamp     # 时间戳~%int32   id     # 障碍物id~%float64   existence_prob     # 障碍物存在的概率~%Time   create_time     # 障碍物被识别的时间戳~%Time   last_updated_time     # 障碍物上一次更新的时间~%Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置~%Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置~%float64   theta_vehicle     # 车辆坐标系下障碍物的朝向~%float64   theta_abs     # 世界坐标系下障碍物的朝向~%Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度~%Point3D   velocity_abs     # 世界坐标系下障碍物的速度~%float64   length     # 障碍物长度~%float64   width     # 障碍物宽度~%float64   height     # 障碍物高度~%ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形~%Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形~%Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形~%float64   tracking_time     # 障碍物被追踪的时间~%int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;~%float64   confidence     # 障碍物类别置信度~%int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;~%Point3D[] drops # 障碍物轨迹点~%Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度~%Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度~%Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)~%Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)~%Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)~%BBox2D   bbox2d     # 障碍物图像框~%BBox2D   bbox2d_rear     # 障碍物图像尾框~%int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;~%float64   height_above_ground     # 障碍物近地点到地面的高度~%float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵~%float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵~%float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵~%float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵~%SensorCalibrator   sensor_calibrator     # 传感器标定参数~%uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   pihp_percentage     # 临车道车辆压线比例~%int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN~%int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ImageKeyPoint~%float64   x     # 车位图像关键点x坐标~%float64   y     # 车位图像关键点y坐标~%float64   confidence     # 置信度~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%================================================================================~%MSG: ros_interface/SensorCalibrator~%Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleList)))
  "Returns full string definition for message of type 'ObstacleList"
  (cl:format cl:nil "Header   header     # 消息头~%int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合~%Obstacle[] obstacle # 检测出的障碍物数组~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 障碍物数据是否合法~%int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Obstacle~%Time   timestamp     # 时间戳~%int32   id     # 障碍物id~%float64   existence_prob     # 障碍物存在的概率~%Time   create_time     # 障碍物被识别的时间戳~%Time   last_updated_time     # 障碍物上一次更新的时间~%Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置~%Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置~%float64   theta_vehicle     # 车辆坐标系下障碍物的朝向~%float64   theta_abs     # 世界坐标系下障碍物的朝向~%Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度~%Point3D   velocity_abs     # 世界坐标系下障碍物的速度~%float64   length     # 障碍物长度~%float64   width     # 障碍物宽度~%float64   height     # 障碍物高度~%ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形~%Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形~%Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形~%float64   tracking_time     # 障碍物被追踪的时间~%int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;~%float64   confidence     # 障碍物类别置信度~%int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;~%Point3D[] drops # 障碍物轨迹点~%Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度~%Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度~%Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)~%Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)~%Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)~%BBox2D   bbox2d     # 障碍物图像框~%BBox2D   bbox2d_rear     # 障碍物图像尾框~%int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;~%float64   height_above_ground     # 障碍物近地点到地面的高度~%float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵~%float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵~%float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵~%float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵~%SensorCalibrator   sensor_calibrator     # 传感器标定参数~%uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   pihp_percentage     # 临车道车辆压线比例~%int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN~%int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ImageKeyPoint~%float64   x     # 车位图像关键点x坐标~%float64   y     # 车位图像关键点y坐标~%float64   confidence     # 置信度~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%================================================================================~%MSG: ros_interface/SensorCalibrator~%Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleList>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleList
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':obstacle (obstacle msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':change_origin_flag (change_origin_flag msg))
))
