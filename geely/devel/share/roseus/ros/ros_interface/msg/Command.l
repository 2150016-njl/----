;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Command)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Command (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::COMMAND")
  (make-package "ROS_INTERFACE::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass ros_interface::Command
  :super ros::object
  :slots (_target_module _target_id _target_switch ))

(defmethod ros_interface::Command
  (:init
   (&key
    ((:target_module __target_module) "")
    ((:target_id __target_id) 0)
    ((:target_switch __target_switch) 0)
    )
   (send-super :init)
   (setq _target_module (string __target_module))
   (setq _target_id (round __target_id))
   (setq _target_switch (round __target_switch))
   self)
  (:target_module
   (&optional __target_module)
   (if __target_module (setq _target_module __target_module)) _target_module)
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:target_switch
   (&optional __target_switch)
   (if __target_switch (setq _target_switch __target_switch)) _target_switch)
  (:serialization-length
   ()
   (+
    ;; string _target_module
    4 (length _target_module)
    ;; int8 _target_id
    1
    ;; int32 _target_switch
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_module
       (write-long (length _target_module) s) (princ _target_module s)
     ;; int8 _target_id
       (write-byte _target_id s)
     ;; int32 _target_switch
       (write-long _target_switch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_module
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_module (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _target_id
     (setq _target_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _target_id 127) (setq _target_id (- _target_id 256)))
   ;; int32 _target_switch
     (setq _target_switch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::Command :md5sum-) "75262e90219ed26ce01c79ca90a1789e")
(setf (get ros_interface::Command :datatype-) "ros_interface/Command")
(setf (get ros_interface::Command :definition-)
      "string   target_module     # 目标节点名称
int8   target_id     # 目标节点ID
int32   target_switch     # 0:保持target_module的状态  1:打开target_module 2:关闭target_module

")



(provide :ros_interface/Command "75262e90219ed26ce01c79ca90a1789e")


