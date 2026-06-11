;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIParkingInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIParkingInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIPARKINGINFO")
  (make-package "ROS_INTERFACE::HMIPARKINGINFO"))

(in-package "ROS")
;;//! \htmlinclude HMIParkingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::HMIParkingInfo
  :super ros::object
  :slots (_header _parking_space_id _parking_type _is_parking_enable _center_point_of_parking _theta _width _length _is_custom_parking _polygon _parking_source_type ))

(defmethod ros_interface::HMIParkingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_space_id __parking_space_id) 0)
    ((:parking_type __parking_type) 0)
    ((:is_parking_enable __is_parking_enable) nil)
    ((:center_point_of_parking __center_point_of_parking) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:is_custom_parking __is_custom_parking) nil)
    ((:polygon __polygon) (instance ros_interface::Polygon3D :init))
    ((:parking_source_type __parking_source_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_space_id (round __parking_space_id))
   (setq _parking_type (round __parking_type))
   (setq _is_parking_enable __is_parking_enable)
   (setq _center_point_of_parking __center_point_of_parking)
   (setq _theta (float __theta))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _is_custom_parking __is_custom_parking)
   (setq _polygon __polygon)
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
  (:is_parking_enable
   (&optional __is_parking_enable)
   (if __is_parking_enable (setq _is_parking_enable __is_parking_enable)) _is_parking_enable)
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
  (:is_custom_parking
   (&optional __is_custom_parking)
   (if __is_custom_parking (setq _is_custom_parking __is_custom_parking)) _is_custom_parking)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
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
    ;; bool _is_parking_enable
    1
    ;; ros_interface/Point3D _center_point_of_parking
    (send _center_point_of_parking :serialization-length)
    ;; float64 _theta
    8
    ;; float64 _width
    8
    ;; float64 _length
    8
    ;; bool _is_custom_parking
    1
    ;; ros_interface/Polygon3D _polygon
    (send _polygon :serialization-length)
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
     ;; bool _is_parking_enable
       (if _is_parking_enable (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/Point3D _center_point_of_parking
       (send _center_point_of_parking :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_custom_parking
       (if _is_custom_parking (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/Polygon3D _polygon
       (send _polygon :serialize s)
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
   ;; bool _is_parking_enable
     (setq _is_parking_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/Point3D _center_point_of_parking
     (send _center_point_of_parking :deserialize buf ptr-) (incf ptr- (send _center_point_of_parking :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_custom_parking
     (setq _is_custom_parking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/Polygon3D _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;; int32 _parking_source_type
     (setq _parking_source_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::HMIParkingInfo :md5sum-) "64c69f8d588c838a48403d35450d0ea7")
(setf (get ros_interface::HMIParkingInfo :datatype-) "ros_interface/HMIParkingInfo")
(setf (get ros_interface::HMIParkingInfo :definition-)
      "Header   header     # timestamp is  included in header
int32   parking_space_id     # // 停车位id
int32   parking_type     # // PARKING_TYPE=0 //无效泊车 PARKING_TYPE=1 //水平泊车 PARKING_TYPE=2 //垂直泊车 PARKING_TYPE=3 //倾斜泊车
bool   is_parking_enable     # // true可泊车，false不可泊车
Point3D   center_point_of_parking     # // 世界坐标系下停车位中心点
float64   theta     # // 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角
float64   width     # // 停车位宽（单位m）
float64   length     # // 停车位长单位m）
bool   is_custom_parking     # // 是否是自定义车位
Polygon3D   polygon     # 世界坐标系下的车位多边形
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

")



(provide :ros_interface/HMIParkingInfo "64c69f8d588c838a48403d35450d0ea7")


