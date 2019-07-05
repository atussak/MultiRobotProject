; Auto-generated. Do not edit!


(cl:in-package master-msg)


;//! \htmlinclude robot_feedback.msg.html

(cl:defclass <robot_feedback> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type cl:integer
    :initform 0)
   (state_executed
    :reader state_executed
    :initarg :state_executed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot_feedback (<robot_feedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_feedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_feedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master-msg:<robot_feedback> is deprecated: use master-msg:robot_feedback instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <robot_feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master-msg:current_state-val is deprecated.  Use master-msg:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'state_executed-val :lambda-list '(m))
(cl:defmethod state_executed-val ((m <robot_feedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master-msg:state_executed-val is deprecated.  Use master-msg:state_executed instead.")
  (state_executed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_feedback>) ostream)
  "Serializes a message object of type '<robot_feedback>"
  (cl:let* ((signed (cl:slot-value msg 'current_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state_executed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_feedback>) istream)
  "Deserializes a message object of type '<robot_feedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'state_executed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_feedback>)))
  "Returns string type for a message object of type '<robot_feedback>"
  "master/robot_feedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_feedback)))
  "Returns string type for a message object of type 'robot_feedback"
  "master/robot_feedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_feedback>)))
  "Returns md5sum for a message object of type '<robot_feedback>"
  "43b1d8fe98a57fe4d9fd7c53b24f68c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_feedback)))
  "Returns md5sum for a message object of type 'robot_feedback"
  "43b1d8fe98a57fe4d9fd7c53b24f68c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_feedback>)))
  "Returns full string definition for message of type '<robot_feedback>"
  (cl:format cl:nil "int32 current_state~%bool state_executed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_feedback)))
  "Returns full string definition for message of type 'robot_feedback"
  (cl:format cl:nil "int32 current_state~%bool state_executed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_feedback>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_feedback>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_feedback
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':state_executed (state_executed msg))
))
