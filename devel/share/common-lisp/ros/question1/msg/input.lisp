; Auto-generated. Do not edit!


(cl:in-package question1-msg)


;//! \htmlinclude input.msg.html

(cl:defclass <input> (roslisp-msg-protocol:ros-message)
  ((posvectors
    :reader posvectors
    :initarg :posvectors
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (posangles
    :reader posangles
    :initarg :posangles
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0))
)

(cl:defclass input (<input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name question1-msg:<input> is deprecated: use question1-msg:input instead.")))

(cl:ensure-generic-function 'posvectors-val :lambda-list '(m))
(cl:defmethod posvectors-val ((m <input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question1-msg:posvectors-val is deprecated.  Use question1-msg:posvectors instead.")
  (posvectors m))

(cl:ensure-generic-function 'posangles-val :lambda-list '(m))
(cl:defmethod posangles-val ((m <input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question1-msg:posangles-val is deprecated.  Use question1-msg:posangles instead.")
  (posangles m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader question1-msg:d-val is deprecated.  Use question1-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <input>) ostream)
  "Serializes a message object of type '<input>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'posvectors))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'posangles))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <input>) istream)
  "Deserializes a message object of type '<input>"
  (cl:setf (cl:slot-value msg 'posvectors) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'posvectors)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'posangles) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'posangles)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<input>)))
  "Returns string type for a message object of type '<input>"
  "question1/input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input)))
  "Returns string type for a message object of type 'input"
  "question1/input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<input>)))
  "Returns md5sum for a message object of type '<input>"
  "78254569331848474f925dd56629aa0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'input)))
  "Returns md5sum for a message object of type 'input"
  "78254569331848474f925dd56629aa0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<input>)))
  "Returns full string definition for message of type '<input>"
  (cl:format cl:nil "float32[3] posvectors ~%float32[3] posangles ~%float32 d~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'input)))
  "Returns full string definition for message of type 'input"
  (cl:format cl:nil "float32[3] posvectors ~%float32[3] posangles ~%float32 d~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <input>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'posvectors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'posangles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <input>))
  "Converts a ROS message object to a list"
  (cl:list 'input
    (cl:cons ':posvectors (posvectors msg))
    (cl:cons ':posangles (posangles msg))
    (cl:cons ':d (d msg))
))
