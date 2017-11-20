
(cl:in-package :asdf)

(defsystem "trabajo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "multiplicador" :depends-on ("_package_multiplicador"))
    (:file "_package_multiplicador" :depends-on ("_package"))
  ))