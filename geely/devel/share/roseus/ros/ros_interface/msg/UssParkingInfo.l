;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::UssParkingInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'UssParkingInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::USSPARKINGINFO")
  (make-package "ROS_INTERFACE::USSPARKINGINFO"))

(in-package "ROS")
;;//! \htmlinclude UssParkingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::UssParkingInfo
  :super ros::object
  :slots (_header _uss_parking_type _parking_point0 _parking_point1 _parking_point2 _parking_point3 ))

(defmethod ros_interface::UssParkingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uss_parking_type __uss_parking_type) 0)
    ((:parking_point0 __parking_point0) (instance ros_interface::Point3D :init))
    ((:parking_point1 __parking_point1) (instance ros_interface::Point3D :init))
    ((:parking_point2 __parking_point2) (instance ros_interface::Point3D :init))
    ((:parking_point3 __parking_point3) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _uss_parking_type (round __uss_parking_type))
   (setq _parking_point0 __parking_point0)
   (setq _parking_point1 __parking_point1)
   (setq _parking_point2 __parking_point2)
   (setq _parking_point3 __parking_point3)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uss_parking_type
   (&optional __uss_parking_type)
   (if __uss_parking_type (setq _uss_parking_type __uss_parking_type)) _uss_parking_type)
  (:parking_point0
   (&rest __parking_point0)
   (if (keywordp (car __parking_point0))
       (send* _parking_point0 __parking_point0)
     (progn
       (if __parking_point0 (setq _parking_point0 (car __parking_point0)))
       _parking_point0)))
  (:parking_point1
   (&rest __parking_point1)
   (if (keywordp (car __parking_point1))
       (send* _parking_point1 __parking_point1)
     (progn
       (if __parking_point1 (setq _parking_point1 (car __parking_point1)))
       _parking_point1)))
  (:parking_point2
   (&rest __parking_point2)
   (if (keywordp (car __parking_point2))
       (send* _parking_point2 __parking_point2)
     (progn
       (if __parking_point2 (setq _parking_point2 (car __parking_point2)))
       _parking_point2)))
  (:parking_point3
   (&rest __parking_point3)
   (if (keywordp (car __parking_point3))
       (send* _parking_point3 __parking_point3)
     (progn
       (if __parking_point3 (setq _parking_point3 (car __parking_point3)))
       _parking_point3)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _uss_parking_type
    4
    ;; ros_interface/Point3D _parking_point0
    (send _parking_point0 :serialization-length)
    ;; ros_interface/Point3D _parking_point1
    (send _parking_point1 :serialization-length)
    ;; ros_interface/Point3D _parking_point2
    (send _parking_point2 :serialization-length)
    ;; ros_interface/Point3D _parking_point3
    (send _parking_point3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _uss_parking_type
       (write-long _uss_parking_type s)
     ;; ros_interface/Point3D _parking_point0
       (send _parking_point0 :serialize s)
     ;; ros_interface/Point3D _parking_point1
       (send _parking_point1 :serialize s)
     ;; ros_interface/Point3D _parking_point2
       (send _parking_point2 :serialize s)
     ;; ros_interface/Point3D _parking_point3
       (send _parking_point3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _uss_parking_type
     (setq _uss_parking_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D _parking_point0
     (send _parking_point0 :deserialize buf ptr-) (incf ptr- (send _parking_point0 :serialization-length))
   ;; ros_interface/Point3D _parking_point1
     (send _parking_point1 :deserialize buf ptr-) (incf ptr- (send _parking_point1 :serialization-length))
   ;; ros_interface/Point3D _parking_point2
     (send _parking_point2 :deserialize buf ptr-) (incf ptr- (send _parking_point2 :serialization-length))
   ;; ros_interface/Point3D _parking_point3
     (send _parking_point3 :deserialize buf ptr-) (incf ptr- (send _parking_point3 :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::UssParkingInfo :md5sum-) "14954f6574cb7c7467a32a7a7d462815")
(setf (get ros_interface::UssParkingInfo :datatype-) "ros_interface/UssParkingInfo")
(setf (get ros_interface::UssParkingInfo :definition-)
      "Header   header     # timestamp is included in header
int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直
Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置
Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置
Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置
Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置

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

")



(provide :ros_interface/UssParkingInfo "14954f6574cb7c7467a32a7a7d462815")


