;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::WLConstraintInfoList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'WLConstraintInfoList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::WLCONSTRAINTINFOLIST")
  (make-package "ROS_INTERFACE::WLCONSTRAINTINFOLIST"))

(in-package "ROS")
;;//! \htmlinclude WLConstraintInfoList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::WLConstraintInfoList
  :super ros::object
  :slots (_header _wl_constraint_info _error_code _is_valid ))

(defmethod ros_interface::WLConstraintInfoList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wl_constraint_info __wl_constraint_info) (let (r) (dotimes (i 0) (push (instance ros_interface::WLConstraintInfo :init) r)) r))
    ((:error_code __error_code) 0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wl_constraint_info __wl_constraint_info)
   (setq _error_code (round __error_code))
   (setq _is_valid __is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wl_constraint_info
   (&rest __wl_constraint_info)
   (if (keywordp (car __wl_constraint_info))
       (send* _wl_constraint_info __wl_constraint_info)
     (progn
       (if __wl_constraint_info (setq _wl_constraint_info (car __wl_constraint_info)))
       _wl_constraint_info)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/WLConstraintInfo[] _wl_constraint_info
    (apply #'+ (send-all _wl_constraint_info :serialization-length)) 4
    ;; int32 _error_code
    4
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/WLConstraintInfo[] _wl_constraint_info
     (write-long (length _wl_constraint_info) s)
     (dolist (elem _wl_constraint_info)
       (send elem :serialize s)
       )
     ;; int32 _error_code
       (write-long _error_code s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/WLConstraintInfo[] _wl_constraint_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wl_constraint_info (let (r) (dotimes (i n) (push (instance ros_interface::WLConstraintInfo :init) r)) r))
     (dolist (elem- _wl_constraint_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::WLConstraintInfoList :md5sum-) "57cfab20f8d8e5a826bdb39e3e184a77")
(setf (get ros_interface::WLConstraintInfoList :datatype-) "ros_interface/WLConstraintInfoList")
(setf (get ros_interface::WLConstraintInfoList :definition-)
      "Header   header     # 消息头
WLConstraintInfo[] wl_constraint_info # 检测出的wheel_location所需约束信息队列
int32   error_code     # 错误码（default = OK）
bool   is_valid     # 障碍物数据是否合法

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
MSG: ros_interface/WLConstraintInfo
Header   header     # timestamp is included in header
int32   id     # id
Point3D   vehicle_point1     # 车辆坐标系下约束点1
Point3D   vehicle_point2     # 车辆坐标系下约束点2
Point3D   abs_point1     # 绝对坐标系下约束点1
Point3D   abs_point2     # 绝对坐标系下约束点2

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/WLConstraintInfoList "57cfab20f8d8e5a826bdb39e3e184a77")


