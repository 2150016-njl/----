;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::CameraParkingInfoList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'CameraParkingInfoList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::CAMERAPARKINGINFOLIST")
  (make-package "ROS_INTERFACE::CAMERAPARKINGINFOLIST"))

(in-package "ROS")
;;//! \htmlinclude CameraParkingInfoList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::CameraParkingInfoList
  :super ros::object
  :slots (_header _sensor_id _camera_parking _camera_parking_stoppers _error_code _is_valid ))

(defmethod ros_interface::CameraParkingInfoList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_id __sensor_id) 0)
    ((:camera_parking __camera_parking) (let (r) (dotimes (i 0) (push (instance ros_interface::CameraParkingInfo :init) r)) r))
    ((:camera_parking_stoppers __camera_parking_stoppers) (let (r) (dotimes (i 0) (push (instance ros_interface::CameraParkingStopper :init) r)) r))
    ((:error_code __error_code) 0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_id (round __sensor_id))
   (setq _camera_parking __camera_parking)
   (setq _camera_parking_stoppers __camera_parking_stoppers)
   (setq _error_code (round __error_code))
   (setq _is_valid __is_valid)
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
  (:camera_parking
   (&rest __camera_parking)
   (if (keywordp (car __camera_parking))
       (send* _camera_parking __camera_parking)
     (progn
       (if __camera_parking (setq _camera_parking (car __camera_parking)))
       _camera_parking)))
  (:camera_parking_stoppers
   (&rest __camera_parking_stoppers)
   (if (keywordp (car __camera_parking_stoppers))
       (send* _camera_parking_stoppers __camera_parking_stoppers)
     (progn
       (if __camera_parking_stoppers (setq _camera_parking_stoppers (car __camera_parking_stoppers)))
       _camera_parking_stoppers)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _sensor_id
    4
    ;; ros_interface/CameraParkingInfo[] _camera_parking
    (apply #'+ (send-all _camera_parking :serialization-length)) 4
    ;; ros_interface/CameraParkingStopper[] _camera_parking_stoppers
    (apply #'+ (send-all _camera_parking_stoppers :serialization-length)) 4
    ;; int32 _error_code
    4
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _sensor_id
       (write-long _sensor_id s)
     ;; ros_interface/CameraParkingInfo[] _camera_parking
     (write-long (length _camera_parking) s)
     (dolist (elem _camera_parking)
       (send elem :serialize s)
       )
     ;; ros_interface/CameraParkingStopper[] _camera_parking_stoppers
     (write-long (length _camera_parking_stoppers) s)
     (dolist (elem _camera_parking_stoppers)
       (send elem :serialize s)
       )
     ;; int32 _error_code
       (write-long _error_code s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/CameraParkingInfo[] _camera_parking
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_parking (let (r) (dotimes (i n) (push (instance ros_interface::CameraParkingInfo :init) r)) r))
     (dolist (elem- _camera_parking)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/CameraParkingStopper[] _camera_parking_stoppers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_parking_stoppers (let (r) (dotimes (i n) (push (instance ros_interface::CameraParkingStopper :init) r)) r))
     (dolist (elem- _camera_parking_stoppers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::CameraParkingInfoList :md5sum-) "d4caa94d6814e1d645bcbe41c8c0b57d")
(setf (get ros_interface::CameraParkingInfoList :datatype-) "ros_interface/CameraParkingInfoList")
(setf (get ros_interface::CameraParkingInfoList :definition-)
      "Header   header     # 消息头，时间戳使用接收的图像的时间戳
int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合
CameraParkingInfo[] camera_parking # 检测出的障碍物数组
CameraParkingStopper[] camera_parking_stoppers # 检测出的限位器数组
int32   error_code     # 错误码（default = OK）
bool   is_valid     # 障碍物数据是否合法

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
MSG: ros_interface/CameraParkingInfo
Header   header     # timestamp is  included in header
int32   parking_space_id     # 停车位id
int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//垂直泊车 PARKING_TYPE=2//水平泊车 PARKING_TYPE=3//倾斜泊车
bool   is_parking_enable     # PARKING_ENABLE=0//不可泊入 PARKING_ENABLE=1//可泊入
float64   confidence     # 停车位置信度
Point3D   center_point_of_parking     # 车辆坐标系的停车位中心点
float64   theta     # 车辆坐标系下停车位的朝向
float64   width     # 停车位宽
float64   length     # 停车位长
float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角
ImageKeyPoint[] parking_points_in_image # 图像坐标系下停车位关键点，顺时针方向

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/ImageKeyPoint
float64   x     # 车位图像关键点x坐标
float64   y     # 车位图像关键点y坐标
float64   confidence     # 置信度

================================================================================
MSG: ros_interface/CameraParkingStopper
Header   header     # timestamp is  included in header
BBox2D   bbox2d     # 限位器图像框

================================================================================
MSG: ros_interface/BBox2D
int16   xmin     # 图像框左上角的x坐标
int16   ymin     # 图像框左上角的y坐标
int16   xmax     # 图像框右下角的x坐标
int16   ymax     # 图像框右下角的y坐标

")



(provide :ros_interface/CameraParkingInfoList "d4caa94d6814e1d645bcbe41c8c0b57d")


