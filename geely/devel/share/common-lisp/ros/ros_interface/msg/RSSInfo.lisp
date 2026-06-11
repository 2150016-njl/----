; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RSSInfo.msg.html

(cl:defclass <RSSInfo> (roslisp-msg-protocol:ros-message)
  ((is_rss_safe
    :reader is_rss_safe
    :initarg :is_rss_safe
    :type cl:boolean
    :initform cl:nil)
   (cur_dist_lon
    :reader cur_dist_lon
    :initarg :cur_dist_lon
    :type cl:float
    :initform 0.0)
   (rss_safe_dist_lon
    :reader rss_safe_dist_lon
    :initarg :rss_safe_dist_lon
    :type cl:float
    :initform 0.0)
   (acc_lon_range_minimum
    :reader acc_lon_range_minimum
    :initarg :acc_lon_range_minimum
    :type cl:float
    :initform 0.0)
   (acc_lon_range_maximum
    :reader acc_lon_range_maximum
    :initarg :acc_lon_range_maximum
    :type cl:float
    :initform 0.0)
   (acc_lat_left_range_minimum
    :reader acc_lat_left_range_minimum
    :initarg :acc_lat_left_range_minimum
    :type cl:float
    :initform 0.0)
   (acc_lat_left_range_maximum
    :reader acc_lat_left_range_maximum
    :initarg :acc_lat_left_range_maximum
    :type cl:float
    :initform 0.0)
   (acc_lat_right_range_minimum
    :reader acc_lat_right_range_minimum
    :initarg :acc_lat_right_range_minimum
    :type cl:float
    :initform 0.0)
   (acc_lat_right_range_maximum
    :reader acc_lat_right_range_maximum
    :initarg :acc_lat_right_range_maximum
    :type cl:float
    :initform 0.0))
)

(cl:defclass RSSInfo (<RSSInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RSSInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RSSInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RSSInfo> is deprecated: use ros_interface-msg:RSSInfo instead.")))

(cl:ensure-generic-function 'is_rss_safe-val :lambda-list '(m))
(cl:defmethod is_rss_safe-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_rss_safe-val is deprecated.  Use ros_interface-msg:is_rss_safe instead.")
  (is_rss_safe m))

(cl:ensure-generic-function 'cur_dist_lon-val :lambda-list '(m))
(cl:defmethod cur_dist_lon-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cur_dist_lon-val is deprecated.  Use ros_interface-msg:cur_dist_lon instead.")
  (cur_dist_lon m))

(cl:ensure-generic-function 'rss_safe_dist_lon-val :lambda-list '(m))
(cl:defmethod rss_safe_dist_lon-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rss_safe_dist_lon-val is deprecated.  Use ros_interface-msg:rss_safe_dist_lon instead.")
  (rss_safe_dist_lon m))

(cl:ensure-generic-function 'acc_lon_range_minimum-val :lambda-list '(m))
(cl:defmethod acc_lon_range_minimum-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc_lon_range_minimum-val is deprecated.  Use ros_interface-msg:acc_lon_range_minimum instead.")
  (acc_lon_range_minimum m))

(cl:ensure-generic-function 'acc_lon_range_maximum-val :lambda-list '(m))
(cl:defmethod acc_lon_range_maximum-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc_lon_range_maximum-val is deprecated.  Use ros_interface-msg:acc_lon_range_maximum instead.")
  (acc_lon_range_maximum m))

(cl:ensure-generic-function 'acc_lat_left_range_minimum-val :lambda-list '(m))
(cl:defmethod acc_lat_left_range_minimum-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc_lat_left_range_minimum-val is deprecated.  Use ros_interface-msg:acc_lat_left_range_minimum instead.")
  (acc_lat_left_range_minimum m))

(cl:ensure-generic-function 'acc_lat_left_range_maximum-val :lambda-list '(m))
(cl:defmethod acc_lat_left_range_maximum-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc_lat_left_range_maximum-val is deprecated.  Use ros_interface-msg:acc_lat_left_range_maximum instead.")
  (acc_lat_left_range_maximum m))

(cl:ensure-generic-function 'acc_lat_right_range_minimum-val :lambda-list '(m))
(cl:defmethod acc_lat_right_range_minimum-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc_lat_right_range_minimum-val is deprecated.  Use ros_interface-msg:acc_lat_right_range_minimum instead.")
  (acc_lat_right_range_minimum m))

(cl:ensure-generic-function 'acc_lat_right_range_maximum-val :lambda-list '(m))
(cl:defmethod acc_lat_right_range_maximum-val ((m <RSSInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc_lat_right_range_maximum-val is deprecated.  Use ros_interface-msg:acc_lat_right_range_maximum instead.")
  (acc_lat_right_range_maximum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RSSInfo>) ostream)
  "Serializes a message object of type '<RSSInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_rss_safe) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_dist_lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rss_safe_dist_lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_lon_range_minimum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_lon_range_maximum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_lat_left_range_minimum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_lat_left_range_maximum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_lat_right_range_minimum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_lat_right_range_maximum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RSSInfo>) istream)
  "Deserializes a message object of type '<RSSInfo>"
    (cl:setf (cl:slot-value msg 'is_rss_safe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_dist_lon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rss_safe_dist_lon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_lon_range_minimum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_lon_range_maximum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_lat_left_range_minimum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_lat_left_range_maximum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_lat_right_range_minimum) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_lat_right_range_maximum) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RSSInfo>)))
  "Returns string type for a message object of type '<RSSInfo>"
  "ros_interface/RSSInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RSSInfo)))
  "Returns string type for a message object of type 'RSSInfo"
  "ros_interface/RSSInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RSSInfo>)))
  "Returns md5sum for a message object of type '<RSSInfo>"
  "c4490533d712ba2082a34d1533267ea6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RSSInfo)))
  "Returns md5sum for a message object of type 'RSSInfo"
  "c4490533d712ba2082a34d1533267ea6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RSSInfo>)))
  "Returns full string definition for message of type '<RSSInfo>"
  (cl:format cl:nil "bool   is_rss_safe     #  ~%float64   cur_dist_lon     # current longitudinal distance~%float64   rss_safe_dist_lon     # longitudinal safe distance of rss~%float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration~%float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration~%float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration~%float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration~%float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration~%float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RSSInfo)))
  "Returns full string definition for message of type 'RSSInfo"
  (cl:format cl:nil "bool   is_rss_safe     #  ~%float64   cur_dist_lon     # current longitudinal distance~%float64   rss_safe_dist_lon     # longitudinal safe distance of rss~%float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration~%float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration~%float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration~%float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration~%float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration~%float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RSSInfo>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RSSInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RSSInfo
    (cl:cons ':is_rss_safe (is_rss_safe msg))
    (cl:cons ':cur_dist_lon (cur_dist_lon msg))
    (cl:cons ':rss_safe_dist_lon (rss_safe_dist_lon msg))
    (cl:cons ':acc_lon_range_minimum (acc_lon_range_minimum msg))
    (cl:cons ':acc_lon_range_maximum (acc_lon_range_maximum msg))
    (cl:cons ':acc_lat_left_range_minimum (acc_lat_left_range_minimum msg))
    (cl:cons ':acc_lat_left_range_maximum (acc_lat_left_range_maximum msg))
    (cl:cons ':acc_lat_right_range_minimum (acc_lat_right_range_minimum msg))
    (cl:cons ':acc_lat_right_range_maximum (acc_lat_right_range_maximum msg))
))
