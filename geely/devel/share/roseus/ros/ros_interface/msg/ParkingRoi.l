;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ParkingRoi)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ParkingRoi (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PARKINGROI")
  (make-package "ROS_INTERFACE::PARKINGROI"))

(in-package "ROS")
;;//! \htmlinclude ParkingRoi.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ParkingRoi
  :super ros::object
  :slots (_header _obstacles_vec ))

(defmethod ros_interface::ParkingRoi
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles_vec __obstacles_vec) (let (r) (dotimes (i 0) (push (instance ros_interface::Point2dList :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles_vec __obstacles_vec)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles_vec
   (&rest __obstacles_vec)
   (if (keywordp (car __obstacles_vec))
       (send* _obstacles_vec __obstacles_vec)
     (progn
       (if __obstacles_vec (setq _obstacles_vec (car __obstacles_vec)))
       _obstacles_vec)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/Point2dList[] _obstacles_vec
    (apply #'+ (send-all _obstacles_vec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/Point2dList[] _obstacles_vec
     (write-long (length _obstacles_vec) s)
     (dolist (elem _obstacles_vec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/Point2dList[] _obstacles_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles_vec (let (r) (dotimes (i n) (push (instance ros_interface::Point2dList :init) r)) r))
     (dolist (elem- _obstacles_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::ParkingRoi :md5sum-) "ebe8c02013248ccb80975a9d10310742")
(setf (get ros_interface::ParkingRoi :datatype-) "ros_interface/ParkingRoi")
(setf (get ros_interface::ParkingRoi :definition-)
      "Header   header     # 消息头
Point2dList[] obstacles_vec # 泊车可行驶区域可视化

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
MSG: ros_interface/Point2dList
Point2D[] point2d_list #  

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

")



(provide :ros_interface/ParkingRoi "ebe8c02013248ccb80975a9d10310742")


