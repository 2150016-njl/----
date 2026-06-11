;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PerceptionObstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PerceptionObstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PERCEPTIONOBSTACLE")
  (make-package "ROS_INTERFACE::PERCEPTIONOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude PerceptionObstacle.msg.html


(defclass ros_interface::PerceptionObstacle
  :super ros::object
  :slots (_id _position _theta _velocity _length _width _height _polygon_point _tracking_time _type _lane_position _confidence _timestamp _confidence_type _drops _acceleration _anchor_point _bounding_box _sub_type _height_above_ground _position_covariance _velocity_covariance _acceleration_covariance _light_status ))

(defmethod ros_interface::PerceptionObstacle
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    ((:velocity __velocity) (instance ros_interface::Point3D :init))
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:polygon_point __polygon_point) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:tracking_time __tracking_time) 0.0)
    ((:type __type) 0)
    ((:lane_position __lane_position) 0)
    ((:confidence __confidence) 0.0)
    ((:timestamp __timestamp) 0.0)
    ((:confidence_type __confidence_type) 0)
    ((:drops __drops) (instance ros_interface::Point3D :init))
    ((:acceleration __acceleration) (instance ros_interface::Point3D :init))
    ((:anchor_point __anchor_point) (instance ros_interface::Point3D :init))
    ((:bounding_box __bounding_box) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:sub_type __sub_type) 0)
    ((:height_above_ground __height_above_ground) 0.0)
    ((:position_covariance __position_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_covariance __velocity_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration_covariance __acceleration_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:light_status __light_status) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _theta (float __theta))
   (setq _velocity __velocity)
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _polygon_point __polygon_point)
   (setq _tracking_time (float __tracking_time))
   (setq _type (round __type))
   (setq _lane_position (round __lane_position))
   (setq _confidence (float __confidence))
   (setq _timestamp (float __timestamp))
   (setq _confidence_type (round __confidence_type))
   (setq _drops __drops)
   (setq _acceleration __acceleration)
   (setq _anchor_point __anchor_point)
   (setq _bounding_box __bounding_box)
   (setq _sub_type (round __sub_type))
   (setq _height_above_ground (float __height_above_ground))
   (setq _position_covariance __position_covariance)
   (setq _velocity_covariance __velocity_covariance)
   (setq _acceleration_covariance __acceleration_covariance)
   (setq _light_status (round __light_status))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:polygon_point
   (&rest __polygon_point)
   (if (keywordp (car __polygon_point))
       (send* _polygon_point __polygon_point)
     (progn
       (if __polygon_point (setq _polygon_point (car __polygon_point)))
       _polygon_point)))
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:lane_position
   (&optional __lane_position)
   (if __lane_position (setq _lane_position __lane_position)) _lane_position)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:confidence_type
   (&optional __confidence_type)
   (if __confidence_type (setq _confidence_type __confidence_type)) _confidence_type)
  (:drops
   (&rest __drops)
   (if (keywordp (car __drops))
       (send* _drops __drops)
     (progn
       (if __drops (setq _drops (car __drops)))
       _drops)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:anchor_point
   (&rest __anchor_point)
   (if (keywordp (car __anchor_point))
       (send* _anchor_point __anchor_point)
     (progn
       (if __anchor_point (setq _anchor_point (car __anchor_point)))
       _anchor_point)))
  (:bounding_box
   (&rest __bounding_box)
   (if (keywordp (car __bounding_box))
       (send* _bounding_box __bounding_box)
     (progn
       (if __bounding_box (setq _bounding_box (car __bounding_box)))
       _bounding_box)))
  (:sub_type
   (&optional __sub_type)
   (if __sub_type (setq _sub_type __sub_type)) _sub_type)
  (:height_above_ground
   (&optional __height_above_ground)
   (if __height_above_ground (setq _height_above_ground __height_above_ground)) _height_above_ground)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:velocity_covariance
   (&optional __velocity_covariance)
   (if __velocity_covariance (setq _velocity_covariance __velocity_covariance)) _velocity_covariance)
  (:acceleration_covariance
   (&optional __acceleration_covariance)
   (if __acceleration_covariance (setq _acceleration_covariance __acceleration_covariance)) _acceleration_covariance)
  (:light_status
   (&optional __light_status)
   (if __light_status (setq _light_status __light_status)) _light_status)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; ros_interface/Point3D _position
    (send _position :serialization-length)
    ;; float64 _theta
    8
    ;; ros_interface/Point3D _velocity
    (send _velocity :serialization-length)
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; ros_interface/Point3D[] _polygon_point
    (apply #'+ (send-all _polygon_point :serialization-length)) 4
    ;; float64 _tracking_time
    8
    ;; int32 _type
    4
    ;; int32 _lane_position
    4
    ;; float64 _confidence
    8
    ;; float64 _timestamp
    8
    ;; uint8 _confidence_type
    1
    ;; ros_interface/Point3D _drops
    (send _drops :serialization-length)
    ;; ros_interface/Point3D _acceleration
    (send _acceleration :serialization-length)
    ;; ros_interface/Point3D _anchor_point
    (send _anchor_point :serialization-length)
    ;; ros_interface/Point3D[] _bounding_box
    (apply #'+ (send-all _bounding_box :serialization-length)) 4
    ;; int32 _sub_type
    4
    ;; float64 _height_above_ground
    8
    ;; float64[] _position_covariance
    (* 8    (length _position_covariance)) 4
    ;; float64[] _velocity_covariance
    (* 8    (length _velocity_covariance)) 4
    ;; float64[] _acceleration_covariance
    (* 8    (length _acceleration_covariance)) 4
    ;; uint8 _light_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; ros_interface/Point3D _position
       (send _position :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _velocity
       (send _velocity :serialize s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D[] _polygon_point
     (write-long (length _polygon_point) s)
     (dolist (elem _polygon_point)
       (send elem :serialize s)
       )
     ;; float64 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _type
       (write-long _type s)
     ;; int32 _lane_position
       (write-long _lane_position s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _confidence_type
       (write-byte _confidence_type s)
     ;; ros_interface/Point3D _drops
       (send _drops :serialize s)
     ;; ros_interface/Point3D _acceleration
       (send _acceleration :serialize s)
     ;; ros_interface/Point3D _anchor_point
       (send _anchor_point :serialize s)
     ;; ros_interface/Point3D[] _bounding_box
     (write-long (length _bounding_box) s)
     (dolist (elem _bounding_box)
       (send elem :serialize s)
       )
     ;; int32 _sub_type
       (write-long _sub_type s)
     ;; float64 _height_above_ground
       (sys::poke _height_above_ground (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _position_covariance
     (write-long (length _position_covariance) s)
     (dotimes (i (length _position_covariance))
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity_covariance
     (write-long (length _velocity_covariance) s)
     (dotimes (i (length _velocity_covariance))
       (sys::poke (elt _velocity_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acceleration_covariance
     (write-long (length _acceleration_covariance) s)
     (dotimes (i (length _acceleration_covariance))
       (sys::poke (elt _acceleration_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _light_status
       (write-byte _light_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D[] _polygon_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_point (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _polygon_point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_position
     (setq _lane_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _confidence_type
     (setq _confidence_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ros_interface/Point3D _drops
     (send _drops :deserialize buf ptr-) (incf ptr- (send _drops :serialization-length))
   ;; ros_interface/Point3D _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; ros_interface/Point3D _anchor_point
     (send _anchor_point :deserialize buf ptr-) (incf ptr- (send _anchor_point :serialization-length))
   ;; ros_interface/Point3D[] _bounding_box
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_box (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _bounding_box)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _sub_type
     (setq _sub_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _height_above_ground
     (setq _height_above_ground (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _position_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acceleration_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8 _light_status
     (setq _light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::PerceptionObstacle :md5sum-) "eec97df9ec7b9c83ab21ca50cb74bf7c")
(setf (get ros_interface::PerceptionObstacle :datatype-) "ros_interface/PerceptionObstacle")
(setf (get ros_interface::PerceptionObstacle :definition-)
      "int32   id     #  
Point3D   position     #  
float64   theta     #  
Point3D   velocity     #  
float64   length     #  
float64   width     #  
float64   height     #  
Point3D[] polygon_point #  
float64   tracking_time     #  
int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle
int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
float64   confidence     #  
float64   timestamp     #  
uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD
Point3D   drops     #  
Point3D   acceleration     #  
Point3D   anchor_point     #  
Point3D[] bounding_box #  
int32   sub_type     #  
float64   height_above_ground     #  
float64[] position_covariance #  
float64[] velocity_covariance #  
float64[] acceleration_covariance #  
uint8   light_status     #  

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/PerceptionObstacle "eec97df9ec7b9c83ab21ca50cb74bf7c")


