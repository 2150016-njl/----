; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude EStop.msg.html

(cl:defclass <EStop> (roslisp-msg-protocol:ros-message)
  ((is_estop
    :reader is_estop
    :initarg :is_estop
    :type cl:boolean
    :initform cl:nil)
   (reason
    :reader reason
    :initarg :reason
    :type cl:string
    :initform ""))
)

(cl:defclass EStop (<EStop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EStop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EStop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<EStop> is deprecated: use ros_interface-msg:EStop instead.")))

(cl:ensure-generic-function 'is_estop-val :lambda-list '(m))
(cl:defmethod is_estop-val ((m <EStop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_estop-val is deprecated.  Use ros_interface-msg:is_estop instead.")
  (is_estop m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <EStop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:reason-val is deprecated.  Use ros_interface-msg:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EStop>) ostream)
  "Serializes a message object of type '<EStop>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_estop) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EStop>) istream)
  "Deserializes a message object of type '<EStop>"
    (cl:setf (cl:slot-value msg 'is_estop) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EStop>)))
  "Returns string type for a message object of type '<EStop>"
  "ros_interface/EStop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EStop)))
  "Returns string type for a message object of type 'EStop"
  "ros_interface/EStop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EStop>)))
  "Returns md5sum for a message object of type '<EStop>"
  "1804e173ea92364152391f5149646cf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EStop)))
  "Returns md5sum for a message object of type 'EStop"
  "1804e173ea92364152391f5149646cf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EStop>)))
  "Returns full string definition for message of type '<EStop>"
  (cl:format cl:nil "bool   is_estop     # is_estop == true when emergency stop is required~%string   reason     # 原因~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EStop)))
  "Returns full string definition for message of type 'EStop"
  (cl:format cl:nil "bool   is_estop     # is_estop == true when emergency stop is required~%string   reason     # 原因~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EStop>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EStop>))
  "Converts a ROS message object to a list"
  (cl:list 'EStop
    (cl:cons ':is_estop (is_estop msg))
    (cl:cons ':reason (reason msg))
))
