;; Auto-generated. Do not edit!


(when (boundp 'master::robot_feedback)
  (if (not (find-package "MASTER"))
    (make-package "MASTER"))
  (shadow 'robot_feedback (find-package "MASTER")))
(unless (find-package "MASTER::ROBOT_FEEDBACK")
  (make-package "MASTER::ROBOT_FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude robot_feedback.msg.html


(defclass master::robot_feedback
  :super ros::object
  :slots (_current_state _state_executed ))

(defmethod master::robot_feedback
  (:init
   (&key
    ((:current_state __current_state) 0)
    ((:state_executed __state_executed) nil)
    )
   (send-super :init)
   (setq _current_state (round __current_state))
   (setq _state_executed __state_executed)
   self)
  (:current_state
   (&optional __current_state)
   (if __current_state (setq _current_state __current_state)) _current_state)
  (:state_executed
   (&optional __state_executed)
   (if __state_executed (setq _state_executed __state_executed)) _state_executed)
  (:serialization-length
   ()
   (+
    ;; int32 _current_state
    4
    ;; bool _state_executed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current_state
       (write-long _current_state s)
     ;; bool _state_executed
       (if _state_executed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current_state
     (setq _current_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _state_executed
     (setq _state_executed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get master::robot_feedback :md5sum-) "43b1d8fe98a57fe4d9fd7c53b24f68c7")
(setf (get master::robot_feedback :datatype-) "master/robot_feedback")
(setf (get master::robot_feedback :definition-)
      "int32 current_state
bool state_executed
")



(provide :master/robot_feedback "43b1d8fe98a57fe4d9fd7c53b24f68c7")


