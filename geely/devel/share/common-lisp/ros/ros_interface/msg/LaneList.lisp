; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude LaneList.msg.html

(cl:defclass <LaneList> (roslisp-msg-protocol:ros-message)
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
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (sensor_status
    :reader sensor_status
    :initarg :sensor_status
    :type cl:fixnum
    :initform 0)
   (change_origin_flag
    :reader change_origin_flag
    :initarg :change_origin_flag
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil)
   (sensor_calibrator
    :reader sensor_calibrator
    :initarg :sensor_calibrator
    :type ros_interface-msg:SensorCalibrator
    :initform (cl:make-instance 'ros_interface-msg:SensorCalibrator))
   (camera_laneline
    :reader camera_laneline
    :initarg :camera_laneline
    :type (cl:vector ros_interface-msg:LaneLine)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:LaneLine :initial-element (cl:make-instance 'ros_interface-msg:LaneLine)))
   (hpp
    :reader hpp
    :initarg :hpp
    :type ros_interface-msg:HolisticPathPrediction
    :initform (cl:make-instance 'ros_interface-msg:HolisticPathPrediction))
   (road_marks
    :reader road_marks
    :initarg :road_marks
    :type (cl:vector ros_interface-msg:RoadMark)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:RoadMark :initial-element (cl:make-instance 'ros_interface-msg:RoadMark))))
)

(cl:defclass LaneList (<LaneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<LaneList> is deprecated: use ros_interface-msg:LaneList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_id-val is deprecated.  Use ros_interface-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'sensor_status-val :lambda-list '(m))
(cl:defmethod sensor_status-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_status-val is deprecated.  Use ros_interface-msg:sensor_status instead.")
  (sensor_status m))

(cl:ensure-generic-function 'change_origin_flag-val :lambda-list '(m))
(cl:defmethod change_origin_flag-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:change_origin_flag-val is deprecated.  Use ros_interface-msg:change_origin_flag instead.")
  (change_origin_flag m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'sensor_calibrator-val :lambda-list '(m))
(cl:defmethod sensor_calibrator-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_calibrator-val is deprecated.  Use ros_interface-msg:sensor_calibrator instead.")
  (sensor_calibrator m))

(cl:ensure-generic-function 'camera_laneline-val :lambda-list '(m))
(cl:defmethod camera_laneline-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:camera_laneline-val is deprecated.  Use ros_interface-msg:camera_laneline instead.")
  (camera_laneline m))

(cl:ensure-generic-function 'hpp-val :lambda-list '(m))
(cl:defmethod hpp-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hpp-val is deprecated.  Use ros_interface-msg:hpp instead.")
  (hpp m))

(cl:ensure-generic-function 'road_marks-val :lambda-list '(m))
(cl:defmethod road_marks-val ((m <LaneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:road_marks-val is deprecated.  Use ros_interface-msg:road_marks instead.")
  (road_marks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneList>) ostream)
  "Serializes a message object of type '<LaneList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'change_origin_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_calibrator) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_laneline))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_laneline))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hpp) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_marks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_marks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneList>) istream)
  "Deserializes a message object of type '<LaneList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_origin_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_calibrator) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_laneline) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_laneline)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:LaneLine))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hpp) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_marks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_marks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:RoadMark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneList>)))
  "Returns string type for a message object of type '<LaneList>"
  "ros_interface/LaneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneList)))
  "Returns string type for a message object of type 'LaneList"
  "ros_interface/LaneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneList>)))
  "Returns md5sum for a message object of type '<LaneList>"
  "48b68a31434316e84d258accd4457bd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneList)))
  "Returns md5sum for a message object of type 'LaneList"
  "48b68a31434316e84d258accd4457bd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneList>)))
  "Returns full string definition for message of type '<LaneList>"
  (cl:format cl:nil "Header   header     # 消息头~%int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合~%int8   error_code     # 错误码： ERROR_NONE = 0; ERROR_UNKNOWN = 1;~%uint8   sensor_status     # 传感器状态： NORMAL=0； ABNORMAL=1；~%int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）~%bool   is_valid     # 车道线数据是否合法~%SensorCalibrator   sensor_calibrator     # 传感器标定参数~%LaneLine[] camera_laneline # 车道线检测结果数组~%HolisticPathPrediction   hpp     # 行驶预测线~%RoadMark[] road_marks # 路面标识~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/SensorCalibrator~%Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/LaneLine~%int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;~%int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;~%int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background~%LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数~%Point3D[] pts_vehicle # 车辆坐标系车道线点集~%Point2D[] pts_image # 图像坐标系车道线点集~%Point3D[] pts_abs # 世界坐标系车道线点集~%EndPoints   image_end_point     # 车道线上顶点与下顶点~%Point2D[] pts_key # 车道线关键点数组~%uint8   hd_lane_id     # 高精车道线id~%float64   confidence     # 车道线置信度~%int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;~%int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3~%float64[] homography_mat # 透视变换矩阵~%float64[] homography_mat_inv # 透视变换逆矩阵~%int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;~%int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;~%Time   create_time     # 车道线被识别的时间戳~%~%================================================================================~%MSG: ros_interface/LaneLineCubicCurve~%float64   start_x     # 车道线起始位置~%float64   end_x     # 车道线结束位置~%float64   a     # 三次曲线系数~%float64   b     #  ~%float64   c     #  ~%float64   d     #  ~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/EndPoints~%Point2D   start     # 车道线上顶点~%Point2D   end     # 车道线下顶点~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/HolisticPathPrediction~%LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；~%int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测~%float64   ego_lane_width     # 自车道宽度~%float64   confidence     # 置信度[0 - 1]~%~%================================================================================~%MSG: ros_interface/RoadMark~%float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m~%float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m~%float64   x     # 质心坐标x~%float64   y     # 质心坐标y~%float64   z     # 质心坐标z~%float64   confidence     # 置信度[0 - 1]~%int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneList)))
  "Returns full string definition for message of type 'LaneList"
  (cl:format cl:nil "Header   header     # 消息头~%int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合~%int8   error_code     # 错误码： ERROR_NONE = 0; ERROR_UNKNOWN = 1;~%uint8   sensor_status     # 传感器状态： NORMAL=0； ABNORMAL=1；~%int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）~%bool   is_valid     # 车道线数据是否合法~%SensorCalibrator   sensor_calibrator     # 传感器标定参数~%LaneLine[] camera_laneline # 车道线检测结果数组~%HolisticPathPrediction   hpp     # 行驶预测线~%RoadMark[] road_marks # 路面标识~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/SensorCalibrator~%Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/LaneLine~%int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;~%int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;~%int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background~%LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数~%Point3D[] pts_vehicle # 车辆坐标系车道线点集~%Point2D[] pts_image # 图像坐标系车道线点集~%Point3D[] pts_abs # 世界坐标系车道线点集~%EndPoints   image_end_point     # 车道线上顶点与下顶点~%Point2D[] pts_key # 车道线关键点数组~%uint8   hd_lane_id     # 高精车道线id~%float64   confidence     # 车道线置信度~%int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;~%int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3~%float64[] homography_mat # 透视变换矩阵~%float64[] homography_mat_inv # 透视变换逆矩阵~%int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;~%int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;~%Time   create_time     # 车道线被识别的时间戳~%~%================================================================================~%MSG: ros_interface/LaneLineCubicCurve~%float64   start_x     # 车道线起始位置~%float64   end_x     # 车道线结束位置~%float64   a     # 三次曲线系数~%float64   b     #  ~%float64   c     #  ~%float64   d     #  ~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/EndPoints~%Point2D   start     # 车道线上顶点~%Point2D   end     # 车道线下顶点~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/HolisticPathPrediction~%LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；~%int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测~%float64   ego_lane_width     # 自车道宽度~%float64   confidence     # 置信度[0 - 1]~%~%================================================================================~%MSG: ros_interface/RoadMark~%float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m~%float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m~%float64   x     # 质心坐标x~%float64   y     # 质心坐标y~%float64   z     # 质心坐标z~%float64   confidence     # 置信度[0 - 1]~%int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_calibrator))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_laneline) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hpp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_marks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneList>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneList
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':sensor_status (sensor_status msg))
    (cl:cons ':change_origin_flag (change_origin_flag msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':sensor_calibrator (sensor_calibrator msg))
    (cl:cons ':camera_laneline (camera_laneline msg))
    (cl:cons ':hpp (hpp msg))
    (cl:cons ':road_marks (road_marks msg))
))
