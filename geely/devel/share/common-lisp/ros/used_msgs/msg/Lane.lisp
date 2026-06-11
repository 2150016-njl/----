; Auto-generated. Do not edit!


(cl:in-package used_msgs-msg)


;//! \htmlinclude Lane.msg.html

(cl:defclass <Lane> (roslisp-msg-protocol:ros-message)
  ((lane_idx
    :reader lane_idx
    :initarg :lane_idx
    :type cl:fixnum
    :initform 0)
   (left_traverse_flag
    :reader left_traverse_flag
    :initarg :left_traverse_flag
    :type cl:boolean
    :initform cl:nil)
   (right_traverse_flag
    :reader right_traverse_flag
    :initarg :right_traverse_flag
    :type cl:boolean
    :initform cl:nil)
   (lane_width
    :reader lane_width
    :initarg :lane_width
    :type cl:float
    :initform 0.0))
)

(cl:defclass Lane (<Lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name used_msgs-msg:<Lane> is deprecated: use used_msgs-msg:Lane instead.")))

(cl:ensure-generic-function 'lane_idx-val :lambda-list '(m))
(cl:defmethod lane_idx-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:lane_idx-val is deprecated.  Use used_msgs-msg:lane_idx instead.")
  (lane_idx m))

(cl:ensure-generic-function 'left_traverse_flag-val :lambda-list '(m))
(cl:defmethod left_traverse_flag-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:left_traverse_flag-val is deprecated.  Use used_msgs-msg:left_traverse_flag instead.")
  (left_traverse_flag m))

(cl:ensure-generic-function 'right_traverse_flag-val :lambda-list '(m))
(cl:defmethod right_traverse_flag-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:right_traverse_flag-val is deprecated.  Use used_msgs-msg:right_traverse_flag instead.")
  (right_traverse_flag m))

(cl:ensure-generic-function 'lane_width-val :lambda-list '(m))
(cl:defmethod lane_width-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:lane_width-val is deprecated.  Use used_msgs-msg:lane_width instead.")
  (lane_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane>) ostream)
  "Serializes a message object of type '<Lane>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_traverse_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_traverse_flag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane>) istream)
  "Deserializes a message object of type '<Lane>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_idx)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_traverse_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_traverse_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_width) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane>)))
  "Returns string type for a message object of type '<Lane>"
  "used_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane)))
  "Returns string type for a message object of type 'Lane"
  "used_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane>)))
  "Returns md5sum for a message object of type '<Lane>"
  "3ce3889449b1a37c2f794128b57abf80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane)))
  "Returns md5sum for a message object of type 'Lane"
  "3ce3889449b1a37c2f794128b57abf80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane>)))
  "Returns full string definition for message of type '<Lane>"
  (cl:format cl:nil "uint8 lane_idx~%bool left_traverse_flag ~%bool right_traverse_flag~%float64 lane_width~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane)))
  "Returns full string definition for message of type 'Lane"
  (cl:format cl:nil "uint8 lane_idx~%bool left_traverse_flag ~%bool right_traverse_flag~%float64 lane_width~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane>))
  (cl:+ 0
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane
    (cl:cons ':lane_idx (lane_idx msg))
    (cl:cons ':left_traverse_flag (left_traverse_flag msg))
    (cl:cons ':right_traverse_flag (right_traverse_flag msg))
    (cl:cons ':lane_width (lane_width msg))
))
