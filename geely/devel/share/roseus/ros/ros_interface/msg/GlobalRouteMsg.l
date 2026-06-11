;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::GlobalRouteMsg)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'GlobalRouteMsg (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::GLOBALROUTEMSG")
  (make-package "ROS_INTERFACE::GLOBALROUTEMSG"))

(in-package "ROS")
;;//! \htmlinclude GlobalRouteMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::GlobalRouteMsg
  :super ros::object
  :slots (_header _route _current_lanelet _total_mileage _cur_mileage _cur_slice ))

(defmethod ros_interface::GlobalRouteMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:route __route) (let (r) (dotimes (i 0) (push (instance ros_interface::LaneletInfo :init) r)) r))
    ((:current_lanelet __current_lanelet) (instance ros_interface::LaneletInfo :init))
    ((:total_mileage __total_mileage) 0.0)
    ((:cur_mileage __cur_mileage) 0.0)
    ((:cur_slice __cur_slice) (let (r) (dotimes (i 0) (push (instance ros_interface::LaneletInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _route __route)
   (setq _current_lanelet __current_lanelet)
   (setq _total_mileage (float __total_mileage))
   (setq _cur_mileage (float __cur_mileage))
   (setq _cur_slice __cur_slice)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:route
   (&rest __route)
   (if (keywordp (car __route))
       (send* _route __route)
     (progn
       (if __route (setq _route (car __route)))
       _route)))
  (:current_lanelet
   (&rest __current_lanelet)
   (if (keywordp (car __current_lanelet))
       (send* _current_lanelet __current_lanelet)
     (progn
       (if __current_lanelet (setq _current_lanelet (car __current_lanelet)))
       _current_lanelet)))
  (:total_mileage
   (&optional __total_mileage)
   (if __total_mileage (setq _total_mileage __total_mileage)) _total_mileage)
  (:cur_mileage
   (&optional __cur_mileage)
   (if __cur_mileage (setq _cur_mileage __cur_mileage)) _cur_mileage)
  (:cur_slice
   (&rest __cur_slice)
   (if (keywordp (car __cur_slice))
       (send* _cur_slice __cur_slice)
     (progn
       (if __cur_slice (setq _cur_slice (car __cur_slice)))
       _cur_slice)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/LaneletInfo[] _route
    (apply #'+ (send-all _route :serialization-length)) 4
    ;; ros_interface/LaneletInfo _current_lanelet
    (send _current_lanelet :serialization-length)
    ;; float64 _total_mileage
    8
    ;; float64 _cur_mileage
    8
    ;; ros_interface/LaneletInfo[] _cur_slice
    (apply #'+ (send-all _cur_slice :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/LaneletInfo[] _route
     (write-long (length _route) s)
     (dolist (elem _route)
       (send elem :serialize s)
       )
     ;; ros_interface/LaneletInfo _current_lanelet
       (send _current_lanelet :serialize s)
     ;; float64 _total_mileage
       (sys::poke _total_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_mileage
       (sys::poke _cur_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/LaneletInfo[] _cur_slice
     (write-long (length _cur_slice) s)
     (dolist (elem _cur_slice)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/LaneletInfo[] _route
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _route (let (r) (dotimes (i n) (push (instance ros_interface::LaneletInfo :init) r)) r))
     (dolist (elem- _route)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/LaneletInfo _current_lanelet
     (send _current_lanelet :deserialize buf ptr-) (incf ptr- (send _current_lanelet :serialization-length))
   ;; float64 _total_mileage
     (setq _total_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_mileage
     (setq _cur_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/LaneletInfo[] _cur_slice
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cur_slice (let (r) (dotimes (i n) (push (instance ros_interface::LaneletInfo :init) r)) r))
     (dolist (elem- _cur_slice)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::GlobalRouteMsg :md5sum-) "9a9de06349ba12c560c2c024a6bcece7")
(setf (get ros_interface::GlobalRouteMsg :datatype-) "ros_interface/GlobalRouteMsg")
(setf (get ros_interface::GlobalRouteMsg :definition-)
      "Header   header     # 消息头
LaneletInfo[] route # 一次导航的全程道路集合，从起点到终点排序
LaneletInfo   current_lanelet     # 当前所在车道的信息
float64   total_mileage     # 总里程
float64   cur_mileage     # 当前里程
LaneletInfo[] cur_slice # 当前地图切片,用来绘制局部地图

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
MSG: ros_interface/LaneletInfo
int32   lanelet_id     # 道路id，与地图文件对应
float64   length     # 道路长度

")



(provide :ros_interface/GlobalRouteMsg "9a9de06349ba12c560c2c024a6bcece7")


