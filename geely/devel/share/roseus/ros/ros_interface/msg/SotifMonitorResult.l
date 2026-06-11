;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::SotifMonitorResult)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'SotifMonitorResult (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::SOTIFMONITORRESULT")
  (make-package "ROS_INTERFACE::SOTIFMONITORRESULT"))

(in-package "ROS")
;;//! \htmlinclude SotifMonitorResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::SotifMonitorResult
  :super ros::object
  :slots (_header _region_value _grid_map ))

(defmethod ros_interface::SotifMonitorResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:region_value __region_value) (let (r) (dotimes (i 0) (push (instance ros_interface::Region :init) r)) r))
    ((:grid_map __grid_map) (let (r) (dotimes (i 0) (push (instance ros_interface::Grid :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _region_value __region_value)
   (setq _grid_map __grid_map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:region_value
   (&rest __region_value)
   (if (keywordp (car __region_value))
       (send* _region_value __region_value)
     (progn
       (if __region_value (setq _region_value (car __region_value)))
       _region_value)))
  (:grid_map
   (&rest __grid_map)
   (if (keywordp (car __grid_map))
       (send* _grid_map __grid_map)
     (progn
       (if __grid_map (setq _grid_map (car __grid_map)))
       _grid_map)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/Region[] _region_value
    (apply #'+ (send-all _region_value :serialization-length)) 4
    ;; ros_interface/Grid[] _grid_map
    (apply #'+ (send-all _grid_map :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/Region[] _region_value
     (write-long (length _region_value) s)
     (dolist (elem _region_value)
       (send elem :serialize s)
       )
     ;; ros_interface/Grid[] _grid_map
     (write-long (length _grid_map) s)
     (dolist (elem _grid_map)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/Region[] _region_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _region_value (let (r) (dotimes (i n) (push (instance ros_interface::Region :init) r)) r))
     (dolist (elem- _region_value)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Grid[] _grid_map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grid_map (let (r) (dotimes (i n) (push (instance ros_interface::Grid :init) r)) r))
     (dolist (elem- _grid_map)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::SotifMonitorResult :md5sum-) "cfcbcab73f775f6e6285221c4193ca0a")
(setf (get ros_interface::SotifMonitorResult :datatype-) "ros_interface/SotifMonitorResult")
(setf (get ros_interface::SotifMonitorResult :definition-)
      "Header   header     #  
Region[] region_value # 区域态势
Grid[] grid_map # 栅格地图

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
MSG: ros_interface/Region
int32   name_region     # 前后左右区域
float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)
int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)
Point3D[] region_polygon # 世界坐标系下的区域多边形

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/Grid
float64   x     # 世界坐标系下的x
float64   y     # 世界坐标系下的y
SLPoint   sl_point     # Frenet坐标系下的x
float64   yaw     #  
float64   potential     # 势场值
int32   region_id     # 区域编号

================================================================================
MSG: ros_interface/SLPoint
float64   s     # 纵向位移
float64   l     # 横向位移

")



(provide :ros_interface/SotifMonitorResult "cfcbcab73f775f6e6285221c4193ca0a")


