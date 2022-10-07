;; Auto-generated. Do not edit!


(when (boundp 'detect::boxes)
  (if (not (find-package "DETECT"))
    (make-package "DETECT"))
  (shadow 'boxes (find-package "DETECT")))
(unless (find-package "DETECT::BOXES")
  (make-package "DETECT::BOXES"))

(in-package "ROS")
;;//! \htmlinclude boxes.msg.html


(defclass detect::boxes
  :super ros::object
  :slots (_box_num _boxes ))

(defmethod detect::boxes
  (:init
   (&key
    ((:box_num __box_num) 0)
    ((:boxes __boxes) (let (r) (dotimes (i 0) (push (instance detect::box :init) r)) r))
    )
   (send-super :init)
   (setq _box_num (round __box_num))
   (setq _boxes __boxes)
   self)
  (:box_num
   (&optional __box_num)
   (if __box_num (setq _box_num __box_num)) _box_num)
  (:boxes
   (&rest __boxes)
   (if (keywordp (car __boxes))
       (send* _boxes __boxes)
     (progn
       (if __boxes (setq _boxes (car __boxes)))
       _boxes)))
  (:serialization-length
   ()
   (+
    ;; uint64 _box_num
    8
    ;; detect/box[] _boxes
    (apply #'+ (send-all _boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _box_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _box_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _box_num) (= (length (_box_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_box_num . bv) 0) 0) s)
              (write-long (ash (elt (_box_num . bv) 1) -1) s))
             ((and (class _box_num) (= (length (_box_num . bv)) 1)) ;; big1
              (write-long (elt (_box_num . bv) 0) s)
              (write-long (if (>= _box_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _box_num s)(write-long (if (>= _box_num 0) 0 #xffffffff) s)))
     ;; detect/box[] _boxes
     (write-long (length _boxes) s)
     (dolist (elem _boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _box_num
     
#+(or :alpha :irix6 :x86_64)
      (setf _box_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _box_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; detect/box[] _boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boxes (let (r) (dotimes (i n) (push (instance detect::box :init) r)) r))
     (dolist (elem- _boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get detect::boxes :md5sum-) "d62211855a58c4e6dee52f924da82b09")
(setf (get detect::boxes :datatype-) "detect/boxes")
(setf (get detect::boxes :definition-)
      "uint64 box_num
box[] boxes

================================================================================
MSG: detect/box
float64 x
float64 y
float64 confidence

")



(provide :detect/boxes "d62211855a58c4e6dee52f924da82b09")


