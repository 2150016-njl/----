;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::SLPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'SLPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::SLPOINT")
  (make-package "ROS_INTERFACE::SLPOINT"))

(in-package "ROS")
;;//! \htmlinclude SLPoint.msg.html


(defclass ros_interface::SLPoint
  :super ros::object
  :slots (_s _l ))

(defmethod ros_interface::SLPoint
  (:init
   (&key
    ((:s __s) 0.0)
    ((:l __l) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _l (float __l))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:serialization-length
   ()
   (+
    ;; float64 _s
    8
    ;; float64 _l
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _l
       (sys::poke _l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l
     (setq _l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::SLPoint :md5sum-) "7c66d5c7666978e3c96dd85019fef0f4")
(setf (get ros_interface::SLPoint :datatype-) "ros_interface/SLPoint")
(setf (get ros_interface::SLPoint :definition-)
      "float64   s     # 纵向位移
float64   l     # 横向位移

")



(provide :ros_interface/SLPoint "7c66d5c7666978e3c96dd85019fef0f4")


