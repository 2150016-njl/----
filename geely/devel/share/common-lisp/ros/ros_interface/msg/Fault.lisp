; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Fault.msg.html

(cl:defclass <Fault> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type ros_interface-msg:Time
    :initform (cl:make-instance 'ros_interface-msg:Time))
   (code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0)
   (reason
    :reader reason
    :initarg :reason
    :type cl:string
    :initform ""))
)

(cl:defclass Fault (<Fault>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fault>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fault)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Fault> is deprecated: use ros_interface-msg:Fault instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Fault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:timestamp-val is deprecated.  Use ros_interface-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <Fault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:code-val is deprecated.  Use ros_interface-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <Fault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:reason-val is deprecated.  Use ros_interface-msg:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fault>) ostream)
  "Serializes a message object of type '<Fault>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fault>) istream)
  "Deserializes a message object of type '<Fault>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fault>)))
  "Returns string type for a message object of type '<Fault>"
  "ros_interface/Fault")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fault)))
  "Returns string type for a message object of type 'Fault"
  "ros_interface/Fault")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fault>)))
  "Returns md5sum for a message object of type '<Fault>"
  "e0cea8990aa7abb79c265ed7ac636c6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fault)))
  "Returns md5sum for a message object of type 'Fault"
  "e0cea8990aa7abb79c265ed7ac636c6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fault>)))
  "Returns full string definition for message of type '<Fault>"
  (cl:format cl:nil "Time   timestamp     # 时间戳~%uint64   code     # 故障码~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fault)))
  "Returns full string definition for message of type 'Fault"
  (cl:format cl:nil "Time   timestamp     # 时间戳~%uint64   code     # 故障码~%string   reason     # 原因~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fault>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     8
     4 (cl:length (cl:slot-value msg 'reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fault>))
  "Converts a ROS message object to a list"
  (cl:list 'Fault
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':code (code msg))
    (cl:cons ':reason (reason msg))
))
