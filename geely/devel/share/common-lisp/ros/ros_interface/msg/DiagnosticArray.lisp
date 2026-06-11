; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude DiagnosticArray.msg.html

(cl:defclass <DiagnosticArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type (cl:vector ros_interface-msg:DiagnosticStatus)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:DiagnosticStatus :initial-element (cl:make-instance 'ros_interface-msg:DiagnosticStatus))))
)

(cl:defclass DiagnosticArray (<DiagnosticArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiagnosticArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiagnosticArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<DiagnosticArray> is deprecated: use ros_interface-msg:DiagnosticArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DiagnosticArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DiagnosticArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:status-val is deprecated.  Use ros_interface-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiagnosticArray>) ostream)
  "Serializes a message object of type '<DiagnosticArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiagnosticArray>) istream)
  "Deserializes a message object of type '<DiagnosticArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:DiagnosticStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiagnosticArray>)))
  "Returns string type for a message object of type '<DiagnosticArray>"
  "ros_interface/DiagnosticArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiagnosticArray)))
  "Returns string type for a message object of type 'DiagnosticArray"
  "ros_interface/DiagnosticArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiagnosticArray>)))
  "Returns md5sum for a message object of type '<DiagnosticArray>"
  "243ceda84eaeef8b31086b7c7a595d9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiagnosticArray)))
  "Returns md5sum for a message object of type 'DiagnosticArray"
  "243ceda84eaeef8b31086b7c7a595d9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiagnosticArray>)))
  "Returns full string definition for message of type '<DiagnosticArray>"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%DiagnosticStatus[] status # 诊断状态~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/DiagnosticStatus~%Header   header     # timestamp is  included in header~%int32   id     # level*100000 + 序号（RECOVER 400000） WARN 车运动状态（静止）100001 左前门状态（关闭）100002 右前门状态（关闭）100003 左后门状态（关闭）100004 右后门状态（关闭）100005 安全带状态（关闭）100006 后视镜状态（打开）100007 充电枪状态 100008 油门状态 （正常）100009 智驾系统（正常）100010 动力系统（正常）100011 左前轮胎压（正常）100012 右前轮胎压（正常）100013 左后轮胎压（正常）100014 右后轮胎压（正常）100015 转向系统（正常）100016 制动系统（正常）100017 档位系统（正常）100018 EPB系统（正常）100019 气囊状态（正常）100020 油箱盖状态（正常）100021 后备箱状态（正常）100022 底盘信息（正常）100023 定位信息（正常）100024 方向盘人工接管 100025 电量表（正常）100026 暂停超时 100027 暂停次数过多 100028 泊车超时 100029 人为刹车 100030 人为挂P挡 100031 障碍物碰撞 100032 EPB状态(释放) 100033 ERROR 规划失败 200000~%int32   level     # 诊断状态~%string   name     # 测试/组件报告的描述~%string   message     # 状态描述~%string   hardware_id     # 硬件的唯一描述~%KeyValues[] values # 与状态关联的key-value组~%~%================================================================================~%MSG: ros_interface/KeyValues~%string   key     #  ~%string   value     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiagnosticArray)))
  "Returns full string definition for message of type 'DiagnosticArray"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%DiagnosticStatus[] status # 诊断状态~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/DiagnosticStatus~%Header   header     # timestamp is  included in header~%int32   id     # level*100000 + 序号（RECOVER 400000） WARN 车运动状态（静止）100001 左前门状态（关闭）100002 右前门状态（关闭）100003 左后门状态（关闭）100004 右后门状态（关闭）100005 安全带状态（关闭）100006 后视镜状态（打开）100007 充电枪状态 100008 油门状态 （正常）100009 智驾系统（正常）100010 动力系统（正常）100011 左前轮胎压（正常）100012 右前轮胎压（正常）100013 左后轮胎压（正常）100014 右后轮胎压（正常）100015 转向系统（正常）100016 制动系统（正常）100017 档位系统（正常）100018 EPB系统（正常）100019 气囊状态（正常）100020 油箱盖状态（正常）100021 后备箱状态（正常）100022 底盘信息（正常）100023 定位信息（正常）100024 方向盘人工接管 100025 电量表（正常）100026 暂停超时 100027 暂停次数过多 100028 泊车超时 100029 人为刹车 100030 人为挂P挡 100031 障碍物碰撞 100032 EPB状态(释放) 100033 ERROR 规划失败 200000~%int32   level     # 诊断状态~%string   name     # 测试/组件报告的描述~%string   message     # 状态描述~%string   hardware_id     # 硬件的唯一描述~%KeyValues[] values # 与状态关联的key-value组~%~%================================================================================~%MSG: ros_interface/KeyValues~%string   key     #  ~%string   value     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiagnosticArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiagnosticArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DiagnosticArray
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
