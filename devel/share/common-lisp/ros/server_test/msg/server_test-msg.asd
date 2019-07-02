
(cl:in-package :asdf)

(defsystem "server_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "servertestAction" :depends-on ("_package_servertestAction"))
    (:file "_package_servertestAction" :depends-on ("_package"))
    (:file "servertestActionFeedback" :depends-on ("_package_servertestActionFeedback"))
    (:file "_package_servertestActionFeedback" :depends-on ("_package"))
    (:file "servertestActionGoal" :depends-on ("_package_servertestActionGoal"))
    (:file "_package_servertestActionGoal" :depends-on ("_package"))
    (:file "servertestActionResult" :depends-on ("_package_servertestActionResult"))
    (:file "_package_servertestActionResult" :depends-on ("_package"))
    (:file "servertestFeedback" :depends-on ("_package_servertestFeedback"))
    (:file "_package_servertestFeedback" :depends-on ("_package"))
    (:file "servertestGoal" :depends-on ("_package_servertestGoal"))
    (:file "_package_servertestGoal" :depends-on ("_package"))
    (:file "servertestResult" :depends-on ("_package_servertestResult"))
    (:file "_package_servertestResult" :depends-on ("_package"))
  ))