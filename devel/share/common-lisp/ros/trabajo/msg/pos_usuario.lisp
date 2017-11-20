; Auto-generated. Do not edit!


(cl:in-package trabajo-msg)


;//! \htmlinclude pos_usuario.msg.html

(cl:defclass <pos_usuario> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:integer
    :initform 0))
)

(cl:defclass pos_usuario (<pos_usuario>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pos_usuario>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pos_usuario)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trabajo-msg:<pos_usuario> is deprecated: use trabajo-msg:pos_usuario instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <pos_usuario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trabajo-msg:x-val is deprecated.  Use trabajo-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <pos_usuario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trabajo-msg:y-val is deprecated.  Use trabajo-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <pos_usuario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trabajo-msg:z-val is deprecated.  Use trabajo-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pos_usuario>) ostream)
  "Serializes a message object of type '<pos_usuario>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'z)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pos_usuario>) istream)
  "Deserializes a message object of type '<pos_usuario>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'z)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pos_usuario>)))
  "Returns string type for a message object of type '<pos_usuario>"
  "trabajo/pos_usuario")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pos_usuario)))
  "Returns string type for a message object of type 'pos_usuario"
  "trabajo/pos_usuario")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pos_usuario>)))
  "Returns md5sum for a message object of type '<pos_usuario>"
  "bfde2953ee46d97d36a711ef3cbc85f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pos_usuario)))
  "Returns md5sum for a message object of type 'pos_usuario"
  "bfde2953ee46d97d36a711ef3cbc85f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pos_usuario>)))
  "Returns full string definition for message of type '<pos_usuario>"
  (cl:format cl:nil "uint32 x~%uint32 y~%uint32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pos_usuario)))
  "Returns full string definition for message of type 'pos_usuario"
  (cl:format cl:nil "uint32 x~%uint32 y~%uint32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pos_usuario>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pos_usuario>))
  "Converts a ROS message object to a list"
  (cl:list 'pos_usuario
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
