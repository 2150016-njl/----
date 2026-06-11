;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::CommCommand)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'CommCommand (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::COMMCOMMAND")
  (make-package "ROS_INTERFACE::COMMCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude CommCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::CommCommand
  :super ros::object
  :slots (_header _name _self_id _commands ))

(defmethod ros_interface::CommCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:self_id __self_id) 0)
    ((:commands __commands) (let (r) (dotimes (i 0) (push (instance ros_interface::Command :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _self_id (round __self_id))
   (setq _commands __commands)
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
  (:commands
   (&rest __commands)
   (if (keywordp (car __commands))
       (send* _commands __commands)
     (progn
       (if __commands (setq _commands (car __commands)))
       _commands)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int8 _self_id
    1
    ;; ros_interface/Command[] _commands
    (apply #'+ (send-all _commands :serialization-length)) 4
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
     ;; ros_interface/Command[] _commands
     (write-long (length _commands) s)
     (dolist (elem _commands)
       (send elem :serialize s)
       )
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
   ;; ros_interface/Command[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (let (r) (dotimes (i n) (push (instance ros_interface::Command :init) r)) r))
     (dolist (elem- _commands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::CommCommand :md5sum-) "5dde9e6ab676652bc277f2b5bb9c1efa")
(setf (get ros_interface::CommCommand :datatype-) "ros_interface/CommCommand")
(setf (get ros_interface::CommCommand :definition-)
      "Header   header     #  
string   name     # 发送指令的节点名称
int8   self_id     # 发送节点的ID号，参考apps描述
Command[] commands # 需要发送的指令，如果需要发送给多个节点，需要使用多个command

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
MSG: ros_interface/Command
string   target_module     # 目标节点名称
int8   target_id     # 目标节点ID
int32   target_switch     # 0:保持target_module的状态  1:打开target_module 2:关闭target_module

")



(provide :ros_interface/CommCommand "5dde9e6ab676652bc277f2b5bb9c1efa")


