;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::VehicleSignal)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'VehicleSignal (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::VEHICLESIGNAL")
  (make-package "ROS_INTERFACE::VEHICLESIGNAL"))

(in-package "ROS")
;;//! \htmlinclude VehicleSignal.msg.html


(defclass ros_interface::VehicleSignal
  :super ros::object
  :slots (_turn_signal _high_beam _low_beam _horn _emergency_light ))

(defmethod ros_interface::VehicleSignal
  (:init
   (&key
    ((:turn_signal __turn_signal) 0)
    ((:high_beam __high_beam) nil)
    ((:low_beam __low_beam) nil)
    ((:horn __horn) nil)
    ((:emergency_light __emergency_light) nil)
    )
   (send-super :init)
   (setq _turn_signal (round __turn_signal))
   (setq _high_beam __high_beam)
   (setq _low_beam __low_beam)
   (setq _horn __horn)
   (setq _emergency_light __emergency_light)
   self)
  (:turn_signal
   (&optional __turn_signal)
   (if __turn_signal (setq _turn_signal __turn_signal)) _turn_signal)
  (:high_beam
   (&optional __high_beam)
   (if __high_beam (setq _high_beam __high_beam)) _high_beam)
  (:low_beam
   (&optional __low_beam)
   (if __low_beam (setq _low_beam __low_beam)) _low_beam)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:emergency_light
   (&optional __emergency_light)
   (if __emergency_light (setq _emergency_light __emergency_light)) _emergency_light)
  (:serialization-length
   ()
   (+
    ;; int32 _turn_signal
    4
    ;; bool _high_beam
    1
    ;; bool _low_beam
    1
    ;; bool _horn
    1
    ;; bool _emergency_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _turn_signal
       (write-long _turn_signal s)
     ;; bool _high_beam
       (if _high_beam (write-byte -1 s) (write-byte 0 s))
     ;; bool _low_beam
       (if _low_beam (write-byte -1 s) (write-byte 0 s))
     ;; bool _horn
       (if _horn (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_light
       (if _emergency_light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _turn_signal
     (setq _turn_signal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _high_beam
     (setq _high_beam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _low_beam
     (setq _low_beam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _horn
     (setq _horn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_light
     (setq _emergency_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::VehicleSignal :md5sum-) "47860a6c8e7e3e428751d2354cd4426d")
(setf (get ros_interface::VehicleSignal :datatype-) "ros_interface/VehicleSignal")
(setf (get ros_interface::VehicleSignal :definition-)
      "int32   turn_signal     # 转向信号
bool   high_beam     # high beam
bool   low_beam     # low beam
bool   horn     # horn
bool   emergency_light     # emergency light

")



(provide :ros_interface/VehicleSignal "47860a6c8e7e3e428751d2354cd4426d")


