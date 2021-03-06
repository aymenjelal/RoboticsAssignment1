;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::endeffectorcommand)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'endeffectorcommand (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::ENDEFFECTORCOMMAND")
  (make-package "ARM_GAZEBO::ENDEFFECTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude endeffectorcommand.msg.html


(defclass arm_gazebo::endeffectorcommand
  :super ros::object
  :slots (_command ))

(defmethod arm_gazebo::endeffectorcommand
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get arm_gazebo::endeffectorcommand :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get arm_gazebo::endeffectorcommand :datatype-) "arm_gazebo/endeffectorcommand")
(setf (get arm_gazebo::endeffectorcommand :definition-)
      "string command
")



(provide :arm_gazebo/endeffectorcommand "cba5e21e920a3a2b7b375cb65b64cdea")


