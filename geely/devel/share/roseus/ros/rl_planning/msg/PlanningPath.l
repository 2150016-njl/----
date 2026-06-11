;; Auto-generated. Do not edit!


(when (boundp 'rl_planning::PlanningPath)
  (if (not (find-package "RL_PLANNING"))
    (make-package "RL_PLANNING"))
  (shadow 'PlanningPath (find-package "RL_PLANNING")))
(unless (find-package "RL_PLANNING::PLANNINGPATH")
  (make-package "RL_PLANNING::PLANNINGPATH"))

(in-package "ROS")
;;//! \htmlinclude PlanningPath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rl_planning::PlanningPath
  :super ros::object
  :slots (_header _fx _fy _v _a _theta _kappa _s _collision_risk _SRQ_value ))

(defmethod rl_planning::PlanningPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fx __fx) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:fy __fy) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:a __a) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:theta __theta) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:kappa __kappa) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:s __s) (make-array 500 :initial-element 0.0 :element-type :float))
    ((:collision_risk __collision_risk) 0)
    ((:SRQ_value __SRQ_value) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fx __fx)
   (setq _fy __fy)
   (setq _v __v)
   (setq _a __a)
   (setq _theta __theta)
   (setq _kappa __kappa)
   (setq _s __s)
   (setq _collision_risk (round __collision_risk))
   (setq _SRQ_value (float __SRQ_value))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fx
   (&optional __fx)
   (if __fx (setq _fx __fx)) _fx)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:collision_risk
   (&optional __collision_risk)
   (if __collision_risk (setq _collision_risk __collision_risk)) _collision_risk)
  (:SRQ_value
   (&optional __SRQ_value)
   (if __SRQ_value (setq _SRQ_value __SRQ_value)) _SRQ_value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[500] _fx
    (* 8    500)
    ;; float64[500] _fy
    (* 8    500)
    ;; float64[500] _v
    (* 8    500)
    ;; float64[500] _a
    (* 8    500)
    ;; float64[500] _theta
    (* 8    500)
    ;; float64[500] _kappa
    (* 8    500)
    ;; float64[500] _s
    (* 8    500)
    ;; int32 _collision_risk
    4
    ;; float64 _SRQ_value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[500] _fx
     (dotimes (i 500)
       (sys::poke (elt _fx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[500] _fy
     (dotimes (i 500)
       (sys::poke (elt _fy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[500] _v
     (dotimes (i 500)
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[500] _a
     (dotimes (i 500)
       (sys::poke (elt _a i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[500] _theta
     (dotimes (i 500)
       (sys::poke (elt _theta i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[500] _kappa
     (dotimes (i 500)
       (sys::poke (elt _kappa i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[500] _s
     (dotimes (i 500)
       (sys::poke (elt _s i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _collision_risk
       (write-long _collision_risk s)
     ;; float64 _SRQ_value
       (sys::poke _SRQ_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[500] _fx
   (dotimes (i (length _fx))
     (setf (elt _fx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[500] _fy
   (dotimes (i (length _fy))
     (setf (elt _fy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[500] _v
   (dotimes (i (length _v))
     (setf (elt _v i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[500] _a
   (dotimes (i (length _a))
     (setf (elt _a i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[500] _theta
   (dotimes (i (length _theta))
     (setf (elt _theta i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[500] _kappa
   (dotimes (i (length _kappa))
     (setf (elt _kappa i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[500] _s
   (dotimes (i (length _s))
     (setf (elt _s i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _collision_risk
     (setq _collision_risk (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _SRQ_value
     (setq _SRQ_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rl_planning::PlanningPath :md5sum-) "442a1e70c87c57dd2f625de9cdf24bc4")
(setf (get rl_planning::PlanningPath :datatype-) "rl_planning/PlanningPath")
(setf (get rl_planning::PlanningPath :definition-)
      "Header header
float64[500] fx
float64[500] fy
float64[500] v
float64[500] a
float64[500] theta
float64[500] kappa
float64[500] s
int32 collision_risk
float64 SRQ_value

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



(provide :rl_planning/PlanningPath "442a1e70c87c57dd2f625de9cdf24bc4")


