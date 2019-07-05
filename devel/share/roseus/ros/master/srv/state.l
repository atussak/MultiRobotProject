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
  :slots (_commanded_state ))

(defmethod master::stateRequest
  (:init
   (&key
    ((:commanded_state __commanded_state) 0)
    )
   (send-super :init)
   (setq _commanded_state (round __commanded_state))
   self)
  (:commanded_state
   (&optional __commanded_state)
   (if __commanded_state (setq _commanded_state __commanded_state)) _commanded_state)
  (:serialization-length
   ()
   (+
    ;; int32 _commanded_state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _commanded_state
       (write-long _commanded_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _commanded_state
     (setq _commanded_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass master::stateResponse
  :super ros::object
  :slots (_robot1_finished ))

(defmethod master::stateResponse
  (:init
   (&key
    ((:robot1_finished __robot1_finished) nil)
    )
   (send-super :init)
   (setq _robot1_finished __robot1_finished)
   self)
  (:robot1_finished
   (&optional __robot1_finished)
   (if __robot1_finished (setq _robot1_finished __robot1_finished)) _robot1_finished)
  (:serialization-length
   ()
   (+
    ;; bool _robot1_finished
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _robot1_finished
       (if _robot1_finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _robot1_finished
     (setq _robot1_finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass master::state
  :super ros::object
  :slots ())

(setf (get master::state :md5sum-) "9812321c45d35db4ab23b09dfb9c72de")
(setf (get master::state :datatype-) "master/state")
(setf (get master::state :request) master::stateRequest)
(setf (get master::state :response) master::stateResponse)

(defmethod master::stateRequest
  (:response () (instance master::stateResponse :init)))

(setf (get master::stateRequest :md5sum-) "9812321c45d35db4ab23b09dfb9c72de")
(setf (get master::stateRequest :datatype-) "master/stateRequest")
(setf (get master::stateRequest :definition-)
      "int32 commanded_state
---
bool robot1_finished

")

(setf (get master::stateResponse :md5sum-) "9812321c45d35db4ab23b09dfb9c72de")
(setf (get master::stateResponse :datatype-) "master/stateResponse")
(setf (get master::stateResponse :definition-)
      "int32 commanded_state
---
bool robot1_finished

")



(provide :master/state "9812321c45d35db4ab23b09dfb9c72de")


