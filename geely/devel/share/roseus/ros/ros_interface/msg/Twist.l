;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Twist)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Twist (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TWIST")
  (make-package "ROS_INTERFACE::TWIST"))

(in-package "ROS")
;;//! \htmlinclude Twist.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Twist
  :super ros::object
  :slots (_header _linear _angular ))

(defmethod ros_interface::Twist
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:linear __linear) (instance ros_interface::Point3D :init))
    ((:angular __angular) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/Point3D _linear
    (send _linear :serialization-length)
    ;; ros_interface/Point3D _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/Point3D _linear
       (send _linear :serialize s)
     ;; ros_interface/Point3D _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/Point3D _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; ros_interface/Point3D _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::Twist :md5sum-) "09119d3b0067bd05b1a6696c168cebb3")
(setf (get ros_interface::Twist :datatype-) "ros_interface/Twist")
(setf (get ros_interface::Twist :definition-)
      "Header   header     #  
Point3D   linear     # 线速度 m/s
Point3D   angular     # 角速度 deg/s

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



(provide :ros_interface/Twist "09119d3b0067bd05b1a6696c168cebb3")


