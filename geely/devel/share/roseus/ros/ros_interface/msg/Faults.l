;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Faults)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Faults (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::FAULTS")
  (make-package "ROS_INTERFACE::FAULTS"))

(in-package "ROS")
;;//! \htmlinclude Faults.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Faults
  :super ros::object
  :slots (_header _version _app_id _is_active _faults ))

(defmethod ros_interface::Faults
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:version __version) 0)
    ((:app_id __app_id) 0)
    ((:is_active __is_active) nil)
    ((:faults __faults) (let (r) (dotimes (i 0) (push (instance ros_interface::Fault :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _version (round __version))
   (setq _app_id (round __app_id))
   (setq _is_active __is_active)
   (setq _faults __faults)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:app_id
   (&optional __app_id)
   (if __app_id (setq _app_id __app_id)) _app_id)
  (:is_active
   (&optional __is_active)
   (if __is_active (setq _is_active __is_active)) _is_active)
  (:faults
   (&rest __faults)
   (if (keywordp (car __faults))
       (send* _faults __faults)
     (progn
       (if __faults (setq _faults (car __faults)))
       _faults)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _version
    4
    ;; int32 _app_id
    4
    ;; bool _is_active
    1
    ;; ros_interface/Fault[] _faults
    (apply #'+ (send-all _faults :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _version
       (write-long _version s)
     ;; int32 _app_id
       (write-long _app_id s)
     ;; bool _is_active
       (if _is_active (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/Fault[] _faults
     (write-long (length _faults) s)
     (dolist (elem _faults)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _version
     (setq _version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _app_id
     (setq _app_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_active
     (setq _is_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/Fault[] _faults
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faults (let (r) (dotimes (i n) (push (instance ros_interface::Fault :init) r)) r))
     (dolist (elem- _faults)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Faults :md5sum-) "b11ea54ef0a0c41706887becbb1308cb")
(setf (get ros_interface::Faults :datatype-) "ros_interface/Faults")
(setf (get ros_interface::Faults :definition-)
      "Header   header     # 消息头
int32   version     # 版本号
int32   app_id     # 应用app所分配的id
bool   is_active     # 应用是否激活，激活为true，未激活为false
Fault[] faults # 故障集

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
MSG: ros_interface/Fault
Time   timestamp     # 时间戳
uint64   code     # 故障码
string   reason     # 原因

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/Faults "b11ea54ef0a0c41706887becbb1308cb")


