; Auto-generated. Do not edit!


(cl:in-package rl_planning-msg)


;//! \htmlinclude VehicleInfoBatch.msg.html

(cl:defclass <VehicleInfoBatch> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_info_batch
    :reader vehicle_info_batch
    :initarg :vehicle_info_batch
    :type (cl:vector rl_planning-msg:VehicleInfo)
   :initform (cl:make-array 0 :element-type 'rl_planning-msg:VehicleInfo :initial-element (cl:make-instance 'rl_planning-msg:VehicleInfo))))
)

(cl:defclass VehicleInfoBatch (<VehicleInfoBatch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleInfoBatch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleInfoBatch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rl_planning-msg:<VehicleInfoBatch> is deprecated: use rl_planning-msg:VehicleInfoBatch instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleInfoBatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:header-val is deprecated.  Use rl_planning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_info_batch-val :lambda-list '(m))
(cl:defmethod vehicle_info_batch-val ((m <VehicleInfoBatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rl_planning-msg:vehicle_info_batch-val is deprecated.  Use rl_planning-msg:vehicle_info_batch instead.")
  (vehicle_info_batch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleInfoBatch>) ostream)
  "Serializes a message object of type '<VehicleInfoBatch>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicle_info_batch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicle_info_batch))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleInfoBatch>) istream)
  "Deserializes a message object of type '<VehicleInfoBatch>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicle_info_batch) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicle_info_batch)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rl_planning-msg:VehicleInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleInfoBatch>)))
  "Returns string type for a message object of type '<VehicleInfoBatch>"
  "rl_planning/VehicleInfoBatch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfoBatch)))
  "Returns string type for a message object of type 'VehicleInfoBatch"
  "rl_planning/VehicleInfoBatch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleInfoBatch>)))
  "Returns md5sum for a message object of type '<VehicleInfoBatch>"
  "618ce8216f907511a69e15605df7c3cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleInfoBatch)))
  "Returns md5sum for a message object of type 'VehicleInfoBatch"
  "618ce8216f907511a69e15605df7c3cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleInfoBatch>)))
  "Returns full string definition for message of type '<VehicleInfoBatch>"
  (cl:format cl:nil "Header header~%VehicleInfo[] vehicle_info_batch~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rl_planning/VehicleInfo~%uint32 id~%string label~%geometry_msgs/PolygonStamped convex_hull~%float64 length~%float64 width~%float64 height~%Point actor_pos~%Point actor_rel_pos~%Vector3D actor_vel~%Vector3D actor_rel_vel~%Vector3D actor_acc~%float64 actor_psi~%float64 actor_speed~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rl_planning/Point~%float64 x ~%float64 y ~%float64 z ~%~%================================================================================~%MSG: rl_planning/Vector3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleInfoBatch)))
  "Returns full string definition for message of type 'VehicleInfoBatch"
  (cl:format cl:nil "Header header~%VehicleInfo[] vehicle_info_batch~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rl_planning/VehicleInfo~%uint32 id~%string label~%geometry_msgs/PolygonStamped convex_hull~%float64 length~%float64 width~%float64 height~%Point actor_pos~%Point actor_rel_pos~%Vector3D actor_vel~%Vector3D actor_rel_vel~%Vector3D actor_acc~%float64 actor_psi~%float64 actor_speed~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rl_planning/Point~%float64 x ~%float64 y ~%float64 z ~%~%================================================================================~%MSG: rl_planning/Vector3D~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleInfoBatch>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicle_info_batch) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleInfoBatch>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleInfoBatch
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_info_batch (vehicle_info_batch msg))
))
