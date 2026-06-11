;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ModuleStatus)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ModuleStatus (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::MODULESTATUS")
  (make-package "ROS_INTERFACE::MODULESTATUS"))

(in-package "ROS")
;;//! \htmlinclude ModuleStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ModuleStatus
  :super ros::object
  :slots (_header _name _self_id _status _messages ))

(defmethod ros_interface::ModuleStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:self_id __self_id) 0)
    ((:status __status) 0)
    ((:messages __messages) (let (r) (dotimes (i 0) (push (instance ros_interface::Message :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _self_id (round __self_id))
   (setq _status (round __status))
   (setq _messages __messages)
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
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:messages
   (&rest __messages)
   (if (keywordp (car __messages))
       (send* _messages __messages)
     (progn
       (if __messages (setq _messages (car __messages)))
       _messages)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int8 _self_id
    1
    ;; int32 _status
    4
    ;; ros_interface/Message[] _messages
    (apply #'+ (send-all _messages :serialization-length)) 4
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
     ;; int32 _status
       (write-long _status s)
     ;; ros_interface/Message[] _messages
     (write-long (length _messages) s)
     (dolist (elem _messages)
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
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Message[] _messages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _messages (let (r) (dotimes (i n) (push (instance ros_interface::Message :init) r)) r))
     (dolist (elem- _messages)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::ModuleStatus :md5sum-) "bafbac172c87dca139533a49edfbc129")
(setf (get ros_interface::ModuleStatus :datatype-) "ros_interface/ModuleStatus")
(setf (get ros_interface::ModuleStatus :definition-)
      "Header   header     #  
string   name     # 发送指令的节点名称
int8   self_id     # 发送节点的ID号，参考apps描述
int32   status     #  枚举方式 sef_id+status,比如设置1为开，2为关，当前sef_id是21，则在关闭状态下反馈值是 212
Message[] messages # 需要输出的消息列表：eg:要求显示剩余里程数为100米，self_id 为21，里程数id为08，code值为2108，value值为10000，精度为cm

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
MSG: ros_interface/Message
int32   code     # 指定需要显示的值的code定义，需要与self_id绑定 作为前缀
int32   value     # 对应显示的值或表达的状态

")



(provide :ros_interface/ModuleStatus "bafbac172c87dca139533a49edfbc129")


