;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::jointangles)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'jointangles (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::JOINTANGLES")
  (make-package "ARM_GAZEBO::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude jointangles.msg.html


(defclass arm_gazebo::jointangles
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 _arm_palm ))

(defmethod arm_gazebo::jointangles
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    ((:arm_palm __arm_palm) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   (setq _arm_palm (float __arm_palm))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:arm_palm
   (&optional __arm_palm)
   (if __arm_palm (setq _arm_palm __arm_palm)) _arm_palm)
  (:serialization-length
   ()
   (+
    ;; float32 _joint1
    4
    ;; float32 _joint2
    4
    ;; float32 _joint3
    4
    ;; float32 _joint4
    4
    ;; float32 _arm_palm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm_palm
       (sys::poke _arm_palm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint1
     (setq _joint1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint2
     (setq _joint2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint3
     (setq _joint3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint4
     (setq _joint4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm_palm
     (setq _arm_palm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_gazebo::jointangles :md5sum-) "fda7246815f2a28291e4b07a8932dde9")
(setf (get arm_gazebo::jointangles :datatype-) "arm_gazebo/jointangles")
(setf (get arm_gazebo::jointangles :definition-)
      "float32 joint1
float32 joint2
float32 joint3 
float32 joint4
float32 arm_palm
")



(provide :arm_gazebo/jointangles "fda7246815f2a28291e4b07a8932dde9")


