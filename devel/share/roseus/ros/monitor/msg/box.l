;; Auto-generated. Do not edit!


(when (boundp 'monitor::box)
  (if (not (find-package "MONITOR"))
    (make-package "MONITOR"))
  (shadow 'box (find-package "MONITOR")))
(unless (find-package "MONITOR::BOX")
  (make-package "MONITOR::BOX"))

(in-package "ROS")
;;//! \htmlinclude box.msg.html


(defclass monitor::box
  :super ros::object
  :slots (_x _y _confidence ))

(defmethod monitor::box
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _confidence (float __confidence))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _confidence
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
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get monitor::box :md5sum-) "e9a400087ccf081800741199acc9712f")
(setf (get monitor::box :datatype-) "monitor/box")
(setf (get monitor::box :definition-)
      "float64 x
float64 y
float64 confidence

")



(provide :monitor/box "e9a400087ccf081800741199acc9712f")


