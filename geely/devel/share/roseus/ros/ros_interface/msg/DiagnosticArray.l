;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::DiagnosticArray)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'DiagnosticArray (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::DIAGNOSTICARRAY")
  (make-package "ROS_INTERFACE::DIAGNOSTICARRAY"))

(in-package "ROS")
;;//! \htmlinclude DiagnosticArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::DiagnosticArray
  :super ros::object
  :slots (_header _status ))

(defmethod ros_interface::DiagnosticArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (let (r) (dotimes (i 0) (push (instance ros_interface::DiagnosticStatus :init) r)) r))
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
    ;; ros_interface/DiagnosticStatus[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/DiagnosticStatus[] _status
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
   ;; ros_interface/DiagnosticStatus[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance ros_interface::DiagnosticStatus :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::DiagnosticArray :md5sum-) "243ceda84eaeef8b31086b7c7a595d9f")
(setf (get ros_interface::DiagnosticArray :datatype-) "ros_interface/DiagnosticArray")
(setf (get ros_interface::DiagnosticArray :definition-)
      "Header   header     # timestamp is  included in header
DiagnosticStatus[] status # 诊断状态

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
MSG: ros_interface/DiagnosticStatus
Header   header     # timestamp is  included in header
int32   id     # level*100000 + 序号（RECOVER 400000） WARN 车运动状态（静止）100001 左前门状态（关闭）100002 右前门状态（关闭）100003 左后门状态（关闭）100004 右后门状态（关闭）100005 安全带状态（关闭）100006 后视镜状态（打开）100007 充电枪状态 100008 油门状态 （正常）100009 智驾系统（正常）100010 动力系统（正常）100011 左前轮胎压（正常）100012 右前轮胎压（正常）100013 左后轮胎压（正常）100014 右后轮胎压（正常）100015 转向系统（正常）100016 制动系统（正常）100017 档位系统（正常）100018 EPB系统（正常）100019 气囊状态（正常）100020 油箱盖状态（正常）100021 后备箱状态（正常）100022 底盘信息（正常）100023 定位信息（正常）100024 方向盘人工接管 100025 电量表（正常）100026 暂停超时 100027 暂停次数过多 100028 泊车超时 100029 人为刹车 100030 人为挂P挡 100031 障碍物碰撞 100032 EPB状态(释放) 100033 ERROR 规划失败 200000
int32   level     # 诊断状态
string   name     # 测试/组件报告的描述
string   message     # 状态描述
string   hardware_id     # 硬件的唯一描述
KeyValues[] values # 与状态关联的key-value组

================================================================================
MSG: ros_interface/KeyValues
string   key     #  
string   value     #  

")



(provide :ros_interface/DiagnosticArray "243ceda84eaeef8b31086b7c7a595d9f")


