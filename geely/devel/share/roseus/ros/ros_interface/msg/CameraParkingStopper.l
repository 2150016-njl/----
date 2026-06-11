;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::CameraParkingStopper)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'CameraParkingStopper (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::CAMERAPARKINGSTOPPER")
  (make-package "ROS_INTERFACE::CAMERAPARKINGSTOPPER"))

(in-package "ROS")
;;//! \htmlinclude CameraParkingStopper.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::CameraParkingStopper
  :super ros::object
  :slots (_header _bbox2d ))

(defmethod ros_interface::CameraParkingStopper
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bbox2d __bbox2d) (instance ros_interface::BBox2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bbox2d __bbox2d)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bbox2d
   (&rest __bbox2d)
   (if (keywordp (car __bbox2d))
       (send* _bbox2d __bbox2d)
     (progn
       (if __bbox2d (setq _bbox2d (car __bbox2d)))
       _bbox2d)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/BBox2D _bbox2d
    (send _bbox2d :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/BBox2D _bbox2d
       (send _bbox2d :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/BBox2D _bbox2d
     (send _bbox2d :deserialize buf ptr-) (incf ptr- (send _bbox2d :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::CameraParkingStopper :md5sum-) "4cd67ca0205cbd6d75f4d6d20cee3457")
(setf (get ros_interface::CameraParkingStopper :datatype-) "ros_interface/CameraParkingStopper")
(setf (get ros_interface::CameraParkingStopper :definition-)
      "Header   header     # timestamp is  included in header
BBox2D   bbox2d     # 限位器图像框

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
MSG: ros_interface/BBox2D
int16   xmin     # 图像框左上角的x坐标
int16   ymin     # 图像框左上角的y坐标
int16   xmax     # 图像框右下角的x坐标
int16   ymax     # 图像框右下角的y坐标

")



(provide :ros_interface/CameraParkingStopper "4cd67ca0205cbd6d75f4d6d20cee3457")


