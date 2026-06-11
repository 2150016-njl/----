;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Ultrasonic)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Ultrasonic (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ULTRASONIC")
  (make-package "ROS_INTERFACE::ULTRASONIC"))

(in-package "ROS")
;;//! \htmlinclude Ultrasonic.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Ultrasonic
  :super ros::object
  :slots (_header _ranges ))

(defmethod ros_interface::Ultrasonic
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ranges __ranges) (let (r) (dotimes (i 0) (push (instance ros_interface::UltrasonicObstacle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ranges __ranges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ranges
   (&rest __ranges)
   (if (keywordp (car __ranges))
       (send* _ranges __ranges)
     (progn
       (if __ranges (setq _ranges (car __ranges)))
       _ranges)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/UltrasonicObstacle[] _ranges
    (apply #'+ (send-all _ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/UltrasonicObstacle[] _ranges
     (write-long (length _ranges) s)
     (dolist (elem _ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/UltrasonicObstacle[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (let (r) (dotimes (i n) (push (instance ros_interface::UltrasonicObstacle :init) r)) r))
     (dolist (elem- _ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Ultrasonic :md5sum-) "546a7e18a0d13f54ea35016a325c5b51")
(setf (get ros_interface::Ultrasonic :datatype-) "ros_interface/Ultrasonic")
(setf (get ros_interface::Ultrasonic :definition-)
      "Header   header     # 消息头
UltrasonicObstacle[] ranges # 超声波障碍物数组

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
MSG: ros_interface/UltrasonicObstacle
int32   id     # 障碍物id
float64   range     # 障碍物距离

")



(provide :ros_interface/Ultrasonic "546a7e18a0d13f54ea35016a325c5b51")


