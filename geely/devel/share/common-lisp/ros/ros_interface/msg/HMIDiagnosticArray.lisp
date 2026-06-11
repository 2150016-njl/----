; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMIDiagnosticArray.msg.html

(cl:defclass <HMIDiagnosticArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type (cl:vector ros_interface-msg:HMIDiagnosticStatus)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:HMIDiagnosticStatus :initial-element (cl:make-instance 'ros_interface-msg:HMIDiagnosticStatus))))
)

(cl:defclass HMIDiagnosticArray (<HMIDiagnosticArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIDiagnosticArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIDiagnosticArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMIDiagnosticArray> is deprecated: use ros_interface-msg:HMIDiagnosticArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIDiagnosticArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <HMIDiagnosticArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:status-val is deprecated.  Use ros_interface-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIDiagnosticArray>) ostream)
  "Serializes a message object of type '<HMIDiagnosticArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIDiagnosticArray>) istream)
  "Deserializes a message object of type '<HMIDiagnosticArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:HMIDiagnosticStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIDiagnosticArray>)))
  "Returns string type for a message object of type '<HMIDiagnosticArray>"
  "ros_interface/HMIDiagnosticArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIDiagnosticArray)))
  "Returns string type for a message object of type 'HMIDiagnosticArray"
  "ros_interface/HMIDiagnosticArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIDiagnosticArray>)))
  "Returns md5sum for a message object of type '<HMIDiagnosticArray>"
  "669c7d98cfa9447f651f496a83074801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIDiagnosticArray)))
  "Returns md5sum for a message object of type 'HMIDiagnosticArray"
  "669c7d98cfa9447f651f496a83074801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIDiagnosticArray>)))
  "Returns full string definition for message of type '<HMIDiagnosticArray>"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%HMIDiagnosticStatus[] status #  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/HMIDiagnosticStatus~%int32   id     #  ~%int32   level     # // 诊断状态~%string   name     # //测试/组件报告的描述~%string   message     # // 状态描述~%string   hardware_id     # // 硬件的唯一描述~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIDiagnosticArray)))
  "Returns full string definition for message of type 'HMIDiagnosticArray"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%HMIDiagnosticStatus[] status #  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/HMIDiagnosticStatus~%int32   id     #  ~%int32   level     # // 诊断状态~%string   name     # //测试/组件报告的描述~%string   message     # // 状态描述~%string   hardware_id     # // 硬件的唯一描述~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIDiagnosticArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIDiagnosticArray>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIDiagnosticArray
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
