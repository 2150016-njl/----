;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Odometry)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Odometry (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ODOMETRY")
  (make-package "ROS_INTERFACE::ODOMETRY"))

(in-package "ROS")
;;//! \htmlinclude Odometry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Odometry
  :super ros::object
  :slots (_header _position _orientation _covariance ))

(defmethod ros_interface::Odometry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance ros_interface::PointENU :init))
    ((:orientation __orientation) (instance ros_interface::Quaternion :init))
    ((:covariance __covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _covariance __covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/PointENU _position
    (send _position :serialization-length)
    ;; ros_interface/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; float64[] _covariance
    (* 8    (length _covariance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/PointENU _position
       (send _position :serialize s)
     ;; ros_interface/Quaternion _orientation
       (send _orientation :serialize s)
     ;; float64[] _covariance
     (write-long (length _covariance) s)
     (dotimes (i (length _covariance))
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/PointENU _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ros_interface/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64[] _covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get ros_interface::Odometry :md5sum-) "772a78ca9f8e31d00868db9627807309")
(setf (get ros_interface::Odometry :datatype-) "ros_interface/Odometry")
(setf (get ros_interface::Odometry :definition-)
      "Header   header     # 含有时间戳信息的结构体
PointENU   position     # 位置
Quaternion   orientation     # 角度
float64[] covariance # 方差

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
MSG: ros_interface/PointENU
float64   x     # East from the origin, in meters.
float64   y     # North from the origin, in meters.
float64   z     # Up from the WGS-84 ellipsoid, in meters.

================================================================================
MSG: ros_interface/Quaternion
float64   qx     # 四维空间x
float64   qy     # 四维空间y
float64   qz     # 四维空间z
float64   qw     # 四维空间w

")



(provide :ros_interface/Odometry "772a78ca9f8e31d00868db9627807309")


