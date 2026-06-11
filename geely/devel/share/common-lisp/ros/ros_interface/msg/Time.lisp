; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Time.msg.html

(cl:defclass <Time> (roslisp-msg-protocol:ros-message)
  ((sec
    :reader sec
    :initarg :sec
    :type cl:integer
    :initform 0)
   (nsec
    :reader nsec
    :initarg :nsec
    :type cl:integer
    :initform 0))
)

(cl:defclass Time (<Time>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Time> is deprecated: use ros_interface-msg:Time instead.")))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <Time>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sec-val is deprecated.  Use ros_interface-msg:sec instead.")
  (sec m))

(cl:ensure-generic-function 'nsec-val :lambda-list '(m))
(cl:defmethod nsec-val ((m <Time>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:nsec-val is deprecated.  Use ros_interface-msg:nsec instead.")
  (nsec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time>) ostream)
  "Serializes a message object of type '<Time>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nsec)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time>) istream)
  "Deserializes a message object of type '<Time>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nsec)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time>)))
  "Returns string type for a message object of type '<Time>"
  "ros_interface/Time")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time)))
  "Returns string type for a message object of type 'Time"
  "ros_interface/Time")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time>)))
  "Returns md5sum for a message object of type '<Time>"
  "4771ad66fef816d2e4bead2f45a1cde6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time)))
  "Returns md5sum for a message object of type 'Time"
  "4771ad66fef816d2e4bead2f45a1cde6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time>)))
  "Returns full string definition for message of type '<Time>"
  (cl:format cl:nil "uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time)))
  "Returns full string definition for message of type 'Time"
  (cl:format cl:nil "uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time>))
  "Converts a ROS message object to a list"
  (cl:list 'Time
    (cl:cons ':sec (sec msg))
    (cl:cons ':nsec (nsec msg))
))
