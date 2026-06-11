;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::SLBoundary)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'SLBoundary (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::SLBOUNDARY")
  (make-package "ROS_INTERFACE::SLBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude SLBoundary.msg.html


(defclass ros_interface::SLBoundary
  :super ros::object
  :slots (_start_s _end_s _start_l _end_l _boundary_point ))

(defmethod ros_interface::SLBoundary
  (:init
   (&key
    ((:start_s __start_s) 0.0)
    ((:end_s __end_s) 0.0)
    ((:start_l __start_l) 0.0)
    ((:end_l __end_l) 0.0)
    ((:boundary_point __boundary_point) (let (r) (dotimes (i 0) (push (instance ros_interface::SLPoint :init) r)) r))
    )
   (send-super :init)
   (setq _start_s (float __start_s))
   (setq _end_s (float __end_s))
   (setq _start_l (float __start_l))
   (setq _end_l (float __end_l))
   (setq _boundary_point __boundary_point)
   self)
  (:start_s
   (&optional __start_s)
   (if __start_s (setq _start_s __start_s)) _start_s)
  (:end_s
   (&optional __end_s)
   (if __end_s (setq _end_s __end_s)) _end_s)
  (:start_l
   (&optional __start_l)
   (if __start_l (setq _start_l __start_l)) _start_l)
  (:end_l
   (&optional __end_l)
   (if __end_l (setq _end_l __end_l)) _end_l)
  (:boundary_point
   (&rest __boundary_point)
   (if (keywordp (car __boundary_point))
       (send* _boundary_point __boundary_point)
     (progn
       (if __boundary_point (setq _boundary_point (car __boundary_point)))
       _boundary_point)))
  (:serialization-length
   ()
   (+
    ;; float64 _start_s
    8
    ;; float64 _end_s
    8
    ;; float64 _start_l
    8
    ;; float64 _end_l
    8
    ;; ros_interface/SLPoint[] _boundary_point
    (apply #'+ (send-all _boundary_point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _start_s
       (sys::poke _start_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_s
       (sys::poke _end_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _start_l
       (sys::poke _start_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_l
       (sys::poke _end_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/SLPoint[] _boundary_point
     (write-long (length _boundary_point) s)
     (dolist (elem _boundary_point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _start_s
     (setq _start_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_s
     (setq _end_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _start_l
     (setq _start_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_l
     (setq _end_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/SLPoint[] _boundary_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boundary_point (let (r) (dotimes (i n) (push (instance ros_interface::SLPoint :init) r)) r))
     (dolist (elem- _boundary_point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::SLBoundary :md5sum-) "f10f98a43d7c56cfaed470a969316c95")
(setf (get ros_interface::SLBoundary :datatype-) "ros_interface/SLBoundary")
(setf (get ros_interface::SLBoundary :definition-)
      "float64   start_s     # 起始点纵向位移
float64   end_s     # 终止点纵向位移
float64   start_l     # 起始点横向位移
float64   end_l     # 终止点横向位移
SLPoint[] boundary_point # sl点集

================================================================================
MSG: ros_interface/SLPoint
float64   s     # 纵向位移
float64   l     # 横向位移

")



(provide :ros_interface/SLBoundary "f10f98a43d7c56cfaed470a969316c95")


