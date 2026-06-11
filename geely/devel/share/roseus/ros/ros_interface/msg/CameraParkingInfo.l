;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::CameraParkingInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'CameraParkingInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::CAMERAPARKINGINFO")
  (make-package "ROS_INTERFACE::CAMERAPARKINGINFO"))

(in-package "ROS")
;;//! \htmlinclude CameraParkingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::CameraParkingInfo
  :super ros::object
  :slots (_header _parking_space_id _parking_type _is_parking_enable _confidence _center_point_of_parking _theta _width _length _yaw_offset _parking_points_in_image ))

(defmethod ros_interface::CameraParkingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_space_id __parking_space_id) 0)
    ((:parking_type __parking_type) 0)
    ((:is_parking_enable __is_parking_enable) nil)
    ((:confidence __confidence) 0.0)
    ((:center_point_of_parking __center_point_of_parking) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:yaw_offset __yaw_offset) 0.0)
    ((:parking_points_in_image __parking_points_in_image) (let (r) (dotimes (i 0) (push (instance ros_interface::ImageKeyPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_space_id (round __parking_space_id))
   (setq _parking_type (round __parking_type))
   (setq _is_parking_enable __is_parking_enable)
   (setq _confidence (float __confidence))
   (setq _center_point_of_parking __center_point_of_parking)
   (setq _theta (float __theta))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _yaw_offset (float __yaw_offset))
   (setq _parking_points_in_image __parking_points_in_image)
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
  (:is_parking_enable
   (&optional __is_parking_enable)
   (if __is_parking_enable (setq _is_parking_enable __is_parking_enable)) _is_parking_enable)
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
  (:parking_points_in_image
   (&rest __parking_points_in_image)
   (if (keywordp (car __parking_points_in_image))
       (send* _parking_points_in_image __parking_points_in_image)
     (progn
       (if __parking_points_in_image (setq _parking_points_in_image (car __parking_points_in_image)))
       _parking_points_in_image)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _parking_space_id
    4
    ;; int32 _parking_type
    4
    ;; bool _is_parking_enable
    1
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
    ;; ros_interface/ImageKeyPoint[] _parking_points_in_image
    (apply #'+ (send-all _parking_points_in_image :serialization-length)) 4
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
     ;; bool _is_parking_enable
       (if _is_parking_enable (write-byte -1 s) (write-byte 0 s))
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
     ;; ros_interface/ImageKeyPoint[] _parking_points_in_image
     (write-long (length _parking_points_in_image) s)
     (dolist (elem _parking_points_in_image)
       (send elem :serialize s)
       )
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
   ;; bool _is_parking_enable
     (setq _is_parking_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; ros_interface/ImageKeyPoint[] _parking_points_in_image
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_points_in_image (let (r) (dotimes (i n) (push (instance ros_interface::ImageKeyPoint :init) r)) r))
     (dolist (elem- _parking_points_in_image)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::CameraParkingInfo :md5sum-) "857f775ab536a49a085ea8594ec9e570")
(setf (get ros_interface::CameraParkingInfo :datatype-) "ros_interface/CameraParkingInfo")
(setf (get ros_interface::CameraParkingInfo :definition-)
      "Header   header     # timestamp is  included in header
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
MSG: ros_interface/ImageKeyPoint
float64   x     # 车位图像关键点x坐标
float64   y     # 车位图像关键点y坐标
float64   confidence     # 置信度

")



(provide :ros_interface/CameraParkingInfo "857f775ab536a49a085ea8594ec9e570")


