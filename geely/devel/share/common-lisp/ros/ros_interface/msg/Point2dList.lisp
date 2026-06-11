; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Point2dList.msg.html

(cl:defclass <Point2dList> (roslisp-msg-protocol:ros-message)
  ((point2d_list
    :reader point2d_list
    :initarg :point2d_list
    :type (cl:vector ros_interface-msg:Point2D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point2D :initial-element (cl:make-instance 'ros_interface-msg:Point2D))))
)

(cl:defclass Point2dList (<Point2dList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point2dList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point2dList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Point2dList> is deprecated: use ros_interface-msg:Point2dList instead.")))

(cl:ensure-generic-function 'point2d_list-val :lambda-list '(m))
(cl:defmethod point2d_list-val ((m <Point2dList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:point2d_list-val is deprecated.  Use ros_interface-msg:point2d_list instead.")
  (point2d_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point2dList>) ostream)
  "Serializes a message object of type '<Point2dList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point2d_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point2d_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point2dList>) istream)
  "Deserializes a message object of type '<Point2dList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point2d_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point2d_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point2dList>)))
  "Returns string type for a message object of type '<Point2dList>"
  "ros_interface/Point2dList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point2dList)))
  "Returns string type for a message object of type 'Point2dList"
  "ros_interface/Point2dList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point2dList>)))
  "Returns md5sum for a message object of type '<Point2dList>"
  "9206e603a48b83293989b183293e1078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point2dList)))
  "Returns md5sum for a message object of type 'Point2dList"
  "9206e603a48b83293989b183293e1078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point2dList>)))
  "Returns full string definition for message of type '<Point2dList>"
  (cl:format cl:nil "Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point2dList)))
  "Returns full string definition for message of type 'Point2dList"
  (cl:format cl:nil "Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point2dList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point2d_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point2dList>))
  "Converts a ROS message object to a list"
  (cl:list 'Point2dList
    (cl:cons ':point2d_list (point2d_list msg))
))
