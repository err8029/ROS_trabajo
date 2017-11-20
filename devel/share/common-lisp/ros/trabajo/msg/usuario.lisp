; Auto-generated. Do not edit!


(cl:in-package trabajo-msg)


;//! \htmlinclude usuario.msg.html

(cl:defclass <usuario> (roslisp-msg-protocol:ros-message)
  ((infPersonal
    :reader infPersonal
    :initarg :infPersonal
    :type trabajo-msg:inf_personal_usuario
    :initform (cl:make-instance 'trabajo-msg:inf_personal_usuario))
   (emocion
    :reader emocion
    :initarg :emocion
    :type cl:string
    :initform "")
   (posicion
    :reader posicion
    :initarg :posicion
    :type trabajo-msg:pos_usuario
    :initform (cl:make-instance 'trabajo-msg:pos_usuario)))
)

(cl:defclass usuario (<usuario>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <usuario>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'usuario)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trabajo-msg:<usuario> is deprecated: use trabajo-msg:usuario instead.")))

(cl:ensure-generic-function 'infPersonal-val :lambda-list '(m))
(cl:defmethod infPersonal-val ((m <usuario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trabajo-msg:infPersonal-val is deprecated.  Use trabajo-msg:infPersonal instead.")
  (infPersonal m))

(cl:ensure-generic-function 'emocion-val :lambda-list '(m))
(cl:defmethod emocion-val ((m <usuario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trabajo-msg:emocion-val is deprecated.  Use trabajo-msg:emocion instead.")
  (emocion m))

(cl:ensure-generic-function 'posicion-val :lambda-list '(m))
(cl:defmethod posicion-val ((m <usuario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trabajo-msg:posicion-val is deprecated.  Use trabajo-msg:posicion instead.")
  (posicion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <usuario>) ostream)
  "Serializes a message object of type '<usuario>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'infPersonal) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emocion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emocion))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posicion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <usuario>) istream)
  "Deserializes a message object of type '<usuario>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'infPersonal) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emocion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emocion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posicion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<usuario>)))
  "Returns string type for a message object of type '<usuario>"
  "trabajo/usuario")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'usuario)))
  "Returns string type for a message object of type 'usuario"
  "trabajo/usuario")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<usuario>)))
  "Returns md5sum for a message object of type '<usuario>"
  "1ca52202970cc42e97caba153d2caf37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'usuario)))
  "Returns md5sum for a message object of type 'usuario"
  "1ca52202970cc42e97caba153d2caf37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<usuario>)))
  "Returns full string definition for message of type '<usuario>"
  (cl:format cl:nil "inf_personal_usuario infPersonal~%string emocion~%pos_usuario posicion~%~%================================================================================~%MSG: trabajo/inf_personal_usuario~%string nombre~%uint32 edad~%string idiomas~%~%================================================================================~%MSG: trabajo/pos_usuario~%uint32 x~%uint32 y~%uint32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'usuario)))
  "Returns full string definition for message of type 'usuario"
  (cl:format cl:nil "inf_personal_usuario infPersonal~%string emocion~%pos_usuario posicion~%~%================================================================================~%MSG: trabajo/inf_personal_usuario~%string nombre~%uint32 edad~%string idiomas~%~%================================================================================~%MSG: trabajo/pos_usuario~%uint32 x~%uint32 y~%uint32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <usuario>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'infPersonal))
     4 (cl:length (cl:slot-value msg 'emocion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posicion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <usuario>))
  "Converts a ROS message object to a list"
  (cl:list 'usuario
    (cl:cons ':infPersonal (infPersonal msg))
    (cl:cons ':emocion (emocion msg))
    (cl:cons ':posicion (posicion msg))
))
