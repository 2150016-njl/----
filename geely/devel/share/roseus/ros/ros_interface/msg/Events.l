;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Events)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Events (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::EVENTS")
  (make-package "ROS_INTERFACE::EVENTS"))

(in-package "ROS")
;;//! \htmlinclude Events.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Events
  :super ros::object
  :slots (_header _version _events ))

(defmethod ros_interface::Events
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:version __version) 0)
    ((:events __events) (let (r) (dotimes (i 0) (push (instance ros_interface::Event :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _version (round __version))
   (setq _events __events)
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
  (:events
   (&rest __events)
   (if (keywordp (car __events))
       (send* _events __events)
     (progn
       (if __events (setq _events (car __events)))
       _events)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _version
    4
    ;; ros_interface/Event[] _events
    (apply #'+ (send-all _events :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _version
       (write-long _version s)
     ;; ros_interface/Event[] _events
     (write-long (length _events) s)
     (dolist (elem _events)
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
   ;; ros_interface/Event[] _events
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _events (let (r) (dotimes (i n) (push (instance ros_interface::Event :init) r)) r))
     (dolist (elem- _events)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Events :md5sum-) "73f541641194ab537b3c1e4b0b947301")
(setf (get ros_interface::Events :datatype-) "ros_interface/Events")
(setf (get ros_interface::Events :definition-)
      "Header   header     #  
int32   version     # 软件模块版本号
Event[] events # 时间集

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
MSG: ros_interface/Event
Time   timestamp     # 时间戳
uint64   code     # 0：invalid； 1：不可泊车；2：可以泊车；3：泊车完成； 4：不可泊出；5：可以泊出；6：泊出完成;   7 :  不可行车；8：可以行车；9：行车完成； 1X：退出自动驾驶（视退出场景可细分） 10：轨迹太短，请求退出自动驾驶; 20：拨杆换道驳回；21：执行向左拨杆换道;22：执行向右拨杆换道；23：拨杆换道完成 30：准备主动向左换道；31：执行主动向左换道；32：准备主动向右换道；33：执行主动向右换道；34：主动换道完成; 147: localmap的车道线效果不好，请求人工接管或者退出自动驾驶
string   reason     # 原因

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/Events "73f541641194ab537b3c1e4b0b947301")


