;; Auto-generated. Do not edit!


(when (boundp 'interface::Lane)
  (if (not (find-package "INTERFACE"))
    (make-package "INTERFACE"))
  (shadow 'Lane (find-package "INTERFACE")))
(unless (find-package "INTERFACE::LANE")
  (make-package "INTERFACE::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass interface::Lane
  :super ros::object
  :slots (_lane_idx _left_traverse_flag _right_traverse_flag _lane_width ))

(defmethod interface::Lane
  (:init
   (&key
    ((:lane_idx __lane_idx) 0)
    ((:left_traverse_flag __left_traverse_flag) nil)
    ((:right_traverse_flag __right_traverse_flag) nil)
    ((:lane_width __lane_width) 0.0)
    )
   (send-super :init)
   (setq _lane_idx (round __lane_idx))
   (setq _left_traverse_flag __left_traverse_flag)
   (setq _right_traverse_flag __right_traverse_flag)
   (setq _lane_width (float __lane_width))
   self)
  (:lane_idx
   (&optional __lane_idx)
   (if __lane_idx (setq _lane_idx __lane_idx)) _lane_idx)
  (:left_traverse_flag
   (&optional __left_traverse_flag)
   (if __left_traverse_flag (setq _left_traverse_flag __left_traverse_flag)) _left_traverse_flag)
  (:right_traverse_flag
   (&optional __right_traverse_flag)
   (if __right_traverse_flag (setq _right_traverse_flag __right_traverse_flag)) _right_traverse_flag)
  (:lane_width
   (&optional __lane_width)
   (if __lane_width (setq _lane_width __lane_width)) _lane_width)
  (:serialization-length
   ()
   (+
    ;; uint8 _lane_idx
    1
    ;; bool _left_traverse_flag
    1
    ;; bool _right_traverse_flag
    1
    ;; float64 _lane_width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lane_idx
       (write-byte _lane_idx s)
     ;; bool _left_traverse_flag
       (if _left_traverse_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_traverse_flag
       (if _right_traverse_flag (write-byte -1 s) (write-byte 0 s))
     ;; float64 _lane_width
       (sys::poke _lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lane_idx
     (setq _lane_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _left_traverse_flag
     (setq _left_traverse_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_traverse_flag
     (setq _right_traverse_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _lane_width
     (setq _lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get interface::Lane :md5sum-) "3ce3889449b1a37c2f794128b57abf80")
(setf (get interface::Lane :datatype-) "interface/Lane")
(setf (get interface::Lane :definition-)
      "uint8 lane_idx
bool left_traverse_flag 
bool right_traverse_flag
float64 lane_width
")



(provide :interface/Lane "3ce3889449b1a37c2f794128b57abf80")


