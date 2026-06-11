;; Auto-generated. Do not edit!


(when (boundp 'rl_planning::CSP)
  (if (not (find-package "RL_PLANNING"))
    (make-package "RL_PLANNING"))
  (shadow 'CSP (find-package "RL_PLANNING")))
(unless (find-package "RL_PLANNING::CSP")
  (make-package "RL_PLANNING::CSP"))

(in-package "ROS")
;;//! \htmlinclude CSP.msg.html


(defclass rl_planning::CSP
  :super ros::object
  :slots (_s _nx _sx_a _sx_b _sx_c _sx_d _sx_y _sy_a _sy_b _sy_c _sy_d _sy_y _sz_a _sz_b _sz_c _sz_d _sz_y ))

(defmethod rl_planning::CSP
  (:init
   (&key
    ((:s __s) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:nx __nx) 0.0)
    ((:sx_a __sx_a) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sx_b __sx_b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sx_c __sx_c) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sx_d __sx_d) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sx_y __sx_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sy_a __sy_a) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sy_b __sy_b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sy_c __sy_c) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sy_d __sy_d) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sy_y __sy_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sz_a __sz_a) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sz_b __sz_b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sz_c __sz_c) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sz_d __sz_d) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sz_y __sz_y) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _s __s)
   (setq _nx (float __nx))
   (setq _sx_a __sx_a)
   (setq _sx_b __sx_b)
   (setq _sx_c __sx_c)
   (setq _sx_d __sx_d)
   (setq _sx_y __sx_y)
   (setq _sy_a __sy_a)
   (setq _sy_b __sy_b)
   (setq _sy_c __sy_c)
   (setq _sy_d __sy_d)
   (setq _sy_y __sy_y)
   (setq _sz_a __sz_a)
   (setq _sz_b __sz_b)
   (setq _sz_c __sz_c)
   (setq _sz_d __sz_d)
   (setq _sz_y __sz_y)
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:nx
   (&optional __nx)
   (if __nx (setq _nx __nx)) _nx)
  (:sx_a
   (&optional __sx_a)
   (if __sx_a (setq _sx_a __sx_a)) _sx_a)
  (:sx_b
   (&optional __sx_b)
   (if __sx_b (setq _sx_b __sx_b)) _sx_b)
  (:sx_c
   (&optional __sx_c)
   (if __sx_c (setq _sx_c __sx_c)) _sx_c)
  (:sx_d
   (&optional __sx_d)
   (if __sx_d (setq _sx_d __sx_d)) _sx_d)
  (:sx_y
   (&optional __sx_y)
   (if __sx_y (setq _sx_y __sx_y)) _sx_y)
  (:sy_a
   (&optional __sy_a)
   (if __sy_a (setq _sy_a __sy_a)) _sy_a)
  (:sy_b
   (&optional __sy_b)
   (if __sy_b (setq _sy_b __sy_b)) _sy_b)
  (:sy_c
   (&optional __sy_c)
   (if __sy_c (setq _sy_c __sy_c)) _sy_c)
  (:sy_d
   (&optional __sy_d)
   (if __sy_d (setq _sy_d __sy_d)) _sy_d)
  (:sy_y
   (&optional __sy_y)
   (if __sy_y (setq _sy_y __sy_y)) _sy_y)
  (:sz_a
   (&optional __sz_a)
   (if __sz_a (setq _sz_a __sz_a)) _sz_a)
  (:sz_b
   (&optional __sz_b)
   (if __sz_b (setq _sz_b __sz_b)) _sz_b)
  (:sz_c
   (&optional __sz_c)
   (if __sz_c (setq _sz_c __sz_c)) _sz_c)
  (:sz_d
   (&optional __sz_d)
   (if __sz_d (setq _sz_d __sz_d)) _sz_d)
  (:sz_y
   (&optional __sz_y)
   (if __sz_y (setq _sz_y __sz_y)) _sz_y)
  (:serialization-length
   ()
   (+
    ;; float64[] _s
    (* 8    (length _s)) 4
    ;; float64 _nx
    8
    ;; float64[] _sx_a
    (* 8    (length _sx_a)) 4
    ;; float64[] _sx_b
    (* 8    (length _sx_b)) 4
    ;; float64[] _sx_c
    (* 8    (length _sx_c)) 4
    ;; float64[] _sx_d
    (* 8    (length _sx_d)) 4
    ;; float64[] _sx_y
    (* 8    (length _sx_y)) 4
    ;; float64[] _sy_a
    (* 8    (length _sy_a)) 4
    ;; float64[] _sy_b
    (* 8    (length _sy_b)) 4
    ;; float64[] _sy_c
    (* 8    (length _sy_c)) 4
    ;; float64[] _sy_d
    (* 8    (length _sy_d)) 4
    ;; float64[] _sy_y
    (* 8    (length _sy_y)) 4
    ;; float64[] _sz_a
    (* 8    (length _sz_a)) 4
    ;; float64[] _sz_b
    (* 8    (length _sz_b)) 4
    ;; float64[] _sz_c
    (* 8    (length _sz_c)) 4
    ;; float64[] _sz_d
    (* 8    (length _sz_d)) 4
    ;; float64[] _sz_y
    (* 8    (length _sz_y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _s
     (write-long (length _s) s)
     (dotimes (i (length _s))
       (sys::poke (elt _s i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _nx
       (sys::poke _nx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _sx_a
     (write-long (length _sx_a) s)
     (dotimes (i (length _sx_a))
       (sys::poke (elt _sx_a i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sx_b
     (write-long (length _sx_b) s)
     (dotimes (i (length _sx_b))
       (sys::poke (elt _sx_b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sx_c
     (write-long (length _sx_c) s)
     (dotimes (i (length _sx_c))
       (sys::poke (elt _sx_c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sx_d
     (write-long (length _sx_d) s)
     (dotimes (i (length _sx_d))
       (sys::poke (elt _sx_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sx_y
     (write-long (length _sx_y) s)
     (dotimes (i (length _sx_y))
       (sys::poke (elt _sx_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sy_a
     (write-long (length _sy_a) s)
     (dotimes (i (length _sy_a))
       (sys::poke (elt _sy_a i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sy_b
     (write-long (length _sy_b) s)
     (dotimes (i (length _sy_b))
       (sys::poke (elt _sy_b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sy_c
     (write-long (length _sy_c) s)
     (dotimes (i (length _sy_c))
       (sys::poke (elt _sy_c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sy_d
     (write-long (length _sy_d) s)
     (dotimes (i (length _sy_d))
       (sys::poke (elt _sy_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sy_y
     (write-long (length _sy_y) s)
     (dotimes (i (length _sy_y))
       (sys::poke (elt _sy_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sz_a
     (write-long (length _sz_a) s)
     (dotimes (i (length _sz_a))
       (sys::poke (elt _sz_a i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sz_b
     (write-long (length _sz_b) s)
     (dotimes (i (length _sz_b))
       (sys::poke (elt _sz_b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sz_c
     (write-long (length _sz_c) s)
     (dotimes (i (length _sz_c))
       (sys::poke (elt _sz_c i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sz_d
     (write-long (length _sz_d) s)
     (dotimes (i (length _sz_d))
       (sys::poke (elt _sz_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _sz_y
     (write-long (length _sz_y) s)
     (dotimes (i (length _sz_y))
       (sys::poke (elt _sz_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _s (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _s i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _nx
     (setq _nx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _sx_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sx_a (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sx_a i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sx_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sx_b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sx_b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sx_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sx_c (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sx_c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sx_d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sx_d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sx_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sx_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sx_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sx_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sy_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sy_a (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sy_a i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sy_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sy_b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sy_b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sy_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sy_c (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sy_c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sy_d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sy_d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sy_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sy_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sy_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sy_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sz_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sz_a (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sz_a i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sz_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sz_b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sz_b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sz_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sz_c (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sz_c i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sz_d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sz_d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sz_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _sz_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sz_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sz_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rl_planning::CSP :md5sum-) "1c6b7b121537c4008bf00bae402fe62f")
(setf (get rl_planning::CSP :datatype-) "rl_planning/CSP")
(setf (get rl_planning::CSP :definition-)
      "float64[] s
float64 nx

float64[] sx_a
float64[] sx_b
float64[] sx_c
float64[] sx_d
float64[] sx_y

float64[] sy_a
float64[] sy_b
float64[] sy_c
float64[] sy_d
float64[] sy_y

float64[] sz_a
float64[] sz_b
float64[] sz_c
float64[] sz_d
float64[] sz_y

")



(provide :rl_planning/CSP "1c6b7b121537c4008bf00bae402fe62f")


