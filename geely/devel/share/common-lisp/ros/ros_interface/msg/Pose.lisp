; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Pose.msg.html

(cl:defclass <Pose> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type ros_interface-msg:PointENU
    :initform (cl:make-instance 'ros_interface-msg:PointENU))
   (orientation
    :reader orientation
    :initarg :orientation
    :type ros_interface-msg:Quaternion
    :initform (cl:make-instance 'ros_interface-msg:Quaternion))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (linear_acceleration_vrf
    :reader linear_acceleration_vrf
    :initarg :linear_acceleration_vrf
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (angular_velocity_vrf
    :reader angular_velocity_vrf
    :initarg :angular_velocity_vrf
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (euler_angles
    :reader euler_angles
    :initarg :euler_angles
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass Pose (<Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Pose> is deprecated: use ros_interface-msg:Pose instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position-val is deprecated.  Use ros_interface-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:orientation-val is deprecated.  Use ros_interface-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_velocity-val is deprecated.  Use ros_interface-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_acceleration-val is deprecated.  Use ros_interface-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angular_velocity-val is deprecated.  Use ros_interface-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:heading-val is deprecated.  Use ros_interface-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'linear_acceleration_vrf-val :lambda-list '(m))
(cl:defmethod linear_acceleration_vrf-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_acceleration_vrf-val is deprecated.  Use ros_interface-msg:linear_acceleration_vrf instead.")
  (linear_acceleration_vrf m))

(cl:ensure-generic-function 'angular_velocity_vrf-val :lambda-list '(m))
(cl:defmethod angular_velocity_vrf-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angular_velocity_vrf-val is deprecated.  Use ros_interface-msg:angular_velocity_vrf instead.")
  (angular_velocity_vrf m))

(cl:ensure-generic-function 'euler_angles-val :lambda-list '(m))
(cl:defmethod euler_angles-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:euler_angles-val is deprecated.  Use ros_interface-msg:euler_angles instead.")
  (euler_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose>) ostream)
  "Serializes a message object of type '<Pose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration_vrf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity_vrf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_angles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose>) istream)
  "Deserializes a message object of type '<Pose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration_vrf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity_vrf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_angles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose>)))
  "Returns string type for a message object of type '<Pose>"
  "ros_interface/Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose)))
  "Returns string type for a message object of type 'Pose"
  "ros_interface/Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose>)))
  "Returns md5sum for a message object of type '<Pose>"
  "0c21debd869f05bb5d743b9f76884b06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose)))
  "Returns md5sum for a message object of type 'Pose"
  "0c21debd869f05bb5d743b9f76884b06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose>)))
  "Returns full string definition for message of type '<Pose>"
  (cl:format cl:nil "PointENU   position     # Position of the vehicle reference point (VRP) in the map reference frame.   The VRP is the center of rear axle.~%Quaternion   orientation     # A quaternion that represents the rotation from the IMU coordinate (Right/Forward/Up) to the world coordinate (East/North/Up).~%Point3D   linear_velocity     # Linear velocity of the VRP in the map reference frame.East/north/up in meters per second.~%Point3D   linear_acceleration     # Linear acceleration of the VRP in the map reference frame. East/north/up in meters per square second.~%Point3D   angular_velocity     # Angular velocity of the vehicle in the map reference frame.Around east/north/up axes in radians per second.~%float64   heading     # The heading is zero when the car is facing East and positive when facing North~%Point3D   linear_acceleration_vrf     # Linear acceleration of the VRP in the vehicle reference frame.Right/forward/up in meters per square second.~%Point3D   angular_velocity_vrf     # Angular velocity of the VRP in the vehicle reference frame. Around right/forward/up axes in radians per second.~%Point3D   euler_angles     # // Roll/pitch/yaw that represents a rotation with intrinsic sequence z-x-y.   // in world coordinate (East/North/Up)   // The roll, in (-pi/2, pi/2), corresponds to a rotation around the y-axis.   // The pitch, in [-pi, pi), corresponds to a rotation around the x-axis.   // The yaw, in [-pi, pi), corresponds to a rotation around the z-axis.   // The direction of rotation follows the right-hand rule.~%~%================================================================================~%MSG: ros_interface/PointENU~%float64   x     # East from the origin, in meters.~%float64   y     # North from the origin, in meters.~%float64   z     # Up from the WGS-84 ellipsoid, in meters.~%~%================================================================================~%MSG: ros_interface/Quaternion~%float64   qx     # 四维空间x~%float64   qy     # 四维空间y~%float64   qz     # 四维空间z~%float64   qw     # 四维空间w~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose)))
  "Returns full string definition for message of type 'Pose"
  (cl:format cl:nil "PointENU   position     # Position of the vehicle reference point (VRP) in the map reference frame.   The VRP is the center of rear axle.~%Quaternion   orientation     # A quaternion that represents the rotation from the IMU coordinate (Right/Forward/Up) to the world coordinate (East/North/Up).~%Point3D   linear_velocity     # Linear velocity of the VRP in the map reference frame.East/north/up in meters per second.~%Point3D   linear_acceleration     # Linear acceleration of the VRP in the map reference frame. East/north/up in meters per square second.~%Point3D   angular_velocity     # Angular velocity of the vehicle in the map reference frame.Around east/north/up axes in radians per second.~%float64   heading     # The heading is zero when the car is facing East and positive when facing North~%Point3D   linear_acceleration_vrf     # Linear acceleration of the VRP in the vehicle reference frame.Right/forward/up in meters per square second.~%Point3D   angular_velocity_vrf     # Angular velocity of the VRP in the vehicle reference frame. Around right/forward/up axes in radians per second.~%Point3D   euler_angles     # // Roll/pitch/yaw that represents a rotation with intrinsic sequence z-x-y.   // in world coordinate (East/North/Up)   // The roll, in (-pi/2, pi/2), corresponds to a rotation around the y-axis.   // The pitch, in [-pi, pi), corresponds to a rotation around the x-axis.   // The yaw, in [-pi, pi), corresponds to a rotation around the z-axis.   // The direction of rotation follows the right-hand rule.~%~%================================================================================~%MSG: ros_interface/PointENU~%float64   x     # East from the origin, in meters.~%float64   y     # North from the origin, in meters.~%float64   z     # Up from the WGS-84 ellipsoid, in meters.~%~%================================================================================~%MSG: ros_interface/Quaternion~%float64   qx     # 四维空间x~%float64   qy     # 四维空间y~%float64   qz     # 四维空间z~%float64   qw     # 四维空间w~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration_vrf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity_vrf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_angles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':linear_acceleration_vrf (linear_acceleration_vrf msg))
    (cl:cons ':angular_velocity_vrf (angular_velocity_vrf msg))
    (cl:cons ':euler_angles (euler_angles msg))
))
