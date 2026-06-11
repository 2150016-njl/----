;; Auto-generated. Do not edit!


(when (boundp 'GNSS_Decoding_py::GNSS_Output)
  (if (not (find-package "GNSS_DECODING_PY"))
    (make-package "GNSS_DECODING_PY"))
  (shadow 'GNSS_Output (find-package "GNSS_DECODING_PY")))
(unless (find-package "GNSS_DECODING_PY::GNSS_OUTPUT")
  (make-package "GNSS_DECODING_PY::GNSS_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude GNSS_Output.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass GNSS_Decoding_py::GNSS_Output
  :super ros::object
  :slots (_header _OutputRecordType _RecordLength _GPSWeek _GPSTime _IMUAlignmentStatus _GNSSStatus _X_E _Y_N _Altitude _VelocityN _VelocityE _VelocityDown _TotalVelocity _Roll _Pitch _Yaw_N _TrackingAngle _RollRate _PitchRate _YawRate_N _ax _ay _az ))

(defmethod GNSS_Decoding_py::GNSS_Output
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:OutputRecordType __OutputRecordType) nil)
    ((:RecordLength __RecordLength) nil)
    ((:GPSWeek __GPSWeek) 0)
    ((:GPSTime __GPSTime) 0)
    ((:IMUAlignmentStatus __IMUAlignmentStatus) nil)
    ((:GNSSStatus __GNSSStatus) nil)
    ((:X_E __X_E) 0.0)
    ((:Y_N __Y_N) 0.0)
    ((:Altitude __Altitude) 0.0)
    ((:VelocityN __VelocityN) 0.0)
    ((:VelocityE __VelocityE) 0.0)
    ((:VelocityDown __VelocityDown) 0.0)
    ((:TotalVelocity __TotalVelocity) 0.0)
    ((:Roll __Roll) 0.0)
    ((:Pitch __Pitch) 0.0)
    ((:Yaw_N __Yaw_N) 0.0)
    ((:TrackingAngle __TrackingAngle) 0.0)
    ((:RollRate __RollRate) 0.0)
    ((:PitchRate __PitchRate) 0.0)
    ((:YawRate_N __YawRate_N) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _OutputRecordType __OutputRecordType)
   (setq _RecordLength __RecordLength)
   (setq _GPSWeek (round __GPSWeek))
   (setq _GPSTime (round __GPSTime))
   (setq _IMUAlignmentStatus __IMUAlignmentStatus)
   (setq _GNSSStatus __GNSSStatus)
   (setq _X_E (float __X_E))
   (setq _Y_N (float __Y_N))
   (setq _Altitude (float __Altitude))
   (setq _VelocityN (float __VelocityN))
   (setq _VelocityE (float __VelocityE))
   (setq _VelocityDown (float __VelocityDown))
   (setq _TotalVelocity (float __TotalVelocity))
   (setq _Roll (float __Roll))
   (setq _Pitch (float __Pitch))
   (setq _Yaw_N (float __Yaw_N))
   (setq _TrackingAngle (float __TrackingAngle))
   (setq _RollRate (float __RollRate))
   (setq _PitchRate (float __PitchRate))
   (setq _YawRate_N (float __YawRate_N))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:OutputRecordType
   (&optional __OutputRecordType)
   (if __OutputRecordType (setq _OutputRecordType __OutputRecordType)) _OutputRecordType)
  (:RecordLength
   (&optional __RecordLength)
   (if __RecordLength (setq _RecordLength __RecordLength)) _RecordLength)
  (:GPSWeek
   (&optional __GPSWeek)
   (if __GPSWeek (setq _GPSWeek __GPSWeek)) _GPSWeek)
  (:GPSTime
   (&optional __GPSTime)
   (if __GPSTime (setq _GPSTime __GPSTime)) _GPSTime)
  (:IMUAlignmentStatus
   (&optional __IMUAlignmentStatus)
   (if __IMUAlignmentStatus (setq _IMUAlignmentStatus __IMUAlignmentStatus)) _IMUAlignmentStatus)
  (:GNSSStatus
   (&optional __GNSSStatus)
   (if __GNSSStatus (setq _GNSSStatus __GNSSStatus)) _GNSSStatus)
  (:X_E
   (&optional __X_E)
   (if __X_E (setq _X_E __X_E)) _X_E)
  (:Y_N
   (&optional __Y_N)
   (if __Y_N (setq _Y_N __Y_N)) _Y_N)
  (:Altitude
   (&optional __Altitude)
   (if __Altitude (setq _Altitude __Altitude)) _Altitude)
  (:VelocityN
   (&optional __VelocityN)
   (if __VelocityN (setq _VelocityN __VelocityN)) _VelocityN)
  (:VelocityE
   (&optional __VelocityE)
   (if __VelocityE (setq _VelocityE __VelocityE)) _VelocityE)
  (:VelocityDown
   (&optional __VelocityDown)
   (if __VelocityDown (setq _VelocityDown __VelocityDown)) _VelocityDown)
  (:TotalVelocity
   (&optional __TotalVelocity)
   (if __TotalVelocity (setq _TotalVelocity __TotalVelocity)) _TotalVelocity)
  (:Roll
   (&optional __Roll)
   (if __Roll (setq _Roll __Roll)) _Roll)
  (:Pitch
   (&optional __Pitch)
   (if __Pitch (setq _Pitch __Pitch)) _Pitch)
  (:Yaw_N
   (&optional __Yaw_N)
   (if __Yaw_N (setq _Yaw_N __Yaw_N)) _Yaw_N)
  (:TrackingAngle
   (&optional __TrackingAngle)
   (if __TrackingAngle (setq _TrackingAngle __TrackingAngle)) _TrackingAngle)
  (:RollRate
   (&optional __RollRate)
   (if __RollRate (setq _RollRate __RollRate)) _RollRate)
  (:PitchRate
   (&optional __PitchRate)
   (if __PitchRate (setq _PitchRate __PitchRate)) _PitchRate)
  (:YawRate_N
   (&optional __YawRate_N)
   (if __YawRate_N (setq _YawRate_N __YawRate_N)) _YawRate_N)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _OutputRecordType
    1
    ;; bool _RecordLength
    1
    ;; uint16 _GPSWeek
    2
    ;; uint32 _GPSTime
    4
    ;; bool _IMUAlignmentStatus
    1
    ;; bool _GNSSStatus
    1
    ;; float32 _X_E
    4
    ;; float32 _Y_N
    4
    ;; float32 _Altitude
    4
    ;; float32 _VelocityN
    4
    ;; float32 _VelocityE
    4
    ;; float32 _VelocityDown
    4
    ;; float32 _TotalVelocity
    4
    ;; float32 _Roll
    4
    ;; float32 _Pitch
    4
    ;; float32 _Yaw_N
    4
    ;; float32 _TrackingAngle
    4
    ;; float32 _RollRate
    4
    ;; float32 _PitchRate
    4
    ;; float32 _YawRate_N
    4
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _OutputRecordType
       (if _OutputRecordType (write-byte -1 s) (write-byte 0 s))
     ;; bool _RecordLength
       (if _RecordLength (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _GPSWeek
       (write-word _GPSWeek s)
     ;; uint32 _GPSTime
       (write-long _GPSTime s)
     ;; bool _IMUAlignmentStatus
       (if _IMUAlignmentStatus (write-byte -1 s) (write-byte 0 s))
     ;; bool _GNSSStatus
       (if _GNSSStatus (write-byte -1 s) (write-byte 0 s))
     ;; float32 _X_E
       (sys::poke _X_E (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Y_N
       (sys::poke _Y_N (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Altitude
       (sys::poke _Altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VelocityN
       (sys::poke _VelocityN (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VelocityE
       (sys::poke _VelocityE (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _VelocityDown
       (sys::poke _VelocityDown (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TotalVelocity
       (sys::poke _TotalVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Roll
       (sys::poke _Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Pitch
       (sys::poke _Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Yaw_N
       (sys::poke _Yaw_N (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _TrackingAngle
       (sys::poke _TrackingAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RollRate
       (sys::poke _RollRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _PitchRate
       (sys::poke _PitchRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _YawRate_N
       (sys::poke _YawRate_N (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _OutputRecordType
     (setq _OutputRecordType (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RecordLength
     (setq _RecordLength (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _GPSWeek
     (setq _GPSWeek (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _GPSTime
     (setq _GPSTime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _IMUAlignmentStatus
     (setq _IMUAlignmentStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _GNSSStatus
     (setq _GNSSStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _X_E
     (setq _X_E (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Y_N
     (setq _Y_N (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Altitude
     (setq _Altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VelocityN
     (setq _VelocityN (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VelocityE
     (setq _VelocityE (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _VelocityDown
     (setq _VelocityDown (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TotalVelocity
     (setq _TotalVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Roll
     (setq _Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Pitch
     (setq _Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Yaw_N
     (setq _Yaw_N (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _TrackingAngle
     (setq _TrackingAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RollRate
     (setq _RollRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _PitchRate
     (setq _PitchRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _YawRate_N
     (setq _YawRate_N (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get GNSS_Decoding_py::GNSS_Output :md5sum-) "5a180986276a6872e41703ee50456ad6")
(setf (get GNSS_Decoding_py::GNSS_Output :datatype-) "GNSS_Decoding_py/GNSS_Output")
(setf (get GNSS_Decoding_py::GNSS_Output :definition-)
      "Header header
bool OutputRecordType
bool RecordLength
uint16 GPSWeek
uint32 GPSTime
bool IMUAlignmentStatus
bool GNSSStatus
float32 X_E
float32 Y_N
float32 Altitude
float32 VelocityN
float32 VelocityE
float32 VelocityDown
float32 TotalVelocity
float32 Roll
float32 Pitch
float32 Yaw_N
float32 TrackingAngle
float32 RollRate
float32 PitchRate
float32 YawRate_N
float32 ax
float32 ay
float32 az
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :GNSS_Decoding_py/GNSS_Output "5a180986276a6872e41703ee50456ad6")


