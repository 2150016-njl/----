;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::SpeedPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'SpeedPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::SPEEDPOINT")
  (make-package "ROS_INTERFACE::SPEEDPOINT"))

(in-package "ROS")
;;//! \htmlinclude SpeedPoint.msg.html


(defclass ros_interface::SpeedPoint
  :super ros::object
  :slots (_s _t _v _a _da ))

(defmethod ros_interface::SpeedPoint
  (:init
   (&key
    ((:s __s) 0.0)
    ((:t __t) 0.0)
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    ((:da __da) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _t (float __t))
   (setq _v (float __v))
   (setq _a (float __a))
   (setq _da (float __da))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:da
   (&optional __da)
   (if __da (setq _da __da)) _da)
  (:serialization-length
   ()
   (+
    ;; float64 _s
    8
    ;; float64 _t
    8
    ;; float64 _v
    8
    ;; float64 _a
    8
    ;; float64 _da
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _da
       (sys::poke _da (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _da
     (setq _da (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::SpeedPoint :md5sum-) "f3e1bfc300ee53cc70f5abd28c102033")
(setf (get ros_interface::SpeedPoint :datatype-) "ros_interface/SpeedPoint")
(setf (get ros_interface::SpeedPoint :definition-)
      "float64   s     # 里程
float64   t     # 时间
float64   v     # speed (m/s)
float64   a     # acceleration (m/s^2)
float64   da     # jerk (m/s^3)

")



(provide :ros_interface/SpeedPoint "f3e1bfc300ee53cc70f5abd28c102033")


