;; Auto-generated. Do not edit!


(when (boundp 'vehicle_info_msgs::VehicleInfoBatch)
  (if (not (find-package "VEHICLE_INFO_MSGS"))
    (make-package "VEHICLE_INFO_MSGS"))
  (shadow 'VehicleInfoBatch (find-package "VEHICLE_INFO_MSGS")))
(unless (find-package "VEHICLE_INFO_MSGS::VEHICLEINFOBATCH")
  (make-package "VEHICLE_INFO_MSGS::VEHICLEINFOBATCH"))

(in-package "ROS")
;;//! \htmlinclude VehicleInfoBatch.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vehicle_info_msgs::VehicleInfoBatch
  :super ros::object
  :slots (_header _vehicle_info_batch ))

(defmethod vehicle_info_msgs::VehicleInfoBatch
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_info_batch __vehicle_info_batch) (let (r) (dotimes (i 0) (push (instance vehicle_info_msgs::VehicleInfo :init) r)) r))
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
    ;; vehicle_info_msgs/VehicleInfo[] _vehicle_info_batch
    (apply #'+ (send-all _vehicle_info_batch :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vehicle_info_msgs/VehicleInfo[] _vehicle_info_batch
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
   ;; vehicle_info_msgs/VehicleInfo[] _vehicle_info_batch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicle_info_batch (let (r) (dotimes (i n) (push (instance vehicle_info_msgs::VehicleInfo :init) r)) r))
     (dolist (elem- _vehicle_info_batch)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vehicle_info_msgs::VehicleInfoBatch :md5sum-) "e2a582a234afb798175abdbadd03b573")
(setf (get vehicle_info_msgs::VehicleInfoBatch :datatype-) "vehicle_info_msgs/VehicleInfoBatch")
(setf (get vehicle_info_msgs::VehicleInfoBatch :definition-)
      "std_msgs/Header header
vehicle_info_msgs/VehicleInfo[] vehicle_info_batch

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
MSG: vehicle_info_msgs/VehicleInfo
# 单个车辆信息
uint32 id
string label

# 新增：原始点集合（一般取目标的凸包点）
geometry_msgs/Point32[] points

# 新增：凸包（带坐标系和时间戳）
geometry_msgs/PolygonStamped convex_hull

# 目标高度（m）
float64 height

# 绝对坐标（全局/地图坐标系）
geometry_msgs/Point actor_pos

# 相对自车坐标（若无法计算，可与绝对坐标一致或置零）
geometry_msgs/Point actor_rel_pos

# 速度/相对速度/加速度（m/s, m/s, m/s^2）
geometry_msgs/Vector3 actor_vel
geometry_msgs/Vector3 actor_rel_vel
geometry_msgs/Vector3 actor_acc

# 航向（rad，右手系，建议与 plusgo 的 theta 一致）
float64 actor_psi

# 速度标量（m/s）
float64 actor_speed

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
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :vehicle_info_msgs/VehicleInfoBatch "e2a582a234afb798175abdbadd03b573")


