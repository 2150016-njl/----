; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude SLBoundary.msg.html

(cl:defclass <SLBoundary> (roslisp-msg-protocol:ros-message)
  ((start_s
    :reader start_s
    :initarg :start_s
    :type cl:float
    :initform 0.0)
   (end_s
    :reader end_s
    :initarg :end_s
    :type cl:float
    :initform 0.0)
   (start_l
    :reader start_l
    :initarg :start_l
    :type cl:float
    :initform 0.0)
   (end_l
    :reader end_l
    :initarg :end_l
    :type cl:float
    :initform 0.0)
   (boundary_point
    :reader boundary_point
    :initarg :boundary_point
    :type (cl:vector ros_interface-msg:SLPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:SLPoint :initial-element (cl:make-instance 'ros_interface-msg:SLPoint))))
)

(cl:defclass SLBoundary (<SLBoundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SLBoundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SLBoundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<SLBoundary> is deprecated: use ros_interface-msg:SLBoundary instead.")))

(cl:ensure-generic-function 'start_s-val :lambda-list '(m))
(cl:defmethod start_s-val ((m <SLBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:start_s-val is deprecated.  Use ros_interface-msg:start_s instead.")
  (start_s m))

(cl:ensure-generic-function 'end_s-val :lambda-list '(m))
(cl:defmethod end_s-val ((m <SLBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:end_s-val is deprecated.  Use ros_interface-msg:end_s instead.")
  (end_s m))

(cl:ensure-generic-function 'start_l-val :lambda-list '(m))
(cl:defmethod start_l-val ((m <SLBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:start_l-val is deprecated.  Use ros_interface-msg:start_l instead.")
  (start_l m))

(cl:ensure-generic-function 'end_l-val :lambda-list '(m))
(cl:defmethod end_l-val ((m <SLBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:end_l-val is deprecated.  Use ros_interface-msg:end_l instead.")
  (end_l m))

(cl:ensure-generic-function 'boundary_point-val :lambda-list '(m))
(cl:defmethod boundary_point-val ((m <SLBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:boundary_point-val is deprecated.  Use ros_interface-msg:boundary_point instead.")
  (boundary_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SLBoundary>) ostream)
  "Serializes a message object of type '<SLBoundary>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boundary_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boundary_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SLBoundary>) istream)
  "Deserializes a message object of type '<SLBoundary>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_s) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_l) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boundary_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boundary_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:SLPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SLBoundary>)))
  "Returns string type for a message object of type '<SLBoundary>"
  "ros_interface/SLBoundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SLBoundary)))
  "Returns string type for a message object of type 'SLBoundary"
  "ros_interface/SLBoundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SLBoundary>)))
  "Returns md5sum for a message object of type '<SLBoundary>"
  "f10f98a43d7c56cfaed470a969316c95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SLBoundary)))
  "Returns md5sum for a message object of type 'SLBoundary"
  "f10f98a43d7c56cfaed470a969316c95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SLBoundary>)))
  "Returns full string definition for message of type '<SLBoundary>"
  (cl:format cl:nil "float64   start_s     # 起始点纵向位移~%float64   end_s     # 终止点纵向位移~%float64   start_l     # 起始点横向位移~%float64   end_l     # 终止点横向位移~%SLPoint[] boundary_point # sl点集~%~%================================================================================~%MSG: ros_interface/SLPoint~%float64   s     # 纵向位移~%float64   l     # 横向位移~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SLBoundary)))
  "Returns full string definition for message of type 'SLBoundary"
  (cl:format cl:nil "float64   start_s     # 起始点纵向位移~%float64   end_s     # 终止点纵向位移~%float64   start_l     # 起始点横向位移~%float64   end_l     # 终止点横向位移~%SLPoint[] boundary_point # sl点集~%~%================================================================================~%MSG: ros_interface/SLPoint~%float64   s     # 纵向位移~%float64   l     # 横向位移~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SLBoundary>))
  (cl:+ 0
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boundary_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SLBoundary>))
  "Converts a ROS message object to a list"
  (cl:list 'SLBoundary
    (cl:cons ':start_s (start_s msg))
    (cl:cons ':end_s (end_s msg))
    (cl:cons ':start_l (start_l msg))
    (cl:cons ':end_l (end_l msg))
    (cl:cons ':boundary_point (boundary_point msg))
))
