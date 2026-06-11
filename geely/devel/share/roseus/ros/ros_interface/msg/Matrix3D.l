;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Matrix3D)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Matrix3D (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::MATRIX3D")
  (make-package "ROS_INTERFACE::MATRIX3D"))

(in-package "ROS")
;;//! \htmlinclude Matrix3D.msg.html


(defclass ros_interface::Matrix3D
  :super ros::object
  :slots (_a00 _a01 _a02 _a10 _a11 _a12 _a20 _a21 _a22 ))

(defmethod ros_interface::Matrix3D
  (:init
   (&key
    ((:a00 __a00) 0.0)
    ((:a01 __a01) 0.0)
    ((:a02 __a02) 0.0)
    ((:a10 __a10) 0.0)
    ((:a11 __a11) 0.0)
    ((:a12 __a12) 0.0)
    ((:a20 __a20) 0.0)
    ((:a21 __a21) 0.0)
    ((:a22 __a22) 0.0)
    )
   (send-super :init)
   (setq _a00 (float __a00))
   (setq _a01 (float __a01))
   (setq _a02 (float __a02))
   (setq _a10 (float __a10))
   (setq _a11 (float __a11))
   (setq _a12 (float __a12))
   (setq _a20 (float __a20))
   (setq _a21 (float __a21))
   (setq _a22 (float __a22))
   self)
  (:a00
   (&optional __a00)
   (if __a00 (setq _a00 __a00)) _a00)
  (:a01
   (&optional __a01)
   (if __a01 (setq _a01 __a01)) _a01)
  (:a02
   (&optional __a02)
   (if __a02 (setq _a02 __a02)) _a02)
  (:a10
   (&optional __a10)
   (if __a10 (setq _a10 __a10)) _a10)
  (:a11
   (&optional __a11)
   (if __a11 (setq _a11 __a11)) _a11)
  (:a12
   (&optional __a12)
   (if __a12 (setq _a12 __a12)) _a12)
  (:a20
   (&optional __a20)
   (if __a20 (setq _a20 __a20)) _a20)
  (:a21
   (&optional __a21)
   (if __a21 (setq _a21 __a21)) _a21)
  (:a22
   (&optional __a22)
   (if __a22 (setq _a22 __a22)) _a22)
  (:serialization-length
   ()
   (+
    ;; float64 _a00
    8
    ;; float64 _a01
    8
    ;; float64 _a02
    8
    ;; float64 _a10
    8
    ;; float64 _a11
    8
    ;; float64 _a12
    8
    ;; float64 _a20
    8
    ;; float64 _a21
    8
    ;; float64 _a22
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a00
       (sys::poke _a00 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a01
       (sys::poke _a01 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a02
       (sys::poke _a02 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a10
       (sys::poke _a10 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a11
       (sys::poke _a11 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a12
       (sys::poke _a12 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a20
       (sys::poke _a20 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a21
       (sys::poke _a21 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a22
       (sys::poke _a22 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a00
     (setq _a00 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a01
     (setq _a01 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a02
     (setq _a02 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a10
     (setq _a10 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a11
     (setq _a11 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a12
     (setq _a12 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a20
     (setq _a20 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a21
     (setq _a21 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a22
     (setq _a22 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::Matrix3D :md5sum-) "df2f48490b2be1b3dcfbc7fadaa3db94")
(setf (get ros_interface::Matrix3D :datatype-) "ros_interface/Matrix3D")
(setf (get ros_interface::Matrix3D :definition-)
      "float64   a00     # 第一行第一列元素
float64   a01     # 第一行第二列元素
float64   a02     # 第一行第三列元素
float64   a10     # 第二行第一列元素
float64   a11     # 第二行第二列元素
float64   a12     # 第二行第三列元素
float64   a20     # 第三行第一列元素
float64   a21     # 第三行第二列元素
float64   a22     # 第三行第三列元素

")



(provide :ros_interface/Matrix3D "df2f48490b2be1b3dcfbc7fadaa3db94")


