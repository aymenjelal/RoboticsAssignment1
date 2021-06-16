;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::ik)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'ik (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::IK")
  (make-package "ARM_GAZEBO::IK"))
(unless (find-package "ARM_GAZEBO::IKREQUEST")
  (make-package "ARM_GAZEBO::IKREQUEST"))
(unless (find-package "ARM_GAZEBO::IKRESPONSE")
  (make-package "ARM_GAZEBO::IKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::ikRequest
  :super ros::object
  :slots (_joint_positions _positions ))

(defmethod arm_gazebo::ikRequest
  (:init
   (&key
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_positions __joint_positions)
   (setq _positions __positions)
   self)
  (:joint_positions
   (&optional __joint_positions)
   (if __joint_positions (setq _joint_positions __joint_positions)) _joint_positions)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_positions
     (write-long (length _joint_positions) s)
     (dotimes (i (length _joint_positions))
       (sys::poke (elt _joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::ikResponse
  :super ros::object
  :slots (_target_positions ))

(defmethod arm_gazebo::ikResponse
  (:init
   (&key
    ((:target_positions __target_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _target_positions __target_positions)
   self)
  (:target_positions
   (&optional __target_positions)
   (if __target_positions (setq _target_positions __target_positions)) _target_positions)
  (:serialization-length
   ()
   (+
    ;; float64[] _target_positions
    (* 8    (length _target_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _target_positions
     (write-long (length _target_positions) s)
     (dotimes (i (length _target_positions))
       (sys::poke (elt _target_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _target_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::ik
  :super ros::object
  :slots ())

(setf (get arm_gazebo::ik :md5sum-) "190b0d670a41214f1bd75146734182d2")
(setf (get arm_gazebo::ik :datatype-) "arm_gazebo/ik")
(setf (get arm_gazebo::ik :request) arm_gazebo::ikRequest)
(setf (get arm_gazebo::ik :response) arm_gazebo::ikResponse)

(defmethod arm_gazebo::ikRequest
  (:response () (instance arm_gazebo::ikResponse :init)))

(setf (get arm_gazebo::ikRequest :md5sum-) "190b0d670a41214f1bd75146734182d2")
(setf (get arm_gazebo::ikRequest :datatype-) "arm_gazebo/ikRequest")
(setf (get arm_gazebo::ikRequest :definition-)
      "float64[] joint_positions
float64[] positions
---
float64[] target_positions
")

(setf (get arm_gazebo::ikResponse :md5sum-) "190b0d670a41214f1bd75146734182d2")
(setf (get arm_gazebo::ikResponse :datatype-) "arm_gazebo/ikResponse")
(setf (get arm_gazebo::ikResponse :definition-)
      "float64[] joint_positions
float64[] positions
---
float64[] target_positions
")



(provide :arm_gazebo/ik "190b0d670a41214f1bd75146734182d2")


