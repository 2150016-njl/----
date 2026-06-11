; Auto-generated. Do not edit!


(cl:in-package interface-msg)


;//! \htmlinclude Lanes.msg.html

(cl:defclass <Lanes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (curr_idx
    :reader curr_idx
    :initarg :curr_idx
    :type cl:fixnum
    :initform 0)
   (target_idxes
    :reader target_idxes
    :initarg :target_idxes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector interface-msg:Lane)
   :initform (cl:make-array 0 :element-type 'interface-msg:Lane :initial-element (cl:make-instance 'interface-msg:Lane))))
)

(cl:defclass Lanes (<Lanes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lanes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lanes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-msg:<Lanes> is deprecated: use interface-msg:Lanes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Lanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:header-val is deprecated.  Use interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'curr_idx-val :lambda-list '(m))
(cl:defmethod curr_idx-val ((m <Lanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:curr_idx-val is deprecated.  Use interface-msg:curr_idx instead.")
  (curr_idx m))

(cl:ensure-generic-function 'target_idxes-val :lambda-list '(m))
(cl:defmethod target_idxes-val ((m <Lanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:target_idxes-val is deprecated.  Use interface-msg:target_idxes instead.")
  (target_idxes m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <Lanes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:lanes-val is deprecated.  Use interface-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lanes>) ostream)
  "Serializes a message object of type '<Lanes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'curr_idx)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_idxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'target_idxes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lanes>) istream)
  "Deserializes a message object of type '<Lanes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'curr_idx)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_idxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_idxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'interface-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lanes>)))
  "Returns string type for a message object of type '<Lanes>"
  "interface/Lanes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lanes)))
  "Returns string type for a message object of type 'Lanes"
  "interface/Lanes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lanes>)))
  "Returns md5sum for a message object of type '<Lanes>"
  "65d6cd6912b68737ee9f67a1266d243c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lanes)))
  "Returns md5sum for a message object of type 'Lanes"
  "65d6cd6912b68737ee9f67a1266d243c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lanes>)))
  "Returns full string definition for message of type '<Lanes>"
  (cl:format cl:nil "Header header~%uint8 curr_idx ~%uint8[] target_idxes~%Lane[] lanes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: interface/Lane~%uint8 lane_idx~%bool left_traverse_flag ~%bool right_traverse_flag~%float64 lane_width~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lanes)))
  "Returns full string definition for message of type 'Lanes"
  (cl:format cl:nil "Header header~%uint8 curr_idx ~%uint8[] target_idxes~%Lane[] lanes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: interface/Lane~%uint8 lane_idx~%bool left_traverse_flag ~%bool right_traverse_flag~%float64 lane_width~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lanes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_idxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lanes>))
  "Converts a ROS message object to a list"
  (cl:list 'Lanes
    (cl:cons ':header (header msg))
    (cl:cons ':curr_idx (curr_idx msg))
    (cl:cons ':target_idxes (target_idxes msg))
    (cl:cons ':lanes (lanes msg))
))
