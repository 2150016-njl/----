;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Event)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Event (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::EVENT")
  (make-package "ROS_INTERFACE::EVENT"))

(in-package "ROS")
;;//! \htmlinclude Event.msg.html


(defclass ros_interface::Event
  :super ros::object
  :slots (_timestamp _code _reason ))

(defmethod ros_interface::Event
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

(setf (get ros_interface::Event :md5sum-) "e0cea8990aa7abb79c265ed7ac636c6d")
(setf (get ros_interface::Event :datatype-) "ros_interface/Event")
(setf (get ros_interface::Event :definition-)
      "Time   timestamp     # 时间戳
uint64   code     # 0：invalid； 1：不可泊车；2：可以泊车；3：泊车完成； 4：不可泊出；5：可以泊出；6：泊出完成;   7 :  不可行车；8：可以行车；9：行车完成； 1X：退出自动驾驶（视退出场景可细分） 10：轨迹太短，请求退出自动驾驶; 20：拨杆换道驳回；21：执行向左拨杆换道;22：执行向右拨杆换道；23：拨杆换道完成 30：准备主动向左换道；31：执行主动向左换道；32：准备主动向右换道；33：执行主动向右换道；34：主动换道完成; 147: localmap的车道线效果不好，请求人工接管或者退出自动驾驶
string   reason     # 原因

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/Event "e0cea8990aa7abb79c265ed7ac636c6d")


