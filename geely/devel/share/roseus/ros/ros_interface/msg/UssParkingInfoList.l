;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::UssParkingInfoList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'UssParkingInfoList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::USSPARKINGINFOLIST")
  (make-package "ROS_INTERFACE::USSPARKINGINFOLIST"))

(in-package "ROS")
;;//! \htmlinclude UssParkingInfoList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::UssParkingInfoList
  :super ros::object
  :slots (_header _uss_parking_info _error_code _is_valid ))

(defmethod ros_interface::UssParkingInfoList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uss_parking_info __uss_parking_info) (let (r) (dotimes (i 0) (push (instance ros_interface::UssParkingInfo :init) r)) r))
    ((:error_code __error_code) 0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _uss_parking_info __uss_parking_info)
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
  (:uss_parking_info
   (&rest __uss_parking_info)
   (if (keywordp (car __uss_parking_info))
       (send* _uss_parking_info __uss_parking_info)
     (progn
       (if __uss_parking_info (setq _uss_parking_info (car __uss_parking_info)))
       _uss_parking_info)))
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
    ;; ros_interface/UssParkingInfo[] _uss_parking_info
    (apply #'+ (send-all _uss_parking_info :serialization-length)) 4
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
     ;; ros_interface/UssParkingInfo[] _uss_parking_info
     (write-long (length _uss_parking_info) s)
     (dolist (elem _uss_parking_info)
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
   ;; ros_interface/UssParkingInfo[] _uss_parking_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_parking_info (let (r) (dotimes (i n) (push (instance ros_interface::UssParkingInfo :init) r)) r))
     (dolist (elem- _uss_parking_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::UssParkingInfoList :md5sum-) "72d9bae584e181e4169ab23909311fd8")
(setf (get ros_interface::UssParkingInfoList :datatype-) "ros_interface/UssParkingInfoList")
(setf (get ros_interface::UssParkingInfoList :definition-)
      "Header   header     # 消息头
UssParkingInfo[] uss_parking_info # 超声波检测出的停车位数组
int32   error_code     # 错误码（default = OK）
bool   is_valid     # 超声波车位数据是否合法

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
MSG: ros_interface/UssParkingInfo
Header   header     # timestamp is included in header
int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直
Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置
Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置
Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置
Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/UssParkingInfoList "72d9bae584e181e4169ab23909311fd8")


