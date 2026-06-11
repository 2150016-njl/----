;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ParkingStateDisplay)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ParkingStateDisplay (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PARKINGSTATEDISPLAY")
  (make-package "ROS_INTERFACE::PARKINGSTATEDISPLAY"))

(in-package "ROS")
;;//! \htmlinclude ParkingStateDisplay.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ParkingStateDisplay
  :super ros::object
  :slots (_header _parking_type _moves_counter _remian_distance _display_info _distance_to_leader_obj _state ))

(defmethod ros_interface::ParkingStateDisplay
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parking_type __parking_type) 0)
    ((:moves_counter __moves_counter) 0)
    ((:remian_distance __remian_distance) 0.0)
    ((:display_info __display_info) 0)
    ((:distance_to_leader_obj __distance_to_leader_obj) 0.0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _parking_type (round __parking_type))
   (setq _moves_counter (round __moves_counter))
   (setq _remian_distance (float __remian_distance))
   (setq _display_info (round __display_info))
   (setq _distance_to_leader_obj (float __distance_to_leader_obj))
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parking_type
   (&optional __parking_type)
   (if __parking_type (setq _parking_type __parking_type)) _parking_type)
  (:moves_counter
   (&optional __moves_counter)
   (if __moves_counter (setq _moves_counter __moves_counter)) _moves_counter)
  (:remian_distance
   (&optional __remian_distance)
   (if __remian_distance (setq _remian_distance __remian_distance)) _remian_distance)
  (:display_info
   (&optional __display_info)
   (if __display_info (setq _display_info __display_info)) _display_info)
  (:distance_to_leader_obj
   (&optional __distance_to_leader_obj)
   (if __distance_to_leader_obj (setq _distance_to_leader_obj __distance_to_leader_obj)) _distance_to_leader_obj)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _parking_type
    4
    ;; int32 _moves_counter
    4
    ;; float64 _remian_distance
    8
    ;; int32 _display_info
    4
    ;; float64 _distance_to_leader_obj
    8
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _parking_type
       (write-long _parking_type s)
     ;; int32 _moves_counter
       (write-long _moves_counter s)
     ;; float64 _remian_distance
       (sys::poke _remian_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _display_info
       (write-long _display_info s)
     ;; float64 _distance_to_leader_obj
       (sys::poke _distance_to_leader_obj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _parking_type
     (setq _parking_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _moves_counter
     (setq _moves_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _remian_distance
     (setq _remian_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _display_info
     (setq _display_info (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance_to_leader_obj
     (setq _distance_to_leader_obj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ParkingStateDisplay :md5sum-) "877b72abf16a45360d8ea1120bf76726")
(setf (get ros_interface::ParkingStateDisplay :datatype-) "ros_interface/ParkingStateDisplay")
(setf (get ros_interface::ParkingStateDisplay :definition-)
      "Header   header     #  
int32   parking_type     # 0：无效 1：垂直泊车 2：水平泊车 3：斜方泊车
int32   moves_counter     # 揉库次数
float64   remian_distance     # 剩余距离
int32   display_info     # 详细信息
float64   distance_to_leader_obj     # 距离最近障碍物距离
int32   state     #  

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

")



(provide :ros_interface/ParkingStateDisplay "877b72abf16a45360d8ea1120bf76726")


