;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PointLLH)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PointLLH (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POINTLLH")
  (make-package "ROS_INTERFACE::POINTLLH"))

(in-package "ROS")
;;//! \htmlinclude PointLLH.msg.html


(defclass ros_interface::PointLLH
  :super ros::object
  :slots (_lon _lat _height ))

(defmethod ros_interface::PointLLH
  (:init
   (&key
    ((:lon __lon) 0.0)
    ((:lat __lat) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _lon (float __lon))
   (setq _lat (float __lat))
   (setq _height (float __height))
   self)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float64 _lon
    8
    ;; float64 _lat
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::PointLLH :md5sum-) "360f7307744ede4ebecd668b1e5c39fc")
(setf (get ros_interface::PointLLH :datatype-) "ros_interface/PointLLH")
(setf (get ros_interface::PointLLH :definition-)
      "float64   lon     # Longitude in degrees, ranging from -180 to 180.
float64   lat     # Latitude in degrees, ranging from -90 to 90.
float64   height     # WGS-84 ellipsoid height in meters.

")



(provide :ros_interface/PointLLH "360f7307744ede4ebecd668b1e5c39fc")


