; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PadMessage.msg.html

(cl:defclass <PadMessage> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass PadMessage (<PadMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PadMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PadMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PadMessage> is deprecated: use ros_interface-msg:PadMessage instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <PadMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cmd-val is deprecated.  Use ros_interface-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PadMessage>) ostream)
  "Serializes a message object of type '<PadMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PadMessage>) istream)
  "Deserializes a message object of type '<PadMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PadMessage>)))
  "Returns string type for a message object of type '<PadMessage>"
  "ros_interface/PadMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PadMessage)))
  "Returns string type for a message object of type 'PadMessage"
  "ros_interface/PadMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PadMessage>)))
  "Returns md5sum for a message object of type '<PadMessage>"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PadMessage)))
  "Returns md5sum for a message object of type 'PadMessage"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PadMessage>)))
  "Returns full string definition for message of type '<PadMessage>"
  (cl:format cl:nil "string   cmd     # 命令~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PadMessage)))
  "Returns full string definition for message of type 'PadMessage"
  (cl:format cl:nil "string   cmd     # 命令~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PadMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PadMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'PadMessage
    (cl:cons ':cmd (cmd msg))
))
