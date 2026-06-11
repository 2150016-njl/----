;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrajectoryLimitCommand)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrajectoryLimitCommand (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAJECTORYLIMITCOMMAND")
  (make-package "ROS_INTERFACE::TRAJECTORYLIMITCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryLimitCommand.msg.html


(defclass ros_interface::TrajectoryLimitCommand
  :super ros::object
  :slots (_speed_limit_enable _speed_limit _kappa_limit_enable _kappa_limit ))

(defmethod ros_interface::TrajectoryLimitCommand
  (:init
   (&key
    ((:speed_limit_enable __speed_limit_enable) nil)
    ((:speed_limit __speed_limit) 0.0)
    ((:kappa_limit_enable __kappa_limit_enable) nil)
    ((:kappa_limit __kappa_limit) 0.0)
    )
   (send-super :init)
   (setq _speed_limit_enable __speed_limit_enable)
   (setq _speed_limit (float __speed_limit))
   (setq _kappa_limit_enable __kappa_limit_enable)
   (setq _kappa_limit (float __kappa_limit))
   self)
  (:speed_limit_enable
   (&optional __speed_limit_enable)
   (if __speed_limit_enable (setq _speed_limit_enable __speed_limit_enable)) _speed_limit_enable)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:kappa_limit_enable
   (&optional __kappa_limit_enable)
   (if __kappa_limit_enable (setq _kappa_limit_enable __kappa_limit_enable)) _kappa_limit_enable)
  (:kappa_limit
   (&optional __kappa_limit)
   (if __kappa_limit (setq _kappa_limit __kappa_limit)) _kappa_limit)
  (:serialization-length
   ()
   (+
    ;; bool _speed_limit_enable
    1
    ;; float64 _speed_limit
    8
    ;; bool _kappa_limit_enable
    1
    ;; float64 _kappa_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _speed_limit_enable
       (if _speed_limit_enable (write-byte -1 s) (write-byte 0 s))
     ;; float64 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _kappa_limit_enable
       (if _kappa_limit_enable (write-byte -1 s) (write-byte 0 s))
     ;; float64 _kappa_limit
       (sys::poke _kappa_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _speed_limit_enable
     (setq _speed_limit_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _kappa_limit_enable
     (setq _kappa_limit_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _kappa_limit
     (setq _kappa_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::TrajectoryLimitCommand :md5sum-) "c69ea9264ac7549969c7a946a564e304")
(setf (get ros_interface::TrajectoryLimitCommand :datatype-) "ros_interface/TrajectoryLimitCommand")
(setf (get ros_interface::TrajectoryLimitCommand :definition-)
      "bool   speed_limit_enable     #  
float64   speed_limit     # m/s
bool   kappa_limit_enable     #  
float64   kappa_limit     # deg/m

")



(provide :ros_interface/TrajectoryLimitCommand "c69ea9264ac7549969c7a946a564e304")


