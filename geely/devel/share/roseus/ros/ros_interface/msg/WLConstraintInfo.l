;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::WLConstraintInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'WLConstraintInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::WLCONSTRAINTINFO")
  (make-package "ROS_INTERFACE::WLCONSTRAINTINFO"))

(in-package "ROS")
;;//! \htmlinclude WLConstraintInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::WLConstraintInfo
  :super ros::object
  :slots (_header _id _vehicle_point1 _vehicle_point2 _abs_point1 _abs_point2 ))

(defmethod ros_interface::WLConstraintInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:vehicle_point1 __vehicle_point1) (instance ros_interface::Point3D :init))
    ((:vehicle_point2 __vehicle_point2) (instance ros_interface::Point3D :init))
    ((:abs_point1 __abs_point1) (instance ros_interface::Point3D :init))
    ((:abs_point2 __abs_point2) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _vehicle_point1 __vehicle_point1)
   (setq _vehicle_point2 __vehicle_point2)
   (setq _abs_point1 __abs_point1)
   (setq _abs_point2 __abs_point2)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:vehicle_point1
   (&rest __vehicle_point1)
   (if (keywordp (car __vehicle_point1))
       (send* _vehicle_point1 __vehicle_point1)
     (progn
       (if __vehicle_point1 (setq _vehicle_point1 (car __vehicle_point1)))
       _vehicle_point1)))
  (:vehicle_point2
   (&rest __vehicle_point2)
   (if (keywordp (car __vehicle_point2))
       (send* _vehicle_point2 __vehicle_point2)
     (progn
       (if __vehicle_point2 (setq _vehicle_point2 (car __vehicle_point2)))
       _vehicle_point2)))
  (:abs_point1
   (&rest __abs_point1)
   (if (keywordp (car __abs_point1))
       (send* _abs_point1 __abs_point1)
     (progn
       (if __abs_point1 (setq _abs_point1 (car __abs_point1)))
       _abs_point1)))
  (:abs_point2
   (&rest __abs_point2)
   (if (keywordp (car __abs_point2))
       (send* _abs_point2 __abs_point2)
     (progn
       (if __abs_point2 (setq _abs_point2 (car __abs_point2)))
       _abs_point2)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; ros_interface/Point3D _vehicle_point1
    (send _vehicle_point1 :serialization-length)
    ;; ros_interface/Point3D _vehicle_point2
    (send _vehicle_point2 :serialization-length)
    ;; ros_interface/Point3D _abs_point1
    (send _abs_point1 :serialization-length)
    ;; ros_interface/Point3D _abs_point2
    (send _abs_point2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; ros_interface/Point3D _vehicle_point1
       (send _vehicle_point1 :serialize s)
     ;; ros_interface/Point3D _vehicle_point2
       (send _vehicle_point2 :serialize s)
     ;; ros_interface/Point3D _abs_point1
       (send _abs_point1 :serialize s)
     ;; ros_interface/Point3D _abs_point2
       (send _abs_point2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D _vehicle_point1
     (send _vehicle_point1 :deserialize buf ptr-) (incf ptr- (send _vehicle_point1 :serialization-length))
   ;; ros_interface/Point3D _vehicle_point2
     (send _vehicle_point2 :deserialize buf ptr-) (incf ptr- (send _vehicle_point2 :serialization-length))
   ;; ros_interface/Point3D _abs_point1
     (send _abs_point1 :deserialize buf ptr-) (incf ptr- (send _abs_point1 :serialization-length))
   ;; ros_interface/Point3D _abs_point2
     (send _abs_point2 :deserialize buf ptr-) (incf ptr- (send _abs_point2 :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::WLConstraintInfo :md5sum-) "6ded4b242dcffae8b411138eaa40115c")
(setf (get ros_interface::WLConstraintInfo :datatype-) "ros_interface/WLConstraintInfo")
(setf (get ros_interface::WLConstraintInfo :definition-)
      "Header   header     # timestamp is included in header
int32   id     # id
Point3D   vehicle_point1     # 车辆坐标系下约束点1
Point3D   vehicle_point2     # 车辆坐标系下约束点2
Point3D   abs_point1     # 绝对坐标系下约束点1
Point3D   abs_point2     # 绝对坐标系下约束点2

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



(provide :ros_interface/WLConstraintInfo "6ded4b242dcffae8b411138eaa40115c")


