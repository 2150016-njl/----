;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::DrivableRegion)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'DrivableRegion (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::DRIVABLEREGION")
  (make-package "ROS_INTERFACE::DRIVABLEREGION"))

(in-package "ROS")
;;//! \htmlinclude DrivableRegion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::DrivableRegion
  :super ros::object
  :slots (_header _drivable_region ))

(defmethod ros_interface::DrivableRegion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drivable_region __drivable_region) (let (r) (dotimes (i 0) (push (instance ros_interface::Polygon3D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drivable_region __drivable_region)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drivable_region
   (&rest __drivable_region)
   (if (keywordp (car __drivable_region))
       (send* _drivable_region __drivable_region)
     (progn
       (if __drivable_region (setq _drivable_region (car __drivable_region)))
       _drivable_region)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/Polygon3D[] _drivable_region
    (apply #'+ (send-all _drivable_region :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/Polygon3D[] _drivable_region
     (write-long (length _drivable_region) s)
     (dolist (elem _drivable_region)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/Polygon3D[] _drivable_region
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drivable_region (let (r) (dotimes (i n) (push (instance ros_interface::Polygon3D :init) r)) r))
     (dolist (elem- _drivable_region)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::DrivableRegion :md5sum-) "c14f4161a36f4f3dbefbe28192146c82")
(setf (get ros_interface::DrivableRegion :datatype-) "ros_interface/DrivableRegion")
(setf (get ros_interface::DrivableRegion :definition-)
      "Header   header     # timestamp is included in header
Polygon3D[] drivable_region # 可行驶区域

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
MSG: ros_interface/Polygon3D
int32   coordinate_system     # 坐标系
Point3D[] points # 三维点集

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/DrivableRegion "c14f4161a36f4f3dbefbe28192146c82")


