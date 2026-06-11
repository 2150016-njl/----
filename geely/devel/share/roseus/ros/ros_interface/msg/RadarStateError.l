;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RadarStateError)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RadarStateError (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::RADARSTATEERROR")
  (make-package "ROS_INTERFACE::RADARSTATEERROR"))

(in-package "ROS")
;;//! \htmlinclude RadarStateError.msg.html


(defclass ros_interface::RadarStateError
  :super ros::object
  :slots (_persistent_error _temporary_error _interference_error _temperature_error _voltage_error _block_error _broadcast_error _electric_axis_error _config_error _calibration_error ))

(defmethod ros_interface::RadarStateError
  (:init
   (&key
    ((:persistent_error __persistent_error) 0)
    ((:temporary_error __temporary_error) 0)
    ((:interference_error __interference_error) 0)
    ((:temperature_error __temperature_error) 0)
    ((:voltage_error __voltage_error) 0)
    ((:block_error __block_error) 0)
    ((:broadcast_error __broadcast_error) 0)
    ((:electric_axis_error __electric_axis_error) 0)
    ((:config_error __config_error) 0)
    ((:calibration_error __calibration_error) 0)
    )
   (send-super :init)
   (setq _persistent_error (round __persistent_error))
   (setq _temporary_error (round __temporary_error))
   (setq _interference_error (round __interference_error))
   (setq _temperature_error (round __temperature_error))
   (setq _voltage_error (round __voltage_error))
   (setq _block_error (round __block_error))
   (setq _broadcast_error (round __broadcast_error))
   (setq _electric_axis_error (round __electric_axis_error))
   (setq _config_error (round __config_error))
   (setq _calibration_error (round __calibration_error))
   self)
  (:persistent_error
   (&optional __persistent_error)
   (if __persistent_error (setq _persistent_error __persistent_error)) _persistent_error)
  (:temporary_error
   (&optional __temporary_error)
   (if __temporary_error (setq _temporary_error __temporary_error)) _temporary_error)
  (:interference_error
   (&optional __interference_error)
   (if __interference_error (setq _interference_error __interference_error)) _interference_error)
  (:temperature_error
   (&optional __temperature_error)
   (if __temperature_error (setq _temperature_error __temperature_error)) _temperature_error)
  (:voltage_error
   (&optional __voltage_error)
   (if __voltage_error (setq _voltage_error __voltage_error)) _voltage_error)
  (:block_error
   (&optional __block_error)
   (if __block_error (setq _block_error __block_error)) _block_error)
  (:broadcast_error
   (&optional __broadcast_error)
   (if __broadcast_error (setq _broadcast_error __broadcast_error)) _broadcast_error)
  (:electric_axis_error
   (&optional __electric_axis_error)
   (if __electric_axis_error (setq _electric_axis_error __electric_axis_error)) _electric_axis_error)
  (:config_error
   (&optional __config_error)
   (if __config_error (setq _config_error __config_error)) _config_error)
  (:calibration_error
   (&optional __calibration_error)
   (if __calibration_error (setq _calibration_error __calibration_error)) _calibration_error)
  (:serialization-length
   ()
   (+
    ;; uint8 _persistent_error
    1
    ;; uint8 _temporary_error
    1
    ;; uint8 _interference_error
    1
    ;; uint8 _temperature_error
    1
    ;; uint8 _voltage_error
    1
    ;; uint8 _block_error
    1
    ;; uint8 _broadcast_error
    1
    ;; uint8 _electric_axis_error
    1
    ;; uint8 _config_error
    1
    ;; uint8 _calibration_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _persistent_error
       (write-byte _persistent_error s)
     ;; uint8 _temporary_error
       (write-byte _temporary_error s)
     ;; uint8 _interference_error
       (write-byte _interference_error s)
     ;; uint8 _temperature_error
       (write-byte _temperature_error s)
     ;; uint8 _voltage_error
       (write-byte _voltage_error s)
     ;; uint8 _block_error
       (write-byte _block_error s)
     ;; uint8 _broadcast_error
       (write-byte _broadcast_error s)
     ;; uint8 _electric_axis_error
       (write-byte _electric_axis_error s)
     ;; uint8 _config_error
       (write-byte _config_error s)
     ;; uint8 _calibration_error
       (write-byte _calibration_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _persistent_error
     (setq _persistent_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _temporary_error
     (setq _temporary_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _interference_error
     (setq _interference_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _temperature_error
     (setq _temperature_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _voltage_error
     (setq _voltage_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _block_error
     (setq _block_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _broadcast_error
     (setq _broadcast_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _electric_axis_error
     (setq _electric_axis_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _config_error
     (setq _config_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _calibration_error
     (setq _calibration_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::RadarStateError :md5sum-) "4942ff8a1bc3c01e0fec7de2001e444c")
(setf (get ros_interface::RadarStateError :datatype-) "ros_interface/RadarStateError")
(setf (get ros_interface::RadarStateError :definition-)
      "uint8   persistent_error     #  
uint8   temporary_error     #  
uint8   interference_error     #  
uint8   temperature_error     #  
uint8   voltage_error     #  
uint8   block_error     #  
uint8   broadcast_error     #  
uint8   electric_axis_error     #  
uint8   config_error     #  
uint8   calibration_error     #  

")



(provide :ros_interface/RadarStateError "4942ff8a1bc3c01e0fec7de2001e444c")


