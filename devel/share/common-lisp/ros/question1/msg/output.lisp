; Auto-generated. Do not edit!


(cl:in-package question1-msg)


;//! \htmlinclude output.msg.html

(cl:defclass <output> (roslisp-msg-protocol:ros-message)
  ((posvectors
    :reader posvectors
    :initarg :posvectors
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass output (<output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name question1-msg:<output> is deprecated: use question1-msg:output instead.")))

(cl:ensure-generic-function 'posvectors-val :lambda-list '(m))
(cl:defmethod posvectors-val ((m <output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question1-msg:posvectors-val is deprecated.  Use question1-msg:posvectors instead.")
  (posvectors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <output>) ostream)
  "Serializes a message object of type '<output>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'posvectors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <output>) istream)
  "Deserializes a message object of type '<output>"
  (cl:setf (cl:slot-value msg 'posvectors) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'posvectors)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<output>)))
  "Returns string type for a message object of type '<output>"
  "question1/output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'output)))
  "Returns string type for a message object of type 'output"
  "question1/output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<output>)))
  "Returns md5sum for a message object of type '<output>"
  "fed4bf357af80e3105defd670115ff0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'output)))
  "Returns md5sum for a message object of type 'output"
  "fed4bf357af80e3105defd670115ff0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<output>)))
  "Returns full string definition for message of type '<output>"
  (cl:format cl:nil "float32[3] posvectors~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'output)))
  "Returns full string definition for message of type 'output"
  (cl:format cl:nil "float32[3] posvectors~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <output>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'posvectors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <output>))
  "Converts a ROS message object to a list"
  (cl:list 'output
    (cl:cons ':posvectors (posvectors msg))
))
