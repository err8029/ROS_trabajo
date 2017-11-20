
(cl:in-package :asdf)

(defsystem "begginer_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mesajeTest" :depends-on ("_package_mesajeTest"))
    (:file "_package_mesajeTest" :depends-on ("_package"))
  ))