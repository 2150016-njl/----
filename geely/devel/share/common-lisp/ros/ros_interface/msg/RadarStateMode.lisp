; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RadarStateMode.msg.html

(cl:defclass <RadarStateMode> (roslisp-msg-protocol:ros-message)
  ((can0_work_mode
    :reader can0_work_mode
    :initarg :can0_work_mode
    :type cl:fixnum
    :initform 0)
   (can1_work_mode
    :reader can1_work_mode
    :initarg :can1_work_mode
    :type cl:fixnum
    :initform 0)
   (dual_can_mode
    :reader dual_can_mode
    :initarg :dual_can_mode
    :type cl:fixnum
    :initform 0)
   (timming_mode
    :reader timming_mode
    :initarg :timming_mode
    :type cl:fixnum
    :initform 0)
   (power_mode
    :reader power_mode
    :initarg :power_mode
    :type cl:fixnum
    :initform 0)
   (performance_mode
    :reader performance_mode
    :initarg :performance_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarStateMode (<RadarStateMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarStateMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarStateMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RadarStateMode> is deprecated: use ros_interface-msg:RadarStateMode instead.")))

(cl:ensure-generic-function 'can0_work_mode-val :lambda-list '(m))
(cl:defmethod can0_work_mode-val ((m <RadarStateMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:can0_work_mode-val is deprecated.  Use ros_interface-msg:can0_work_mode instead.")
  (can0_work_mode m))

(cl:ensure-generic-function 'can1_work_mode-val :lambda-list '(m))
(cl:defmethod can1_work_mode-val ((m <RadarStateMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:can1_work_mode-val is deprecated.  Use ros_interface-msg:can1_work_mode instead.")
  (can1_work_mode m))

(cl:ensure-generic-function 'dual_can_mode-val :lambda-list '(m))
(cl:defmethod dual_can_mode-val ((m <RadarStateMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:dual_can_mode-val is deprecated.  Use ros_interface-msg:dual_can_mode instead.")
  (dual_can_mode m))

(cl:ensure-generic-function 'timming_mode-val :lambda-list '(m))
(cl:defmethod timming_mode-val ((m <RadarStateMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:timming_mode-val is deprecated.  Use ros_interface-msg:timming_mode instead.")
  (timming_mode m))

(cl:ensure-generic-function 'power_mode-val :lambda-list '(m))
(cl:defmethod power_mode-val ((m <RadarStateMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:power_mode-val is deprecated.  Use ros_interface-msg:power_mode instead.")
  (power_mode m))

(cl:ensure-generic-function 'performance_mode-val :lambda-list '(m))
(cl:defmethod performance_mode-val ((m <RadarStateMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:performance_mode-val is deprecated.  Use ros_interface-msg:performance_mode instead.")
  (performance_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarStateMode>) ostream)
  "Serializes a message object of type '<RadarStateMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can0_work_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can1_work_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dual_can_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timming_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'performance_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarStateMode>) istream)
  "Deserializes a message object of type '<RadarStateMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can0_work_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can1_work_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dual_can_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timming_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'performance_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarStateMode>)))
  "Returns string type for a message object of type '<RadarStateMode>"
  "ros_interface/RadarStateMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarStateMode)))
  "Returns string type for a message object of type 'RadarStateMode"
  "ros_interface/RadarStateMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarStateMode>)))
  "Returns md5sum for a message object of type '<RadarStateMode>"
  "d3643a2a561b16d4937dd76d21d14be0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarStateMode)))
  "Returns md5sum for a message object of type 'RadarStateMode"
  "d3643a2a561b16d4937dd76d21d14be0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarStateMode>)))
  "Returns full string definition for message of type '<RadarStateMode>"
  (cl:format cl:nil "uint8   can0_work_mode     # can0工作模式~%uint8   can1_work_mode     # can1工作模式~%uint8   dual_can_mode     # 双总线工作模式~%uint8   timming_mode     # 计时模式~%uint8   power_mode     # 电源模式~%uint8   performance_mode     # 效能模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarStateMode)))
  "Returns full string definition for message of type 'RadarStateMode"
  (cl:format cl:nil "uint8   can0_work_mode     # can0工作模式~%uint8   can1_work_mode     # can1工作模式~%uint8   dual_can_mode     # 双总线工作模式~%uint8   timming_mode     # 计时模式~%uint8   power_mode     # 电源模式~%uint8   performance_mode     # 效能模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarStateMode>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarStateMode>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarStateMode
    (cl:cons ':can0_work_mode (can0_work_mode msg))
    (cl:cons ':can1_work_mode (can1_work_mode msg))
    (cl:cons ':dual_can_mode (dual_can_mode msg))
    (cl:cons ':timming_mode (timming_mode msg))
    (cl:cons ':power_mode (power_mode msg))
    (cl:cons ':performance_mode (performance_mode msg))
))
