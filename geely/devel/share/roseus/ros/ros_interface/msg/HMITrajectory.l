;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMITrajectory)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMITrajectory (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMITRAJECTORY")
  (make-package "ROS_INTERFACE::HMITRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude HMITrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::HMITrajectory
  :super ros::object
  :slots (_header _trajectory_points ))

(defmethod ros_interface::HMITrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_points __trajectory_points) (let (r) (dotimes (i 0) (push (instance ros_interface::HMITrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_points __trajectory_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/HMITrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/HMITrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/HMITrajectoryPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance ros_interface::HMITrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::HMITrajectory :md5sum-) "1d0c04a6d5136937220260a0ea83028b")
(setf (get ros_interface::HMITrajectory :datatype-) "ros_interface/HMITrajectory")
(setf (get ros_interface::HMITrajectory :definition-)
      "Header   header     # 消息头
HMITrajectoryPoint[] trajectory_points # 抽稀用来显示的轨迹点数组

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
MSG: ros_interface/HMITrajectoryPoint
Point3D   point     #  
float64   v     #  

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/HMITrajectory "1d0c04a6d5136937220260a0ea83028b")


