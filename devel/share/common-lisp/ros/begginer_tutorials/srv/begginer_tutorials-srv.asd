
(cl:in-package :asdf)

(defsystem "begginer_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "tipo_servicio" :depends-on ("_package_tipo_servicio"))
    (:file "_package_tipo_servicio" :depends-on ("_package"))
  ))