;; Auto-generated. Do not edit!


(when (boundp 'interface::Route)
  (if (not (find-package "INTERFACE"))
    (make-package "INTERFACE"))
  (shadow 'Route (find-package "INTERFACE")))
(unless (find-package "INTERFACE::ROUTE")
  (make-package "INTERFACE::ROUTE"))

(in-package "ROS")
;;//! \htmlinclude Route.msg.html


(defclass interface::Route
  :super ros::object
  :slots (_points ))

(defmethod interface::Route
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance interface::Route_point :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; interface/Route_point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; interface/Route_point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; interface/Route_point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance interface::Route_point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get interface::Route :md5sum-) "8f02263beef99aa03117a577a3eb879d")
(setf (get interface::Route :datatype-) "interface/Route")
(setf (get interface::Route :definition-)
      "Route_point[] points
================================================================================
MSG: interface/Route_point
float64 x
float64 y
")



(provide :interface/Route "8f02263beef99aa03117a577a3eb879d")


