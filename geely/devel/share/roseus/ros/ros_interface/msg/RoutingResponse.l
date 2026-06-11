;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RoutingResponse)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RoutingResponse (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ROUTINGRESPONSE")
  (make-package "ROS_INTERFACE::ROUTINGRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude RoutingResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::RoutingResponse
  :super ros::object
  :slots (_header _plan_status _replan_flag _route_reason _lane_list ))

(defmethod ros_interface::RoutingResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:plan_status __plan_status) 0)
    ((:replan_flag __replan_flag) 0)
    ((:route_reason __route_reason) 0)
    ((:lane_list __lane_list) (let (r) (dotimes (i 0) (push (instance ros_interface::LaneInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _plan_status (round __plan_status))
   (setq _replan_flag (round __replan_flag))
   (setq _route_reason (round __route_reason))
   (setq _lane_list __lane_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:plan_status
   (&optional __plan_status)
   (if __plan_status (setq _plan_status __plan_status)) _plan_status)
  (:replan_flag
   (&optional __replan_flag)
   (if __replan_flag (setq _replan_flag __replan_flag)) _replan_flag)
  (:route_reason
   (&optional __route_reason)
   (if __route_reason (setq _route_reason __route_reason)) _route_reason)
  (:lane_list
   (&rest __lane_list)
   (if (keywordp (car __lane_list))
       (send* _lane_list __lane_list)
     (progn
       (if __lane_list (setq _lane_list (car __lane_list)))
       _lane_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _plan_status
    4
    ;; int32 _replan_flag
    4
    ;; int32 _route_reason
    4
    ;; ros_interface/LaneInfo[] _lane_list
    (apply #'+ (send-all _lane_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _plan_status
       (write-long _plan_status s)
     ;; int32 _replan_flag
       (write-long _replan_flag s)
     ;; int32 _route_reason
       (write-long _route_reason s)
     ;; ros_interface/LaneInfo[] _lane_list
     (write-long (length _lane_list) s)
     (dolist (elem _lane_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _plan_status
     (setq _plan_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _replan_flag
     (setq _replan_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _route_reason
     (setq _route_reason (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/LaneInfo[] _lane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_list (let (r) (dotimes (i n) (push (instance ros_interface::LaneInfo :init) r)) r))
     (dolist (elem- _lane_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::RoutingResponse :md5sum-) "15cd52a06ebf7f4a70dca47308a3032d")
(setf (get ros_interface::RoutingResponse :datatype-) "ros_interface/RoutingResponse")
(setf (get ros_interface::RoutingResponse :definition-)
      "Header   header     # timestamp is included in header
int32   plan_status     # 规划结果状态
int32   replan_flag     # REPLAN_FLAG_NONE=0  //不需要重规划 REPLAN_FLAG_NAVI=1 //网络层重规划 REPLAN_FLAG_HUMAN=2 //人为重规划
int32   route_reason     # 规划原因 ROUTE_REASON_HMI = 0 //hmi上触发规划 ROUTE_REASON_PLATOON_HEADER = 1 //车队头车下发规划 ROUTE_REASON_PLATOON_OTHER = 2 //车队其他车辆下发规划
LaneInfo[] lane_list # 分段路径规划结果

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
MSG: ros_interface/LaneInfo
int8   priority     # 道路优先级
int8   global_id     # 道路全局id（从左至右，从0开始）
int8 predecessor_id # 上一车道id
int8 successor_id # 下一车道id
int8 left_neighbor_id # 左边相邻车道id
int8 right_neighbor_id # 右边相邻车道id
int8   type     # 类型（预留）
LanePoint[] lane_points # 道路参考线（z）

================================================================================
MSG: ros_interface/LanePoint
Point3D   point     # 点xyz
float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
float64   mileage     # 总体里程
float64   limit_speed     # 地图限速（单位m/s）
float64   left_road_width     # 左边车道宽
float64   right_road_width     # 右边车道宽
int32   left_line_type     # 左边车线线型
int32   right_line_type     # 右边车线线型

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/RoutingResponse "15cd52a06ebf7f4a70dca47308a3032d")


