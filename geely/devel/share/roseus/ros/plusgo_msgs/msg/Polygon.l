;; Auto-generated. Do not edit!


(when (boundp 'plusgo_msgs::Polygon)
  (if (not (find-package "PLUSGO_MSGS"))
    (make-package "PLUSGO_MSGS"))
  (shadow 'Polygon (find-package "PLUSGO_MSGS")))
(unless (find-package "PLUSGO_MSGS::POLYGON")
  (make-package "PLUSGO_MSGS::POLYGON"))

(in-package "ROS")
;;//! \htmlinclude Polygon.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass plusgo_msgs::Polygon
  :super ros::object
  :slots (_min_height _max_height _points ))

(defmethod plusgo_msgs::Polygon
  (:init
   (&key
    ((:min_height __min_height) 0.0)
    ((:max_height __max_height) 0.0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    )
   (send-super :init)
   (setq _min_height (float __min_height))
   (setq _max_height (float __max_height))
   (setq _points __points)
   self)
  (:min_height
   (&optional __min_height)
   (if __min_height (setq _min_height __min_height)) _min_height)
  (:max_height
   (&optional __max_height)
   (if __max_height (setq _max_height __max_height)) _max_height)
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
    ;; float32 _min_height
    4
    ;; float32 _max_height
    4
    ;; geometry_msgs/Point32[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min_height
       (sys::poke _min_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_height
       (sys::poke _max_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min_height
     (setq _min_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_height
     (setq _max_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get plusgo_msgs::Polygon :md5sum-) "6917ea739af953ab09877cf096265dc0")
(setf (get plusgo_msgs::Polygon :datatype-) "plusgo_msgs/Polygon")
(setf (get plusgo_msgs::Polygon :definition-)
      "float32 min_height
float32 max_height
geometry_msgs/Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :plusgo_msgs/Polygon "6917ea739af953ab09877cf096265dc0")


