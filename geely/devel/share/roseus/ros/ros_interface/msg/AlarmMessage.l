;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::AlarmMessage)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'AlarmMessage (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ALARMMESSAGE")
  (make-package "ROS_INTERFACE::ALARMMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude AlarmMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::AlarmMessage
  :super ros::object
  :slots (_header _alarm_proc _alarm_level _alarm_type _alarm_id _alarm_display _alarm_data ))

(defmethod ros_interface::AlarmMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:alarm_proc __alarm_proc) "")
    ((:alarm_level __alarm_level) 0)
    ((:alarm_type __alarm_type) 0)
    ((:alarm_id __alarm_id) 0)
    ((:alarm_display __alarm_display) 0)
    ((:alarm_data __alarm_data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _alarm_proc (string __alarm_proc))
   (setq _alarm_level (round __alarm_level))
   (setq _alarm_type (round __alarm_type))
   (setq _alarm_id (round __alarm_id))
   (setq _alarm_display (round __alarm_display))
   (setq _alarm_data (string __alarm_data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:alarm_proc
   (&optional __alarm_proc)
   (if __alarm_proc (setq _alarm_proc __alarm_proc)) _alarm_proc)
  (:alarm_level
   (&optional __alarm_level)
   (if __alarm_level (setq _alarm_level __alarm_level)) _alarm_level)
  (:alarm_type
   (&optional __alarm_type)
   (if __alarm_type (setq _alarm_type __alarm_type)) _alarm_type)
  (:alarm_id
   (&optional __alarm_id)
   (if __alarm_id (setq _alarm_id __alarm_id)) _alarm_id)
  (:alarm_display
   (&optional __alarm_display)
   (if __alarm_display (setq _alarm_display __alarm_display)) _alarm_display)
  (:alarm_data
   (&optional __alarm_data)
   (if __alarm_data (setq _alarm_data __alarm_data)) _alarm_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _alarm_proc
    4 (length _alarm_proc)
    ;; int32 _alarm_level
    4
    ;; int32 _alarm_type
    4
    ;; int32 _alarm_id
    4
    ;; int32 _alarm_display
    4
    ;; string _alarm_data
    4 (length _alarm_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _alarm_proc
       (write-long (length _alarm_proc) s) (princ _alarm_proc s)
     ;; int32 _alarm_level
       (write-long _alarm_level s)
     ;; int32 _alarm_type
       (write-long _alarm_type s)
     ;; int32 _alarm_id
       (write-long _alarm_id s)
     ;; int32 _alarm_display
       (write-long _alarm_display s)
     ;; string _alarm_data
       (write-long (length _alarm_data) s) (princ _alarm_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _alarm_proc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_proc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _alarm_level
     (setq _alarm_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alarm_type
     (setq _alarm_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alarm_id
     (setq _alarm_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alarm_display
     (setq _alarm_display (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _alarm_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alarm_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::AlarmMessage :md5sum-) "560775a3f63608849dea5a7c395bc22e")
(setf (get ros_interface::AlarmMessage :datatype-) "ros_interface/AlarmMessage")
(setf (get ros_interface::AlarmMessage :definition-)
      "Header   header     # 消息头
string   alarm_proc     # 产生告警的进程名
int32   alarm_level     # 告警等级
int32   alarm_type     # 告警类型
int32   alarm_id     # 告警序列号，用于恢复告警
int32   alarm_display     # 告警展示类型
string   alarm_data     # 告警正文

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

")



(provide :ros_interface/AlarmMessage "560775a3f63608849dea5a7c395bc22e")


