;; Auto-generated. Do not edit!


(when (boundp 'question1::input)
  (if (not (find-package "QUESTION1"))
    (make-package "QUESTION1"))
  (shadow 'input (find-package "QUESTION1")))
(unless (find-package "QUESTION1::INPUT")
  (make-package "QUESTION1::INPUT"))

(in-package "ROS")
;;//! \htmlinclude input.msg.html


(defclass question1::input
  :super ros::object
  :slots (_posvectors _posangles _d ))

(defmethod question1::input
  (:init
   (&key
    ((:posvectors __posvectors) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:posangles __posangles) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _posvectors __posvectors)
   (setq _posangles __posangles)
   (setq _d (float __d))
   self)
  (:posvectors
   (&optional __posvectors)
   (if __posvectors (setq _posvectors __posvectors)) _posvectors)
  (:posangles
   (&optional __posangles)
   (if __posangles (setq _posangles __posangles)) _posangles)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float32[3] _posvectors
    (* 4    3)
    ;; float32[3] _posangles
    (* 4    3)
    ;; float32 _d
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _posvectors
     (dotimes (i 3)
       (sys::poke (elt _posvectors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _posangles
     (dotimes (i 3)
       (sys::poke (elt _posangles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _posvectors
   (dotimes (i (length _posvectors))
     (setf (elt _posvectors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _posangles
   (dotimes (i (length _posangles))
     (setf (elt _posangles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get question1::input :md5sum-) "78254569331848474f925dd56629aa0d")
(setf (get question1::input :datatype-) "question1/input")
(setf (get question1::input :definition-)
      "float32[3] posvectors 
float32[3] posangles 
float32 d
")



(provide :question1/input "78254569331848474f925dd56629aa0d")


