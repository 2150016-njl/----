; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Stories.msg.html

(cl:defclass <Stories> (roslisp-msg-protocol:ros-message)
  ((note
    :reader note
    :initarg :note
    :type cl:string
    :initform ""))
)

(cl:defclass Stories (<Stories>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stories>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stories)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Stories> is deprecated: use ros_interface-msg:Stories instead.")))

(cl:ensure-generic-function 'note-val :lambda-list '(m))
(cl:defmethod note-val ((m <Stories>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:note-val is deprecated.  Use ros_interface-msg:note instead.")
  (note m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stories>) ostream)
  "Serializes a message object of type '<Stories>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'note))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'note))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stories>) istream)
  "Deserializes a message object of type '<Stories>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'note) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'note) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stories>)))
  "Returns string type for a message object of type '<Stories>"
  "ros_interface/Stories")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stories)))
  "Returns string type for a message object of type 'Stories"
  "ros_interface/Stories")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stories>)))
  "Returns md5sum for a message object of type '<Stories>"
  "c3a6fee6cdf47f026b66e11c2e77fb39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stories)))
  "Returns md5sum for a message object of type 'Stories"
  "c3a6fee6cdf47f026b66e11c2e77fb39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stories>)))
  "Returns full string definition for message of type '<Stories>"
  (cl:format cl:nil "string   note     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stories)))
  "Returns full string definition for message of type 'Stories"
  (cl:format cl:nil "string   note     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stories>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'note))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stories>))
  "Converts a ROS message object to a list"
  (cl:list 'Stories
    (cl:cons ':note (note msg))
))
