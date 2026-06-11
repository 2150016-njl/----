;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ParkingInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ParkingInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PARKINGINFO")
  (make-package "ROS_INTERFACE::PARKINGINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ParkingInfo
  :super ros::object
  :slots (_header _parking_space_id _parking_type _confidence _center_point_of_parking _theta _width _length _yaw_offset _polygon _sensor_id _is_lane_width_valid _lane_width _parking_stoppers _parking_direction_type _parking_source_type ))

(defmethod ros_interface::ParkingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_space_id __parking_space_id) 0)
    ((:parking_type __parking_type) 0)
    ((:confidence __confidence) 0.0)
    ((:center_point_of_parking __center_point_of_parking) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:yaw_offset __yaw_offset) 0.0)
    ((:polygon __polygon) (instance ros_interface::Polygon3D :init))
    ((:sensor_id __sensor_id) 0)
    ((:is_lane_width_valid __is_lane_width_valid) nil)
    ((:lane_width __lane_width) 0.0)
    ((:parking_stoppers __parking_stoppers) (let (r) (dotimes (i 0) (push (instance ros_interface::ParkingStopper :init) r)) r))
    ((:parking_direction_type __parking_direction_type) 0)
    ((:parking_source_type __parking_source_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_space_id (round __parking_space_id))
   (setq _parking_type (round __parking_type))
   (setq _confidence (float __confidence))
   (setq _center_point_of_parking __center_point_of_parking)
   (setq _theta (float __theta))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _yaw_offset (float __yaw_offset))
   (setq _polygon __polygon)
   (setq _sensor_id (round __sensor_id))
   (setq _is_lane_width_valid __is_lane_width_valid)
   (setq _lane_width (float __lane_width))
   (setq _parking_stoppers __parking_stoppers)
   (setq _parking_direction_type (round __parking_direction_type))
   (setq _parking_source_type (round __parking_source_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parking_space_id
   (&optional __parking_space_id)
   (if __parking_space_id (setq _parking_space_id __parking_space_id)) _parking_space_id)
  (:parking_type
   (&optional __parking_type)
   (if __parking_type (setq _parking_type __parking_type)) _parking_type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:center_point_of_parking
   (&rest __center_point_of_parking)
   (if (keywordp (car __center_point_of_parking))
       (send* _center_point_of_parking __center_point_of_parking)
     (progn
       (if __center_point_of_parking (setq _center_point_of_parking (car __center_point_of_parking)))
       _center_point_of_parking)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:yaw_offset
   (&optional __yaw_offset)
   (if __yaw_offset (setq _yaw_offset __yaw_offset)) _yaw_offset)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:is_lane_width_valid
   (&optional __is_lane_width_valid)
   (if __is_lane_width_valid (setq _is_lane_width_valid __is_lane_width_valid)) _is_lane_width_valid)
  (:lane_width
   (&optional __lane_width)
   (if __lane_width (setq _lane_width __lane_width)) _lane_width)
  (:parking_stoppers
   (&rest __parking_stoppers)
   (if (keywordp (car __parking_stoppers))
       (send* _parking_stoppers __parking_stoppers)
     (progn
       (if __parking_stoppers (setq _parking_stoppers (car __parking_stoppers)))
       _parking_stoppers)))
  (:parking_direction_type
   (&optional __parking_direction_type)
   (if __parking_direction_type (setq _parking_direction_type __parking_direction_type)) _parking_direction_type)
  (:parking_source_type
   (&optional __parking_source_type)
   (if __parking_source_type (setq _parking_source_type __parking_source_type)) _parking_source_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _parking_space_id
    4
    ;; int32 _parking_type
    4
    ;; float64 _confidence
    8
    ;; ros_interface/Point3D _center_point_of_parking
    (send _center_point_of_parking :serialization-length)
    ;; float64 _theta
    8
    ;; float64 _width
    8
    ;; float64 _length
    8
    ;; float64 _yaw_offset
    8
    ;; ros_interface/Polygon3D _polygon
    (send _polygon :serialization-length)
    ;; int32 _sensor_id
    4
    ;; bool _is_lane_width_valid
    1
    ;; float64 _lane_width
    8
    ;; ros_interface/ParkingStopper[] _parking_stoppers
    (apply #'+ (send-all _parking_stoppers :serialization-length)) 4
    ;; int32 _parking_direction_type
    4
    ;; int32 _parking_source_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _parking_space_id
       (write-long _parking_space_id s)
     ;; int32 _parking_type
       (write-long _parking_type s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _center_point_of_parking
       (send _center_point_of_parking :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_offset
       (sys::poke _yaw_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Polygon3D _polygon
       (send _polygon :serialize s)
     ;; int32 _sensor_id
       (write-long _sensor_id s)
     ;; bool _is_lane_width_valid
       (if _is_lane_width_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _lane_width
       (sys::poke _lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/ParkingStopper[] _parking_stoppers
     (write-long (length _parking_stoppers) s)
     (dolist (elem _parking_stoppers)
       (send elem :serialize s)
       )
     ;; int32 _parking_direction_type
       (write-long _parking_direction_type s)
     ;; int32 _parking_source_type
       (write-long _parking_source_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _parking_space_id
     (setq _parking_space_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parking_type
     (setq _parking_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _center_point_of_parking
     (send _center_point_of_parking :deserialize buf ptr-) (incf ptr- (send _center_point_of_parking :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_offset
     (setq _yaw_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Polygon3D _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;; int32 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_lane_width_valid
     (setq _is_lane_width_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _lane_width
     (setq _lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/ParkingStopper[] _parking_stoppers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_stoppers (let (r) (dotimes (i n) (push (instance ros_interface::ParkingStopper :init) r)) r))
     (dolist (elem- _parking_stoppers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _parking_direction_type
     (setq _parking_direction_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parking_source_type
     (setq _parking_source_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ParkingInfo :md5sum-) "9c7785e504d091d658cd31aca35c7f91")
(setf (get ros_interface::ParkingInfo :datatype-) "ros_interface/ParkingInfo")
(setf (get ros_interface::ParkingInfo :definition-)
      "Header   header     # timestamp is included in header
int32   parking_space_id     # 停车位id
int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//水平泊车 PARKING_TYPE=2//垂直泊车 PARKING_TYPE=3//倾斜泊车
float64   confidence     # 车位置信度
Point3D   center_point_of_parking     # 世界坐标系下停车位中心点
float64   theta     # 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角
float64   width     # 停车位宽（单位m）
float64   length     # 停车位长单位m）
float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角,(单位m）
Polygon3D   polygon     # 世界坐标系下的车位多边形
int32   sensor_id     # 车位数据来自相机id 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机 8-相机融合
bool   is_lane_width_valid     # 车道宽度是否有效
float64   lane_width     # 泊车可用(双)车道宽度
ParkingStopper[] parking_stoppers # 车位内部的限位器数组
int32   parking_direction_type     #   DIR_INVALID = 0,   LEFT = 1,   UP = 2,   RIGHT = 3,   DOWN = 4,
int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位

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
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/Polygon3D
int32   coordinate_system     # 坐标系
Point3D[] points # 三维点集

================================================================================
MSG: ros_interface/ParkingStopper
Header   header     # timestamp is  included in header
Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标
Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标
Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点
Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点

")



(provide :ros_interface/ParkingInfo "9c7785e504d091d658cd31aca35c7f91")


