;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Path)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Path (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PATH")
  (make-package "ROS_INTERFACE::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass ros_interface::Path
  :super ros::object
  :slots (_name _path_points ))

(defmethod ros_interface::Path
  (:init
   (&key
    ((:name __name) "")
    ((:path_points __path_points) (let (r) (dotimes (i 0) (push (instance ros_interface::PathPoint :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _path_points __path_points)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:path_points
   (&rest __path_points)
   (if (keywordp (car __path_points))
       (send* _path_points __path_points)
     (progn
       (if __path_points (setq _path_points (car __path_points)))
       _path_points)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; ros_interface/PathPoint[] _path_points
    (apply #'+ (send-all _path_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; ros_interface/PathPoint[] _path_points
     (write-long (length _path_points) s)
     (dolist (elem _path_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_interface/PathPoint[] _path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_points (let (r) (dotimes (i n) (push (instance ros_interface::PathPoint :init) r)) r))
     (dolist (elem- _path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Path :md5sum-) "f99d72e6c28d6e3b6ea3740a6754ccec")
(setf (get ros_interface::Path :datatype-) "ros_interface/Path")
(setf (get ros_interface::Path :definition-)
      "string   name     # 名称
PathPoint[] path_points # 路径点集

================================================================================
MSG: ros_interface/PathPoint
float64   x     # coordinates x
float64   y     # coordinates y
float64   z     # coordinates z
float64   theta     # direction on the x-y plane
float64   kappa     # curvature on the x-y planning
float64   s     # accumulated distance from beginning of the path
float64   dkappa     # derivative of kappa w.r.t s.
float64   ddkappa     # derivative of derivative of kappa w.r.t s.
float64   lane_id     # The lane ID where the path point is on
float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline
float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline

")



(provide :ros_interface/Path "f99d72e6c28d6e3b6ea3740a6754ccec")


