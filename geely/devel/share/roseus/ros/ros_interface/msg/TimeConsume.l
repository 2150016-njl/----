;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TimeConsume)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TimeConsume (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TIMECONSUME")
  (make-package "ROS_INTERFACE::TIMECONSUME"))

(in-package "ROS")
;;//! \htmlinclude TimeConsume.msg.html


(defclass ros_interface::TimeConsume
  :super ros::object
  :slots (_name _time_consume ))

(defmethod ros_interface::TimeConsume
  (:init
   (&key
    ((:name __name) "")
    ((:time_consume __time_consume) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _time_consume (float __time_consume))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:time_consume
   (&optional __time_consume)
   (if __time_consume (setq _time_consume __time_consume)) _time_consume)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _time_consume
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _time_consume
       (sys::poke _time_consume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _time_consume
     (setq _time_consume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::TimeConsume :md5sum-) "92e960642bd80a7c9dd2e21ad653ac97")
(setf (get ros_interface::TimeConsume :datatype-) "ros_interface/TimeConsume")
(setf (get ros_interface::TimeConsume :definition-)
      "string   name     #  
float64   time_consume     #  

")



(provide :ros_interface/TimeConsume "92e960642bd80a7c9dd2e21ad653ac97")


