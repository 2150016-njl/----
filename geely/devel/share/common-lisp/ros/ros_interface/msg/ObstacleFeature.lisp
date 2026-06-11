; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ObstacleFeature.msg.html

(cl:defclass <ObstacleFeature> (roslisp-msg-protocol:ros-message)
  ((obstacle_id
    :reader obstacle_id
    :initarg :obstacle_id
    :type cl:integer
    :initform 0)
   (polygon_point
    :reader polygon_point
    :initarg :polygon_point
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (position
    :reader position
    :initarg :position
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (front_position
    :reader front_position
    :initarg :front_position
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (velocity
    :reader velocity
    :initarg :velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (raw_velocity
    :reader raw_velocity
    :initarg :raw_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (velocity_heading
    :reader velocity_heading
    :initarg :velocity_heading
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (tracking_time
    :reader tracking_time
    :initarg :tracking_time
    :type cl:float
    :initform 0.0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (t_position
    :reader t_position
    :initarg :t_position
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (t_velocity
    :reader t_velocity
    :initarg :t_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (t_velocity_heading
    :reader t_velocity_heading
    :initarg :t_velocity_heading
    :type cl:float
    :initform 0.0)
   (t_speed
    :reader t_speed
    :initarg :t_speed
    :type cl:float
    :initform 0.0)
   (t_acceleration
    :reader t_acceleration
    :initarg :t_acceleration
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (t_acc
    :reader t_acc
    :initarg :t_acc
    :type cl:float
    :initform 0.0)
   (is_still
    :reader is_still
    :initarg :is_still
    :type cl:boolean
    :initform cl:nil)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (label_update_time_delta
    :reader label_update_time_delta
    :initarg :label_update_time_delta
    :type cl:float
    :initform 0.0)
   (priority
    :reader priority
    :initarg :priority
    :type ros_interface-msg:ObstaclePriority
    :initform (cl:make-instance 'ros_interface-msg:ObstaclePriority))
   (is_near_junction
    :reader is_near_junction
    :initarg :is_near_junction
    :type cl:boolean
    :initform cl:nil)
   (future_trajectory_points
    :reader future_trajectory_points
    :initarg :future_trajectory_points
    :type (cl:vector ros_interface-msg:PredictionTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:PredictionTrajectoryPoint :initial-element (cl:make-instance 'ros_interface-msg:PredictionTrajectoryPoint)))
   (short_term_predicted_trajectory_points
    :reader short_term_predicted_trajectory_points
    :initarg :short_term_predicted_trajectory_points
    :type (cl:vector ros_interface-msg:TrajectoryPointInPrediction)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryPointInPrediction :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryPointInPrediction)))
   (predicted_trajectory
    :reader predicted_trajectory
    :initarg :predicted_trajectory
    :type (cl:vector ros_interface-msg:TrajectoryInPrediction)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryInPrediction :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryInPrediction)))
   (adc_trajectory_point
    :reader adc_trajectory_point
    :initarg :adc_trajectory_point
    :type (cl:vector ros_interface-msg:TrajectoryPointInPrediction)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryPointInPrediction :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryPointInPrediction))))
)

(cl:defclass ObstacleFeature (<ObstacleFeature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleFeature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleFeature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ObstacleFeature> is deprecated: use ros_interface-msg:ObstacleFeature instead.")))

(cl:ensure-generic-function 'obstacle_id-val :lambda-list '(m))
(cl:defmethod obstacle_id-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:obstacle_id-val is deprecated.  Use ros_interface-msg:obstacle_id instead.")
  (obstacle_id m))

(cl:ensure-generic-function 'polygon_point-val :lambda-list '(m))
(cl:defmethod polygon_point-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:polygon_point-val is deprecated.  Use ros_interface-msg:polygon_point instead.")
  (polygon_point m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position-val is deprecated.  Use ros_interface-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'front_position-val :lambda-list '(m))
(cl:defmethod front_position-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_position-val is deprecated.  Use ros_interface-msg:front_position instead.")
  (front_position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:velocity-val is deprecated.  Use ros_interface-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'raw_velocity-val :lambda-list '(m))
(cl:defmethod raw_velocity-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:raw_velocity-val is deprecated.  Use ros_interface-msg:raw_velocity instead.")
  (raw_velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acceleration-val is deprecated.  Use ros_interface-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'velocity_heading-val :lambda-list '(m))
(cl:defmethod velocity_heading-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:velocity_heading-val is deprecated.  Use ros_interface-msg:velocity_heading instead.")
  (velocity_heading m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:speed-val is deprecated.  Use ros_interface-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acc-val is deprecated.  Use ros_interface-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta-val is deprecated.  Use ros_interface-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:length-val is deprecated.  Use ros_interface-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:width-val is deprecated.  Use ros_interface-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:height-val is deprecated.  Use ros_interface-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'tracking_time-val :lambda-list '(m))
(cl:defmethod tracking_time-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:tracking_time-val is deprecated.  Use ros_interface-msg:tracking_time instead.")
  (tracking_time m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:timestamp-val is deprecated.  Use ros_interface-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 't_position-val :lambda-list '(m))
(cl:defmethod t_position-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:t_position-val is deprecated.  Use ros_interface-msg:t_position instead.")
  (t_position m))

(cl:ensure-generic-function 't_velocity-val :lambda-list '(m))
(cl:defmethod t_velocity-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:t_velocity-val is deprecated.  Use ros_interface-msg:t_velocity instead.")
  (t_velocity m))

(cl:ensure-generic-function 't_velocity_heading-val :lambda-list '(m))
(cl:defmethod t_velocity_heading-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:t_velocity_heading-val is deprecated.  Use ros_interface-msg:t_velocity_heading instead.")
  (t_velocity_heading m))

(cl:ensure-generic-function 't_speed-val :lambda-list '(m))
(cl:defmethod t_speed-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:t_speed-val is deprecated.  Use ros_interface-msg:t_speed instead.")
  (t_speed m))

(cl:ensure-generic-function 't_acceleration-val :lambda-list '(m))
(cl:defmethod t_acceleration-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:t_acceleration-val is deprecated.  Use ros_interface-msg:t_acceleration instead.")
  (t_acceleration m))

(cl:ensure-generic-function 't_acc-val :lambda-list '(m))
(cl:defmethod t_acc-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:t_acc-val is deprecated.  Use ros_interface-msg:t_acc instead.")
  (t_acc m))

(cl:ensure-generic-function 'is_still-val :lambda-list '(m))
(cl:defmethod is_still-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_still-val is deprecated.  Use ros_interface-msg:is_still instead.")
  (is_still m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:type-val is deprecated.  Use ros_interface-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'label_update_time_delta-val :lambda-list '(m))
(cl:defmethod label_update_time_delta-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:label_update_time_delta-val is deprecated.  Use ros_interface-msg:label_update_time_delta instead.")
  (label_update_time_delta m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:priority-val is deprecated.  Use ros_interface-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'is_near_junction-val :lambda-list '(m))
(cl:defmethod is_near_junction-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_near_junction-val is deprecated.  Use ros_interface-msg:is_near_junction instead.")
  (is_near_junction m))

(cl:ensure-generic-function 'future_trajectory_points-val :lambda-list '(m))
(cl:defmethod future_trajectory_points-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:future_trajectory_points-val is deprecated.  Use ros_interface-msg:future_trajectory_points instead.")
  (future_trajectory_points m))

(cl:ensure-generic-function 'short_term_predicted_trajectory_points-val :lambda-list '(m))
(cl:defmethod short_term_predicted_trajectory_points-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:short_term_predicted_trajectory_points-val is deprecated.  Use ros_interface-msg:short_term_predicted_trajectory_points instead.")
  (short_term_predicted_trajectory_points m))

(cl:ensure-generic-function 'predicted_trajectory-val :lambda-list '(m))
(cl:defmethod predicted_trajectory-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:predicted_trajectory-val is deprecated.  Use ros_interface-msg:predicted_trajectory instead.")
  (predicted_trajectory m))

(cl:ensure-generic-function 'adc_trajectory_point-val :lambda-list '(m))
(cl:defmethod adc_trajectory_point-val ((m <ObstacleFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:adc_trajectory_point-val is deprecated.  Use ros_interface-msg:adc_trajectory_point instead.")
  (adc_trajectory_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleFeature>) ostream)
  "Serializes a message object of type '<ObstacleFeature>"
  (cl:let* ((signed (cl:slot-value msg 'obstacle_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'raw_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tracking_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't_velocity_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_still) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'label_update_time_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'priority) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_near_junction) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'future_trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'future_trajectory_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'short_term_predicted_trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'short_term_predicted_trajectory_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predicted_trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predicted_trajectory))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'adc_trajectory_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'adc_trajectory_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleFeature>) istream)
  "Deserializes a message object of type '<ObstacleFeature>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacle_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'raw_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tracking_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_velocity_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_still) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'label_update_time_delta) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'priority) istream)
    (cl:setf (cl:slot-value msg 'is_near_junction) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'future_trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'future_trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:PredictionTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'short_term_predicted_trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'short_term_predicted_trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryPointInPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predicted_trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predicted_trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryInPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'adc_trajectory_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'adc_trajectory_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryPointInPrediction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleFeature>)))
  "Returns string type for a message object of type '<ObstacleFeature>"
  "ros_interface/ObstacleFeature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleFeature)))
  "Returns string type for a message object of type 'ObstacleFeature"
  "ros_interface/ObstacleFeature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleFeature>)))
  "Returns md5sum for a message object of type '<ObstacleFeature>"
  "f5db825b7f5c05c840b2b7624a450755")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleFeature)))
  "Returns md5sum for a message object of type 'ObstacleFeature"
  "f5db825b7f5c05c840b2b7624a450755")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleFeature>)))
  "Returns full string definition for message of type '<ObstacleFeature>"
  (cl:format cl:nil "int32   obstacle_id     # Obstacle ID~%Point3D   polygon_point     # 障碍物边框点列~%Point3D   position     #  ~%Point3D   front_position     #  ~%Point3D   velocity     #  ~%Point3D   raw_velocity     # from perception~%Point3D   acceleration     #  ~%float64   velocity_heading     #  ~%float64   speed     #  ~%float64   acc     #  ~%float64   theta     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%float64   tracking_time     #  ~%float64   timestamp     #  ~%Point3D   t_position     #  ~%Point3D   t_velocity     # [deprecated = true]~%float64   t_velocity_heading     # [deprecated = true]~%float64   t_speed     # [deprecated = true]~%Point3D   t_acceleration     # [deprecated = true]~%float64   t_acc     # [deprecated = true]~%bool   is_still     # [deprecated = false]~%int32   type     # 感知到的障碍物类型         0-UNKNOWN, 1-UNKNOWN_MOVABLE, 2-UNKNOWN_UNMOVABLE, 3-PEDESTRIAN, 4-BICYCLE,     5-VEHICLE~%float64   label_update_time_delta     #  ~%ObstaclePriority   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%bool   is_near_junction     #  ~%PredictionTrajectoryPoint[] future_trajectory_points # Obstacle ground-truth labels:~%TrajectoryPointInPrediction[] short_term_predicted_trajectory_points # Obstacle short-term predicted trajectory points~%TrajectoryInPrediction[] predicted_trajectory # Obstacle predicted trajectories~%TrajectoryPointInPrediction[] adc_trajectory_point # ADC trajectory at the same frame~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ObstaclePriority~%int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%================================================================================~%MSG: ros_interface/PredictionTrajectoryPoint~%Point3D   predition_path_point     #  ~%float64   timestamp     #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPointInPrediction~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/TrajectoryInPrediction~%float64   probability     # probability of this trajectory~%TrajectoryPoint[] trajectory_points #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleFeature)))
  "Returns full string definition for message of type 'ObstacleFeature"
  (cl:format cl:nil "int32   obstacle_id     # Obstacle ID~%Point3D   polygon_point     # 障碍物边框点列~%Point3D   position     #  ~%Point3D   front_position     #  ~%Point3D   velocity     #  ~%Point3D   raw_velocity     # from perception~%Point3D   acceleration     #  ~%float64   velocity_heading     #  ~%float64   speed     #  ~%float64   acc     #  ~%float64   theta     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%float64   tracking_time     #  ~%float64   timestamp     #  ~%Point3D   t_position     #  ~%Point3D   t_velocity     # [deprecated = true]~%float64   t_velocity_heading     # [deprecated = true]~%float64   t_speed     # [deprecated = true]~%Point3D   t_acceleration     # [deprecated = true]~%float64   t_acc     # [deprecated = true]~%bool   is_still     # [deprecated = false]~%int32   type     # 感知到的障碍物类型         0-UNKNOWN, 1-UNKNOWN_MOVABLE, 2-UNKNOWN_UNMOVABLE, 3-PEDESTRIAN, 4-BICYCLE,     5-VEHICLE~%float64   label_update_time_delta     #  ~%ObstaclePriority   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%bool   is_near_junction     #  ~%PredictionTrajectoryPoint[] future_trajectory_points # Obstacle ground-truth labels:~%TrajectoryPointInPrediction[] short_term_predicted_trajectory_points # Obstacle short-term predicted trajectory points~%TrajectoryInPrediction[] predicted_trajectory # Obstacle predicted trajectories~%TrajectoryPointInPrediction[] adc_trajectory_point # ADC trajectory at the same frame~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ObstaclePriority~%int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;~%~%================================================================================~%MSG: ros_interface/PredictionTrajectoryPoint~%Point3D   predition_path_point     #  ~%float64   timestamp     #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPointInPrediction~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/TrajectoryInPrediction~%float64   probability     # probability of this trajectory~%TrajectoryPoint[] trajectory_points #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleFeature>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'raw_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_velocity))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_acceleration))
     8
     1
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'priority))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'future_trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'short_term_predicted_trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predicted_trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'adc_trajectory_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleFeature>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleFeature
    (cl:cons ':obstacle_id (obstacle_id msg))
    (cl:cons ':polygon_point (polygon_point msg))
    (cl:cons ':position (position msg))
    (cl:cons ':front_position (front_position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':raw_velocity (raw_velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':velocity_heading (velocity_heading msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':tracking_time (tracking_time msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':t_position (t_position msg))
    (cl:cons ':t_velocity (t_velocity msg))
    (cl:cons ':t_velocity_heading (t_velocity_heading msg))
    (cl:cons ':t_speed (t_speed msg))
    (cl:cons ':t_acceleration (t_acceleration msg))
    (cl:cons ':t_acc (t_acc msg))
    (cl:cons ':is_still (is_still msg))
    (cl:cons ':type (type msg))
    (cl:cons ':label_update_time_delta (label_update_time_delta msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':is_near_junction (is_near_junction msg))
    (cl:cons ':future_trajectory_points (future_trajectory_points msg))
    (cl:cons ':short_term_predicted_trajectory_points (short_term_predicted_trajectory_points msg))
    (cl:cons ':predicted_trajectory (predicted_trajectory msg))
    (cl:cons ':adc_trajectory_point (adc_trajectory_point msg))
))
