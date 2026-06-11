;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIDiagnosticArray)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIDiagnosticArray (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIDIAGNOSTICARRAY")
  (make-package "ROS_INTERFACE::HMIDIAGNOSTICARRAY"))

(in-package "ROS")
;;//! \htmlinclude HMIDiagnosticArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::HMIDiagnosticArray
  :super ros::object
  :slots (_header _status ))

(defmethod ros_interface::HMIDiagnosticArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (let (r) (dotimes (i 0) (push (instance ros_interface::HMIDiagnosticStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/HMIDiagnosticStatus[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/HMIDiagnosticStatus[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/HMIDiagnosticStatus[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance ros_interface::HMIDiagnosticStatus :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::HMIDiagnosticArray :md5sum-) "669c7d98cfa9447f651f496a83074801")
(setf (get ros_interface::HMIDiagnosticArray :datatype-) "ros_interface/HMIDiagnosticArray")
(setf (get ros_interface::HMIDiagnosticArray :definition-)
      "Header   header     # timestamp is  included in header
HMIDiagnosticStatus[] status #  

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
MSG: ros_interface/HMIDiagnosticStatus
int32   id     #  
int32   level     # // 诊断状态
string   name     # //测试/组件报告的描述
string   message     # // 状态描述
string   hardware_id     # // 硬件的唯一描述

")



(provide :ros_interface/HMIDiagnosticArray "669c7d98cfa9447f651f496a83074801")


