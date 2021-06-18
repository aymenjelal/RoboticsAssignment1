
(cl:in-package :asdf)

(defsystem "arm_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "endeffectorcommand" :depends-on ("_package_endeffectorcommand"))
    (:file "_package_endeffectorcommand" :depends-on ("_package"))
    (:file "endpositions" :depends-on ("_package_endpositions"))
    (:file "_package_endpositions" :depends-on ("_package"))
    (:file "jointangles" :depends-on ("_package_jointangles"))
    (:file "_package_jointangles" :depends-on ("_package"))
  ))