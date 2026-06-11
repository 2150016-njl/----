;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PathPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PathPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PATHPOINT")
  (make-package "ROS_INTERFACE::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass ros_interface::PathPoint
  :super ros::object
  :slots (_x _y _z _theta _kappa _s _dkappa _ddkappa _lane_id _x_derivative _y_derivative ))

(defmethod ros_interface::PathPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:theta __theta) 0.0)
    ((:kappa __kappa) 0.0)
    ((:s __s) 0.0)
    ((:dkappa __dkappa) 0.0)
    ((:ddkappa __ddkappa) 0.0)
    ((:lane_id __lane_id) 0.0)
    ((:x_derivative __x_derivative) 0.0)
    ((:y_derivative __y_derivative) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _theta (float __theta))
   (setq _kappa (float __kappa))
   (setq _s (float __s))
   (setq _dkappa (float __dkappa))
   (setq _ddkappa (float __ddkappa))
   (setq _lane_id (float __lane_id))
   (setq _x_derivative (float __x_derivative))
   (setq _y_derivative (float __y_derivative))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:dkappa
   (&optional __dkappa)
   (if __dkappa (setq _dkappa __dkappa)) _dkappa)
  (:ddkappa
   (&optional __ddkappa)
   (if __ddkappa (setq _ddkappa __ddkappa)) _ddkappa)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:x_derivative
   (&optional __x_derivative)
   (if __x_derivative (setq _x_derivative __x_derivative)) _x_derivative)
  (:y_derivative
   (&optional __y_derivative)
   (if __y_derivative (setq _y_derivative __y_derivative)) _y_derivative)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _theta
    8
    ;; float64 _kappa
    8
    ;; float64 _s
    8
    ;; float64 _dkappa
    8
    ;; float64 _ddkappa
    8
    ;; float64 _lane_id
    8
    ;; float64 _x_derivative
    8
    ;; float64 _y_derivative
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kappa
       (sys::poke _kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dkappa
       (sys::poke _dkappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ddkappa
       (sys::poke _ddkappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lane_id
       (sys::poke _lane_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_derivative
       (sys::poke _x_derivative (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_derivative
       (sys::poke _y_derivative (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kappa
     (setq _kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dkappa
     (setq _dkappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ddkappa
     (setq _ddkappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lane_id
     (setq _lane_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_derivative
     (setq _x_derivative (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_derivative
     (setq _y_derivative (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::PathPoint :md5sum-) "6d7f4ed096293a13bafb904c75b6c36b")
(setf (get ros_interface::PathPoint :datatype-) "ros_interface/PathPoint")
(setf (get ros_interface::PathPoint :definition-)
      "float64   x     # coordinates x
float64   y     # coordinates y
float64   z     # coordinates z
float64   theta     # direction on the x-y plane
float64   kappa     # curvature on the x-y planning
float64   s     # accumulated distance from beginning of the path
float64   dkappa     # derivative of kappa w.r.t s.
float64   ddkappa     # derivative of derivative of kappa w.r.t s.
float64   lane_id     # The lane ID where the path point is on
float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline
float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline

")



(provide :ros_interface/PathPoint "6d7f4ed096293a13bafb904c75b6c36b")


