; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude SensorCalibrator.msg.html

(cl:defclass <SensorCalibrator> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (angle
    :reader angle
    :initarg :angle
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass SensorCalibrator (<SensorCalibrator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorCalibrator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorCalibrator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<SensorCalibrator> is deprecated: use ros_interface-msg:SensorCalibrator instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SensorCalibrator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pose-val is deprecated.  Use ros_interface-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SensorCalibrator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angle-val is deprecated.  Use ros_interface-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorCalibrator>) ostream)
  "Serializes a message object of type '<SensorCalibrator>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorCalibrator>) istream)
  "Deserializes a message object of type '<SensorCalibrator>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorCalibrator>)))
  "Returns string type for a message object of type '<SensorCalibrator>"
  "ros_interface/SensorCalibrator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorCalibrator)))
  "Returns string type for a message object of type 'SensorCalibrator"
  "ros_interface/SensorCalibrator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorCalibrator>)))
  "Returns md5sum for a message object of type '<SensorCalibrator>"
  "8973a94a8ceb6b4c6fa358ef1bfb5314")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorCalibrator)))
  "Returns md5sum for a message object of type 'SensorCalibrator"
  "8973a94a8ceb6b4c6fa358ef1bfb5314")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorCalibrator>)))
  "Returns full string definition for message of type '<SensorCalibrator>"
  (cl:format cl:nil "Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorCalibrator)))
  "Returns full string definition for message of type 'SensorCalibrator"
  (cl:format cl:nil "Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorCalibrator>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorCalibrator>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorCalibrator
    (cl:cons ':pose (pose msg))
    (cl:cons ':angle (angle msg))
))
