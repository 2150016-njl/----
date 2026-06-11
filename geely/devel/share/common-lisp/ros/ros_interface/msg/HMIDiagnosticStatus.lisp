; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMIDiagnosticStatus.msg.html

(cl:defclass <HMIDiagnosticStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (hardware_id
    :reader hardware_id
    :initarg :hardware_id
    :type cl:string
    :initform ""))
)

(cl:defclass HMIDiagnosticStatus (<HMIDiagnosticStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIDiagnosticStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIDiagnosticStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMIDiagnosticStatus> is deprecated: use ros_interface-msg:HMIDiagnosticStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HMIDiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:id-val is deprecated.  Use ros_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <HMIDiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:level-val is deprecated.  Use ros_interface-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HMIDiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <HMIDiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:message-val is deprecated.  Use ros_interface-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'hardware_id-val :lambda-list '(m))
(cl:defmethod hardware_id-val ((m <HMIDiagnosticStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hardware_id-val is deprecated.  Use ros_interface-msg:hardware_id instead.")
  (hardware_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIDiagnosticStatus>) ostream)
  "Serializes a message object of type '<HMIDiagnosticStatus>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIDiagnosticStatus>) istream)
  "Deserializes a message object of type '<HMIDiagnosticStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIDiagnosticStatus>)))
  "Returns string type for a message object of type '<HMIDiagnosticStatus>"
  "ros_interface/HMIDiagnosticStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIDiagnosticStatus)))
  "Returns string type for a message object of type 'HMIDiagnosticStatus"
  "ros_interface/HMIDiagnosticStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIDiagnosticStatus>)))
  "Returns md5sum for a message object of type '<HMIDiagnosticStatus>"
  "857f32f3eaa106a1f8ebfcfe253beedb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIDiagnosticStatus)))
  "Returns md5sum for a message object of type 'HMIDiagnosticStatus"
  "857f32f3eaa106a1f8ebfcfe253beedb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIDiagnosticStatus>)))
  "Returns full string definition for message of type '<HMIDiagnosticStatus>"
  (cl:format cl:nil "int32   id     #  ~%int32   level     # // 诊断状态~%string   name     # //测试/组件报告的描述~%string   message     # // 状态描述~%string   hardware_id     # // 硬件的唯一描述~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIDiagnosticStatus)))
  "Returns full string definition for message of type 'HMIDiagnosticStatus"
  (cl:format cl:nil "int32   id     #  ~%int32   level     # // 诊断状态~%string   name     # //测试/组件报告的描述~%string   message     # // 状态描述~%string   hardware_id     # // 硬件的唯一描述~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIDiagnosticStatus>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'hardware_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIDiagnosticStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIDiagnosticStatus
    (cl:cons ':id (id msg))
    (cl:cons ':level (level msg))
    (cl:cons ':name (name msg))
    (cl:cons ':message (message msg))
    (cl:cons ':hardware_id (hardware_id msg))
))
