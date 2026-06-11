; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude CameraParkingStopper.msg.html

(cl:defclass <CameraParkingStopper> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bbox2d
    :reader bbox2d
    :initarg :bbox2d
    :type ros_interface-msg:BBox2D
    :initform (cl:make-instance 'ros_interface-msg:BBox2D)))
)

(cl:defclass CameraParkingStopper (<CameraParkingStopper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraParkingStopper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraParkingStopper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<CameraParkingStopper> is deprecated: use ros_interface-msg:CameraParkingStopper instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bbox2d-val :lambda-list '(m))
(cl:defmethod bbox2d-val ((m <CameraParkingStopper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:bbox2d-val is deprecated.  Use ros_interface-msg:bbox2d instead.")
  (bbox2d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraParkingStopper>) ostream)
  "Serializes a message object of type '<CameraParkingStopper>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox2d) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraParkingStopper>) istream)
  "Deserializes a message object of type '<CameraParkingStopper>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox2d) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraParkingStopper>)))
  "Returns string type for a message object of type '<CameraParkingStopper>"
  "ros_interface/CameraParkingStopper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraParkingStopper)))
  "Returns string type for a message object of type 'CameraParkingStopper"
  "ros_interface/CameraParkingStopper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraParkingStopper>)))
  "Returns md5sum for a message object of type '<CameraParkingStopper>"
  "4cd67ca0205cbd6d75f4d6d20cee3457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraParkingStopper)))
  "Returns md5sum for a message object of type 'CameraParkingStopper"
  "4cd67ca0205cbd6d75f4d6d20cee3457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraParkingStopper>)))
  "Returns full string definition for message of type '<CameraParkingStopper>"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%BBox2D   bbox2d     # 限位器图像框~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraParkingStopper)))
  "Returns full string definition for message of type 'CameraParkingStopper"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%BBox2D   bbox2d     # 限位器图像框~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraParkingStopper>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox2d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraParkingStopper>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraParkingStopper
    (cl:cons ':header (header msg))
    (cl:cons ':bbox2d (bbox2d msg))
))
