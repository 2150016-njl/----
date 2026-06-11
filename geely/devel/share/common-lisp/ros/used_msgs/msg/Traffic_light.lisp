; Auto-generated. Do not edit!


(cl:in-package used_msgs-msg)


;//! \htmlinclude Traffic_light.msg.html

(cl:defclass <Traffic_light> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_light_status
    :reader left_light_status
    :initarg :left_light_status
    :type cl:fixnum
    :initform 0)
   (straight_light_status
    :reader straight_light_status
    :initarg :straight_light_status
    :type cl:fixnum
    :initform 0)
   (right_light_status
    :reader right_light_status
    :initarg :right_light_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Traffic_light (<Traffic_light>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Traffic_light>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Traffic_light)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name used_msgs-msg:<Traffic_light> is deprecated: use used_msgs-msg:Traffic_light instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:header-val is deprecated.  Use used_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_light_status-val :lambda-list '(m))
(cl:defmethod left_light_status-val ((m <Traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:left_light_status-val is deprecated.  Use used_msgs-msg:left_light_status instead.")
  (left_light_status m))

(cl:ensure-generic-function 'straight_light_status-val :lambda-list '(m))
(cl:defmethod straight_light_status-val ((m <Traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:straight_light_status-val is deprecated.  Use used_msgs-msg:straight_light_status instead.")
  (straight_light_status m))

(cl:ensure-generic-function 'right_light_status-val :lambda-list '(m))
(cl:defmethod right_light_status-val ((m <Traffic_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader used_msgs-msg:right_light_status-val is deprecated.  Use used_msgs-msg:right_light_status instead.")
  (right_light_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Traffic_light>) ostream)
  "Serializes a message object of type '<Traffic_light>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'straight_light_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Traffic_light>) istream)
  "Deserializes a message object of type '<Traffic_light>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'straight_light_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Traffic_light>)))
  "Returns string type for a message object of type '<Traffic_light>"
  "used_msgs/Traffic_light")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Traffic_light)))
  "Returns string type for a message object of type 'Traffic_light"
  "used_msgs/Traffic_light")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Traffic_light>)))
  "Returns md5sum for a message object of type '<Traffic_light>"
  "e6c7743f4ef479871efcca7fc31ddd3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Traffic_light)))
  "Returns md5sum for a message object of type 'Traffic_light"
  "e6c7743f4ef479871efcca7fc31ddd3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Traffic_light>)))
  "Returns full string definition for message of type '<Traffic_light>"
  (cl:format cl:nil "Header header~%uint8 left_light_status~%uint8 straight_light_status~%uint8 right_light_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Traffic_light)))
  "Returns full string definition for message of type 'Traffic_light"
  (cl:format cl:nil "Header header~%uint8 left_light_status~%uint8 straight_light_status~%uint8 right_light_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Traffic_light>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Traffic_light>))
  "Converts a ROS message object to a list"
  (cl:list 'Traffic_light
    (cl:cons ':header (header msg))
    (cl:cons ':left_light_status (left_light_status msg))
    (cl:cons ':straight_light_status (straight_light_status msg))
    (cl:cons ':right_light_status (right_light_status msg))
))
