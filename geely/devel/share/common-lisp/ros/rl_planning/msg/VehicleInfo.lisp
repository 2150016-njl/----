; Auto-generated. Do not edit!


(cl:in-package rl_planning-msg)


;//! \htmlinclude VehicleInfo.msg.html

(cl:defclass <VehicleInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (convex_hull
    :reader convex_hull
    :initarg :convex_hull
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (actor_pos
    :reader actor_pos
    :initarg :actor_pos
    :type rl_planning-msg:Point
    :initform (cl:make-instance 'rl_planning-msg:Point))
   (actor_rel_pos
    :reader actor_rel_pos
    :initarg :actor_rel_pos
    :type rl_planning-msg:Point
    :initform (cl:make-instance 'rl_planning-msg:Point))
   (actor_vel
    :reader actor_vel
    :initarg :actor_vel
    :type rl_planning-msg:Vector3D
    :initform (cl:make-instance 'rl_planning-msg:Vector3D))
   (actor_rel_vel
    :reader actor_rel_vel
    :initarg :actor_rel_vel
    :type rl_planning-msg:Vector3D
    :initform (cl:make-instance 'rl_planning-msg:Vector3D))
   (actor_acc
    :reader actor_acc
    :initarg :actor_acc
    :type rl_planning-msg:Vector3D
    :initform (cl:make-instance 'rl_planning-msg:Vector3D))
   (actor_psi
    :reader actor_psi
    :initarg :actor_psi
    :type cl:float
    :initform 0.0)
   (actor_speed
    :reader actor_speed
    :initarg :actor_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleInfo (<VehicleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rl_planning-msg:<VehicleInfo> is deprecated: use rl_planning-msg:VehicleInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:id-val is deprecated.  Use rl_planning-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:label-val is deprecated.  Use rl_planning-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'convex_hull-val :lambda-list '(m))
(cl:defmethod convex_hull-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:convex_hull-val is deprecated.  Use rl_planning-msg:convex_hull instead.")
  (convex_hull m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:length-val is deprecated.  Use rl_planning-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:width-val is deprecated.  Use rl_planning-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:height-val is deprecated.  Use rl_planning-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'actor_pos-val :lambda-list '(m))
(cl:defmethod actor_pos-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_pos-val is deprecated.  Use rl_planning-msg:actor_pos instead.")
  (actor_pos m))

(cl:ensure-generic-function 'actor_rel_pos-val :lambda-list '(m))
(cl:defmethod actor_rel_pos-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_rel_pos-val is deprecated.  Use rl_planning-msg:actor_rel_pos instead.")
  (actor_rel_pos m))

(cl:ensure-generic-function 'actor_vel-val :lambda-list '(m))
(cl:defmethod actor_vel-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_vel-val is deprecated.  Use rl_planning-msg:actor_vel instead.")
  (actor_vel m))

(cl:ensure-generic-function 'actor_rel_vel-val :lambda-list '(m))
(cl:defmethod actor_rel_vel-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_rel_vel-val is deprecated.  Use rl_planning-msg:actor_rel_vel instead.")
  (actor_rel_vel m))

(cl:ensure-generic-function 'actor_acc-val :lambda-list '(m))
(cl:defmethod actor_acc-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_acc-val is deprecated.  Use rl_planning-msg:actor_acc instead.")
  (actor_acc m))

(cl:ensure-generic-function 'actor_psi-val :lambda-list '(m))
(cl:defmethod actor_psi-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_psi-val is deprecated.  Use rl_planning-msg:actor_psi instead.")
  (actor_psi m))

(cl:ensure-generic-function 'actor_speed-val :lambda-list '(m))
(cl:defmethod actor_speed-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:actor_speed-val is deprecated.  Use rl_planning-msg:actor_speed instead.")
  (actor_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleInfo>) ostream)
  "Serializes a message object of type '<VehicleInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'convex_hull) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actor_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actor_rel_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actor_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actor_rel_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actor_acc) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'actor_psi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'actor_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleInfo>) istream)
  "Deserializes a message object of type '<VehicleInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'convex_hull) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actor_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actor_rel_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actor_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actor_rel_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actor_acc) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actor_psi) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actor_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleInfo>)))
  "Returns string type for a message object of type '<VehicleInfo>"
  "rl_planning/VehicleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfo)))
  "Returns string type for a message object of type 'VehicleInfo"
  "rl_planning/VehicleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleInfo>)))
  "Returns md5sum for a message object of type '<VehicleInfo>"
  "2080f30d52a247820d94f7875c4574f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleInfo)))
  "Returns md5sum for a message object of type 'VehicleInfo"
  "2080f30d52a247820d94f7875c4574f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleInfo>)))
  "Returns full string definition for message of type '<VehicleInfo>"
  (cl:format cl:nil "uint32 id~%string label~%geometry_msgs/PolygonStamped convex_hull~%float64 length~%float64 width~%float64 height~%Point actor_pos~%Point actor_rel_pos~%Vector3D actor_vel~%Vector3D actor_rel_vel~%Vector3D actor_acc~%float64 actor_psi~%float64 actor_speed~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rl_planning/Point~%float64 x ~%float64 y ~%float64 z ~%~%================================================================================~%MSG: rl_planning/Vector3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleInfo)))
  "Returns full string definition for message of type 'VehicleInfo"
  (cl:format cl:nil "uint32 id~%string label~%geometry_msgs/PolygonStamped convex_hull~%float64 length~%float64 width~%float64 height~%Point actor_pos~%Point actor_rel_pos~%Vector3D actor_vel~%Vector3D actor_rel_vel~%Vector3D actor_acc~%float64 actor_psi~%float64 actor_speed~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rl_planning/Point~%float64 x ~%float64 y ~%float64 z ~%~%================================================================================~%MSG: rl_planning/Vector3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'convex_hull))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actor_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actor_rel_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actor_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actor_rel_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actor_acc))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleInfo
    (cl:cons ':id (id msg))
    (cl:cons ':label (label msg))
    (cl:cons ':convex_hull (convex_hull msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':actor_pos (actor_pos msg))
    (cl:cons ':actor_rel_pos (actor_rel_pos msg))
    (cl:cons ':actor_vel (actor_vel msg))
    (cl:cons ':actor_rel_vel (actor_rel_vel msg))
    (cl:cons ':actor_acc (actor_acc msg))
    (cl:cons ':actor_psi (actor_psi msg))
    (cl:cons ':actor_speed (actor_speed msg))
))
