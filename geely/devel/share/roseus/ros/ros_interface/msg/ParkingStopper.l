;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ParkingStopper)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ParkingStopper (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PARKINGSTOPPER")
  (make-package "ROS_INTERFACE::PARKINGSTOPPER"))

(in-package "ROS")
;;//! \htmlinclude ParkingStopper.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ParkingStopper
  :super ros::object
  :slots (_header _center_point_vehicle _center_point_abs _stopper_points_vehicle _stopper_points_abs ))

(defmethod ros_interface::ParkingStopper
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:center_point_vehicle __center_point_vehicle) (instance ros_interface::Point3D :init))
    ((:center_point_abs __center_point_abs) (instance ros_interface::Point3D :init))
    ((:stopper_points_vehicle __stopper_points_vehicle) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:stopper_points_abs __stopper_points_abs) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _center_point_vehicle __center_point_vehicle)
   (setq _center_point_abs __center_point_abs)
   (setq _stopper_points_vehicle __stopper_points_vehicle)
   (setq _stopper_points_abs __stopper_points_abs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:center_point_vehicle
   (&rest __center_point_vehicle)
   (if (keywordp (car __center_point_vehicle))
       (send* _center_point_vehicle __center_point_vehicle)
     (progn
       (if __center_point_vehicle (setq _center_point_vehicle (car __center_point_vehicle)))
       _center_point_vehicle)))
  (:center_point_abs
   (&rest __center_point_abs)
   (if (keywordp (car __center_point_abs))
       (send* _center_point_abs __center_point_abs)
     (progn
       (if __center_point_abs (setq _center_point_abs (car __center_point_abs)))
       _center_point_abs)))
  (:stopper_points_vehicle
   (&rest __stopper_points_vehicle)
   (if (keywordp (car __stopper_points_vehicle))
       (send* _stopper_points_vehicle __stopper_points_vehicle)
     (progn
       (if __stopper_points_vehicle (setq _stopper_points_vehicle (car __stopper_points_vehicle)))
       _stopper_points_vehicle)))
  (:stopper_points_abs
   (&rest __stopper_points_abs)
   (if (keywordp (car __stopper_points_abs))
       (send* _stopper_points_abs __stopper_points_abs)
     (progn
       (if __stopper_points_abs (setq _stopper_points_abs (car __stopper_points_abs)))
       _stopper_points_abs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/Point3D _center_point_vehicle
    (send _center_point_vehicle :serialization-length)
    ;; ros_interface/Point3D _center_point_abs
    (send _center_point_abs :serialization-length)
    ;; ros_interface/Point3D[] _stopper_points_vehicle
    (apply #'+ (send-all _stopper_points_vehicle :serialization-length)) 4
    ;; ros_interface/Point3D[] _stopper_points_abs
    (apply #'+ (send-all _stopper_points_abs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/Point3D _center_point_vehicle
       (send _center_point_vehicle :serialize s)
     ;; ros_interface/Point3D _center_point_abs
       (send _center_point_abs :serialize s)
     ;; ros_interface/Point3D[] _stopper_points_vehicle
     (write-long (length _stopper_points_vehicle) s)
     (dolist (elem _stopper_points_vehicle)
       (send elem :serialize s)
       )
     ;; ros_interface/Point3D[] _stopper_points_abs
     (write-long (length _stopper_points_abs) s)
     (dolist (elem _stopper_points_abs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/Point3D _center_point_vehicle
     (send _center_point_vehicle :deserialize buf ptr-) (incf ptr- (send _center_point_vehicle :serialization-length))
   ;; ros_interface/Point3D _center_point_abs
     (send _center_point_abs :deserialize buf ptr-) (incf ptr- (send _center_point_abs :serialization-length))
   ;; ros_interface/Point3D[] _stopper_points_vehicle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stopper_points_vehicle (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _stopper_points_vehicle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point3D[] _stopper_points_abs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stopper_points_abs (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _stopper_points_abs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::ParkingStopper :md5sum-) "02850809483c04a8bdc47ff0256be651")
(setf (get ros_interface::ParkingStopper :datatype-) "ros_interface/ParkingStopper")
(setf (get ros_interface::ParkingStopper :definition-)
      "Header   header     # timestamp is  included in header
Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标
Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标
Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点
Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点

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



(provide :ros_interface/ParkingStopper "02850809483c04a8bdc47ff0256be651")


