; Auto-generated. Do not edit!


(cl:in-package detect-msg)


;//! \htmlinclude boxes.msg.html

(cl:defclass <boxes> (roslisp-msg-protocol:ros-message)
  ((box_num
    :reader box_num
    :initarg :box_num
    :type cl:integer
    :initform 0)
   (boxes
    :reader boxes
    :initarg :boxes
    :type (cl:vector detect-msg:box)
   :initform (cl:make-array 0 :element-type 'detect-msg:box :initial-element (cl:make-instance 'detect-msg:box))))
)

(cl:defclass boxes (<boxes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <boxes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'boxes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name detect-msg:<boxes> is deprecated: use detect-msg:boxes instead.")))

(cl:ensure-generic-function 'box_num-val :lambda-list '(m))
(cl:defmethod box_num-val ((m <boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect-msg:box_num-val is deprecated.  Use detect-msg:box_num instead.")
  (box_num m))

(cl:ensure-generic-function 'boxes-val :lambda-list '(m))
(cl:defmethod boxes-val ((m <boxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader detect-msg:boxes-val is deprecated.  Use detect-msg:boxes instead.")
  (boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <boxes>) ostream)
  "Serializes a message object of type '<boxes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'box_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'box_num)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <boxes>) istream)
  "Deserializes a message object of type '<boxes>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'box_num)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'detect-msg:box))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<boxes>)))
  "Returns string type for a message object of type '<boxes>"
  "detect/boxes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'boxes)))
  "Returns string type for a message object of type 'boxes"
  "detect/boxes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<boxes>)))
  "Returns md5sum for a message object of type '<boxes>"
  "d62211855a58c4e6dee52f924da82b09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'boxes)))
  "Returns md5sum for a message object of type 'boxes"
  "d62211855a58c4e6dee52f924da82b09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<boxes>)))
  "Returns full string definition for message of type '<boxes>"
  (cl:format cl:nil "uint64 box_num~%box[] boxes~%~%================================================================================~%MSG: detect/box~%float64 x~%float64 y~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'boxes)))
  "Returns full string definition for message of type 'boxes"
  (cl:format cl:nil "uint64 box_num~%box[] boxes~%~%================================================================================~%MSG: detect/box~%float64 x~%float64 y~%float64 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <boxes>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <boxes>))
  "Converts a ROS message object to a list"
  (cl:list 'boxes
    (cl:cons ':box_num (box_num msg))
    (cl:cons ':boxes (boxes msg))
))
