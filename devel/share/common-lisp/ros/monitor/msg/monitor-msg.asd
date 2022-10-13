
(cl:in-package :asdf)

(defsystem "monitor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "box" :depends-on ("_package_box"))
    (:file "_package_box" :depends-on ("_package"))
    (:file "boxes" :depends-on ("_package_boxes"))
    (:file "_package_boxes" :depends-on ("_package"))
  ))