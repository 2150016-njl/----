;; Auto-generated. Do not edit!


(when (boundp 'rl_planning::Trajectory_planning)
  (if (not (find-package "RL_PLANNING"))
    (make-package "RL_PLANNING"))
  (shadow 'Trajectory_planning (find-package "RL_PLANNING")))
(unless (find-package "RL_PLANNING::TRAJECTORY_PLANNING")
  (make-package "RL_PLANNING::TRAJECTORY_PLANNING"))

(in-package "ROS")
;;//! \htmlinclude Trajectory_planning.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rl_planning::Trajectory_planning
  :super ros::object
  :slots (_header _fx _fy _ftheta _fkappa _V_optimal ))

(defmethod rl_planning::Trajectory_planning
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fx __fx) (make-array 400 :initial-element 0.0 :element-type :float))
    ((:fy __fy) (make-array 400 :initial-element 0.0 :element-type :float))
    ((:ftheta __ftheta) (make-array 400 :initial-element 0.0 :element-type :float))
    ((:fkappa __fkappa) (make-array 400 :initial-element 0.0 :element-type :float))
    ((:V_optimal __V_optimal) (make-array 400 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fx __fx)
   (setq _fy __fy)
   (setq _ftheta __ftheta)
   (setq _fkappa __fkappa)
   (setq _V_optimal __V_optimal)
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
  (:ftheta
   (&optional __ftheta)
   (if __ftheta (setq _ftheta __ftheta)) _ftheta)
  (:fkappa
   (&optional __fkappa)
   (if __fkappa (setq _fkappa __fkappa)) _fkappa)
  (:V_optimal
   (&optional __V_optimal)
   (if __V_optimal (setq _V_optimal __V_optimal)) _V_optimal)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[400] _fx
    (* 8    400)
    ;; float64[400] _fy
    (* 8    400)
    ;; float64[400] _ftheta
    (* 8    400)
    ;; float64[400] _fkappa
    (* 8    400)
    ;; float64[400] _V_optimal
    (* 8    400)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[400] _fx
     (dotimes (i 400)
       (sys::poke (elt _fx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[400] _fy
     (dotimes (i 400)
       (sys::poke (elt _fy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[400] _ftheta
     (dotimes (i 400)
       (sys::poke (elt _ftheta i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[400] _fkappa
     (dotimes (i 400)
       (sys::poke (elt _fkappa i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[400] _V_optimal
     (dotimes (i 400)
       (sys::poke (elt _V_optimal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[400] _fx
   (dotimes (i (length _fx))
     (setf (elt _fx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[400] _fy
   (dotimes (i (length _fy))
     (setf (elt _fy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[400] _ftheta
   (dotimes (i (length _ftheta))
     (setf (elt _ftheta i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[400] _fkappa
   (dotimes (i (length _fkappa))
     (setf (elt _fkappa i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[400] _V_optimal
   (dotimes (i (length _V_optimal))
     (setf (elt _V_optimal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get rl_planning::Trajectory_planning :md5sum-) "0c7d8c9ac7599b04f381f6cd30bcd15e")
(setf (get rl_planning::Trajectory_planning :datatype-) "rl_planning/Trajectory_planning")
(setf (get rl_planning::Trajectory_planning :definition-)
      "Header header
float64[400] fx
float64[400] fy
float64[400] ftheta
float64[400] fkappa
float64[400] V_optimal
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



(provide :rl_planning/Trajectory_planning "0c7d8c9ac7599b04f381f6cd30bcd15e")


