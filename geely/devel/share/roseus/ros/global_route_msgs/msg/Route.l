;; Auto-generated. Do not edit!


(when (boundp 'global_route_msgs::Route)
  (if (not (find-package "GLOBAL_ROUTE_MSGS"))
    (make-package "GLOBAL_ROUTE_MSGS"))
  (shadow 'Route (find-package "GLOBAL_ROUTE_MSGS")))
(unless (find-package "GLOBAL_ROUTE_MSGS::ROUTE")
  (make-package "GLOBAL_ROUTE_MSGS::ROUTE"))

(in-package "ROS")
;;//! \htmlinclude Route.msg.html


(defclass global_route_msgs::Route
  :super ros::object
  :slots (_points ))

(defmethod global_route_msgs::Route
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance global_route_msgs::Route_point :init) r)) r))
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
    ;; global_route_msgs/Route_point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; global_route_msgs/Route_point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; global_route_msgs/Route_point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance global_route_msgs::Route_point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get global_route_msgs::Route :md5sum-) "8f02263beef99aa03117a577a3eb879d")
(setf (get global_route_msgs::Route :datatype-) "global_route_msgs/Route")
(setf (get global_route_msgs::Route :definition-)
      "Route_point[] points
================================================================================
MSG: global_route_msgs/Route_point
float64 x
float64 y

")



(provide :global_route_msgs/Route "8f02263beef99aa03117a577a3eb879d")


