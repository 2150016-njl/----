;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::CommandRespond)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'CommandRespond (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::COMMANDRESPOND")
  (make-package "ROS_INTERFACE::COMMANDRESPOND"))

(in-package "ROS")
;;//! \htmlinclude CommandRespond.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::CommandRespond
  :super ros::object
  :slots (_header _name _self_id _respond_id _status _fail_code ))

(defmethod ros_interface::CommandRespond
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:self_id __self_id) 0)
    ((:respond_id __respond_id) 0)
    ((:status __status) 0)
    ((:fail_code __fail_code) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _self_id (round __self_id))
   (setq _respond_id (round __respond_id))
   (setq _status (round __status))
   (setq _fail_code (round __fail_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:self_id
   (&optional __self_id)
   (if __self_id (setq _self_id __self_id)) _self_id)
  (:respond_id
   (&optional __respond_id)
   (if __respond_id (setq _respond_id __respond_id)) _respond_id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:fail_code
   (&optional __fail_code)
   (if __fail_code (setq _fail_code __fail_code)) _fail_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int8 _self_id
    1
    ;; int8 _respond_id
    1
    ;; int8 _status
    1
    ;; int32 _fail_code
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int8 _self_id
       (write-byte _self_id s)
     ;; int8 _respond_id
       (write-byte _respond_id s)
     ;; int8 _status
       (write-byte _status s)
     ;; int32 _fail_code
       (write-long _fail_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _self_id
     (setq _self_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _self_id 127) (setq _self_id (- _self_id 256)))
   ;; int8 _respond_id
     (setq _respond_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _respond_id 127) (setq _respond_id (- _respond_id 256)))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int32 _fail_code
     (setq _fail_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::CommandRespond :md5sum-) "351adec90bf32bafe2da3e2e3f26375e")
(setf (get ros_interface::CommandRespond :datatype-) "ros_interface/CommandRespond")
(setf (get ros_interface::CommandRespond :definition-)
      "Header   header     #  
string   name     # 发送指令的节点名称
int8   self_id     # 发送节点的ID号，参考apps描述
int8   respond_id     #  
int8   status     # 0 无响应 1 响应失败 2 响应成功
int32   fail_code     # 失败原因

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



(provide :ros_interface/CommandRespond "351adec90bf32bafe2da3e2e3f26375e")


