; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude EndPoints.msg.html

(cl:defclass <EndPoints> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (end
    :reader end
    :initarg :end
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D)))
)

(cl:defclass EndPoints (<EndPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<EndPoints> is deprecated: use ros_interface-msg:EndPoints instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <EndPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:start-val is deprecated.  Use ros_interface-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <EndPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:end-val is deprecated.  Use ros_interface-msg:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndPoints>) ostream)
  "Serializes a message object of type '<EndPoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndPoints>) istream)
  "Deserializes a message object of type '<EndPoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndPoints>)))
  "Returns string type for a message object of type '<EndPoints>"
  "ros_interface/EndPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndPoints)))
  "Returns string type for a message object of type 'EndPoints"
  "ros_interface/EndPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndPoints>)))
  "Returns md5sum for a message object of type '<EndPoints>"
  "485e3b7bfcfe5392ca8833381629557b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndPoints)))
  "Returns md5sum for a message object of type 'EndPoints"
  "485e3b7bfcfe5392ca8833381629557b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndPoints>)))
  "Returns full string definition for message of type '<EndPoints>"
  (cl:format cl:nil "Point2D   start     # 车道线上顶点~%Point2D   end     # 车道线下顶点~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndPoints)))
  "Returns full string definition for message of type 'EndPoints"
  (cl:format cl:nil "Point2D   start     # 车道线上顶点~%Point2D   end     # 车道线下顶点~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndPoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'EndPoints
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
