;; Auto-generated. Do not edit!


(when (boundp 'plusgo_msgs::ImageRect)
  (if (not (find-package "PLUSGO_MSGS"))
    (make-package "PLUSGO_MSGS"))
  (shadow 'ImageRect (find-package "PLUSGO_MSGS")))
(unless (find-package "PLUSGO_MSGS::IMAGERECT")
  (make-package "PLUSGO_MSGS::IMAGERECT"))

(in-package "ROS")
;;//! \htmlinclude ImageRect.msg.html


(defclass plusgo_msgs::ImageRect
  :super ros::object
  :slots (_image_frame _x _y _x_ _y_ _width _height _angle ))

(defmethod plusgo_msgs::ImageRect
  (:init
   (&key
    ((:image_frame __image_frame) "")
    ((:x __x) 0)
    ((:y __y) 0)
    ((:x_ __x_) 0)
    ((:y_ __y_) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _image_frame (string __image_frame))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _x_ (round __x_))
   (setq _y_ (round __y_))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _angle (float __angle))
   self)
  (:image_frame
   (&optional __image_frame)
   (if __image_frame (setq _image_frame __image_frame)) _image_frame)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:x_
   (&optional __x_)
   (if __x_ (setq _x_ __x_)) _x_)
  (:y_
   (&optional __y_)
   (if __y_ (setq _y_ __y_)) _y_)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; string _image_frame
    4 (length _image_frame)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _x_
    4
    ;; int32 _y_
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _image_frame
       (write-long (length _image_frame) s) (princ _image_frame s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _x_
       (write-long _x_ s)
     ;; int32 _y_
       (write-long _y_ s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _image_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x_
     (setq _x_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_
     (setq _y_ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get plusgo_msgs::ImageRect :md5sum-) "3aed56e31464fbf1a8c8b90d989739bc")
(setf (get plusgo_msgs::ImageRect :datatype-) "plusgo_msgs/ImageRect")
(setf (get plusgo_msgs::ImageRect :definition-)
      "string  image_frame
int32   x
int32   y
int32   x_
int32   y_
int32   width
int32   height
float32 angle

")



(provide :plusgo_msgs/ImageRect "3aed56e31464fbf1a8c8b90d989739bc")


