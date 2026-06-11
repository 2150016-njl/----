;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PointXYZIRT)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PointXYZIRT (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POINTXYZIRT")
  (make-package "ROS_INTERFACE::POINTXYZIRT"))

(in-package "ROS")
;;//! \htmlinclude PointXYZIRT.msg.html


(defclass ros_interface::PointXYZIRT
  :super ros::object
  :slots (_x _y _z _intensity _ring_id _timestamp ))

(defmethod ros_interface::PointXYZIRT
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:intensity __intensity) 0)
    ((:ring_id __ring_id) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _intensity (round __intensity))
   (setq _ring_id (round __ring_id))
   (setq _timestamp (round __timestamp))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:ring_id
   (&optional __ring_id)
   (if __ring_id (setq _ring_id __ring_id)) _ring_id)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; uint32 _intensity
    4
    ;; uint8 _ring_id
    1
    ;; uint64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _intensity
       (write-long _intensity s)
     ;; uint8 _ring_id
       (write-byte _ring_id s)
     ;; uint64 _timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp) (= (length (_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp . bv) 1) -1) s))
             ((and (class _timestamp) (= (length (_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_timestamp . bv) 0) s)
              (write-long (if (>= _timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp s)(write-long (if (>= _timestamp 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _intensity
     (setq _intensity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _ring_id
     (setq _ring_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get ros_interface::PointXYZIRT :md5sum-) "fc728344192b7946d2b6d26c522f5601")
(setf (get ros_interface::PointXYZIRT :datatype-) "ros_interface/PointXYZIRT")
(setf (get ros_interface::PointXYZIRT :definition-)
      "float64   x     # x//坐标x
float64   y     # y//坐标y
float64   z     # z//坐标z
uint32   intensity     # 反射强度
uint8   ring_id     # 线束ID
uint64   timestamp     # 时间戳

")



(provide :ros_interface/PointXYZIRT "fc728344192b7946d2b6d26c522f5601")


