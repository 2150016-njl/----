; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude WLConstraintInfo.msg.html

(cl:defclass <WLConstraintInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (vehicle_point1
    :reader vehicle_point1
    :initarg :vehicle_point1
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (vehicle_point2
    :reader vehicle_point2
    :initarg :vehicle_point2
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (abs_point1
    :reader abs_point1
    :initarg :abs_point1
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (abs_point2
    :reader abs_point2
    :initarg :abs_point2
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass WLConstraintInfo (<WLConstraintInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WLConstraintInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WLConstraintInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<WLConstraintInfo> is deprecated: use ros_interface-msg:WLConstraintInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WLConstraintInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WLConstraintInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:id-val is deprecated.  Use ros_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'vehicle_point1-val :lambda-list '(m))
(cl:defmethod vehicle_point1-val ((m <WLConstraintInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:vehicle_point1-val is deprecated.  Use ros_interface-msg:vehicle_point1 instead.")
  (vehicle_point1 m))

(cl:ensure-generic-function 'vehicle_point2-val :lambda-list '(m))
(cl:defmethod vehicle_point2-val ((m <WLConstraintInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:vehicle_point2-val is deprecated.  Use ros_interface-msg:vehicle_point2 instead.")
  (vehicle_point2 m))

(cl:ensure-generic-function 'abs_point1-val :lambda-list '(m))
(cl:defmethod abs_point1-val ((m <WLConstraintInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:abs_point1-val is deprecated.  Use ros_interface-msg:abs_point1 instead.")
  (abs_point1 m))

(cl:ensure-generic-function 'abs_point2-val :lambda-list '(m))
(cl:defmethod abs_point2-val ((m <WLConstraintInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:abs_point2-val is deprecated.  Use ros_interface-msg:abs_point2 instead.")
  (abs_point2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WLConstraintInfo>) ostream)
  "Serializes a message object of type '<WLConstraintInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_point1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_point2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abs_point1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abs_point2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WLConstraintInfo>) istream)
  "Deserializes a message object of type '<WLConstraintInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_point1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_point2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abs_point1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abs_point2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WLConstraintInfo>)))
  "Returns string type for a message object of type '<WLConstraintInfo>"
  "ros_interface/WLConstraintInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WLConstraintInfo)))
  "Returns string type for a message object of type 'WLConstraintInfo"
  "ros_interface/WLConstraintInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WLConstraintInfo>)))
  "Returns md5sum for a message object of type '<WLConstraintInfo>"
  "6ded4b242dcffae8b411138eaa40115c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WLConstraintInfo)))
  "Returns md5sum for a message object of type 'WLConstraintInfo"
  "6ded4b242dcffae8b411138eaa40115c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WLConstraintInfo>)))
  "Returns full string definition for message of type '<WLConstraintInfo>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   id     # id~%Point3D   vehicle_point1     # 车辆坐标系下约束点1~%Point3D   vehicle_point2     # 车辆坐标系下约束点2~%Point3D   abs_point1     # 绝对坐标系下约束点1~%Point3D   abs_point2     # 绝对坐标系下约束点2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WLConstraintInfo)))
  "Returns full string definition for message of type 'WLConstraintInfo"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   id     # id~%Point3D   vehicle_point1     # 车辆坐标系下约束点1~%Point3D   vehicle_point2     # 车辆坐标系下约束点2~%Point3D   abs_point1     # 绝对坐标系下约束点1~%Point3D   abs_point2     # 绝对坐标系下约束点2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WLConstraintInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_point1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_point2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abs_point1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abs_point2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WLConstraintInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'WLConstraintInfo
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':vehicle_point1 (vehicle_point1 msg))
    (cl:cons ':vehicle_point2 (vehicle_point2 msg))
    (cl:cons ':abs_point1 (abs_point1 msg))
    (cl:cons ':abs_point2 (abs_point2 msg))
))
