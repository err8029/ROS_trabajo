; Auto-generated. Do not edit!


(cl:in-package begginer_tutorials-srv)


;//! \htmlinclude tipo_servicio-request.msg.html

(cl:defclass <tipo_servicio-request> (roslisp-msg-protocol:ros-message)
  ((argumento1
    :reader argumento1
    :initarg :argumento1
    :type cl:integer
    :initform 0))
)

(cl:defclass tipo_servicio-request (<tipo_servicio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tipo_servicio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tipo_servicio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name begginer_tutorials-srv:<tipo_servicio-request> is deprecated: use begginer_tutorials-srv:tipo_servicio-request instead.")))

(cl:ensure-generic-function 'argumento1-val :lambda-list '(m))
(cl:defmethod argumento1-val ((m <tipo_servicio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader begginer_tutorials-srv:argumento1-val is deprecated.  Use begginer_tutorials-srv:argumento1 instead.")
  (argumento1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tipo_servicio-request>) ostream)
  "Serializes a message object of type '<tipo_servicio-request>"
  (cl:let* ((signed (cl:slot-value msg 'argumento1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tipo_servicio-request>) istream)
  "Deserializes a message object of type '<tipo_servicio-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'argumento1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tipo_servicio-request>)))
  "Returns string type for a service object of type '<tipo_servicio-request>"
  "begginer_tutorials/tipo_servicioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tipo_servicio-request)))
  "Returns string type for a service object of type 'tipo_servicio-request"
  "begginer_tutorials/tipo_servicioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tipo_servicio-request>)))
  "Returns md5sum for a message object of type '<tipo_servicio-request>"
  "f15f121d0be77fd6967bf4d5c453888a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tipo_servicio-request)))
  "Returns md5sum for a message object of type 'tipo_servicio-request"
  "f15f121d0be77fd6967bf4d5c453888a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tipo_servicio-request>)))
  "Returns full string definition for message of type '<tipo_servicio-request>"
  (cl:format cl:nil "int64 argumento1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tipo_servicio-request)))
  "Returns full string definition for message of type 'tipo_servicio-request"
  (cl:format cl:nil "int64 argumento1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tipo_servicio-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tipo_servicio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'tipo_servicio-request
    (cl:cons ':argumento1 (argumento1 msg))
))
;//! \htmlinclude tipo_servicio-response.msg.html

(cl:defclass <tipo_servicio-response> (roslisp-msg-protocol:ros-message)
  ((resultado1
    :reader resultado1
    :initarg :resultado1
    :type cl:integer
    :initform 0))
)

(cl:defclass tipo_servicio-response (<tipo_servicio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tipo_servicio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tipo_servicio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name begginer_tutorials-srv:<tipo_servicio-response> is deprecated: use begginer_tutorials-srv:tipo_servicio-response instead.")))

(cl:ensure-generic-function 'resultado1-val :lambda-list '(m))
(cl:defmethod resultado1-val ((m <tipo_servicio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader begginer_tutorials-srv:resultado1-val is deprecated.  Use begginer_tutorials-srv:resultado1 instead.")
  (resultado1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tipo_servicio-response>) ostream)
  "Serializes a message object of type '<tipo_servicio-response>"
  (cl:let* ((signed (cl:slot-value msg 'resultado1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tipo_servicio-response>) istream)
  "Deserializes a message object of type '<tipo_servicio-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'resultado1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tipo_servicio-response>)))
  "Returns string type for a service object of type '<tipo_servicio-response>"
  "begginer_tutorials/tipo_servicioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tipo_servicio-response)))
  "Returns string type for a service object of type 'tipo_servicio-response"
  "begginer_tutorials/tipo_servicioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tipo_servicio-response>)))
  "Returns md5sum for a message object of type '<tipo_servicio-response>"
  "f15f121d0be77fd6967bf4d5c453888a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tipo_servicio-response)))
  "Returns md5sum for a message object of type 'tipo_servicio-response"
  "f15f121d0be77fd6967bf4d5c453888a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tipo_servicio-response>)))
  "Returns full string definition for message of type '<tipo_servicio-response>"
  (cl:format cl:nil "int64 resultado1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tipo_servicio-response)))
  "Returns full string definition for message of type 'tipo_servicio-response"
  (cl:format cl:nil "int64 resultado1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tipo_servicio-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tipo_servicio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'tipo_servicio-response
    (cl:cons ':resultado1 (resultado1 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'tipo_servicio)))
  'tipo_servicio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'tipo_servicio)))
  'tipo_servicio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tipo_servicio)))
  "Returns string type for a service object of type '<tipo_servicio>"
  "begginer_tutorials/tipo_servicio")