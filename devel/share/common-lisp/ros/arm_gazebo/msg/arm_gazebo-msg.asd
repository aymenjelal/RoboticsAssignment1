
(cl:in-package :asdf)

(defsystem "arm_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "jointangles" :depends-on ("_package_jointangles"))
    (:file "_package_jointangles" :depends-on ("_package"))
  ))