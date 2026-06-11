;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::StopInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'StopInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::STOPINFO")
  (make-package "ROS_INTERFACE::STOPINFO"))

(in-package "ROS")
;;//! \htmlinclude StopInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::StopInfo
  :super ros::object
  :slots (_header _stop_points ))

(defmethod ros_interface::StopInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stop_points __stop_points) (let (r) (dotimes (i 0) (push (instance ros_interface::StopPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _stop_points __stop_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stop_points
   (&rest __stop_points)
   (if (keywordp (car __stop_points))
       (send* _stop_points __stop_points)
     (progn
       (if __stop_points (setq _stop_points (car __stop_points)))
       _stop_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/StopPoint[] _stop_points
    (apply #'+ (send-all _stop_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/StopPoint[] _stop_points
     (write-long (length _stop_points) s)
     (dolist (elem _stop_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/StopPoint[] _stop_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_points (let (r) (dotimes (i n) (push (instance ros_interface::StopPoint :init) r)) r))
     (dolist (elem- _stop_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::StopInfo :md5sum-) "845948dd14933839d4b790bf2764e174")
(setf (get ros_interface::StopInfo :datatype-) "ros_interface/StopInfo")
(setf (get ros_interface::StopInfo :definition-)
      "Header   header     # timestamp is included in header
StopPoint[] stop_points # 停车点列表

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
MSG: ros_interface/StopPoint
Point3D   point     # 点xyz
float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
int8   type     # STOP_TYPE_TERMINAL=0 //目的地终点 STOP_TYPE_JUNCTION=1 //路口停止线
float64   stop_distance     # 距停止点多少米停车

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/StopInfo "845948dd14933839d4b790bf2764e174")


