;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::FrenetFramePoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'FrenetFramePoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::FRENETFRAMEPOINT")
  (make-package "ROS_INTERFACE::FRENETFRAMEPOINT"))

(in-package "ROS")
;;//! \htmlinclude FrenetFramePoint.msg.html


(defclass ros_interface::FrenetFramePoint
  :super ros::object
  :slots (_s _l _dl _ddl ))

(defmethod ros_interface::FrenetFramePoint
  (:init
   (&key
    ((:s __s) 0.0)
    ((:l __l) 0.0)
    ((:dl __dl) 0.0)
    ((:ddl __ddl) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _l (float __l))
   (setq _dl (float __dl))
   (setq _ddl (float __ddl))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:dl
   (&optional __dl)
   (if __dl (setq _dl __dl)) _dl)
  (:ddl
   (&optional __ddl)
   (if __ddl (setq _ddl __ddl)) _ddl)
  (:serialization-length
   ()
   (+
    ;; float64 _s
    8
    ;; float64 _l
    8
    ;; float64 _dl
    8
    ;; float64 _ddl
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
     ;; float64 _dl
       (sys::poke _dl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ddl
       (sys::poke _ddl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l
     (setq _l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dl
     (setq _dl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ddl
     (setq _ddl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::FrenetFramePoint :md5sum-) "5ecde306425599b635ce089fe72c9b83")
(setf (get ros_interface::FrenetFramePoint :datatype-) "ros_interface/FrenetFramePoint")
(setf (get ros_interface::FrenetFramePoint :definition-)
      "float64   s     # 纵向位移
float64   l     # 横向位移
float64   dl     # 横向位移变化率
float64   ddl     # 横向位移变化率的变化率

")



(provide :ros_interface/FrenetFramePoint "5ecde306425599b635ce089fe72c9b83")


