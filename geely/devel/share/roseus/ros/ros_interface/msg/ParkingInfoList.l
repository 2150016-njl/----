;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ParkingInfoList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ParkingInfoList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PARKINGINFOLIST")
  (make-package "ROS_INTERFACE::PARKINGINFOLIST"))

(in-package "ROS")
;;//! \htmlinclude ParkingInfoList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ParkingInfoList
  :super ros::object
  :slots (_header _parking_info _error_code _is_valid _parking_out_enable _parking_out_direction _parking_out_id ))

(defmethod ros_interface::ParkingInfoList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_info __parking_info) (let (r) (dotimes (i 0) (push (instance ros_interface::ParkingInfo :init) r)) r))
    ((:error_code __error_code) 0)
    ((:is_valid __is_valid) nil)
    ((:parking_out_enable __parking_out_enable) nil)
    ((:parking_out_direction __parking_out_direction) 0)
    ((:parking_out_id __parking_out_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_info __parking_info)
   (setq _error_code (round __error_code))
   (setq _is_valid __is_valid)
   (setq _parking_out_enable __parking_out_enable)
   (setq _parking_out_direction (round __parking_out_direction))
   (setq _parking_out_id (round __parking_out_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parking_info
   (&rest __parking_info)
   (if (keywordp (car __parking_info))
       (send* _parking_info __parking_info)
     (progn
       (if __parking_info (setq _parking_info (car __parking_info)))
       _parking_info)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:parking_out_enable
   (&optional __parking_out_enable)
   (if __parking_out_enable (setq _parking_out_enable __parking_out_enable)) _parking_out_enable)
  (:parking_out_direction
   (&optional __parking_out_direction)
   (if __parking_out_direction (setq _parking_out_direction __parking_out_direction)) _parking_out_direction)
  (:parking_out_id
   (&optional __parking_out_id)
   (if __parking_out_id (setq _parking_out_id __parking_out_id)) _parking_out_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/ParkingInfo[] _parking_info
    (apply #'+ (send-all _parking_info :serialization-length)) 4
    ;; int32 _error_code
    4
    ;; bool _is_valid
    1
    ;; bool _parking_out_enable
    1
    ;; int32 _parking_out_direction
    4
    ;; int32 _parking_out_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/ParkingInfo[] _parking_info
     (write-long (length _parking_info) s)
     (dolist (elem _parking_info)
       (send elem :serialize s)
       )
     ;; int32 _error_code
       (write-long _error_code s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _parking_out_enable
       (if _parking_out_enable (write-byte -1 s) (write-byte 0 s))
     ;; int32 _parking_out_direction
       (write-long _parking_out_direction s)
     ;; int32 _parking_out_id
       (write-long _parking_out_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/ParkingInfo[] _parking_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_info (let (r) (dotimes (i n) (push (instance ros_interface::ParkingInfo :init) r)) r))
     (dolist (elem- _parking_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _parking_out_enable
     (setq _parking_out_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _parking_out_direction
     (setq _parking_out_direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parking_out_id
     (setq _parking_out_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ParkingInfoList :md5sum-) "77a3c4d9d65a30e730ec033b3edaced6")
(setf (get ros_interface::ParkingInfoList :datatype-) "ros_interface/ParkingInfoList")
(setf (get ros_interface::ParkingInfoList :definition-)
      "Header   header     # 消息头
ParkingInfo[] parking_info # 检测出的停车位数组
int32   error_code     # 错误码（default = OK）
bool   is_valid     # 车位数据是否合法
bool   parking_out_enable     # 是否能泊出
int32   parking_out_direction     # 泊出方向
int32   parking_out_id     # 当前自车所在车位ID

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
MSG: ros_interface/ParkingInfo
Header   header     # timestamp is included in header
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



(provide :ros_interface/ParkingInfoList "77a3c4d9d65a30e730ec033b3edaced6")


