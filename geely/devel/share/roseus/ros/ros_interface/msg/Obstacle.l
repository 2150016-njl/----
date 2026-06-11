;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Obstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Obstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::OBSTACLE")
  (make-package "ROS_INTERFACE::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html


(defclass ros_interface::Obstacle
  :super ros::object
  :slots (_timestamp _id _existence_prob _create_time _last_updated_time _center_pos_vehicle _center_pos_abs _theta_vehicle _theta_abs _velocity_vehicle _velocity_abs _length _width _height _image_key_points _polygon_point_abs _polygon_point_vehicle _tracking_time _type _confidence _confidence_type _drops _acceleration_vehicle _acceleration_abs _anchor_point_image _anchor_point_vehicle _anchor_point_abs _bbox2d _bbox2d_rear _sub_type _height_above_ground _position_abs_covariance _velocity_abs_covariance _acceleration_abs_covariance _theta_abs_covariance _position_vehicle_covariance _velocity_vehicle_covariance _acceleration_vehicle_covariance _theta_vehicle_covariance _sensor_calibrator _cipv_flag _lane_position _pihp_percentage _blinker_flag _fusion_type ))

(defmethod ros_interface::Obstacle
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros_interface::Time :init))
    ((:id __id) 0)
    ((:existence_prob __existence_prob) 0.0)
    ((:create_time __create_time) (instance ros_interface::Time :init))
    ((:last_updated_time __last_updated_time) (instance ros_interface::Time :init))
    ((:center_pos_vehicle __center_pos_vehicle) (instance ros_interface::Point3D :init))
    ((:center_pos_abs __center_pos_abs) (instance ros_interface::Point3D :init))
    ((:theta_vehicle __theta_vehicle) 0.0)
    ((:theta_abs __theta_abs) 0.0)
    ((:velocity_vehicle __velocity_vehicle) (instance ros_interface::Point3D :init))
    ((:velocity_abs __velocity_abs) (instance ros_interface::Point3D :init))
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:image_key_points __image_key_points) (let (r) (dotimes (i 0) (push (instance ros_interface::ImageKeyPoint :init) r)) r))
    ((:polygon_point_abs __polygon_point_abs) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:polygon_point_vehicle __polygon_point_vehicle) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:tracking_time __tracking_time) 0.0)
    ((:type __type) 0)
    ((:confidence __confidence) 0.0)
    ((:confidence_type __confidence_type) 0)
    ((:drops __drops) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:acceleration_vehicle __acceleration_vehicle) (instance ros_interface::Point3D :init))
    ((:acceleration_abs __acceleration_abs) (instance ros_interface::Point3D :init))
    ((:anchor_point_image __anchor_point_image) (instance ros_interface::Point2D :init))
    ((:anchor_point_vehicle __anchor_point_vehicle) (instance ros_interface::Point3D :init))
    ((:anchor_point_abs __anchor_point_abs) (instance ros_interface::Point3D :init))
    ((:bbox2d __bbox2d) (instance ros_interface::BBox2D :init))
    ((:bbox2d_rear __bbox2d_rear) (instance ros_interface::BBox2D :init))
    ((:sub_type __sub_type) 0)
    ((:height_above_ground __height_above_ground) 0.0)
    ((:position_abs_covariance __position_abs_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_abs_covariance __velocity_abs_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration_abs_covariance __acceleration_abs_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta_abs_covariance __theta_abs_covariance) 0.0)
    ((:position_vehicle_covariance __position_vehicle_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_vehicle_covariance __velocity_vehicle_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration_vehicle_covariance __acceleration_vehicle_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta_vehicle_covariance __theta_vehicle_covariance) 0.0)
    ((:sensor_calibrator __sensor_calibrator) (instance ros_interface::SensorCalibrator :init))
    ((:cipv_flag __cipv_flag) 0)
    ((:lane_position __lane_position) 0)
    ((:pihp_percentage __pihp_percentage) 0.0)
    ((:blinker_flag __blinker_flag) 0)
    ((:fusion_type __fusion_type) 0)
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _id (round __id))
   (setq _existence_prob (float __existence_prob))
   (setq _create_time __create_time)
   (setq _last_updated_time __last_updated_time)
   (setq _center_pos_vehicle __center_pos_vehicle)
   (setq _center_pos_abs __center_pos_abs)
   (setq _theta_vehicle (float __theta_vehicle))
   (setq _theta_abs (float __theta_abs))
   (setq _velocity_vehicle __velocity_vehicle)
   (setq _velocity_abs __velocity_abs)
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _image_key_points __image_key_points)
   (setq _polygon_point_abs __polygon_point_abs)
   (setq _polygon_point_vehicle __polygon_point_vehicle)
   (setq _tracking_time (float __tracking_time))
   (setq _type (round __type))
   (setq _confidence (float __confidence))
   (setq _confidence_type (round __confidence_type))
   (setq _drops __drops)
   (setq _acceleration_vehicle __acceleration_vehicle)
   (setq _acceleration_abs __acceleration_abs)
   (setq _anchor_point_image __anchor_point_image)
   (setq _anchor_point_vehicle __anchor_point_vehicle)
   (setq _anchor_point_abs __anchor_point_abs)
   (setq _bbox2d __bbox2d)
   (setq _bbox2d_rear __bbox2d_rear)
   (setq _sub_type (round __sub_type))
   (setq _height_above_ground (float __height_above_ground))
   (setq _position_abs_covariance __position_abs_covariance)
   (setq _velocity_abs_covariance __velocity_abs_covariance)
   (setq _acceleration_abs_covariance __acceleration_abs_covariance)
   (setq _theta_abs_covariance (float __theta_abs_covariance))
   (setq _position_vehicle_covariance __position_vehicle_covariance)
   (setq _velocity_vehicle_covariance __velocity_vehicle_covariance)
   (setq _acceleration_vehicle_covariance __acceleration_vehicle_covariance)
   (setq _theta_vehicle_covariance (float __theta_vehicle_covariance))
   (setq _sensor_calibrator __sensor_calibrator)
   (setq _cipv_flag (round __cipv_flag))
   (setq _lane_position (round __lane_position))
   (setq _pihp_percentage (float __pihp_percentage))
   (setq _blinker_flag (round __blinker_flag))
   (setq _fusion_type (round __fusion_type))
   self)
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:existence_prob
   (&optional __existence_prob)
   (if __existence_prob (setq _existence_prob __existence_prob)) _existence_prob)
  (:create_time
   (&rest __create_time)
   (if (keywordp (car __create_time))
       (send* _create_time __create_time)
     (progn
       (if __create_time (setq _create_time (car __create_time)))
       _create_time)))
  (:last_updated_time
   (&rest __last_updated_time)
   (if (keywordp (car __last_updated_time))
       (send* _last_updated_time __last_updated_time)
     (progn
       (if __last_updated_time (setq _last_updated_time (car __last_updated_time)))
       _last_updated_time)))
  (:center_pos_vehicle
   (&rest __center_pos_vehicle)
   (if (keywordp (car __center_pos_vehicle))
       (send* _center_pos_vehicle __center_pos_vehicle)
     (progn
       (if __center_pos_vehicle (setq _center_pos_vehicle (car __center_pos_vehicle)))
       _center_pos_vehicle)))
  (:center_pos_abs
   (&rest __center_pos_abs)
   (if (keywordp (car __center_pos_abs))
       (send* _center_pos_abs __center_pos_abs)
     (progn
       (if __center_pos_abs (setq _center_pos_abs (car __center_pos_abs)))
       _center_pos_abs)))
  (:theta_vehicle
   (&optional __theta_vehicle)
   (if __theta_vehicle (setq _theta_vehicle __theta_vehicle)) _theta_vehicle)
  (:theta_abs
   (&optional __theta_abs)
   (if __theta_abs (setq _theta_abs __theta_abs)) _theta_abs)
  (:velocity_vehicle
   (&rest __velocity_vehicle)
   (if (keywordp (car __velocity_vehicle))
       (send* _velocity_vehicle __velocity_vehicle)
     (progn
       (if __velocity_vehicle (setq _velocity_vehicle (car __velocity_vehicle)))
       _velocity_vehicle)))
  (:velocity_abs
   (&rest __velocity_abs)
   (if (keywordp (car __velocity_abs))
       (send* _velocity_abs __velocity_abs)
     (progn
       (if __velocity_abs (setq _velocity_abs (car __velocity_abs)))
       _velocity_abs)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:image_key_points
   (&rest __image_key_points)
   (if (keywordp (car __image_key_points))
       (send* _image_key_points __image_key_points)
     (progn
       (if __image_key_points (setq _image_key_points (car __image_key_points)))
       _image_key_points)))
  (:polygon_point_abs
   (&rest __polygon_point_abs)
   (if (keywordp (car __polygon_point_abs))
       (send* _polygon_point_abs __polygon_point_abs)
     (progn
       (if __polygon_point_abs (setq _polygon_point_abs (car __polygon_point_abs)))
       _polygon_point_abs)))
  (:polygon_point_vehicle
   (&rest __polygon_point_vehicle)
   (if (keywordp (car __polygon_point_vehicle))
       (send* _polygon_point_vehicle __polygon_point_vehicle)
     (progn
       (if __polygon_point_vehicle (setq _polygon_point_vehicle (car __polygon_point_vehicle)))
       _polygon_point_vehicle)))
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
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
  (:acceleration_vehicle
   (&rest __acceleration_vehicle)
   (if (keywordp (car __acceleration_vehicle))
       (send* _acceleration_vehicle __acceleration_vehicle)
     (progn
       (if __acceleration_vehicle (setq _acceleration_vehicle (car __acceleration_vehicle)))
       _acceleration_vehicle)))
  (:acceleration_abs
   (&rest __acceleration_abs)
   (if (keywordp (car __acceleration_abs))
       (send* _acceleration_abs __acceleration_abs)
     (progn
       (if __acceleration_abs (setq _acceleration_abs (car __acceleration_abs)))
       _acceleration_abs)))
  (:anchor_point_image
   (&rest __anchor_point_image)
   (if (keywordp (car __anchor_point_image))
       (send* _anchor_point_image __anchor_point_image)
     (progn
       (if __anchor_point_image (setq _anchor_point_image (car __anchor_point_image)))
       _anchor_point_image)))
  (:anchor_point_vehicle
   (&rest __anchor_point_vehicle)
   (if (keywordp (car __anchor_point_vehicle))
       (send* _anchor_point_vehicle __anchor_point_vehicle)
     (progn
       (if __anchor_point_vehicle (setq _anchor_point_vehicle (car __anchor_point_vehicle)))
       _anchor_point_vehicle)))
  (:anchor_point_abs
   (&rest __anchor_point_abs)
   (if (keywordp (car __anchor_point_abs))
       (send* _anchor_point_abs __anchor_point_abs)
     (progn
       (if __anchor_point_abs (setq _anchor_point_abs (car __anchor_point_abs)))
       _anchor_point_abs)))
  (:bbox2d
   (&rest __bbox2d)
   (if (keywordp (car __bbox2d))
       (send* _bbox2d __bbox2d)
     (progn
       (if __bbox2d (setq _bbox2d (car __bbox2d)))
       _bbox2d)))
  (:bbox2d_rear
   (&rest __bbox2d_rear)
   (if (keywordp (car __bbox2d_rear))
       (send* _bbox2d_rear __bbox2d_rear)
     (progn
       (if __bbox2d_rear (setq _bbox2d_rear (car __bbox2d_rear)))
       _bbox2d_rear)))
  (:sub_type
   (&optional __sub_type)
   (if __sub_type (setq _sub_type __sub_type)) _sub_type)
  (:height_above_ground
   (&optional __height_above_ground)
   (if __height_above_ground (setq _height_above_ground __height_above_ground)) _height_above_ground)
  (:position_abs_covariance
   (&optional __position_abs_covariance)
   (if __position_abs_covariance (setq _position_abs_covariance __position_abs_covariance)) _position_abs_covariance)
  (:velocity_abs_covariance
   (&optional __velocity_abs_covariance)
   (if __velocity_abs_covariance (setq _velocity_abs_covariance __velocity_abs_covariance)) _velocity_abs_covariance)
  (:acceleration_abs_covariance
   (&optional __acceleration_abs_covariance)
   (if __acceleration_abs_covariance (setq _acceleration_abs_covariance __acceleration_abs_covariance)) _acceleration_abs_covariance)
  (:theta_abs_covariance
   (&optional __theta_abs_covariance)
   (if __theta_abs_covariance (setq _theta_abs_covariance __theta_abs_covariance)) _theta_abs_covariance)
  (:position_vehicle_covariance
   (&optional __position_vehicle_covariance)
   (if __position_vehicle_covariance (setq _position_vehicle_covariance __position_vehicle_covariance)) _position_vehicle_covariance)
  (:velocity_vehicle_covariance
   (&optional __velocity_vehicle_covariance)
   (if __velocity_vehicle_covariance (setq _velocity_vehicle_covariance __velocity_vehicle_covariance)) _velocity_vehicle_covariance)
  (:acceleration_vehicle_covariance
   (&optional __acceleration_vehicle_covariance)
   (if __acceleration_vehicle_covariance (setq _acceleration_vehicle_covariance __acceleration_vehicle_covariance)) _acceleration_vehicle_covariance)
  (:theta_vehicle_covariance
   (&optional __theta_vehicle_covariance)
   (if __theta_vehicle_covariance (setq _theta_vehicle_covariance __theta_vehicle_covariance)) _theta_vehicle_covariance)
  (:sensor_calibrator
   (&rest __sensor_calibrator)
   (if (keywordp (car __sensor_calibrator))
       (send* _sensor_calibrator __sensor_calibrator)
     (progn
       (if __sensor_calibrator (setq _sensor_calibrator (car __sensor_calibrator)))
       _sensor_calibrator)))
  (:cipv_flag
   (&optional __cipv_flag)
   (if __cipv_flag (setq _cipv_flag __cipv_flag)) _cipv_flag)
  (:lane_position
   (&optional __lane_position)
   (if __lane_position (setq _lane_position __lane_position)) _lane_position)
  (:pihp_percentage
   (&optional __pihp_percentage)
   (if __pihp_percentage (setq _pihp_percentage __pihp_percentage)) _pihp_percentage)
  (:blinker_flag
   (&optional __blinker_flag)
   (if __blinker_flag (setq _blinker_flag __blinker_flag)) _blinker_flag)
  (:fusion_type
   (&optional __fusion_type)
   (if __fusion_type (setq _fusion_type __fusion_type)) _fusion_type)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Time _timestamp
    (send _timestamp :serialization-length)
    ;; int32 _id
    4
    ;; float64 _existence_prob
    8
    ;; ros_interface/Time _create_time
    (send _create_time :serialization-length)
    ;; ros_interface/Time _last_updated_time
    (send _last_updated_time :serialization-length)
    ;; ros_interface/Point3D _center_pos_vehicle
    (send _center_pos_vehicle :serialization-length)
    ;; ros_interface/Point3D _center_pos_abs
    (send _center_pos_abs :serialization-length)
    ;; float64 _theta_vehicle
    8
    ;; float64 _theta_abs
    8
    ;; ros_interface/Point3D _velocity_vehicle
    (send _velocity_vehicle :serialization-length)
    ;; ros_interface/Point3D _velocity_abs
    (send _velocity_abs :serialization-length)
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; ros_interface/ImageKeyPoint[] _image_key_points
    (apply #'+ (send-all _image_key_points :serialization-length)) 4
    ;; ros_interface/Point3D[] _polygon_point_abs
    (apply #'+ (send-all _polygon_point_abs :serialization-length)) 4
    ;; ros_interface/Point3D[] _polygon_point_vehicle
    (apply #'+ (send-all _polygon_point_vehicle :serialization-length)) 4
    ;; float64 _tracking_time
    8
    ;; int32 _type
    4
    ;; float64 _confidence
    8
    ;; int32 _confidence_type
    4
    ;; ros_interface/Point3D[] _drops
    (apply #'+ (send-all _drops :serialization-length)) 4
    ;; ros_interface/Point3D _acceleration_vehicle
    (send _acceleration_vehicle :serialization-length)
    ;; ros_interface/Point3D _acceleration_abs
    (send _acceleration_abs :serialization-length)
    ;; ros_interface/Point2D _anchor_point_image
    (send _anchor_point_image :serialization-length)
    ;; ros_interface/Point3D _anchor_point_vehicle
    (send _anchor_point_vehicle :serialization-length)
    ;; ros_interface/Point3D _anchor_point_abs
    (send _anchor_point_abs :serialization-length)
    ;; ros_interface/BBox2D _bbox2d
    (send _bbox2d :serialization-length)
    ;; ros_interface/BBox2D _bbox2d_rear
    (send _bbox2d_rear :serialization-length)
    ;; int32 _sub_type
    4
    ;; float64 _height_above_ground
    8
    ;; float64[] _position_abs_covariance
    (* 8    (length _position_abs_covariance)) 4
    ;; float64[] _velocity_abs_covariance
    (* 8    (length _velocity_abs_covariance)) 4
    ;; float64[] _acceleration_abs_covariance
    (* 8    (length _acceleration_abs_covariance)) 4
    ;; float64 _theta_abs_covariance
    8
    ;; float64[] _position_vehicle_covariance
    (* 8    (length _position_vehicle_covariance)) 4
    ;; float64[] _velocity_vehicle_covariance
    (* 8    (length _velocity_vehicle_covariance)) 4
    ;; float64[] _acceleration_vehicle_covariance
    (* 8    (length _acceleration_vehicle_covariance)) 4
    ;; float64 _theta_vehicle_covariance
    8
    ;; ros_interface/SensorCalibrator _sensor_calibrator
    (send _sensor_calibrator :serialization-length)
    ;; uint8 _cipv_flag
    1
    ;; int32 _lane_position
    4
    ;; float64 _pihp_percentage
    8
    ;; int32 _blinker_flag
    4
    ;; int32 _fusion_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Time _timestamp
       (send _timestamp :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; float64 _existence_prob
       (sys::poke _existence_prob (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Time _create_time
       (send _create_time :serialize s)
     ;; ros_interface/Time _last_updated_time
       (send _last_updated_time :serialize s)
     ;; ros_interface/Point3D _center_pos_vehicle
       (send _center_pos_vehicle :serialize s)
     ;; ros_interface/Point3D _center_pos_abs
       (send _center_pos_abs :serialize s)
     ;; float64 _theta_vehicle
       (sys::poke _theta_vehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_abs
       (sys::poke _theta_abs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _velocity_vehicle
       (send _velocity_vehicle :serialize s)
     ;; ros_interface/Point3D _velocity_abs
       (send _velocity_abs :serialize s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/ImageKeyPoint[] _image_key_points
     (write-long (length _image_key_points) s)
     (dolist (elem _image_key_points)
       (send elem :serialize s)
       )
     ;; ros_interface/Point3D[] _polygon_point_abs
     (write-long (length _polygon_point_abs) s)
     (dolist (elem _polygon_point_abs)
       (send elem :serialize s)
       )
     ;; ros_interface/Point3D[] _polygon_point_vehicle
     (write-long (length _polygon_point_vehicle) s)
     (dolist (elem _polygon_point_vehicle)
       (send elem :serialize s)
       )
     ;; float64 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _type
       (write-long _type s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _confidence_type
       (write-long _confidence_type s)
     ;; ros_interface/Point3D[] _drops
     (write-long (length _drops) s)
     (dolist (elem _drops)
       (send elem :serialize s)
       )
     ;; ros_interface/Point3D _acceleration_vehicle
       (send _acceleration_vehicle :serialize s)
     ;; ros_interface/Point3D _acceleration_abs
       (send _acceleration_abs :serialize s)
     ;; ros_interface/Point2D _anchor_point_image
       (send _anchor_point_image :serialize s)
     ;; ros_interface/Point3D _anchor_point_vehicle
       (send _anchor_point_vehicle :serialize s)
     ;; ros_interface/Point3D _anchor_point_abs
       (send _anchor_point_abs :serialize s)
     ;; ros_interface/BBox2D _bbox2d
       (send _bbox2d :serialize s)
     ;; ros_interface/BBox2D _bbox2d_rear
       (send _bbox2d_rear :serialize s)
     ;; int32 _sub_type
       (write-long _sub_type s)
     ;; float64 _height_above_ground
       (sys::poke _height_above_ground (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _position_abs_covariance
     (write-long (length _position_abs_covariance) s)
     (dotimes (i (length _position_abs_covariance))
       (sys::poke (elt _position_abs_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity_abs_covariance
     (write-long (length _velocity_abs_covariance) s)
     (dotimes (i (length _velocity_abs_covariance))
       (sys::poke (elt _velocity_abs_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acceleration_abs_covariance
     (write-long (length _acceleration_abs_covariance) s)
     (dotimes (i (length _acceleration_abs_covariance))
       (sys::poke (elt _acceleration_abs_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _theta_abs_covariance
       (sys::poke _theta_abs_covariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _position_vehicle_covariance
     (write-long (length _position_vehicle_covariance) s)
     (dotimes (i (length _position_vehicle_covariance))
       (sys::poke (elt _position_vehicle_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity_vehicle_covariance
     (write-long (length _velocity_vehicle_covariance) s)
     (dotimes (i (length _velocity_vehicle_covariance))
       (sys::poke (elt _velocity_vehicle_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acceleration_vehicle_covariance
     (write-long (length _acceleration_vehicle_covariance) s)
     (dotimes (i (length _acceleration_vehicle_covariance))
       (sys::poke (elt _acceleration_vehicle_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _theta_vehicle_covariance
       (sys::poke _theta_vehicle_covariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/SensorCalibrator _sensor_calibrator
       (send _sensor_calibrator :serialize s)
     ;; uint8 _cipv_flag
       (write-byte _cipv_flag s)
     ;; int32 _lane_position
       (write-long _lane_position s)
     ;; float64 _pihp_percentage
       (sys::poke _pihp_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _blinker_flag
       (write-long _blinker_flag s)
     ;; int32 _fusion_type
       (write-long _fusion_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Time _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _existence_prob
     (setq _existence_prob (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Time _create_time
     (send _create_time :deserialize buf ptr-) (incf ptr- (send _create_time :serialization-length))
   ;; ros_interface/Time _last_updated_time
     (send _last_updated_time :deserialize buf ptr-) (incf ptr- (send _last_updated_time :serialization-length))
   ;; ros_interface/Point3D _center_pos_vehicle
     (send _center_pos_vehicle :deserialize buf ptr-) (incf ptr- (send _center_pos_vehicle :serialization-length))
   ;; ros_interface/Point3D _center_pos_abs
     (send _center_pos_abs :deserialize buf ptr-) (incf ptr- (send _center_pos_abs :serialization-length))
   ;; float64 _theta_vehicle
     (setq _theta_vehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_abs
     (setq _theta_abs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _velocity_vehicle
     (send _velocity_vehicle :deserialize buf ptr-) (incf ptr- (send _velocity_vehicle :serialization-length))
   ;; ros_interface/Point3D _velocity_abs
     (send _velocity_abs :deserialize buf ptr-) (incf ptr- (send _velocity_abs :serialization-length))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/ImageKeyPoint[] _image_key_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_key_points (let (r) (dotimes (i n) (push (instance ros_interface::ImageKeyPoint :init) r)) r))
     (dolist (elem- _image_key_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point3D[] _polygon_point_abs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_point_abs (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _polygon_point_abs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point3D[] _polygon_point_vehicle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_point_vehicle (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _polygon_point_vehicle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _confidence_type
     (setq _confidence_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D[] _drops
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drops (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _drops)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point3D _acceleration_vehicle
     (send _acceleration_vehicle :deserialize buf ptr-) (incf ptr- (send _acceleration_vehicle :serialization-length))
   ;; ros_interface/Point3D _acceleration_abs
     (send _acceleration_abs :deserialize buf ptr-) (incf ptr- (send _acceleration_abs :serialization-length))
   ;; ros_interface/Point2D _anchor_point_image
     (send _anchor_point_image :deserialize buf ptr-) (incf ptr- (send _anchor_point_image :serialization-length))
   ;; ros_interface/Point3D _anchor_point_vehicle
     (send _anchor_point_vehicle :deserialize buf ptr-) (incf ptr- (send _anchor_point_vehicle :serialization-length))
   ;; ros_interface/Point3D _anchor_point_abs
     (send _anchor_point_abs :deserialize buf ptr-) (incf ptr- (send _anchor_point_abs :serialization-length))
   ;; ros_interface/BBox2D _bbox2d
     (send _bbox2d :deserialize buf ptr-) (incf ptr- (send _bbox2d :serialization-length))
   ;; ros_interface/BBox2D _bbox2d_rear
     (send _bbox2d_rear :deserialize buf ptr-) (incf ptr- (send _bbox2d_rear :serialization-length))
   ;; int32 _sub_type
     (setq _sub_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _height_above_ground
     (setq _height_above_ground (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _position_abs_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_abs_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_abs_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity_abs_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_abs_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_abs_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acceleration_abs_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration_abs_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration_abs_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _theta_abs_covariance
     (setq _theta_abs_covariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _position_vehicle_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_vehicle_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_vehicle_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity_vehicle_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_vehicle_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_vehicle_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acceleration_vehicle_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration_vehicle_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration_vehicle_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _theta_vehicle_covariance
     (setq _theta_vehicle_covariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/SensorCalibrator _sensor_calibrator
     (send _sensor_calibrator :deserialize buf ptr-) (incf ptr- (send _sensor_calibrator :serialization-length))
   ;; uint8 _cipv_flag
     (setq _cipv_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _lane_position
     (setq _lane_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _pihp_percentage
     (setq _pihp_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _blinker_flag
     (setq _blinker_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fusion_type
     (setq _fusion_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::Obstacle :md5sum-) "540c5953bd92bdf84eafae61ed094918")
(setf (get ros_interface::Obstacle :datatype-) "ros_interface/Obstacle")
(setf (get ros_interface::Obstacle :definition-)
      "Time   timestamp     # 时间戳
int32   id     # 障碍物id
float64   existence_prob     # 障碍物存在的概率
Time   create_time     # 障碍物被识别的时间戳
Time   last_updated_time     # 障碍物上一次更新的时间
Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置
Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置
float64   theta_vehicle     # 车辆坐标系下障碍物的朝向
float64   theta_abs     # 世界坐标系下障碍物的朝向
Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度
Point3D   velocity_abs     # 世界坐标系下障碍物的速度
float64   length     # 障碍物长度
float64   width     # 障碍物宽度
float64   height     # 障碍物高度
ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形
Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形
Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形
float64   tracking_time     # 障碍物被追踪的时间
int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;
float64   confidence     # 障碍物类别置信度
int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;
Point3D[] drops # 障碍物轨迹点
Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度
Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度
Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)
Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)
Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)
BBox2D   bbox2d     # 障碍物图像框
BBox2D   bbox2d_rear     # 障碍物图像尾框
int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;
float64   height_above_ground     # 障碍物近地点到地面的高度
float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵
float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵
float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵
float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵
float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵
float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵
float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵
float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵
SensorCalibrator   sensor_calibrator     # 传感器标定参数
uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）
int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
float64   pihp_percentage     # 临车道车辆压线比例
int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN
int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/ImageKeyPoint
float64   x     # 车位图像关键点x坐标
float64   y     # 车位图像关键点y坐标
float64   confidence     # 置信度

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

================================================================================
MSG: ros_interface/BBox2D
int16   xmin     # 图像框左上角的x坐标
int16   ymin     # 图像框左上角的y坐标
int16   xmax     # 图像框右下角的x坐标
int16   ymax     # 图像框右下角的y坐标

================================================================================
MSG: ros_interface/SensorCalibrator
Point3D   pose     # 传感器安装位置(相对于后轴中心点)
Point3D   angle     # 传感器安装角度(车体坐标系)

")



(provide :ros_interface/Obstacle "540c5953bd92bdf84eafae61ed094918")


