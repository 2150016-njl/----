;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::WarningCommand)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'WarningCommand (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::WARNINGCOMMAND")
  (make-package "ROS_INTERFACE::WARNINGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude WarningCommand.msg.html


(defclass ros_interface::WarningCommand
  :super ros::object
  :slots (_sound_alarm _light_alarm _media_alarm _motion_alarm ))

(defmethod ros_interface::WarningCommand
  (:init
   (&key
    ((:sound_alarm __sound_alarm) 0)
    ((:light_alarm __light_alarm) 0)
    ((:media_alarm __media_alarm) 0)
    ((:motion_alarm __motion_alarm) 0)
    )
   (send-super :init)
   (setq _sound_alarm (round __sound_alarm))
   (setq _light_alarm (round __light_alarm))
   (setq _media_alarm (round __media_alarm))
   (setq _motion_alarm (round __motion_alarm))
   self)
  (:sound_alarm
   (&optional __sound_alarm)
   (if __sound_alarm (setq _sound_alarm __sound_alarm)) _sound_alarm)
  (:light_alarm
   (&optional __light_alarm)
   (if __light_alarm (setq _light_alarm __light_alarm)) _light_alarm)
  (:media_alarm
   (&optional __media_alarm)
   (if __media_alarm (setq _media_alarm __media_alarm)) _media_alarm)
  (:motion_alarm
   (&optional __motion_alarm)
   (if __motion_alarm (setq _motion_alarm __motion_alarm)) _motion_alarm)
  (:serialization-length
   ()
   (+
    ;; int32 _sound_alarm
    4
    ;; int32 _light_alarm
    4
    ;; int32 _media_alarm
    4
    ;; int32 _motion_alarm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sound_alarm
       (write-long _sound_alarm s)
     ;; int32 _light_alarm
       (write-long _light_alarm s)
     ;; int32 _media_alarm
       (write-long _media_alarm s)
     ;; int32 _motion_alarm
       (write-long _motion_alarm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sound_alarm
     (setq _sound_alarm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _light_alarm
     (setq _light_alarm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _media_alarm
     (setq _media_alarm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motion_alarm
     (setq _motion_alarm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::WarningCommand :md5sum-) "4a3d05783924d6451d7d0d7d30d200dd")
(setf (get ros_interface::WarningCommand :datatype-) "ros_interface/WarningCommand")
(setf (get ros_interface::WarningCommand :definition-)
      "int32   sound_alarm     # 声音告警
int32   light_alarm     # 车灯告警
int32   media_alarm     # 媒体告警
int32   motion_alarm     # 震动告警

")



(provide :ros_interface/WarningCommand "4a3d05783924d6451d7d0d7d30d200dd")


