; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ParkingStopper.msg.html

(cl:defclass <ParkingStopper> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (center_point_vehicle
    :reader center_point_vehicle
    :initarg :center_point_vehicle
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (center_point_abs
    :reader center_point_abs
    :initarg :center_point_abs
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (stopper_points_vehicle
    :reader stopper_points_vehicle
    :initarg :stopper_points_vehicle
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D)))
   (stopper_points_abs
    :reader stopper_points_abs
    :initarg :stopper_points_abs
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D))))
)

(cl:defclass ParkingStopper (<ParkingStopper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingStopper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingStopper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ParkingStopper> is deprecated: use ros_interface-msg:ParkingStopper instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'center_point_vehicle-val :lambda-list '(m))
(cl:defmethod center_point_vehicle-val ((m <ParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:center_point_vehicle-val is deprecated.  Use ros_interface-msg:center_point_vehicle instead.")
  (center_point_vehicle m))

(cl:ensure-generic-function 'center_point_abs-val :lambda-list '(m))
(cl:defmethod center_point_abs-val ((m <ParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:center_point_abs-val is deprecated.  Use ros_interface-msg:center_point_abs instead.")
  (center_point_abs m))

(cl:ensure-generic-function 'stopper_points_vehicle-val :lambda-list '(m))
(cl:defmethod stopper_points_vehicle-val ((m <ParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:stopper_points_vehicle-val is deprecated.  Use ros_interface-msg:stopper_points_vehicle instead.")
  (stopper_points_vehicle m))

(cl:ensure-generic-function 'stopper_points_abs-val :lambda-list '(m))
(cl:defmethod stopper_points_abs-val ((m <ParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:stopper_points_abs-val is deprecated.  Use ros_interface-msg:stopper_points_abs instead.")
  (stopper_points_abs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingStopper>) ostream)
  "Serializes a message object of type '<ParkingStopper>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point_vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point_abs) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stopper_points_vehicle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stopper_points_vehicle))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stopper_points_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stopper_points_abs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingStopper>) istream)
  "Deserializes a message object of type '<ParkingStopper>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point_vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point_abs) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stopper_points_vehicle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stopper_points_vehicle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stopper_points_abs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stopper_points_abs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingStopper>)))
  "Returns string type for a message object of type '<ParkingStopper>"
  "ros_interface/ParkingStopper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingStopper)))
  "Returns string type for a message object of type 'ParkingStopper"
  "ros_interface/ParkingStopper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingStopper>)))
  "Returns md5sum for a message object of type '<ParkingStopper>"
  "02850809483c04a8bdc47ff0256be651")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingStopper)))
  "Returns md5sum for a message object of type 'ParkingStopper"
  "02850809483c04a8bdc47ff0256be651")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingStopper>)))
  "Returns full string definition for message of type '<ParkingStopper>"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标~%Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标~%Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点~%Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingStopper)))
  "Returns full string definition for message of type 'ParkingStopper"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标~%Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标~%Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点~%Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingStopper>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point_vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point_abs))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stopper_points_vehicle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stopper_points_abs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingStopper>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingStopper
    (cl:cons ':header (header msg))
    (cl:cons ':center_point_vehicle (center_point_vehicle msg))
    (cl:cons ':center_point_abs (center_point_abs msg))
    (cl:cons ':stopper_points_vehicle (stopper_points_vehicle msg))
    (cl:cons ':stopper_points_abs (stopper_points_abs msg))
))
