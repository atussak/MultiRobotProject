;; Auto-generated. Do not edit!


(when (boundp 'print_server::PrintResult)
  (if (not (find-package "PRINT_SERVER"))
    (make-package "PRINT_SERVER"))
  (shadow 'PrintResult (find-package "PRINT_SERVER")))
(unless (find-package "PRINT_SERVER::PRINTRESULT")
  (make-package "PRINT_SERVER::PRINTRESULT"))

(in-package "ROS")
;;//! \htmlinclude PrintResult.msg.html


(defclass print_server::PrintResult
  :super ros::object
  :slots (_print_success ))

(defmethod print_server::PrintResult
  (:init
   (&key
    ((:print_success __print_success) nil)
    )
   (send-super :init)
   (setq _print_success __print_success)
   self)
  (:print_success
   (&optional __print_success)
   (if __print_success (setq _print_success __print_success)) _print_success)
  (:serialization-length
   ()
   (+
    ;; bool _print_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _print_success
       (if _print_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _print_success
     (setq _print_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get print_server::PrintResult :md5sum-) "57c754efdeda0c1209812dae0350c80f")
(setf (get print_server::PrintResult :datatype-) "print_server/PrintResult")
(setf (get print_server::PrintResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
bool print_success

")



(provide :print_server/PrintResult "57c754efdeda0c1209812dae0350c80f")


