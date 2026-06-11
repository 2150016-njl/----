; Auto-generated. Do not edit!


(cl:in-package interface-msg)


;//! \htmlinclude Route.msg.html

(cl:defclass <Route> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector interface-msg:Route_point)
   :initform (cl:make-array 0 :element-type 'interface-msg:Route_point :initial-element (cl:make-instance 'interface-msg:Route_point))))
)

(cl:defclass Route (<Route>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Route>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Route)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interface-msg:<Route> is deprecated: use interface-msg:Route instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interface-msg:points-val is deprecated.  Use interface-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Route>) ostream)
  "Serializes a message object of type '<Route>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Route>) istream)
  "Deserializes a message object of type '<Route>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'interface-msg:Route_point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Route>)))
  "Returns string type for a message object of type '<Route>"
  "interface/Route")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Route)))
  "Returns string type for a message object of type 'Route"
  "interface/Route")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Route>)))
  "Returns md5sum for a message object of type '<Route>"
  "8f02263beef99aa03117a577a3eb879d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Route)))
  "Returns md5sum for a message object of type 'Route"
  "8f02263beef99aa03117a577a3eb879d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Route>)))
  "Returns full string definition for message of type '<Route>"
  (cl:format cl:nil "Route_point[] points~%================================================================================~%MSG: interface/Route_point~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Route)))
  "Returns full string definition for message of type 'Route"
  (cl:format cl:nil "Route_point[] points~%================================================================================~%MSG: interface/Route_point~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Route>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Route>))
  "Converts a ROS message object to a list"
  (cl:list 'Route
    (cl:cons ':points (points msg))
))
