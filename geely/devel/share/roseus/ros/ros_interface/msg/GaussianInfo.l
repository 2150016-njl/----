;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::GaussianInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'GaussianInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::GAUSSIANINFO")
  (make-package "ROS_INTERFACE::GAUSSIANINFO"))

(in-package "ROS")
;;//! \htmlinclude GaussianInfo.msg.html


(defclass ros_interface::GaussianInfo
  :super ros::object
  :slots (_sigma_x _sigma_y _correlation _area_probability _ellipse_a _ellipse_b _theta_a ))

(defmethod ros_interface::GaussianInfo
  (:init
   (&key
    ((:sigma_x __sigma_x) 0.0)
    ((:sigma_y __sigma_y) 0.0)
    ((:correlation __correlation) 0.0)
    ((:area_probability __area_probability) 0.0)
    ((:ellipse_a __ellipse_a) 0.0)
    ((:ellipse_b __ellipse_b) 0.0)
    ((:theta_a __theta_a) 0.0)
    )
   (send-super :init)
   (setq _sigma_x (float __sigma_x))
   (setq _sigma_y (float __sigma_y))
   (setq _correlation (float __correlation))
   (setq _area_probability (float __area_probability))
   (setq _ellipse_a (float __ellipse_a))
   (setq _ellipse_b (float __ellipse_b))
   (setq _theta_a (float __theta_a))
   self)
  (:sigma_x
   (&optional __sigma_x)
   (if __sigma_x (setq _sigma_x __sigma_x)) _sigma_x)
  (:sigma_y
   (&optional __sigma_y)
   (if __sigma_y (setq _sigma_y __sigma_y)) _sigma_y)
  (:correlation
   (&optional __correlation)
   (if __correlation (setq _correlation __correlation)) _correlation)
  (:area_probability
   (&optional __area_probability)
   (if __area_probability (setq _area_probability __area_probability)) _area_probability)
  (:ellipse_a
   (&optional __ellipse_a)
   (if __ellipse_a (setq _ellipse_a __ellipse_a)) _ellipse_a)
  (:ellipse_b
   (&optional __ellipse_b)
   (if __ellipse_b (setq _ellipse_b __ellipse_b)) _ellipse_b)
  (:theta_a
   (&optional __theta_a)
   (if __theta_a (setq _theta_a __theta_a)) _theta_a)
  (:serialization-length
   ()
   (+
    ;; float64 _sigma_x
    8
    ;; float64 _sigma_y
    8
    ;; float64 _correlation
    8
    ;; float64 _area_probability
    8
    ;; float64 _ellipse_a
    8
    ;; float64 _ellipse_b
    8
    ;; float64 _theta_a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sigma_x
       (sys::poke _sigma_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sigma_y
       (sys::poke _sigma_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _correlation
       (sys::poke _correlation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _area_probability
       (sys::poke _area_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ellipse_a
       (sys::poke _ellipse_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ellipse_b
       (sys::poke _ellipse_b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_a
       (sys::poke _theta_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sigma_x
     (setq _sigma_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sigma_y
     (setq _sigma_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _correlation
     (setq _correlation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _area_probability
     (setq _area_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ellipse_a
     (setq _ellipse_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ellipse_b
     (setq _ellipse_b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_a
     (setq _theta_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::GaussianInfo :md5sum-) "e7dd0c5b6f01ab6076107f4fff84ee4e")
(setf (get ros_interface::GaussianInfo :datatype-) "ros_interface/GaussianInfo")
(setf (get ros_interface::GaussianInfo :definition-)
      "float64   sigma_x     # 标准差x
float64   sigma_y     # 标准差y
float64   correlation     # 相关性
float64   area_probability     # Information of representative uncertainty area
float64   ellipse_a     # 椭圆长轴
float64   ellipse_b     # 椭圆短轴
float64   theta_a     # 椭圆朝向

")



(provide :ros_interface/GaussianInfo "e7dd0c5b6f01ab6076107f4fff84ee4e")


