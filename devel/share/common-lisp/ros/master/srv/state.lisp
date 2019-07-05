; Auto-generated. Do not edit!


(cl:in-package master-srv)


;//! \htmlinclude state-request.msg.html

(cl:defclass <state-request> (roslisp-msg-protocol:ros-message)
  ((execute_state
    :reader execute_state
    :initarg :execute_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass state-request (<state-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master-srv:<state-request> is deprecated: use master-srv:state-request instead.")))

(cl:ensure-generic-function 'execute_state-val :lambda-list '(m))
(cl:defmethod execute_state-val ((m <state-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master-srv:execute_state-val is deprecated.  Use master-srv:execute_state instead.")
  (execute_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state-request>) ostream)
  "Serializes a message object of type '<state-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'execute_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state-request>) istream)
  "Deserializes a message object of type '<state-request>"
    (cl:setf (cl:slot-value msg 'execute_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state-request>)))
  "Returns string type for a service object of type '<state-request>"
  "master/stateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state-request)))
  "Returns string type for a service object of type 'state-request"
  "master/stateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state-request>)))
  "Returns md5sum for a message object of type '<state-request>"
  "fc356054cc550c7695fed3a501922336")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state-request)))
  "Returns md5sum for a message object of type 'state-request"
  "fc356054cc550c7695fed3a501922336")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state-request>)))
  "Returns full string definition for message of type '<state-request>"
  (cl:format cl:nil "bool execute_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state-request)))
  "Returns full string definition for message of type 'state-request"
  (cl:format cl:nil "bool execute_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state-request>))
  "Converts a ROS message object to a list"
  (cl:list 'state-request
    (cl:cons ':execute_state (execute_state msg))
))
;//! \htmlinclude state-response.msg.html

(cl:defclass <state-response> (roslisp-msg-protocol:ros-message)
  ((finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass state-response (<state-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master-srv:<state-response> is deprecated: use master-srv:state-response instead.")))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <state-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master-srv:finished-val is deprecated.  Use master-srv:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state-response>) ostream)
  "Serializes a message object of type '<state-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state-response>) istream)
  "Deserializes a message object of type '<state-response>"
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state-response>)))
  "Returns string type for a service object of type '<state-response>"
  "master/stateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state-response)))
  "Returns string type for a service object of type 'state-response"
  "master/stateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state-response>)))
  "Returns md5sum for a message object of type '<state-response>"
  "fc356054cc550c7695fed3a501922336")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state-response)))
  "Returns md5sum for a message object of type 'state-response"
  "fc356054cc550c7695fed3a501922336")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state-response>)))
  "Returns full string definition for message of type '<state-response>"
  (cl:format cl:nil "bool finished~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state-response)))
  "Returns full string definition for message of type 'state-response"
  (cl:format cl:nil "bool finished~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state-response>))
  "Converts a ROS message object to a list"
  (cl:list 'state-response
    (cl:cons ':finished (finished msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'state)))
  'state-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'state)))
  'state-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state)))
  "Returns string type for a service object of type '<state>"
  "master/state")