; Auto-generated. Do not edit!


(cl:in-package begginer_tutorials-msg)


;//! \htmlinclude mesajeTest.msg.html

(cl:defclass <mesajeTest> (roslisp-msg-protocol:ros-message)
  ((numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0))
)

(cl:defclass mesajeTest (<mesajeTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mesajeTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mesajeTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name begginer_tutorials-msg:<mesajeTest> is deprecated: use begginer_tutorials-msg:mesajeTest instead.")))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <mesajeTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader begginer_tutorials-msg:numero-val is deprecated.  Use begginer_tutorials-msg:numero instead.")
  (numero m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mesajeTest>) ostream)
  "Serializes a message object of type '<mesajeTest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mesajeTest>) istream)
  "Deserializes a message object of type '<mesajeTest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numero)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numero)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mesajeTest>)))
  "Returns string type for a message object of type '<mesajeTest>"
  "begginer_tutorials/mesajeTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mesajeTest)))
  "Returns string type for a message object of type 'mesajeTest"
  "begginer_tutorials/mesajeTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mesajeTest>)))
  "Returns md5sum for a message object of type '<mesajeTest>"
  "b32de927a501baab19ed61de1e6e9fe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mesajeTest)))
  "Returns md5sum for a message object of type 'mesajeTest"
  "b32de927a501baab19ed61de1e6e9fe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mesajeTest>)))
  "Returns full string definition for message of type '<mesajeTest>"
  (cl:format cl:nil "uint32 numero~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mesajeTest)))
  "Returns full string definition for message of type 'mesajeTest"
  (cl:format cl:nil "uint32 numero~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mesajeTest>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mesajeTest>))
  "Converts a ROS message object to a list"
  (cl:list 'mesajeTest
    (cl:cons ':numero (numero msg))
))
