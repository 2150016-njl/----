;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Stories)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Stories (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::STORIES")
  (make-package "ROS_INTERFACE::STORIES"))

(in-package "ROS")
;;//! \htmlinclude Stories.msg.html


(defclass ros_interface::Stories
  :super ros::object
  :slots (_note ))

(defmethod ros_interface::Stories
  (:init
   (&key
    ((:note __note) "")
    )
   (send-super :init)
   (setq _note (string __note))
   self)
  (:note
   (&optional __note)
   (if __note (setq _note __note)) _note)
  (:serialization-length
   ()
   (+
    ;; string _note
    4 (length _note)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _note
       (write-long (length _note) s) (princ _note s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _note
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _note (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::Stories :md5sum-) "c3a6fee6cdf47f026b66e11c2e77fb39")
(setf (get ros_interface::Stories :datatype-) "ros_interface/Stories")
(setf (get ros_interface::Stories :definition-)
      "string   note     #  

")



(provide :ros_interface/Stories "c3a6fee6cdf47f026b66e11c2e77fb39")


