;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RoadMarkList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RoadMarkList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ROADMARKLIST")
  (make-package "ROS_INTERFACE::ROADMARKLIST"))

(in-package "ROS")
;;//! \htmlinclude RoadMarkList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::RoadMarkList
  :super ros::object
  :slots (_header _roadmarks ))

(defmethod ros_interface::RoadMarkList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roadmarks __roadmarks) (let (r) (dotimes (i 0) (push (instance ros_interface::RoadMark :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _roadmarks __roadmarks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roadmarks
   (&rest __roadmarks)
   (if (keywordp (car __roadmarks))
       (send* _roadmarks __roadmarks)
     (progn
       (if __roadmarks (setq _roadmarks (car __roadmarks)))
       _roadmarks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/RoadMark[] _roadmarks
    (apply #'+ (send-all _roadmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/RoadMark[] _roadmarks
     (write-long (length _roadmarks) s)
     (dolist (elem _roadmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/RoadMark[] _roadmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roadmarks (let (r) (dotimes (i n) (push (instance ros_interface::RoadMark :init) r)) r))
     (dolist (elem- _roadmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::RoadMarkList :md5sum-) "167f3e013a1861ca3ba3feb2f5be99a4")
(setf (get ros_interface::RoadMarkList :datatype-) "ros_interface/RoadMarkList")
(setf (get ros_interface::RoadMarkList :definition-)
      "Header   header     # timestamp is included in header
RoadMark[] roadmarks # 交通标识列表

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
MSG: ros_interface/RoadMark
float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m
float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m
float64   x     # 质心坐标x
float64   y     # 质心坐标y
float64   z     # 质心坐标z
float64   confidence     # 置信度[0 - 1]
int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字

")



(provide :ros_interface/RoadMarkList "167f3e013a1861ca3ba3feb2f5be99a4")


