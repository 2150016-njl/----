; Auto-generated. Do not edit!


(cl:in-package GNSS_Decoding_py-msg)


;//! \htmlinclude GNSS_Output.msg.html

(cl:defclass <GNSS_Output> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (OutputRecordType
    :reader OutputRecordType
    :initarg :OutputRecordType
    :type cl:boolean
    :initform cl:nil)
   (RecordLength
    :reader RecordLength
    :initarg :RecordLength
    :type cl:boolean
    :initform cl:nil)
   (GPSWeek
    :reader GPSWeek
    :initarg :GPSWeek
    :type cl:fixnum
    :initform 0)
   (GPSTime
    :reader GPSTime
    :initarg :GPSTime
    :type cl:integer
    :initform 0)
   (IMUAlignmentStatus
    :reader IMUAlignmentStatus
    :initarg :IMUAlignmentStatus
    :type cl:boolean
    :initform cl:nil)
   (GNSSStatus
    :reader GNSSStatus
    :initarg :GNSSStatus
    :type cl:boolean
    :initform cl:nil)
   (X_E
    :reader X_E
    :initarg :X_E
    :type cl:float
    :initform 0.0)
   (Y_N
    :reader Y_N
    :initarg :Y_N
    :type cl:float
    :initform 0.0)
   (Altitude
    :reader Altitude
    :initarg :Altitude
    :type cl:float
    :initform 0.0)
   (VelocityN
    :reader VelocityN
    :initarg :VelocityN
    :type cl:float
    :initform 0.0)
   (VelocityE
    :reader VelocityE
    :initarg :VelocityE
    :type cl:float
    :initform 0.0)
   (VelocityDown
    :reader VelocityDown
    :initarg :VelocityDown
    :type cl:float
    :initform 0.0)
   (TotalVelocity
    :reader TotalVelocity
    :initarg :TotalVelocity
    :type cl:float
    :initform 0.0)
   (Roll
    :reader Roll
    :initarg :Roll
    :type cl:float
    :initform 0.0)
   (Pitch
    :reader Pitch
    :initarg :Pitch
    :type cl:float
    :initform 0.0)
   (Yaw_N
    :reader Yaw_N
    :initarg :Yaw_N
    :type cl:float
    :initform 0.0)
   (TrackingAngle
    :reader TrackingAngle
    :initarg :TrackingAngle
    :type cl:float
    :initform 0.0)
   (RollRate
    :reader RollRate
    :initarg :RollRate
    :type cl:float
    :initform 0.0)
   (PitchRate
    :reader PitchRate
    :initarg :PitchRate
    :type cl:float
    :initform 0.0)
   (YawRate_N
    :reader YawRate_N
    :initarg :YawRate_N
    :type cl:float
    :initform 0.0)
   (ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0))
)

(cl:defclass GNSS_Output (<GNSS_Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GNSS_Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GNSS_Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name GNSS_Decoding_py-msg:<GNSS_Output> is deprecated: use GNSS_Decoding_py-msg:GNSS_Output instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:header-val is deprecated.  Use GNSS_Decoding_py-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'OutputRecordType-val :lambda-list '(m))
(cl:defmethod OutputRecordType-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:OutputRecordType-val is deprecated.  Use GNSS_Decoding_py-msg:OutputRecordType instead.")
  (OutputRecordType m))

(cl:ensure-generic-function 'RecordLength-val :lambda-list '(m))
(cl:defmethod RecordLength-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:RecordLength-val is deprecated.  Use GNSS_Decoding_py-msg:RecordLength instead.")
  (RecordLength m))

(cl:ensure-generic-function 'GPSWeek-val :lambda-list '(m))
(cl:defmethod GPSWeek-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:GPSWeek-val is deprecated.  Use GNSS_Decoding_py-msg:GPSWeek instead.")
  (GPSWeek m))

(cl:ensure-generic-function 'GPSTime-val :lambda-list '(m))
(cl:defmethod GPSTime-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:GPSTime-val is deprecated.  Use GNSS_Decoding_py-msg:GPSTime instead.")
  (GPSTime m))

(cl:ensure-generic-function 'IMUAlignmentStatus-val :lambda-list '(m))
(cl:defmethod IMUAlignmentStatus-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:IMUAlignmentStatus-val is deprecated.  Use GNSS_Decoding_py-msg:IMUAlignmentStatus instead.")
  (IMUAlignmentStatus m))

(cl:ensure-generic-function 'GNSSStatus-val :lambda-list '(m))
(cl:defmethod GNSSStatus-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:GNSSStatus-val is deprecated.  Use GNSS_Decoding_py-msg:GNSSStatus instead.")
  (GNSSStatus m))

(cl:ensure-generic-function 'X_E-val :lambda-list '(m))
(cl:defmethod X_E-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:X_E-val is deprecated.  Use GNSS_Decoding_py-msg:X_E instead.")
  (X_E m))

(cl:ensure-generic-function 'Y_N-val :lambda-list '(m))
(cl:defmethod Y_N-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:Y_N-val is deprecated.  Use GNSS_Decoding_py-msg:Y_N instead.")
  (Y_N m))

(cl:ensure-generic-function 'Altitude-val :lambda-list '(m))
(cl:defmethod Altitude-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:Altitude-val is deprecated.  Use GNSS_Decoding_py-msg:Altitude instead.")
  (Altitude m))

(cl:ensure-generic-function 'VelocityN-val :lambda-list '(m))
(cl:defmethod VelocityN-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:VelocityN-val is deprecated.  Use GNSS_Decoding_py-msg:VelocityN instead.")
  (VelocityN m))

(cl:ensure-generic-function 'VelocityE-val :lambda-list '(m))
(cl:defmethod VelocityE-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:VelocityE-val is deprecated.  Use GNSS_Decoding_py-msg:VelocityE instead.")
  (VelocityE m))

(cl:ensure-generic-function 'VelocityDown-val :lambda-list '(m))
(cl:defmethod VelocityDown-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:VelocityDown-val is deprecated.  Use GNSS_Decoding_py-msg:VelocityDown instead.")
  (VelocityDown m))

(cl:ensure-generic-function 'TotalVelocity-val :lambda-list '(m))
(cl:defmethod TotalVelocity-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:TotalVelocity-val is deprecated.  Use GNSS_Decoding_py-msg:TotalVelocity instead.")
  (TotalVelocity m))

(cl:ensure-generic-function 'Roll-val :lambda-list '(m))
(cl:defmethod Roll-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:Roll-val is deprecated.  Use GNSS_Decoding_py-msg:Roll instead.")
  (Roll m))

(cl:ensure-generic-function 'Pitch-val :lambda-list '(m))
(cl:defmethod Pitch-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:Pitch-val is deprecated.  Use GNSS_Decoding_py-msg:Pitch instead.")
  (Pitch m))

(cl:ensure-generic-function 'Yaw_N-val :lambda-list '(m))
(cl:defmethod Yaw_N-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:Yaw_N-val is deprecated.  Use GNSS_Decoding_py-msg:Yaw_N instead.")
  (Yaw_N m))

(cl:ensure-generic-function 'TrackingAngle-val :lambda-list '(m))
(cl:defmethod TrackingAngle-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:TrackingAngle-val is deprecated.  Use GNSS_Decoding_py-msg:TrackingAngle instead.")
  (TrackingAngle m))

(cl:ensure-generic-function 'RollRate-val :lambda-list '(m))
(cl:defmethod RollRate-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:RollRate-val is deprecated.  Use GNSS_Decoding_py-msg:RollRate instead.")
  (RollRate m))

(cl:ensure-generic-function 'PitchRate-val :lambda-list '(m))
(cl:defmethod PitchRate-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:PitchRate-val is deprecated.  Use GNSS_Decoding_py-msg:PitchRate instead.")
  (PitchRate m))

(cl:ensure-generic-function 'YawRate_N-val :lambda-list '(m))
(cl:defmethod YawRate_N-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:YawRate_N-val is deprecated.  Use GNSS_Decoding_py-msg:YawRate_N instead.")
  (YawRate_N m))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:ax-val is deprecated.  Use GNSS_Decoding_py-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:ay-val is deprecated.  Use GNSS_Decoding_py-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <GNSS_Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader GNSS_Decoding_py-msg:az-val is deprecated.  Use GNSS_Decoding_py-msg:az instead.")
  (az m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GNSS_Output>) ostream)
  "Serializes a message object of type '<GNSS_Output>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'OutputRecordType) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RecordLength) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GPSWeek)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GPSWeek)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GPSTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GPSTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'GPSTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'GPSTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'IMUAlignmentStatus) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'GNSSStatus) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'X_E))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Y_N))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VelocityN))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VelocityE))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'VelocityDown))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TotalVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Yaw_N))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'TrackingAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RollRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PitchRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'YawRate_N))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GNSS_Output>) istream)
  "Deserializes a message object of type '<GNSS_Output>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'OutputRecordType) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RecordLength) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GPSWeek)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GPSWeek)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GPSTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'GPSTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'GPSTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'GPSTime)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IMUAlignmentStatus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'GNSSStatus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X_E) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y_N) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VelocityN) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VelocityE) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'VelocityDown) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TotalVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Yaw_N) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TrackingAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RollRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PitchRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YawRate_N) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GNSS_Output>)))
  "Returns string type for a message object of type '<GNSS_Output>"
  "GNSS_Decoding_py/GNSS_Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GNSS_Output)))
  "Returns string type for a message object of type 'GNSS_Output"
  "GNSS_Decoding_py/GNSS_Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GNSS_Output>)))
  "Returns md5sum for a message object of type '<GNSS_Output>"
  "5a180986276a6872e41703ee50456ad6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GNSS_Output)))
  "Returns md5sum for a message object of type 'GNSS_Output"
  "5a180986276a6872e41703ee50456ad6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GNSS_Output>)))
  "Returns full string definition for message of type '<GNSS_Output>"
  (cl:format cl:nil "Header header~%bool OutputRecordType~%bool RecordLength~%uint16 GPSWeek~%uint32 GPSTime~%bool IMUAlignmentStatus~%bool GNSSStatus~%float32 X_E~%float32 Y_N~%float32 Altitude~%float32 VelocityN~%float32 VelocityE~%float32 VelocityDown~%float32 TotalVelocity~%float32 Roll~%float32 Pitch~%float32 Yaw_N~%float32 TrackingAngle~%float32 RollRate~%float32 PitchRate~%float32 YawRate_N~%float32 ax~%float32 ay~%float32 az~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GNSS_Output)))
  "Returns full string definition for message of type 'GNSS_Output"
  (cl:format cl:nil "Header header~%bool OutputRecordType~%bool RecordLength~%uint16 GPSWeek~%uint32 GPSTime~%bool IMUAlignmentStatus~%bool GNSSStatus~%float32 X_E~%float32 Y_N~%float32 Altitude~%float32 VelocityN~%float32 VelocityE~%float32 VelocityDown~%float32 TotalVelocity~%float32 Roll~%float32 Pitch~%float32 Yaw_N~%float32 TrackingAngle~%float32 RollRate~%float32 PitchRate~%float32 YawRate_N~%float32 ax~%float32 ay~%float32 az~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GNSS_Output>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     2
     4
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GNSS_Output>))
  "Converts a ROS message object to a list"
  (cl:list 'GNSS_Output
    (cl:cons ':header (header msg))
    (cl:cons ':OutputRecordType (OutputRecordType msg))
    (cl:cons ':RecordLength (RecordLength msg))
    (cl:cons ':GPSWeek (GPSWeek msg))
    (cl:cons ':GPSTime (GPSTime msg))
    (cl:cons ':IMUAlignmentStatus (IMUAlignmentStatus msg))
    (cl:cons ':GNSSStatus (GNSSStatus msg))
    (cl:cons ':X_E (X_E msg))
    (cl:cons ':Y_N (Y_N msg))
    (cl:cons ':Altitude (Altitude msg))
    (cl:cons ':VelocityN (VelocityN msg))
    (cl:cons ':VelocityE (VelocityE msg))
    (cl:cons ':VelocityDown (VelocityDown msg))
    (cl:cons ':TotalVelocity (TotalVelocity msg))
    (cl:cons ':Roll (Roll msg))
    (cl:cons ':Pitch (Pitch msg))
    (cl:cons ':Yaw_N (Yaw_N msg))
    (cl:cons ':TrackingAngle (TrackingAngle msg))
    (cl:cons ':RollRate (RollRate msg))
    (cl:cons ':PitchRate (PitchRate msg))
    (cl:cons ':YawRate_N (YawRate_N msg))
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':az (az msg))
))
