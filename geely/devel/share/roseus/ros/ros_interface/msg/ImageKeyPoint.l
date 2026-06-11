;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ImageKeyPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ImageKeyPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::IMAGEKEYPOINT")
  (make-package "ROS_INTERFACE::IMAGEKEYPOINT"))

(in-package "ROS")
;;//! \htmlinclude ImageKeyPoint.msg.html


(defclass ros_interface::ImageKeyPoint
  :super ros::object
  :slots (_x _y _confidence ))

(defmethod ros_interface::ImageKeyPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _confidence (float __confidence))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _confidence
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
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::ImageKeyPoint :md5sum-) "e9a400087ccf081800741199acc9712f")
(setf (get ros_interface::ImageKeyPoint :datatype-) "ros_interface/ImageKeyPoint")
(setf (get ros_interface::ImageKeyPoint :definition-)
      "float64   x     # 车位图像关键点x坐标
float64   y     # 车位图像关键点y坐标
float64   confidence     # 置信度

")



(provide :ros_interface/ImageKeyPoint "e9a400087ccf081800741199acc9712f")


