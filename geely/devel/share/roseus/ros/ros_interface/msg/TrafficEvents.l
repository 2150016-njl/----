;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrafficEvents)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrafficEvents (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAFFICEVENTS")
  (make-package "ROS_INTERFACE::TRAFFICEVENTS"))

(in-package "ROS")
;;//! \htmlinclude TrafficEvents.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::TrafficEvents
  :super ros::object
  :slots (_header _route_fusion_info _junction_info _limit_speed_info ))

(defmethod ros_interface::TrafficEvents
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:route_fusion_info __route_fusion_info) (instance ros_interface::RouteFusionInfo :init))
    ((:junction_info __junction_info) (instance ros_interface::JunctionInfo :init))
    ((:limit_speed_info __limit_speed_info) (instance ros_interface::LimitSpeedInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _route_fusion_info __route_fusion_info)
   (setq _junction_info __junction_info)
   (setq _limit_speed_info __limit_speed_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:route_fusion_info
   (&rest __route_fusion_info)
   (if (keywordp (car __route_fusion_info))
       (send* _route_fusion_info __route_fusion_info)
     (progn
       (if __route_fusion_info (setq _route_fusion_info (car __route_fusion_info)))
       _route_fusion_info)))
  (:junction_info
   (&rest __junction_info)
   (if (keywordp (car __junction_info))
       (send* _junction_info __junction_info)
     (progn
       (if __junction_info (setq _junction_info (car __junction_info)))
       _junction_info)))
  (:limit_speed_info
   (&rest __limit_speed_info)
   (if (keywordp (car __limit_speed_info))
       (send* _limit_speed_info __limit_speed_info)
     (progn
       (if __limit_speed_info (setq _limit_speed_info (car __limit_speed_info)))
       _limit_speed_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/RouteFusionInfo _route_fusion_info
    (send _route_fusion_info :serialization-length)
    ;; ros_interface/JunctionInfo _junction_info
    (send _junction_info :serialization-length)
    ;; ros_interface/LimitSpeedInfo _limit_speed_info
    (send _limit_speed_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/RouteFusionInfo _route_fusion_info
       (send _route_fusion_info :serialize s)
     ;; ros_interface/JunctionInfo _junction_info
       (send _junction_info :serialize s)
     ;; ros_interface/LimitSpeedInfo _limit_speed_info
       (send _limit_speed_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/RouteFusionInfo _route_fusion_info
     (send _route_fusion_info :deserialize buf ptr-) (incf ptr- (send _route_fusion_info :serialization-length))
   ;; ros_interface/JunctionInfo _junction_info
     (send _junction_info :deserialize buf ptr-) (incf ptr- (send _junction_info :serialization-length))
   ;; ros_interface/LimitSpeedInfo _limit_speed_info
     (send _limit_speed_info :deserialize buf ptr-) (incf ptr- (send _limit_speed_info :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::TrafficEvents :md5sum-) "335c91b3f0dcb169fd1b0fb0532d62c6")
(setf (get ros_interface::TrafficEvents :datatype-) "ros_interface/TrafficEvents")
(setf (get ros_interface::TrafficEvents :definition-)
      "Header   header     # timestamp is included in header
RouteFusionInfo   route_fusion_info     # 地图融合信息
JunctionInfo   junction_info     # 路口信息
LimitSpeedInfo   limit_speed_info     # 限速消息

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
MSG: ros_interface/RouteFusionInfo
int32   fusion_flag     # 是否有效标志位
string   fusion_reason     # 融合原因

================================================================================
MSG: ros_interface/JunctionInfo
int32   id     #  
int32   light_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
int32   light_color     # 信号灯颜色，绿灯可通行，false红灯不能通行
float64   light_remain_time     # 信号灯剩余时间
float64   distance_to_stop     # 停车距离，停止线
int32   direction_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
int32   direction     # 路口通行方向，0：无效、1：左、2：前、3：右
float64   distance_to_junction     # 距路口距离
Point3D[] stop_line # 路口停止线

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/LimitSpeedInfo
int32   limitspeed_valid_flag     # 限速有效性标志位
float64   limit_speed     # 限速大小（m/s）
float64   limit_distance     # 开始减速距离(m)

")



(provide :ros_interface/TrafficEvents "335c91b3f0dcb169fd1b0fb0532d62c6")


