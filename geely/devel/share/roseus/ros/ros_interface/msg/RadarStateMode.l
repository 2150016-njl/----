;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RadarStateMode)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RadarStateMode (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::RADARSTATEMODE")
  (make-package "ROS_INTERFACE::RADARSTATEMODE"))

(in-package "ROS")
;;//! \htmlinclude RadarStateMode.msg.html


(defclass ros_interface::RadarStateMode
  :super ros::object
  :slots (_can0_work_mode _can1_work_mode _dual_can_mode _timming_mode _power_mode _performance_mode ))

(defmethod ros_interface::RadarStateMode
  (:init
   (&key
    ((:can0_work_mode __can0_work_mode) 0)
    ((:can1_work_mode __can1_work_mode) 0)
    ((:dual_can_mode __dual_can_mode) 0)
    ((:timming_mode __timming_mode) 0)
    ((:power_mode __power_mode) 0)
    ((:performance_mode __performance_mode) 0)
    )
   (send-super :init)
   (setq _can0_work_mode (round __can0_work_mode))
   (setq _can1_work_mode (round __can1_work_mode))
   (setq _dual_can_mode (round __dual_can_mode))
   (setq _timming_mode (round __timming_mode))
   (setq _power_mode (round __power_mode))
   (setq _performance_mode (round __performance_mode))
   self)
  (:can0_work_mode
   (&optional __can0_work_mode)
   (if __can0_work_mode (setq _can0_work_mode __can0_work_mode)) _can0_work_mode)
  (:can1_work_mode
   (&optional __can1_work_mode)
   (if __can1_work_mode (setq _can1_work_mode __can1_work_mode)) _can1_work_mode)
  (:dual_can_mode
   (&optional __dual_can_mode)
   (if __dual_can_mode (setq _dual_can_mode __dual_can_mode)) _dual_can_mode)
  (:timming_mode
   (&optional __timming_mode)
   (if __timming_mode (setq _timming_mode __timming_mode)) _timming_mode)
  (:power_mode
   (&optional __power_mode)
   (if __power_mode (setq _power_mode __power_mode)) _power_mode)
  (:performance_mode
   (&optional __performance_mode)
   (if __performance_mode (setq _performance_mode __performance_mode)) _performance_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _can0_work_mode
    1
    ;; uint8 _can1_work_mode
    1
    ;; uint8 _dual_can_mode
    1
    ;; uint8 _timming_mode
    1
    ;; uint8 _power_mode
    1
    ;; uint8 _performance_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _can0_work_mode
       (write-byte _can0_work_mode s)
     ;; uint8 _can1_work_mode
       (write-byte _can1_work_mode s)
     ;; uint8 _dual_can_mode
       (write-byte _dual_can_mode s)
     ;; uint8 _timming_mode
       (write-byte _timming_mode s)
     ;; uint8 _power_mode
       (write-byte _power_mode s)
     ;; uint8 _performance_mode
       (write-byte _performance_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _can0_work_mode
     (setq _can0_work_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _can1_work_mode
     (setq _can1_work_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dual_can_mode
     (setq _dual_can_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _timming_mode
     (setq _timming_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_mode
     (setq _power_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _performance_mode
     (setq _performance_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::RadarStateMode :md5sum-) "d3643a2a561b16d4937dd76d21d14be0")
(setf (get ros_interface::RadarStateMode :datatype-) "ros_interface/RadarStateMode")
(setf (get ros_interface::RadarStateMode :definition-)
      "uint8   can0_work_mode     # can0工作模式
uint8   can1_work_mode     # can1工作模式
uint8   dual_can_mode     # 双总线工作模式
uint8   timming_mode     # 计时模式
uint8   power_mode     # 电源模式
uint8   performance_mode     # 效能模式

")



(provide :ros_interface/RadarStateMode "d3643a2a561b16d4937dd76d21d14be0")


