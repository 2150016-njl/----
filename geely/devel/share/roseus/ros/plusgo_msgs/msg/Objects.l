;; Auto-generated. Do not edit!


(when (boundp 'plusgo_msgs::Objects)
  (if (not (find-package "PLUSGO_MSGS"))
    (make-package "PLUSGO_MSGS"))
  (shadow 'Objects (find-package "PLUSGO_MSGS")))
(unless (find-package "PLUSGO_MSGS::OBJECTS")
  (make-package "PLUSGO_MSGS::OBJECTS"))

(in-package "ROS")
;;//! \htmlinclude Objects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass plusgo_msgs::Objects
  :super ros::object
  :slots (_header _objects ))

(defmethod plusgo_msgs::Objects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance plusgo_msgs::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; plusgo_msgs/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; plusgo_msgs/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; plusgo_msgs/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance plusgo_msgs::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get plusgo_msgs::Objects :md5sum-) "0a6120d4df241a7f1dc2a96922ad41dc")
(setf (get plusgo_msgs::Objects :datatype-) "plusgo_msgs/Objects")
(setf (get plusgo_msgs::Objects :definition-)
      "std_msgs/Header header
Object[] objects

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
MSG: plusgo_msgs/Object
std_msgs/Header header
uint8  source
float32 exist_confidence

# \"UNKNOWN\",\"CONE\",\"PED\",\"BIC\",\"CAR\",\"TRUCK_BUS\",\"ULTRA_VEHICLE\"
int64  type
float32 type_confidence
int64  track_id
float32 tracking_time

int64  motion_state

geometry_msgs/Point32 anchor

# the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)
float32 theta

# the main direction is the bbox length orientation
geometry_msgs/Vector3 direction
geometry_msgs/Vector3 direction_cov
geometry_msgs/Point32  center
geometry_msgs/Point32  center_cov

# size of the oriented boundingbox, length is the size in the main direction
geometry_msgs/Vector3 size
geometry_msgs/Vector3 size_cov

bool is_absolute_position

geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 velocity_cov
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 acceleration_cov

float32 angle_velocity
float32 angle_velocity_cov
float32 angle_acceleration
float32 angle_acceleration_cov

geometry_msgs/Point32[]  trajectory
geometry_msgs/Point32[]  history_type
geometry_msgs/Vector3[]  history_velocity

Polygon    polygon
ImageRect  rect

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
================================================================================
MSG: plusgo_msgs/Polygon
float32 min_height
float32 max_height
geometry_msgs/Point32[] points

================================================================================
MSG: plusgo_msgs/ImageRect
string  image_frame
int32   x
int32   y
int32   x_
int32   y_
int32   width
int32   height
float32 angle

")



(provide :plusgo_msgs/Objects "0a6120d4df241a7f1dc2a96922ad41dc")


