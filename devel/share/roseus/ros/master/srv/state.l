;; Auto-generated. Do not edit!


(when (boundp 'master::state)
  (if (not (find-package "MASTER"))
    (make-package "MASTER"))
  (shadow 'state (find-package "MASTER")))
(unless (find-package "MASTER::STATE")
  (make-package "MASTER::STATE"))
(unless (find-package "MASTER::STATEREQUEST")
  (make-package "MASTER::STATEREQUEST"))
(unless (find-package "MASTER::STATERESPONSE")
  (make-package "MASTER::STATERESPONSE"))

(in-package "ROS")





(defclass master::stateRequest
  :super ros::object
  :slots (_execute_state ))

(defmethod master::stateRequest
  (:init
   (&key
    ((:execute_state __execute_state) nil)
    )
   (send-super :init)
   (setq _execute_state __execute_state)
   self)
  (:execute_state
   (&optional __execute_state)
   (if __execute_state (setq _execute_state __execute_state)) _execute_state)
  (:serialization-length
   ()
   (+
    ;; bool _execute_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _execute_state
       (if _execute_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _execute_state
     (setq _execute_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass master::stateResponse
  :super ros::object
  :slots (_finished ))

(defmethod master::stateResponse
  (:init
   (&key
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _finished __finished)
   self)
  (:finished
   (&optional __finished)
   (if __finished (setq _finished __finished)) _finished)
  (:serialization-length
   ()
   (+
    ;; bool _finished
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass master::state
  :super ros::object
  :slots ())

(setf (get master::state :md5sum-) "fc356054cc550c7695fed3a501922336")
(setf (get master::state :datatype-) "master/state")
(setf (get master::state :request) master::stateRequest)
(setf (get master::state :response) master::stateResponse)

(defmethod master::stateRequest
  (:response () (instance master::stateResponse :init)))

(setf (get master::stateRequest :md5sum-) "fc356054cc550c7695fed3a501922336")
(setf (get master::stateRequest :datatype-) "master/stateRequest")
(setf (get master::stateRequest :definition-)
      "bool execute_state
---
bool finished
")

(setf (get master::stateResponse :md5sum-) "fc356054cc550c7695fed3a501922336")
(setf (get master::stateResponse :datatype-) "master/stateResponse")
(setf (get master::stateResponse :definition-)
      "bool execute_state
---
bool finished
")



(provide :master/state "fc356054cc550c7695fed3a501922336")


