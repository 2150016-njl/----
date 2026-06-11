; Auto-generated. Do not edit!


(cl:in-package plusgo_msgs-msg)


;//! \htmlinclude Objects.msg.html

(cl:defclass <Objects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector plusgo_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'plusgo_msgs-msg:Object :initial-element (cl:make-instance 'plusgo_msgs-msg:Object))))
)

(cl:defclass Objects (<Objects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Objects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Objects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plusgo_msgs-msg:<Objects> is deprecated: use plusgo_msgs-msg:Objects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plusgo_msgs-msg:header-val is deprecated.  Use plusgo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <Objects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plusgo_msgs-msg:objects-val is deprecated.  Use plusgo_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Objects>) ostream)
  "Serializes a message object of type '<Objects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Objects>) istream)
  "Deserializes a message object of type '<Objects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'plusgo_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Objects>)))
  "Returns string type for a message object of type '<Objects>"
  "plusgo_msgs/Objects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Objects)))
  "Returns string type for a message object of type 'Objects"
  "plusgo_msgs/Objects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Objects>)))
  "Returns md5sum for a message object of type '<Objects>"
  "0a6120d4df241a7f1dc2a96922ad41dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Objects)))
  "Returns md5sum for a message object of type 'Objects"
  "0a6120d4df241a7f1dc2a96922ad41dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Objects>)))
  "Returns full string definition for message of type '<Objects>"
  (cl:format cl:nil "std_msgs/Header header~%Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: plusgo_msgs/Object~%std_msgs/Header header~%uint8  source~%float32 exist_confidence~%~%# \"UNKNOWN\",\"CONE\",\"PED\",\"BIC\",\"CAR\",\"TRUCK_BUS\",\"ULTRA_VEHICLE\"~%int64  type~%float32 type_confidence~%int64  track_id~%float32 tracking_time~%~%int64  motion_state~%~%geometry_msgs/Point32 anchor~%~%# the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)~%float32 theta~%~%# the main direction is the bbox length orientation~%geometry_msgs/Vector3 direction~%geometry_msgs/Vector3 direction_cov~%geometry_msgs/Point32  center~%geometry_msgs/Point32  center_cov~%~%# size of the oriented boundingbox, length is the size in the main direction~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 size_cov~%~%bool is_absolute_position~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 velocity_cov~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 acceleration_cov~%~%float32 angle_velocity~%float32 angle_velocity_cov~%float32 angle_acceleration~%float32 angle_acceleration_cov~%~%geometry_msgs/Point32[]  trajectory~%geometry_msgs/Point32[]  history_type~%geometry_msgs/Vector3[]  history_velocity~%~%Polygon    polygon~%ImageRect  rect~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: plusgo_msgs/Polygon~%float32 min_height~%float32 max_height~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: plusgo_msgs/ImageRect~%string  image_frame~%int32   x~%int32   y~%int32   x_~%int32   y_~%int32   width~%int32   height~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Objects)))
  "Returns full string definition for message of type 'Objects"
  (cl:format cl:nil "std_msgs/Header header~%Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: plusgo_msgs/Object~%std_msgs/Header header~%uint8  source~%float32 exist_confidence~%~%# \"UNKNOWN\",\"CONE\",\"PED\",\"BIC\",\"CAR\",\"TRUCK_BUS\",\"ULTRA_VEHICLE\"~%int64  type~%float32 type_confidence~%int64  track_id~%float32 tracking_time~%~%int64  motion_state~%~%geometry_msgs/Point32 anchor~%~%# the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)~%float32 theta~%~%# the main direction is the bbox length orientation~%geometry_msgs/Vector3 direction~%geometry_msgs/Vector3 direction_cov~%geometry_msgs/Point32  center~%geometry_msgs/Point32  center_cov~%~%# size of the oriented boundingbox, length is the size in the main direction~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 size_cov~%~%bool is_absolute_position~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 velocity_cov~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 acceleration_cov~%~%float32 angle_velocity~%float32 angle_velocity_cov~%float32 angle_acceleration~%float32 angle_acceleration_cov~%~%geometry_msgs/Point32[]  trajectory~%geometry_msgs/Point32[]  history_type~%geometry_msgs/Vector3[]  history_velocity~%~%Polygon    polygon~%ImageRect  rect~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: plusgo_msgs/Polygon~%float32 min_height~%float32 max_height~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: plusgo_msgs/ImageRect~%string  image_frame~%int32   x~%int32   y~%int32   x_~%int32   y_~%int32   width~%int32   height~%float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Objects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Objects>))
  "Converts a ROS message object to a list"
  (cl:list 'Objects
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
