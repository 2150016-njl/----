; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TimeConsume.msg.html

(cl:defclass <TimeConsume> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (time_consume
    :reader time_consume
    :initarg :time_consume
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimeConsume (<TimeConsume>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeConsume>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeConsume)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TimeConsume> is deprecated: use ros_interface-msg:TimeConsume instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TimeConsume>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'time_consume-val :lambda-list '(m))
(cl:defmethod time_consume-val ((m <TimeConsume>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:time_consume-val is deprecated.  Use ros_interface-msg:time_consume instead.")
  (time_consume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeConsume>) ostream)
  "Serializes a message object of type '<TimeConsume>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_consume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeConsume>) istream)
  "Deserializes a message object of type '<TimeConsume>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_consume) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeConsume>)))
  "Returns string type for a message object of type '<TimeConsume>"
  "ros_interface/TimeConsume")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeConsume)))
  "Returns string type for a message object of type 'TimeConsume"
  "ros_interface/TimeConsume")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeConsume>)))
  "Returns md5sum for a message object of type '<TimeConsume>"
  "92e960642bd80a7c9dd2e21ad653ac97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeConsume)))
  "Returns md5sum for a message object of type 'TimeConsume"
  "92e960642bd80a7c9dd2e21ad653ac97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeConsume>)))
  "Returns full string definition for message of type '<TimeConsume>"
  (cl:format cl:nil "string   name     #  ~%float64   time_consume     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeConsume)))
  "Returns full string definition for message of type 'TimeConsume"
  (cl:format cl:nil "string   name     #  ~%float64   time_consume     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeConsume>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeConsume>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeConsume
    (cl:cons ':name (name msg))
    (cl:cons ':time_consume (time_consume msg))
))
