;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrafficLightBox)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrafficLightBox (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAFFICLIGHTBOX")
  (make-package "ROS_INTERFACE::TRAFFICLIGHTBOX"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightBox.msg.html


(defclass ros_interface::TrafficLightBox
  :super ros::object
  :slots (_x _y _width _height _color _selected _camera_name ))

(defmethod ros_interface::TrafficLightBox
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:color __color) 0)
    ((:selected __selected) nil)
    ((:camera_name __camera_name) "")
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _color (round __color))
   (setq _selected __selected)
   (setq _camera_name (string __camera_name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:selected
   (&optional __selected)
   (if __selected (setq _selected __selected)) _selected)
  (:camera_name
   (&optional __camera_name)
   (if __camera_name (setq _camera_name __camera_name)) _camera_name)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _color
    4
    ;; bool _selected
    1
    ;; string _camera_name
    4 (length _camera_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _color
       (write-long _color s)
     ;; bool _selected
       (if _selected (write-byte -1 s) (write-byte 0 s))
     ;; string _camera_name
       (write-long (length _camera_name) s) (princ _camera_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _selected
     (setq _selected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _camera_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::TrafficLightBox :md5sum-) "4f1ef1a196e498958450410958317793")
(setf (get ros_interface::TrafficLightBox :datatype-) "ros_interface/TrafficLightBox")
(setf (get ros_interface::TrafficLightBox :definition-)
      "int32   x     # 交通灯目标在图像上中心点横向方向像素位置
int32   y     # 交通灯目标在图像上中心点纵向方向像素位置
int32   width     # 交通灯目标在图像上宽度
int32   height     # 交通灯目标在图像上高度
int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
bool   selected     # 是否选择
string   camera_name     # 相机名称

")



(provide :ros_interface/TrafficLightBox "4f1ef1a196e498958450410958317793")


