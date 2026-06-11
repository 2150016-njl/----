;; Auto-generated. Do not edit!


(when (boundp 'rl_planning::VehicleInfo)
  (if (not (find-package "RL_PLANNING"))
    (make-package "RL_PLANNING"))
  (shadow 'VehicleInfo (find-package "RL_PLANNING")))
(unless (find-package "RL_PLANNING::VEHICLEINFO")
  (make-package "RL_PLANNING::VEHICLEINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rl_planning::VehicleInfo
  :super ros::object
  :slots (_id _label _convex_hull _length _width _height _actor_pos _actor_rel_pos _actor_vel _actor_rel_vel _actor_acc _actor_psi _actor_speed ))

(defmethod rl_planning::VehicleInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:label __label) "")
    ((:convex_hull __convex_hull) (instance geometry_msgs::PolygonStamped :init))
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:actor_pos __actor_pos) (instance rl_planning::Point :init))
    ((:actor_rel_pos __actor_rel_pos) (instance rl_planning::Point :init))
    ((:actor_vel __actor_vel) (instance rl_planning::Vector3D :init))
    ((:actor_rel_vel __actor_rel_vel) (instance rl_planning::Vector3D :init))
    ((:actor_acc __actor_acc) (instance rl_planning::Vector3D :init))
    ((:actor_psi __actor_psi) 0.0)
    ((:actor_speed __actor_speed) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _label (string __label))
   (setq _convex_hull __convex_hull)
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _actor_pos __actor_pos)
   (setq _actor_rel_pos __actor_rel_pos)
   (setq _actor_vel __actor_vel)
   (setq _actor_rel_vel __actor_rel_vel)
   (setq _actor_acc __actor_acc)
   (setq _actor_psi (float __actor_psi))
   (setq _actor_speed (float __actor_speed))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:convex_hull
   (&rest __convex_hull)
   (if (keywordp (car __convex_hull))
       (send* _convex_hull __convex_hull)
     (progn
       (if __convex_hull (setq _convex_hull (car __convex_hull)))
       _convex_hull)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:actor_pos
   (&rest __actor_pos)
   (if (keywordp (car __actor_pos))
       (send* _actor_pos __actor_pos)
     (progn
       (if __actor_pos (setq _actor_pos (car __actor_pos)))
       _actor_pos)))
  (:actor_rel_pos
   (&rest __actor_rel_pos)
   (if (keywordp (car __actor_rel_pos))
       (send* _actor_rel_pos __actor_rel_pos)
     (progn
       (if __actor_rel_pos (setq _actor_rel_pos (car __actor_rel_pos)))
       _actor_rel_pos)))
  (:actor_vel
   (&rest __actor_vel)
   (if (keywordp (car __actor_vel))
       (send* _actor_vel __actor_vel)
     (progn
       (if __actor_vel (setq _actor_vel (car __actor_vel)))
       _actor_vel)))
  (:actor_rel_vel
   (&rest __actor_rel_vel)
   (if (keywordp (car __actor_rel_vel))
       (send* _actor_rel_vel __actor_rel_vel)
     (progn
       (if __actor_rel_vel (setq _actor_rel_vel (car __actor_rel_vel)))
       _actor_rel_vel)))
  (:actor_acc
   (&rest __actor_acc)
   (if (keywordp (car __actor_acc))
       (send* _actor_acc __actor_acc)
     (progn
       (if __actor_acc (setq _actor_acc (car __actor_acc)))
       _actor_acc)))
  (:actor_psi
   (&optional __actor_psi)
   (if __actor_psi (setq _actor_psi __actor_psi)) _actor_psi)
  (:actor_speed
   (&optional __actor_speed)
   (if __actor_speed (setq _actor_speed __actor_speed)) _actor_speed)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/PolygonStamped _convex_hull
    (send _convex_hull :serialization-length)
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; rl_planning/Point _actor_pos
    (send _actor_pos :serialization-length)
    ;; rl_planning/Point _actor_rel_pos
    (send _actor_rel_pos :serialization-length)
    ;; rl_planning/Vector3D _actor_vel
    (send _actor_vel :serialization-length)
    ;; rl_planning/Vector3D _actor_rel_vel
    (send _actor_rel_vel :serialization-length)
    ;; rl_planning/Vector3D _actor_acc
    (send _actor_acc :serialization-length)
    ;; float64 _actor_psi
    8
    ;; float64 _actor_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/PolygonStamped _convex_hull
       (send _convex_hull :serialize s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; rl_planning/Point _actor_pos
       (send _actor_pos :serialize s)
     ;; rl_planning/Point _actor_rel_pos
       (send _actor_rel_pos :serialize s)
     ;; rl_planning/Vector3D _actor_vel
       (send _actor_vel :serialize s)
     ;; rl_planning/Vector3D _actor_rel_vel
       (send _actor_rel_vel :serialize s)
     ;; rl_planning/Vector3D _actor_acc
       (send _actor_acc :serialize s)
     ;; float64 _actor_psi
       (sys::poke _actor_psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _actor_speed
       (sys::poke _actor_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PolygonStamped _convex_hull
     (send _convex_hull :deserialize buf ptr-) (incf ptr- (send _convex_hull :serialization-length))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; rl_planning/Point _actor_pos
     (send _actor_pos :deserialize buf ptr-) (incf ptr- (send _actor_pos :serialization-length))
   ;; rl_planning/Point _actor_rel_pos
     (send _actor_rel_pos :deserialize buf ptr-) (incf ptr- (send _actor_rel_pos :serialization-length))
   ;; rl_planning/Vector3D _actor_vel
     (send _actor_vel :deserialize buf ptr-) (incf ptr- (send _actor_vel :serialization-length))
   ;; rl_planning/Vector3D _actor_rel_vel
     (send _actor_rel_vel :deserialize buf ptr-) (incf ptr- (send _actor_rel_vel :serialization-length))
   ;; rl_planning/Vector3D _actor_acc
     (send _actor_acc :deserialize buf ptr-) (incf ptr- (send _actor_acc :serialization-length))
   ;; float64 _actor_psi
     (setq _actor_psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _actor_speed
     (setq _actor_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rl_planning::VehicleInfo :md5sum-) "2080f30d52a247820d94f7875c4574f1")
(setf (get rl_planning::VehicleInfo :datatype-) "rl_planning/VehicleInfo")
(setf (get rl_planning::VehicleInfo :definition-)
      "uint32 id
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



(provide :rl_planning/VehicleInfo "2080f30d52a247820d94f7875c4574f1")


