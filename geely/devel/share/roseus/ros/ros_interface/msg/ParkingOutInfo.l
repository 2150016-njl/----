;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ParkingOutInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ParkingOutInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PARKINGOUTINFO")
  (make-package "ROS_INTERFACE::PARKINGOUTINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingOutInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ParkingOutInfo
  :super ros::object
  :slots (_header _parking_out_id _parking_direction_type _is_parking_out_enable _parking_out_point _theta ))

(defmethod ros_interface::ParkingOutInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_out_id __parking_out_id) 0)
    ((:parking_direction_type __parking_direction_type) 0)
    ((:is_parking_out_enable __is_parking_out_enable) nil)
    ((:parking_out_point __parking_out_point) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_out_id (round __parking_out_id))
   (setq _parking_direction_type (round __parking_direction_type))
   (setq _is_parking_out_enable __is_parking_out_enable)
   (setq _parking_out_point __parking_out_point)
   (setq _theta (float __theta))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parking_out_id
   (&optional __parking_out_id)
   (if __parking_out_id (setq _parking_out_id __parking_out_id)) _parking_out_id)
  (:parking_direction_type
   (&optional __parking_direction_type)
   (if __parking_direction_type (setq _parking_direction_type __parking_direction_type)) _parking_direction_type)
  (:is_parking_out_enable
   (&optional __is_parking_out_enable)
   (if __is_parking_out_enable (setq _is_parking_out_enable __is_parking_out_enable)) _is_parking_out_enable)
  (:parking_out_point
   (&rest __parking_out_point)
   (if (keywordp (car __parking_out_point))
       (send* _parking_out_point __parking_out_point)
     (progn
       (if __parking_out_point (setq _parking_out_point (car __parking_out_point)))
       _parking_out_point)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _parking_out_id
    4
    ;; int32 _parking_direction_type
    4
    ;; bool _is_parking_out_enable
    1
    ;; ros_interface/Point3D _parking_out_point
    (send _parking_out_point :serialization-length)
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _parking_out_id
       (write-long _parking_out_id s)
     ;; int32 _parking_direction_type
       (write-long _parking_direction_type s)
     ;; bool _is_parking_out_enable
       (if _is_parking_out_enable (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/Point3D _parking_out_point
       (send _parking_out_point :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _parking_out_id
     (setq _parking_out_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parking_direction_type
     (setq _parking_direction_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_parking_out_enable
     (setq _is_parking_out_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/Point3D _parking_out_point
     (send _parking_out_point :deserialize buf ptr-) (incf ptr- (send _parking_out_point :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::ParkingOutInfo :md5sum-) "e521a1b6fe67f908288575c2442dfdff")
(setf (get ros_interface::ParkingOutInfo :datatype-) "ros_interface/ParkingOutInfo")
(setf (get ros_interface::ParkingOutInfo :definition-)
      "Header   header     # timestamp is included in header
int32   parking_out_id     # 若车位有id，同停车位id
int32   parking_direction_type     #  
bool   is_parking_out_enable     # true可泊出，false不可泊出
Point3D   parking_out_point     # 世界坐标系下提车点位置
float64   theta     # 世界坐标系下的夹角（单位rad），提车点与正东方向夹角

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



(provide :ros_interface/ParkingOutInfo "e521a1b6fe67f908288575c2442dfdff")


