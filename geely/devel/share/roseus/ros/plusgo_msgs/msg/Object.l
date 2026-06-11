;; Auto-generated. Do not edit!


(when (boundp 'plusgo_msgs::Object)
  (if (not (find-package "PLUSGO_MSGS"))
    (make-package "PLUSGO_MSGS"))
  (shadow 'Object (find-package "PLUSGO_MSGS")))
(unless (find-package "PLUSGO_MSGS::OBJECT")
  (make-package "PLUSGO_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass plusgo_msgs::Object
  :super ros::object
  :slots (_header _source _exist_confidence _type _type_confidence _track_id _tracking_time _motion_state _anchor _theta _direction _direction_cov _center _center_cov _size _size_cov _is_absolute_position _velocity _velocity_cov _acceleration _acceleration_cov _angle_velocity _angle_velocity_cov _angle_acceleration _angle_acceleration_cov _trajectory _history_type _history_velocity _polygon _rect ))

(defmethod plusgo_msgs::Object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source __source) 0)
    ((:exist_confidence __exist_confidence) 0.0)
    ((:type __type) 0)
    ((:type_confidence __type_confidence) 0.0)
    ((:track_id __track_id) 0)
    ((:tracking_time __tracking_time) 0.0)
    ((:motion_state __motion_state) 0)
    ((:anchor __anchor) (instance geometry_msgs::Point32 :init))
    ((:theta __theta) 0.0)
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:direction_cov __direction_cov) (instance geometry_msgs::Vector3 :init))
    ((:center __center) (instance geometry_msgs::Point32 :init))
    ((:center_cov __center_cov) (instance geometry_msgs::Point32 :init))
    ((:size __size) (instance geometry_msgs::Vector3 :init))
    ((:size_cov __size_cov) (instance geometry_msgs::Vector3 :init))
    ((:is_absolute_position __is_absolute_position) nil)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:velocity_cov __velocity_cov) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:acceleration_cov __acceleration_cov) (instance geometry_msgs::Vector3 :init))
    ((:angle_velocity __angle_velocity) 0.0)
    ((:angle_velocity_cov __angle_velocity_cov) 0.0)
    ((:angle_acceleration __angle_acceleration) 0.0)
    ((:angle_acceleration_cov __angle_acceleration_cov) 0.0)
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    ((:history_type __history_type) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    ((:history_velocity __history_velocity) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:polygon __polygon) (instance plusgo_msgs::Polygon :init))
    ((:rect __rect) (instance plusgo_msgs::ImageRect :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _source (round __source))
   (setq _exist_confidence (float __exist_confidence))
   (setq _type (round __type))
   (setq _type_confidence (float __type_confidence))
   (setq _track_id (round __track_id))
   (setq _tracking_time (float __tracking_time))
   (setq _motion_state (round __motion_state))
   (setq _anchor __anchor)
   (setq _theta (float __theta))
   (setq _direction __direction)
   (setq _direction_cov __direction_cov)
   (setq _center __center)
   (setq _center_cov __center_cov)
   (setq _size __size)
   (setq _size_cov __size_cov)
   (setq _is_absolute_position __is_absolute_position)
   (setq _velocity __velocity)
   (setq _velocity_cov __velocity_cov)
   (setq _acceleration __acceleration)
   (setq _acceleration_cov __acceleration_cov)
   (setq _angle_velocity (float __angle_velocity))
   (setq _angle_velocity_cov (float __angle_velocity_cov))
   (setq _angle_acceleration (float __angle_acceleration))
   (setq _angle_acceleration_cov (float __angle_acceleration_cov))
   (setq _trajectory __trajectory)
   (setq _history_type __history_type)
   (setq _history_velocity __history_velocity)
   (setq _polygon __polygon)
   (setq _rect __rect)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:exist_confidence
   (&optional __exist_confidence)
   (if __exist_confidence (setq _exist_confidence __exist_confidence)) _exist_confidence)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:type_confidence
   (&optional __type_confidence)
   (if __type_confidence (setq _type_confidence __type_confidence)) _type_confidence)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:motion_state
   (&optional __motion_state)
   (if __motion_state (setq _motion_state __motion_state)) _motion_state)
  (:anchor
   (&rest __anchor)
   (if (keywordp (car __anchor))
       (send* _anchor __anchor)
     (progn
       (if __anchor (setq _anchor (car __anchor)))
       _anchor)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:direction_cov
   (&rest __direction_cov)
   (if (keywordp (car __direction_cov))
       (send* _direction_cov __direction_cov)
     (progn
       (if __direction_cov (setq _direction_cov (car __direction_cov)))
       _direction_cov)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:center_cov
   (&rest __center_cov)
   (if (keywordp (car __center_cov))
       (send* _center_cov __center_cov)
     (progn
       (if __center_cov (setq _center_cov (car __center_cov)))
       _center_cov)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:size_cov
   (&rest __size_cov)
   (if (keywordp (car __size_cov))
       (send* _size_cov __size_cov)
     (progn
       (if __size_cov (setq _size_cov (car __size_cov)))
       _size_cov)))
  (:is_absolute_position
   (&optional __is_absolute_position)
   (if __is_absolute_position (setq _is_absolute_position __is_absolute_position)) _is_absolute_position)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_cov
   (&rest __velocity_cov)
   (if (keywordp (car __velocity_cov))
       (send* _velocity_cov __velocity_cov)
     (progn
       (if __velocity_cov (setq _velocity_cov (car __velocity_cov)))
       _velocity_cov)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:acceleration_cov
   (&rest __acceleration_cov)
   (if (keywordp (car __acceleration_cov))
       (send* _acceleration_cov __acceleration_cov)
     (progn
       (if __acceleration_cov (setq _acceleration_cov (car __acceleration_cov)))
       _acceleration_cov)))
  (:angle_velocity
   (&optional __angle_velocity)
   (if __angle_velocity (setq _angle_velocity __angle_velocity)) _angle_velocity)
  (:angle_velocity_cov
   (&optional __angle_velocity_cov)
   (if __angle_velocity_cov (setq _angle_velocity_cov __angle_velocity_cov)) _angle_velocity_cov)
  (:angle_acceleration
   (&optional __angle_acceleration)
   (if __angle_acceleration (setq _angle_acceleration __angle_acceleration)) _angle_acceleration)
  (:angle_acceleration_cov
   (&optional __angle_acceleration_cov)
   (if __angle_acceleration_cov (setq _angle_acceleration_cov __angle_acceleration_cov)) _angle_acceleration_cov)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:history_type
   (&rest __history_type)
   (if (keywordp (car __history_type))
       (send* _history_type __history_type)
     (progn
       (if __history_type (setq _history_type (car __history_type)))
       _history_type)))
  (:history_velocity
   (&rest __history_velocity)
   (if (keywordp (car __history_velocity))
       (send* _history_velocity __history_velocity)
     (progn
       (if __history_velocity (setq _history_velocity (car __history_velocity)))
       _history_velocity)))
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:rect
   (&rest __rect)
   (if (keywordp (car __rect))
       (send* _rect __rect)
     (progn
       (if __rect (setq _rect (car __rect)))
       _rect)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _source
    1
    ;; float32 _exist_confidence
    4
    ;; int64 _type
    8
    ;; float32 _type_confidence
    4
    ;; int64 _track_id
    8
    ;; float32 _tracking_time
    4
    ;; int64 _motion_state
    8
    ;; geometry_msgs/Point32 _anchor
    (send _anchor :serialization-length)
    ;; float32 _theta
    4
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; geometry_msgs/Vector3 _direction_cov
    (send _direction_cov :serialization-length)
    ;; geometry_msgs/Point32 _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point32 _center_cov
    (send _center_cov :serialization-length)
    ;; geometry_msgs/Vector3 _size
    (send _size :serialization-length)
    ;; geometry_msgs/Vector3 _size_cov
    (send _size_cov :serialization-length)
    ;; bool _is_absolute_position
    1
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_cov
    (send _velocity_cov :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration_cov
    (send _acceleration_cov :serialization-length)
    ;; float32 _angle_velocity
    4
    ;; float32 _angle_velocity_cov
    4
    ;; float32 _angle_acceleration
    4
    ;; float32 _angle_acceleration_cov
    4
    ;; geometry_msgs/Point32[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ;; geometry_msgs/Point32[] _history_type
    (apply #'+ (send-all _history_type :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _history_velocity
    (apply #'+ (send-all _history_velocity :serialization-length)) 4
    ;; plusgo_msgs/Polygon _polygon
    (send _polygon :serialization-length)
    ;; plusgo_msgs/ImageRect _rect
    (send _rect :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _source
       (write-byte _source s)
     ;; float32 _exist_confidence
       (sys::poke _exist_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _type
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _type (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _type) (= (length (_type . bv)) 2)) ;; bignum
              (write-long (ash (elt (_type . bv) 0) 0) s)
              (write-long (ash (elt (_type . bv) 1) -1) s))
             ((and (class _type) (= (length (_type . bv)) 1)) ;; big1
              (write-long (elt (_type . bv) 0) s)
              (write-long (if (>= _type 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _type s)(write-long (if (>= _type 0) 0 #xffffffff) s)))
     ;; float32 _type_confidence
       (sys::poke _type_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; float32 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _motion_state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motion_state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motion_state) (= (length (_motion_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motion_state . bv) 0) 0) s)
              (write-long (ash (elt (_motion_state . bv) 1) -1) s))
             ((and (class _motion_state) (= (length (_motion_state . bv)) 1)) ;; big1
              (write-long (elt (_motion_state . bv) 0) s)
              (write-long (if (>= _motion_state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motion_state s)(write-long (if (>= _motion_state 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Point32 _anchor
       (send _anchor :serialize s)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; geometry_msgs/Vector3 _direction_cov
       (send _direction_cov :serialize s)
     ;; geometry_msgs/Point32 _center
       (send _center :serialize s)
     ;; geometry_msgs/Point32 _center_cov
       (send _center_cov :serialize s)
     ;; geometry_msgs/Vector3 _size
       (send _size :serialize s)
     ;; geometry_msgs/Vector3 _size_cov
       (send _size_cov :serialize s)
     ;; bool _is_absolute_position
       (if _is_absolute_position (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _velocity_cov
       (send _velocity_cov :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _acceleration_cov
       (send _acceleration_cov :serialize s)
     ;; float32 _angle_velocity
       (sys::poke _angle_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_velocity_cov
       (sys::poke _angle_velocity_cov (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_acceleration
       (sys::poke _angle_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_acceleration_cov
       (sys::poke _angle_acceleration_cov (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32[] _history_type
     (write-long (length _history_type) s)
     (dolist (elem _history_type)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _history_velocity
     (write-long (length _history_velocity) s)
     (dolist (elem _history_velocity)
       (send elem :serialize s)
       )
     ;; plusgo_msgs/Polygon _polygon
       (send _polygon :serialize s)
     ;; plusgo_msgs/ImageRect _rect
       (send _rect :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _exist_confidence
     (setq _exist_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _type
#+(or :alpha :irix6 :x86_64)
      (setf _type (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _type (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _type_confidence
     (setq _type_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _track_id
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _motion_state
#+(or :alpha :irix6 :x86_64)
      (setf _motion_state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motion_state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Point32 _anchor
     (send _anchor :deserialize buf ptr-) (incf ptr- (send _anchor :serialization-length))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; geometry_msgs/Vector3 _direction_cov
     (send _direction_cov :deserialize buf ptr-) (incf ptr- (send _direction_cov :serialization-length))
   ;; geometry_msgs/Point32 _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point32 _center_cov
     (send _center_cov :deserialize buf ptr-) (incf ptr- (send _center_cov :serialization-length))
   ;; geometry_msgs/Vector3 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; geometry_msgs/Vector3 _size_cov
     (send _size_cov :deserialize buf ptr-) (incf ptr- (send _size_cov :serialization-length))
   ;; bool _is_absolute_position
     (setq _is_absolute_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_cov
     (send _velocity_cov :deserialize buf ptr-) (incf ptr- (send _velocity_cov :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration_cov
     (send _acceleration_cov :deserialize buf ptr-) (incf ptr- (send _acceleration_cov :serialization-length))
   ;; float32 _angle_velocity
     (setq _angle_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_velocity_cov
     (setq _angle_velocity_cov (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_acceleration
     (setq _angle_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_acceleration_cov
     (setq _angle_acceleration_cov (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32[] _history_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _history_type (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _history_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _history_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _history_velocity (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _history_velocity)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; plusgo_msgs/Polygon _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;; plusgo_msgs/ImageRect _rect
     (send _rect :deserialize buf ptr-) (incf ptr- (send _rect :serialization-length))
   ;;
   self)
  )

(setf (get plusgo_msgs::Object :md5sum-) "391c844aee60900a62ef240fbbd6467d")
(setf (get plusgo_msgs::Object :datatype-) "plusgo_msgs/Object")
(setf (get plusgo_msgs::Object :definition-)
      "std_msgs/Header header
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



(provide :plusgo_msgs/Object "391c844aee60900a62ef240fbbd6467d")


