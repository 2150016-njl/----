;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LaneList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LaneList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LANELIST")
  (make-package "ROS_INTERFACE::LANELIST"))

(in-package "ROS")
;;//! \htmlinclude LaneList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::LaneList
  :super ros::object
  :slots (_header _sensor_id _error_code _sensor_status _change_origin_flag _is_valid _sensor_calibrator _camera_laneline _hpp _road_marks ))

(defmethod ros_interface::LaneList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_id __sensor_id) 0)
    ((:error_code __error_code) 0)
    ((:sensor_status __sensor_status) 0)
    ((:change_origin_flag __change_origin_flag) 0)
    ((:is_valid __is_valid) nil)
    ((:sensor_calibrator __sensor_calibrator) (instance ros_interface::SensorCalibrator :init))
    ((:camera_laneline __camera_laneline) (let (r) (dotimes (i 0) (push (instance ros_interface::LaneLine :init) r)) r))
    ((:hpp __hpp) (instance ros_interface::HolisticPathPrediction :init))
    ((:road_marks __road_marks) (let (r) (dotimes (i 0) (push (instance ros_interface::RoadMark :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_id (round __sensor_id))
   (setq _error_code (round __error_code))
   (setq _sensor_status (round __sensor_status))
   (setq _change_origin_flag (round __change_origin_flag))
   (setq _is_valid __is_valid)
   (setq _sensor_calibrator __sensor_calibrator)
   (setq _camera_laneline __camera_laneline)
   (setq _hpp __hpp)
   (setq _road_marks __road_marks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:sensor_status
   (&optional __sensor_status)
   (if __sensor_status (setq _sensor_status __sensor_status)) _sensor_status)
  (:change_origin_flag
   (&optional __change_origin_flag)
   (if __change_origin_flag (setq _change_origin_flag __change_origin_flag)) _change_origin_flag)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:sensor_calibrator
   (&rest __sensor_calibrator)
   (if (keywordp (car __sensor_calibrator))
       (send* _sensor_calibrator __sensor_calibrator)
     (progn
       (if __sensor_calibrator (setq _sensor_calibrator (car __sensor_calibrator)))
       _sensor_calibrator)))
  (:camera_laneline
   (&rest __camera_laneline)
   (if (keywordp (car __camera_laneline))
       (send* _camera_laneline __camera_laneline)
     (progn
       (if __camera_laneline (setq _camera_laneline (car __camera_laneline)))
       _camera_laneline)))
  (:hpp
   (&rest __hpp)
   (if (keywordp (car __hpp))
       (send* _hpp __hpp)
     (progn
       (if __hpp (setq _hpp (car __hpp)))
       _hpp)))
  (:road_marks
   (&rest __road_marks)
   (if (keywordp (car __road_marks))
       (send* _road_marks __road_marks)
     (progn
       (if __road_marks (setq _road_marks (car __road_marks)))
       _road_marks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _sensor_id
    4
    ;; int8 _error_code
    1
    ;; uint8 _sensor_status
    1
    ;; int32 _change_origin_flag
    4
    ;; bool _is_valid
    1
    ;; ros_interface/SensorCalibrator _sensor_calibrator
    (send _sensor_calibrator :serialization-length)
    ;; ros_interface/LaneLine[] _camera_laneline
    (apply #'+ (send-all _camera_laneline :serialization-length)) 4
    ;; ros_interface/HolisticPathPrediction _hpp
    (send _hpp :serialization-length)
    ;; ros_interface/RoadMark[] _road_marks
    (apply #'+ (send-all _road_marks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _sensor_id
       (write-long _sensor_id s)
     ;; int8 _error_code
       (write-byte _error_code s)
     ;; uint8 _sensor_status
       (write-byte _sensor_status s)
     ;; int32 _change_origin_flag
       (write-long _change_origin_flag s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/SensorCalibrator _sensor_calibrator
       (send _sensor_calibrator :serialize s)
     ;; ros_interface/LaneLine[] _camera_laneline
     (write-long (length _camera_laneline) s)
     (dolist (elem _camera_laneline)
       (send elem :serialize s)
       )
     ;; ros_interface/HolisticPathPrediction _hpp
       (send _hpp :serialize s)
     ;; ros_interface/RoadMark[] _road_marks
     (write-long (length _road_marks) s)
     (dolist (elem _road_marks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;; uint8 _sensor_status
     (setq _sensor_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _change_origin_flag
     (setq _change_origin_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/SensorCalibrator _sensor_calibrator
     (send _sensor_calibrator :deserialize buf ptr-) (incf ptr- (send _sensor_calibrator :serialization-length))
   ;; ros_interface/LaneLine[] _camera_laneline
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_laneline (let (r) (dotimes (i n) (push (instance ros_interface::LaneLine :init) r)) r))
     (dolist (elem- _camera_laneline)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/HolisticPathPrediction _hpp
     (send _hpp :deserialize buf ptr-) (incf ptr- (send _hpp :serialization-length))
   ;; ros_interface/RoadMark[] _road_marks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_marks (let (r) (dotimes (i n) (push (instance ros_interface::RoadMark :init) r)) r))
     (dolist (elem- _road_marks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::LaneList :md5sum-) "48b68a31434316e84d258accd4457bd2")
(setf (get ros_interface::LaneList :datatype-) "ros_interface/LaneList")
(setf (get ros_interface::LaneList :definition-)
      "Header   header     # 消息头
int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合
int8   error_code     # 错误码： ERROR_NONE = 0; ERROR_UNKNOWN = 1;
uint8   sensor_status     # 传感器状态： NORMAL=0； ABNORMAL=1；
int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）
bool   is_valid     # 车道线数据是否合法
SensorCalibrator   sensor_calibrator     # 传感器标定参数
LaneLine[] camera_laneline # 车道线检测结果数组
HolisticPathPrediction   hpp     # 行驶预测线
RoadMark[] road_marks # 路面标识

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/SensorCalibrator
Point3D   pose     # 传感器安装位置(相对于后轴中心点)
Point3D   angle     # 传感器安装角度(车体坐标系)

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/LaneLine
int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;
int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;
int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background
LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数
LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数
LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数
Point3D[] pts_vehicle # 车辆坐标系车道线点集
Point2D[] pts_image # 图像坐标系车道线点集
Point3D[] pts_abs # 世界坐标系车道线点集
EndPoints   image_end_point     # 车道线上顶点与下顶点
Point2D[] pts_key # 车道线关键点数组
uint8   hd_lane_id     # 高精车道线id
float64   confidence     # 车道线置信度
int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;
int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3
float64[] homography_mat # 透视变换矩阵
float64[] homography_mat_inv # 透视变换逆矩阵
int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;
int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;
Time   create_time     # 车道线被识别的时间戳

================================================================================
MSG: ros_interface/LaneLineCubicCurve
float64   start_x     # 车道线起始位置
float64   end_x     # 车道线结束位置
float64   a     # 三次曲线系数
float64   b     #  
float64   c     #  
float64   d     #  

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

================================================================================
MSG: ros_interface/EndPoints
Point2D   start     # 车道线上顶点
Point2D   end     # 车道线下顶点

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

================================================================================
MSG: ros_interface/HolisticPathPrediction
LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；
int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测
float64   ego_lane_width     # 自车道宽度
float64   confidence     # 置信度[0 - 1]

================================================================================
MSG: ros_interface/RoadMark
float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m
float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m
float64   x     # 质心坐标x
float64   y     # 质心坐标y
float64   z     # 质心坐标z
float64   confidence     # 置信度[0 - 1]
int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字

")



(provide :ros_interface/LaneList "48b68a31434316e84d258accd4457bd2")


