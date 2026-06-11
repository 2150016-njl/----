; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Log.msg.html

(cl:defclass <Log> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type ros_interface-msg:Time
    :initform (cl:make-instance 'ros_interface-msg:Time))
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (file
    :reader file
    :initarg :file
    :type cl:string
    :initform "")
   (function
    :reader function
    :initarg :function
    :type cl:string
    :initform "")
   (line
    :reader line
    :initarg :line
    :type cl:integer
    :initform 0))
)

(cl:defclass Log (<Log>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Log>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Log)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Log> is deprecated: use ros_interface-msg:Log instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:stamp-val is deprecated.  Use ros_interface-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:level-val is deprecated.  Use ros_interface-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:msg-val is deprecated.  Use ros_interface-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:file-val is deprecated.  Use ros_interface-msg:file instead.")
  (file m))

(cl:ensure-generic-function 'function-val :lambda-list '(m))
(cl:defmethod function-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:function-val is deprecated.  Use ros_interface-msg:function instead.")
  (function m))

(cl:ensure-generic-function 'line-val :lambda-list '(m))
(cl:defmethod line-val ((m <Log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:line-val is deprecated.  Use ros_interface-msg:line instead.")
  (line m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Log>) ostream)
  "Serializes a message object of type '<Log>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stamp) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'line)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Log>) istream)
  "Deserializes a message object of type '<Log>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamp) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
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
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'line)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Log>)))
  "Returns string type for a message object of type '<Log>"
  "ros_interface/Log")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Log)))
  "Returns string type for a message object of type 'Log"
  "ros_interface/Log")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Log>)))
  "Returns md5sum for a message object of type '<Log>"
  "2071f6faae9945ec94584b4d4ed5edd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Log)))
  "Returns md5sum for a message object of type 'Log"
  "2071f6faae9945ec94584b4d4ed5edd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Log>)))
  "Returns full string definition for message of type '<Log>"
  (cl:format cl:nil "Time   stamp     # 时间戳~%uint8   level     # log等级 DEBUG   : 10  INFO       : 20   WARN     : 30   ERROR   : 40  FATAL     : 50 ~%string   name     # 节点名~%string   msg     # log消息~%string   file     # 发送log文件路径~%string   function     # 模块名~%uint32   line     # 消息行~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Log)))
  "Returns full string definition for message of type 'Log"
  (cl:format cl:nil "Time   stamp     # 时间戳~%uint8   level     # log等级 DEBUG   : 10  INFO       : 20   WARN     : 30   ERROR   : 40  FATAL     : 50 ~%string   name     # 节点名~%string   msg     # log消息~%string   file     # 发送log文件路径~%string   function     # 模块名~%uint32   line     # 消息行~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Log>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamp))
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'msg))
     4 (cl:length (cl:slot-value msg 'file))
     4 (cl:length (cl:slot-value msg 'function))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Log>))
  "Converts a ROS message object to a list"
  (cl:list 'Log
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':level (level msg))
    (cl:cons ':name (name msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':file (file msg))
    (cl:cons ':function (function msg))
    (cl:cons ':line (line msg))
))
