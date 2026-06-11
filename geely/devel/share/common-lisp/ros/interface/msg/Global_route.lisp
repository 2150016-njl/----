; Auto-generated. Do not edit!


(cl:in-package interface-msg)


;//! \htmlinclude Global_route.msg.html

(cl:defclass <Global_route> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (routes
    :reader routes
    :initarg :routes
    :type (cl:vector interface-msg:Route)
   :initform (cl:make-array 0 :element-type 'interface-msg:Route :initial-element (cl:make-instance 'interface-msg:Route)))
   (target_route_id
    :reader target_route_id
    :initarg :target_route_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Global_route (<Global_route>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Global_route>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Global_route)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-msg:<Global_route> is deprecated: use interface-msg:Global_route instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Global_route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:header-val is deprecated.  Use interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'routes-val :lambda-list '(m))
(cl:defmethod routes-val ((m <Global_route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:routes-val is deprecated.  Use interface-msg:routes instead.")
  (routes m))

(cl:ensure-generic-function 'target_route_id-val :lambda-list '(m))
(cl:defmethod target_route_id-val ((m <Global_route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:target_route_id-val is deprecated.  Use interface-msg:target_route_id instead.")
  (target_route_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Global_route>) ostream)
  "Serializes a message object of type '<Global_route>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'routes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'routes))
  (cl:let* ((signed (cl:slot-value msg 'target_route_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Global_route>) istream)
  "Deserializes a message object of type '<Global_route>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'routes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'routes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'interface-msg:Route))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_route_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Global_route>)))
  "Returns string type for a message object of type '<Global_route>"
  "interface/Global_route")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Global_route)))
  "Returns string type for a message object of type 'Global_route"
  "interface/Global_route")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Global_route>)))
  "Returns md5sum for a message object of type '<Global_route>"
  "f592139074c730b00ce6171d3313b807")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Global_route)))
  "Returns md5sum for a message object of type 'Global_route"
  "f592139074c730b00ce6171d3313b807")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Global_route>)))
  "Returns full string definition for message of type '<Global_route>"
  (cl:format cl:nil "Header header~%Route[] routes~%int32 target_route_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: interface/Route~%Route_point[] points~%================================================================================~%MSG: interface/Route_point~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Global_route)))
  "Returns full string definition for message of type 'Global_route"
  (cl:format cl:nil "Header header~%Route[] routes~%int32 target_route_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: interface/Route~%Route_point[] points~%================================================================================~%MSG: interface/Route_point~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Global_route>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'routes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Global_route>))
  "Converts a ROS message object to a list"
  (cl:list 'Global_route
    (cl:cons ':header (header msg))
    (cl:cons ':routes (routes msg))
    (cl:cons ':target_route_id (target_route_id msg))
))
