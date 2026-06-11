; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ParkingOutInfo.msg.html

(cl:defclass <ParkingOutInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parking_out_id
    :reader parking_out_id
    :initarg :parking_out_id
    :type cl:integer
    :initform 0)
   (parking_direction_type
    :reader parking_direction_type
    :initarg :parking_direction_type
    :type cl:integer
    :initform 0)
   (is_parking_out_enable
    :reader is_parking_out_enable
    :initarg :is_parking_out_enable
    :type cl:boolean
    :initform cl:nil)
   (parking_out_point
    :reader parking_out_point
    :initarg :parking_out_point
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParkingOutInfo (<ParkingOutInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingOutInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingOutInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ParkingOutInfo> is deprecated: use ros_interface-msg:ParkingOutInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parking_out_id-val :lambda-list '(m))
(cl:defmethod parking_out_id-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_id-val is deprecated.  Use ros_interface-msg:parking_out_id instead.")
  (parking_out_id m))

(cl:ensure-generic-function 'parking_direction_type-val :lambda-list '(m))
(cl:defmethod parking_direction_type-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_direction_type-val is deprecated.  Use ros_interface-msg:parking_direction_type instead.")
  (parking_direction_type m))

(cl:ensure-generic-function 'is_parking_out_enable-val :lambda-list '(m))
(cl:defmethod is_parking_out_enable-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_parking_out_enable-val is deprecated.  Use ros_interface-msg:is_parking_out_enable instead.")
  (is_parking_out_enable m))

(cl:ensure-generic-function 'parking_out_point-val :lambda-list '(m))
(cl:defmethod parking_out_point-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_point-val is deprecated.  Use ros_interface-msg:parking_out_point instead.")
  (parking_out_point m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <ParkingOutInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta-val is deprecated.  Use ros_interface-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingOutInfo>) ostream)
  "Serializes a message object of type '<ParkingOutInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parking_out_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parking_direction_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_parking_out_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_out_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingOutInfo>) istream)
  "Deserializes a message object of type '<ParkingOutInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_out_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_direction_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_parking_out_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_out_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingOutInfo>)))
  "Returns string type for a message object of type '<ParkingOutInfo>"
  "ros_interface/ParkingOutInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingOutInfo)))
  "Returns string type for a message object of type 'ParkingOutInfo"
  "ros_interface/ParkingOutInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingOutInfo>)))
  "Returns md5sum for a message object of type '<ParkingOutInfo>"
  "e521a1b6fe67f908288575c2442dfdff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingOutInfo)))
  "Returns md5sum for a message object of type 'ParkingOutInfo"
  "e521a1b6fe67f908288575c2442dfdff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingOutInfo>)))
  "Returns full string definition for message of type '<ParkingOutInfo>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   parking_out_id     # 若车位有id，同停车位id~%int32   parking_direction_type     #  ~%bool   is_parking_out_enable     # true可泊出，false不可泊出~%Point3D   parking_out_point     # 世界坐标系下提车点位置~%float64   theta     # 世界坐标系下的夹角（单位rad），提车点与正东方向夹角~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingOutInfo)))
  "Returns full string definition for message of type 'ParkingOutInfo"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   parking_out_id     # 若车位有id，同停车位id~%int32   parking_direction_type     #  ~%bool   is_parking_out_enable     # true可泊出，false不可泊出~%Point3D   parking_out_point     # 世界坐标系下提车点位置~%float64   theta     # 世界坐标系下的夹角（单位rad），提车点与正东方向夹角~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingOutInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_out_point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingOutInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingOutInfo
    (cl:cons ':header (header msg))
    (cl:cons ':parking_out_id (parking_out_id msg))
    (cl:cons ':parking_direction_type (parking_direction_type msg))
    (cl:cons ':is_parking_out_enable (is_parking_out_enable msg))
    (cl:cons ':parking_out_point (parking_out_point msg))
    (cl:cons ':theta (theta msg))
))
