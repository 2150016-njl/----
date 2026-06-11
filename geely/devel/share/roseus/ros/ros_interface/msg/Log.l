;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Log)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Log (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LOG")
  (make-package "ROS_INTERFACE::LOG"))

(in-package "ROS")
;;//! \htmlinclude Log.msg.html


(defclass ros_interface::Log
  :super ros::object
  :slots (_stamp _level _name _msg _file _function _line ))

(defmethod ros_interface::Log
  (:init
   (&key
    ((:stamp __stamp) (instance ros_interface::Time :init))
    ((:level __level) 0)
    ((:name __name) "")
    ((:msg __msg) "")
    ((:file __file) "")
    ((:function __function) "")
    ((:line __line) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _level (round __level))
   (setq _name (string __name))
   (setq _msg (string __msg))
   (setq _file (string __file))
   (setq _function (string __function))
   (setq _line (round __line))
   self)
  (:stamp
   (&rest __stamp)
   (if (keywordp (car __stamp))
       (send* _stamp __stamp)
     (progn
       (if __stamp (setq _stamp (car __stamp)))
       _stamp)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:function
   (&optional __function)
   (if __function (setq _function __function)) _function)
  (:line
   (&optional __line)
   (if __line (setq _line __line)) _line)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Time _stamp
    (send _stamp :serialization-length)
    ;; uint8 _level
    1
    ;; string _name
    4 (length _name)
    ;; string _msg
    4 (length _msg)
    ;; string _file
    4 (length _file)
    ;; string _function
    4 (length _function)
    ;; uint32 _line
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Time _stamp
       (send _stamp :serialize s)
     ;; uint8 _level
       (write-byte _level s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;; string _function
       (write-long (length _function) s) (princ _function s)
     ;; uint32 _line
       (write-long _line s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Time _stamp
     (send _stamp :deserialize buf ptr-) (incf ptr- (send _stamp :serialization-length))
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _function
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _function (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _line
     (setq _line (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::Log :md5sum-) "2071f6faae9945ec94584b4d4ed5edd8")
(setf (get ros_interface::Log :datatype-) "ros_interface/Log")
(setf (get ros_interface::Log :definition-)
      "Time   stamp     # 时间戳
uint8   level     # log等级 DEBUG   : 10  INFO       : 20   WARN     : 30   ERROR   : 40  FATAL     : 50 
string   name     # 节点名
string   msg     # log消息
string   file     # 发送log文件路径
string   function     # 模块名
uint32   line     # 消息行

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/Log "2071f6faae9945ec94584b4d4ed5edd8")


