; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RoadMarkList.msg.html

(cl:defclass <RoadMarkList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roadmarks
    :reader roadmarks
    :initarg :roadmarks
    :type (cl:vector ros_interface-msg:RoadMark)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:RoadMark :initial-element (cl:make-instance 'ros_interface-msg:RoadMark))))
)

(cl:defclass RoadMarkList (<RoadMarkList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMarkList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMarkList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RoadMarkList> is deprecated: use ros_interface-msg:RoadMarkList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoadMarkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roadmarks-val :lambda-list '(m))
(cl:defmethod roadmarks-val ((m <RoadMarkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:roadmarks-val is deprecated.  Use ros_interface-msg:roadmarks instead.")
  (roadmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMarkList>) ostream)
  "Serializes a message object of type '<RoadMarkList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roadmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'roadmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMarkList>) istream)
  "Deserializes a message object of type '<RoadMarkList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roadmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roadmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:RoadMark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMarkList>)))
  "Returns string type for a message object of type '<RoadMarkList>"
  "ros_interface/RoadMarkList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMarkList)))
  "Returns string type for a message object of type 'RoadMarkList"
  "ros_interface/RoadMarkList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMarkList>)))
  "Returns md5sum for a message object of type '<RoadMarkList>"
  "167f3e013a1861ca3ba3feb2f5be99a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMarkList)))
  "Returns md5sum for a message object of type 'RoadMarkList"
  "167f3e013a1861ca3ba3feb2f5be99a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMarkList>)))
  "Returns full string definition for message of type '<RoadMarkList>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%RoadMark[] roadmarks # 交通标识列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/RoadMark~%float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m~%float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m~%float64   x     # 质心坐标x~%float64   y     # 质心坐标y~%float64   z     # 质心坐标z~%float64   confidence     # 置信度[0 - 1]~%int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMarkList)))
  "Returns full string definition for message of type 'RoadMarkList"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%RoadMark[] roadmarks # 交通标识列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/RoadMark~%float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m~%float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m~%float64   x     # 质心坐标x~%float64   y     # 质心坐标y~%float64   z     # 质心坐标z~%float64   confidence     # 置信度[0 - 1]~%int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMarkList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roadmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMarkList>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMarkList
    (cl:cons ':header (header msg))
    (cl:cons ':roadmarks (roadmarks msg))
))
