;; Auto-generated. Do not edit!


(when (boundp 'question1::output)
  (if (not (find-package "QUESTION1"))
    (make-package "QUESTION1"))
  (shadow 'output (find-package "QUESTION1")))
(unless (find-package "QUESTION1::OUTPUT")
  (make-package "QUESTION1::OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude output.msg.html


(defclass question1::output
  :super ros::object
  :slots (_posvectors ))

(defmethod question1::output
  (:init
   (&key
    ((:posvectors __posvectors) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _posvectors __posvectors)
   self)
  (:posvectors
   (&optional __posvectors)
   (if __posvectors (setq _posvectors __posvectors)) _posvectors)
  (:serialization-length
   ()
   (+
    ;; float32[3] _posvectors
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _posvectors
     (dotimes (i 3)
       (sys::poke (elt _posvectors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _posvectors
   (dotimes (i (length _posvectors))
     (setf (elt _posvectors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get question1::output :md5sum-) "fed4bf357af80e3105defd670115ff0e")
(setf (get question1::output :datatype-) "question1/output")
(setf (get question1::output :definition-)
      "float32[3] posvectors
")



(provide :question1/output "fed4bf357af80e3105defd670115ff0e")


