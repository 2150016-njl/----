; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude UssParkingInfo.msg.html

(cl:defclass <UssParkingInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uss_parking_type
    :reader uss_parking_type
    :initarg :uss_parking_type
    :type cl:integer
    :initform 0)
   (parking_point0
    :reader parking_point0
    :initarg :parking_point0
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (parking_point1
    :reader parking_point1
    :initarg :parking_point1
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (parking_point2
    :reader parking_point2
    :initarg :parking_point2
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (parking_point3
    :reader parking_point3
    :initarg :parking_point3
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass UssParkingInfo (<UssParkingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssParkingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssParkingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<UssParkingInfo> is deprecated: use ros_interface-msg:UssParkingInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UssParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uss_parking_type-val :lambda-list '(m))
(cl:defmethod uss_parking_type-val ((m <UssParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:uss_parking_type-val is deprecated.  Use ros_interface-msg:uss_parking_type instead.")
  (uss_parking_type m))

(cl:ensure-generic-function 'parking_point0-val :lambda-list '(m))
(cl:defmethod parking_point0-val ((m <UssParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_point0-val is deprecated.  Use ros_interface-msg:parking_point0 instead.")
  (parking_point0 m))

(cl:ensure-generic-function 'parking_point1-val :lambda-list '(m))
(cl:defmethod parking_point1-val ((m <UssParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_point1-val is deprecated.  Use ros_interface-msg:parking_point1 instead.")
  (parking_point1 m))

(cl:ensure-generic-function 'parking_point2-val :lambda-list '(m))
(cl:defmethod parking_point2-val ((m <UssParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_point2-val is deprecated.  Use ros_interface-msg:parking_point2 instead.")
  (parking_point2 m))

(cl:ensure-generic-function 'parking_point3-val :lambda-list '(m))
(cl:defmethod parking_point3-val ((m <UssParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_point3-val is deprecated.  Use ros_interface-msg:parking_point3 instead.")
  (parking_point3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssParkingInfo>) ostream)
  "Serializes a message object of type '<UssParkingInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'uss_parking_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_point0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_point1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_point2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_point3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssParkingInfo>) istream)
  "Deserializes a message object of type '<UssParkingInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uss_parking_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_point0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_point1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_point2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_point3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssParkingInfo>)))
  "Returns string type for a message object of type '<UssParkingInfo>"
  "ros_interface/UssParkingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssParkingInfo)))
  "Returns string type for a message object of type 'UssParkingInfo"
  "ros_interface/UssParkingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssParkingInfo>)))
  "Returns md5sum for a message object of type '<UssParkingInfo>"
  "14954f6574cb7c7467a32a7a7d462815")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssParkingInfo)))
  "Returns md5sum for a message object of type 'UssParkingInfo"
  "14954f6574cb7c7467a32a7a7d462815")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssParkingInfo>)))
  "Returns full string definition for message of type '<UssParkingInfo>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直~%Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置~%Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置~%Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置~%Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssParkingInfo)))
  "Returns full string definition for message of type 'UssParkingInfo"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直~%Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置~%Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置~%Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置~%Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssParkingInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_point0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_point1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_point2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_point3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssParkingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UssParkingInfo
    (cl:cons ':header (header msg))
    (cl:cons ':uss_parking_type (uss_parking_type msg))
    (cl:cons ':parking_point0 (parking_point0 msg))
    (cl:cons ':parking_point1 (parking_point1 msg))
    (cl:cons ':parking_point2 (parking_point2 msg))
    (cl:cons ':parking_point3 (parking_point3 msg))
))
