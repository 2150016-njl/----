;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Fault)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Fault (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::FAULT")
  (make-package "ROS_INTERFACE::FAULT"))

(in-package "ROS")
;;//! \htmlinclude Fault.msg.html


(defclass ros_interface::Fault
  :super ros::object
  :slots (_timestamp _code _reason ))

(defmethod ros_interface::Fault
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros_interface::Time :init))
    ((:code __code) 0)
    ((:reason __reason) "")
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _code (round __code))
   (setq _reason (string __reason))
   self)
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Time _timestamp
    (send _timestamp :serialization-length)
    ;; uint64 _code
    8
    ;; string _reason
    4 (length _reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Time _timestamp
       (send _timestamp :serialize s)
     ;; uint64 _code
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _code (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _code) (= (length (_code . bv)) 2)) ;; bignum
              (write-long (ash (elt (_code . bv) 0) 0) s)
              (write-long (ash (elt (_code . bv) 1) -1) s))
             ((and (class _code) (= (length (_code . bv)) 1)) ;; big1
              (write-long (elt (_code . bv) 0) s)
              (write-long (if (>= _code 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _code s)(write-long (if (>= _code 0) 0 #xffffffff) s)))
     ;; string _reason
       (write-long (length _reason) s) (princ _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Time _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; uint64 _code
     
#+(or :alpha :irix6 :x86_64)
      (setf _code (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _code (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::Fault :md5sum-) "e0cea8990aa7abb79c265ed7ac636c6d")
(setf (get ros_interface::Fault :datatype-) "ros_interface/Fault")
(setf (get ros_interface::Fault :definition-)
      "Time   timestamp     # 时间戳
uint64   code     # 故障码
string   reason     # 原因

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/Fault "e0cea8990aa7abb79c265ed7ac636c6d")


