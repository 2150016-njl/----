;; Auto-generated. Do not edit!


(when (boundp 'rl_planning::VehicleInfoBatch)
  (if (not (find-package "RL_PLANNING"))
    (make-package "RL_PLANNING"))
  (shadow 'VehicleInfoBatch (find-package "RL_PLANNING")))
(unless (find-package "RL_PLANNING::VEHICLEINFOBATCH")
  (make-package "RL_PLANNING::VEHICLEINFOBATCH"))

(in-package "ROS")
;;//! \htmlinclude VehicleInfoBatch.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rl_planning::VehicleInfoBatch
  :super ros::object
  :slots (_header _vehicle_info_batch ))

(defmethod rl_planning::VehicleInfoBatch
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_info_batch __vehicle_info_batch) (let (r) (dotimes (i 0) (push (instance rl_planning::VehicleInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_info_batch __vehicle_info_batch)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_info_batch
   (&rest __vehicle_info_batch)
   (if (keywordp (car __vehicle_info_batch))
       (send* _vehicle_info_batch __vehicle_info_batch)
     (progn
       (if __vehicle_info_batch (setq _vehicle_info_batch (car __vehicle_info_batch)))
       _vehicle_info_batch)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rl_planning/VehicleInfo[] _vehicle_info_batch
    (apply #'+ (send-all _vehicle_info_batch :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rl_planning/VehicleInfo[] _vehicle_info_batch
     (write-long (length _vehicle_info_batch) s)
     (dolist (elem _vehicle_info_batch)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rl_planning/VehicleInfo[] _vehicle_info_batch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicle_info_batch (let (r) (dotimes (i n) (push (instance rl_planning::VehicleInfo :init) r)) r))
     (dolist (elem- _vehicle_info_batch)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rl_planning::VehicleInfoBatch :md5sum-) "618ce8216f907511a69e15605df7c3cd")
(setf (get rl_planning::VehicleInfoBatch :datatype-) "rl_planning/VehicleInfoBatch")
(setf (get rl_planning::VehicleInfoBatch :definition-)
      "Header header
VehicleInfo[] vehicle_info_batch
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

================================================================================
MSG: rl_planning/VehicleInfo
uint32 id
string label
geometry_msgs/PolygonStamped convex_hull
float64 length
float64 width
float64 height
Point actor_pos
Point actor_rel_pos
Vector3D actor_vel
Vector3D actor_rel_vel
Vector3D actor_acc
float64 actor_psi
float64 actor_speed

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: rl_planning/Point
float64 x 
float64 y 
float64 z 

================================================================================
MSG: rl_planning/Vector3D
float64 x
float64 y
float64 z

")



(provide :rl_planning/VehicleInfoBatch "618ce8216f907511a69e15605df7c3cd")


