;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::DiagnosticStatus)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'DiagnosticStatus (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::DIAGNOSTICSTATUS")
  (make-package "ROS_INTERFACE::DIAGNOSTICSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DiagnosticStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::DiagnosticStatus
  :super ros::object
  :slots (_header _id _level _name _message _hardware_id _values ))

(defmethod ros_interface::DiagnosticStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:level __level) 0)
    ((:name __name) "")
    ((:message __message) "")
    ((:hardware_id __hardware_id) "")
    ((:values __values) (let (r) (dotimes (i 0) (push (instance ros_interface::KeyValues :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _level (round __level))
   (setq _name (string __name))
   (setq _message (string __message))
   (setq _hardware_id (string __hardware_id))
   (setq _values __values)
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
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:hardware_id
   (&optional __hardware_id)
   (if __hardware_id (setq _hardware_id __hardware_id)) _hardware_id)
  (:values
   (&rest __values)
   (if (keywordp (car __values))
       (send* _values __values)
     (progn
       (if __values (setq _values (car __values)))
       _values)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; int32 _level
    4
    ;; string _name
    4 (length _name)
    ;; string _message
    4 (length _message)
    ;; string _hardware_id
    4 (length _hardware_id)
    ;; ros_interface/KeyValues[] _values
    (apply #'+ (send-all _values :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _level
       (write-long _level s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _hardware_id
       (write-long (length _hardware_id) s) (princ _hardware_id s)
     ;; ros_interface/KeyValues[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
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
   ;; int32 _level
     (setq _level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_interface/KeyValues[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (let (r) (dotimes (i n) (push (instance ros_interface::KeyValues :init) r)) r))
     (dolist (elem- _values)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::DiagnosticStatus :md5sum-) "cd2dd61053c8951ae47922af0c08a853")
(setf (get ros_interface::DiagnosticStatus :datatype-) "ros_interface/DiagnosticStatus")
(setf (get ros_interface::DiagnosticStatus :definition-)
      "Header   header     # timestamp is  included in header
int32   id     # level*100000 + 序号（RECOVER 400000） WARN 车运动状态（静止）100001 左前门状态（关闭）100002 右前门状态（关闭）100003 左后门状态（关闭）100004 右后门状态（关闭）100005 安全带状态（关闭）100006 后视镜状态（打开）100007 充电枪状态 100008 油门状态 （正常）100009 智驾系统（正常）100010 动力系统（正常）100011 左前轮胎压（正常）100012 右前轮胎压（正常）100013 左后轮胎压（正常）100014 右后轮胎压（正常）100015 转向系统（正常）100016 制动系统（正常）100017 档位系统（正常）100018 EPB系统（正常）100019 气囊状态（正常）100020 油箱盖状态（正常）100021 后备箱状态（正常）100022 底盘信息（正常）100023 定位信息（正常）100024 方向盘人工接管 100025 电量表（正常）100026 暂停超时 100027 暂停次数过多 100028 泊车超时 100029 人为刹车 100030 人为挂P挡 100031 障碍物碰撞 100032 EPB状态(释放) 100033 ERROR 规划失败 200000
int32   level     # 诊断状态
string   name     # 测试/组件报告的描述
string   message     # 状态描述
string   hardware_id     # 硬件的唯一描述
KeyValues[] values # 与状态关联的key-value组

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
MSG: ros_interface/KeyValues
string   key     #  
string   value     #  

")



(provide :ros_interface/DiagnosticStatus "cd2dd61053c8951ae47922af0c08a853")


