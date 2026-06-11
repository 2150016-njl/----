;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIObuCmdMsg)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIObuCmdMsg (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIOBUCMDMSG")
  (make-package "ROS_INTERFACE::HMIOBUCMDMSG"))

(in-package "ROS")
;;//! \htmlinclude HMIObuCmdMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::HMIObuCmdMsg
  :super ros::object
  :slots (_header _id _name _obu_cmd_list ))

(defmethod ros_interface::HMIObuCmdMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:name __name) "")
    ((:obu_cmd_list __obu_cmd_list) (let (r) (dotimes (i 0) (push (instance ros_interface::HMIObuCmd :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _obu_cmd_list __obu_cmd_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:obu_cmd_list
   (&rest __obu_cmd_list)
   (if (keywordp (car __obu_cmd_list))
       (send* _obu_cmd_list __obu_cmd_list)
     (progn
       (if __obu_cmd_list (setq _obu_cmd_list (car __obu_cmd_list)))
       _obu_cmd_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; ros_interface/HMIObuCmd[] _obu_cmd_list
    (apply #'+ (send-all _obu_cmd_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; ros_interface/HMIObuCmd[] _obu_cmd_list
     (write-long (length _obu_cmd_list) s)
     (dolist (elem _obu_cmd_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_interface/HMIObuCmd[] _obu_cmd_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obu_cmd_list (let (r) (dotimes (i n) (push (instance ros_interface::HMIObuCmd :init) r)) r))
     (dolist (elem- _obu_cmd_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::HMIObuCmdMsg :md5sum-) "04b2793959a8d3e1b67e71cb9253a84d")
(setf (get ros_interface::HMIObuCmdMsg :datatype-) "ros_interface/HMIObuCmdMsg")
(setf (get ros_interface::HMIObuCmdMsg :definition-)
      "Header   header     # timestamp is included in header
int32   id     # obu的id身份
string   name     # obu的名称
HMIObuCmd[] obu_cmd_list # 命令列表

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
MSG: ros_interface/HMIObuCmd
int32   code     # 指令编码：10001、自动驾驶使能开关；
int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）

")



(provide :ros_interface/HMIObuCmdMsg "04b2793959a8d3e1b67e71cb9253a84d")


