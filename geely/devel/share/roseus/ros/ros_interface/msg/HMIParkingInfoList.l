;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIParkingInfoList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIParkingInfoList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIPARKINGINFOLIST")
  (make-package "ROS_INTERFACE::HMIPARKINGINFOLIST"))

(in-package "ROS")
;;//! \htmlinclude HMIParkingInfoList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::HMIParkingInfoList
  :super ros::object
  :slots (_header _parking_info _parking_out_enable _parking_out_direction _parking_out_id ))

(defmethod ros_interface::HMIParkingInfoList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_info __parking_info) (let (r) (dotimes (i 0) (push (instance ros_interface::HMIParkingInfo :init) r)) r))
    ((:parking_out_enable __parking_out_enable) nil)
    ((:parking_out_direction __parking_out_direction) 0)
    ((:parking_out_id __parking_out_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_info __parking_info)
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
    ;; ros_interface/HMIParkingInfo[] _parking_info
    (apply #'+ (send-all _parking_info :serialization-length)) 4
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
     ;; ros_interface/HMIParkingInfo[] _parking_info
     (write-long (length _parking_info) s)
     (dolist (elem _parking_info)
       (send elem :serialize s)
       )
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
   ;; ros_interface/HMIParkingInfo[] _parking_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_info (let (r) (dotimes (i n) (push (instance ros_interface::HMIParkingInfo :init) r)) r))
     (dolist (elem- _parking_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _parking_out_enable
     (setq _parking_out_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _parking_out_direction
     (setq _parking_out_direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parking_out_id
     (setq _parking_out_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::HMIParkingInfoList :md5sum-) "3ee1c963e4488266db67d36b454f5473")
(setf (get ros_interface::HMIParkingInfoList :datatype-) "ros_interface/HMIParkingInfoList")
(setf (get ros_interface::HMIParkingInfoList :definition-)
      "Header   header     # timestamp is  included in header
HMIParkingInfo[] parking_info #  
bool   parking_out_enable     #  
int32   parking_out_direction     #  
int32   parking_out_id     #  

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
MSG: ros_interface/HMIParkingInfo
Header   header     # timestamp is  included in header
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
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/Polygon3D
int32   coordinate_system     # 坐标系
Point3D[] points # 三维点集

")



(provide :ros_interface/HMIParkingInfoList "3ee1c963e4488266db67d36b454f5473")


