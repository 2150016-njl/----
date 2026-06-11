; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ParkingRoi.msg.html

(cl:defclass <ParkingRoi> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles_vec
    :reader obstacles_vec
    :initarg :obstacles_vec
    :type (cl:vector ros_interface-msg:Point2dList)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point2dList :initial-element (cl:make-instance 'ros_interface-msg:Point2dList))))
)

(cl:defclass ParkingRoi (<ParkingRoi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingRoi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingRoi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ParkingRoi> is deprecated: use ros_interface-msg:ParkingRoi instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingRoi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles_vec-val :lambda-list '(m))
(cl:defmethod obstacles_vec-val ((m <ParkingRoi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:obstacles_vec-val is deprecated.  Use ros_interface-msg:obstacles_vec instead.")
  (obstacles_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingRoi>) ostream)
  "Serializes a message object of type '<ParkingRoi>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingRoi>) istream)
  "Deserializes a message object of type '<ParkingRoi>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point2dList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingRoi>)))
  "Returns string type for a message object of type '<ParkingRoi>"
  "ros_interface/ParkingRoi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingRoi)))
  "Returns string type for a message object of type 'ParkingRoi"
  "ros_interface/ParkingRoi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingRoi>)))
  "Returns md5sum for a message object of type '<ParkingRoi>"
  "ebe8c02013248ccb80975a9d10310742")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingRoi)))
  "Returns md5sum for a message object of type 'ParkingRoi"
  "ebe8c02013248ccb80975a9d10310742")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingRoi>)))
  "Returns full string definition for message of type '<ParkingRoi>"
  (cl:format cl:nil "Header   header     # 消息头~%Point2dList[] obstacles_vec # 泊车可行驶区域可视化~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point2dList~%Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingRoi)))
  "Returns full string definition for message of type 'ParkingRoi"
  (cl:format cl:nil "Header   header     # 消息头~%Point2dList[] obstacles_vec # 泊车可行驶区域可视化~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point2dList~%Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingRoi>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingRoi>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingRoi
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles_vec (obstacles_vec msg))
))
