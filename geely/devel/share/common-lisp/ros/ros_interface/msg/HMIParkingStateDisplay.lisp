; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMIParkingStateDisplay.msg.html

(cl:defclass <HMIParkingStateDisplay> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parking_type
    :reader parking_type
    :initarg :parking_type
    :type cl:integer
    :initform 0)
   (moves_counter
    :reader moves_counter
    :initarg :moves_counter
    :type cl:integer
    :initform 0)
   (remian_distance
    :reader remian_distance
    :initarg :remian_distance
    :type cl:float
    :initform 0.0)
   (display_info
    :reader display_info
    :initarg :display_info
    :type cl:integer
    :initform 0)
   (distance_to_leader_obj
    :reader distance_to_leader_obj
    :initarg :distance_to_leader_obj
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass HMIParkingStateDisplay (<HMIParkingStateDisplay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIParkingStateDisplay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIParkingStateDisplay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMIParkingStateDisplay> is deprecated: use ros_interface-msg:HMIParkingStateDisplay instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parking_type-val :lambda-list '(m))
(cl:defmethod parking_type-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_type-val is deprecated.  Use ros_interface-msg:parking_type instead.")
  (parking_type m))

(cl:ensure-generic-function 'moves_counter-val :lambda-list '(m))
(cl:defmethod moves_counter-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:moves_counter-val is deprecated.  Use ros_interface-msg:moves_counter instead.")
  (moves_counter m))

(cl:ensure-generic-function 'remian_distance-val :lambda-list '(m))
(cl:defmethod remian_distance-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:remian_distance-val is deprecated.  Use ros_interface-msg:remian_distance instead.")
  (remian_distance m))

(cl:ensure-generic-function 'display_info-val :lambda-list '(m))
(cl:defmethod display_info-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:display_info-val is deprecated.  Use ros_interface-msg:display_info instead.")
  (display_info m))

(cl:ensure-generic-function 'distance_to_leader_obj-val :lambda-list '(m))
(cl:defmethod distance_to_leader_obj-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:distance_to_leader_obj-val is deprecated.  Use ros_interface-msg:distance_to_leader_obj instead.")
  (distance_to_leader_obj m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HMIParkingStateDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:state-val is deprecated.  Use ros_interface-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIParkingStateDisplay>) ostream)
  "Serializes a message object of type '<HMIParkingStateDisplay>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parking_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'moves_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remian_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'display_info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_leader_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIParkingStateDisplay>) istream)
  "Deserializes a message object of type '<HMIParkingStateDisplay>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moves_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remian_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_info) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_leader_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIParkingStateDisplay>)))
  "Returns string type for a message object of type '<HMIParkingStateDisplay>"
  "ros_interface/HMIParkingStateDisplay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIParkingStateDisplay)))
  "Returns string type for a message object of type 'HMIParkingStateDisplay"
  "ros_interface/HMIParkingStateDisplay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIParkingStateDisplay>)))
  "Returns md5sum for a message object of type '<HMIParkingStateDisplay>"
  "877b72abf16a45360d8ea1120bf76726")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIParkingStateDisplay)))
  "Returns md5sum for a message object of type 'HMIParkingStateDisplay"
  "877b72abf16a45360d8ea1120bf76726")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIParkingStateDisplay>)))
  "Returns full string definition for message of type '<HMIParkingStateDisplay>"
  (cl:format cl:nil "Header   header     #  ~%int32   parking_type     # 0：无效 1：垂直泊车 2：水平泊车 3：斜方泊车~%int32   moves_counter     # 揉库次数~%float64   remian_distance     # 剩余距离~%int32   display_info     # 详细信息~%float64   distance_to_leader_obj     # 距离最近障碍物距离~%int32   state     #  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIParkingStateDisplay)))
  "Returns full string definition for message of type 'HMIParkingStateDisplay"
  (cl:format cl:nil "Header   header     #  ~%int32   parking_type     # 0：无效 1：垂直泊车 2：水平泊车 3：斜方泊车~%int32   moves_counter     # 揉库次数~%float64   remian_distance     # 剩余距离~%int32   display_info     # 详细信息~%float64   distance_to_leader_obj     # 距离最近障碍物距离~%int32   state     #  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIParkingStateDisplay>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     4
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIParkingStateDisplay>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIParkingStateDisplay
    (cl:cons ':header (header msg))
    (cl:cons ':parking_type (parking_type msg))
    (cl:cons ':moves_counter (moves_counter msg))
    (cl:cons ':remian_distance (remian_distance msg))
    (cl:cons ':display_info (display_info msg))
    (cl:cons ':distance_to_leader_obj (distance_to_leader_obj msg))
    (cl:cons ':state (state msg))
))
