; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-srv)


;//! \htmlinclude ik-request.msg.html

(cl:defclass <ik-request> (roslisp-msg-protocol:ros-message)
  ((joint_positions
    :reader joint_positions
    :initarg :joint_positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (actuator_pose
    :reader actuator_pose
    :initarg :actuator_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ik-request (<ik-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ik-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ik-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<ik-request> is deprecated: use arm_gazebo-srv:ik-request instead.")))

(cl:ensure-generic-function 'joint_positions-val :lambda-list '(m))
(cl:defmethod joint_positions-val ((m <ik-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:joint_positions-val is deprecated.  Use arm_gazebo-srv:joint_positions instead.")
  (joint_positions m))

(cl:ensure-generic-function 'actuator_pose-val :lambda-list '(m))
(cl:defmethod actuator_pose-val ((m <ik-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:actuator_pose-val is deprecated.  Use arm_gazebo-srv:actuator_pose instead.")
  (actuator_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ik-request>) ostream)
  "Serializes a message object of type '<ik-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_positions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'actuator_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ik-request>) istream)
  "Deserializes a message object of type '<ik-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ik-request>)))
  "Returns string type for a service object of type '<ik-request>"
  "arm_gazebo/ikRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ik-request)))
  "Returns string type for a service object of type 'ik-request"
  "arm_gazebo/ikRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ik-request>)))
  "Returns md5sum for a message object of type '<ik-request>"
  "dbd2ec6e346a15ab820fca22b064b6fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ik-request)))
  "Returns md5sum for a message object of type 'ik-request"
  "dbd2ec6e346a15ab820fca22b064b6fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ik-request>)))
  "Returns full string definition for message of type '<ik-request>"
  (cl:format cl:nil "float64[] joint_positions~%float64[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ik-request)))
  "Returns full string definition for message of type 'ik-request"
  (cl:format cl:nil "float64[] joint_positions~%float64[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ik-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ik-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ik-request
    (cl:cons ':joint_positions (joint_positions msg))
    (cl:cons ':actuator_pose (actuator_pose msg))
))
;//! \htmlinclude ik-response.msg.html

(cl:defclass <ik-response> (roslisp-msg-protocol:ros-message)
  ((target_positions
    :reader target_positions
    :initarg :target_positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ik-response (<ik-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ik-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ik-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<ik-response> is deprecated: use arm_gazebo-srv:ik-response instead.")))

(cl:ensure-generic-function 'target_positions-val :lambda-list '(m))
(cl:defmethod target_positions-val ((m <ik-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:target_positions-val is deprecated.  Use arm_gazebo-srv:target_positions instead.")
  (target_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ik-response>) ostream)
  "Serializes a message object of type '<ik-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'target_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ik-response>) istream)
  "Deserializes a message object of type '<ik-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ik-response>)))
  "Returns string type for a service object of type '<ik-response>"
  "arm_gazebo/ikResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ik-response)))
  "Returns string type for a service object of type 'ik-response"
  "arm_gazebo/ikResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ik-response>)))
  "Returns md5sum for a message object of type '<ik-response>"
  "dbd2ec6e346a15ab820fca22b064b6fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ik-response)))
  "Returns md5sum for a message object of type 'ik-response"
  "dbd2ec6e346a15ab820fca22b064b6fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ik-response>)))
  "Returns full string definition for message of type '<ik-response>"
  (cl:format cl:nil "float64[] target_positions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ik-response)))
  "Returns full string definition for message of type 'ik-response"
  (cl:format cl:nil "float64[] target_positions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ik-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ik-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ik-response
    (cl:cons ':target_positions (target_positions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ik)))
  'ik-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ik)))
  'ik-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ik)))
  "Returns string type for a service object of type '<ik>"
  "arm_gazebo/ik")