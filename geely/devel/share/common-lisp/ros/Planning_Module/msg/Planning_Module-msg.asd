
(cl:in-package :asdf)

(defsystem "Planning_Module-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "trajectory_planning_msg" :depends-on ("_package_trajectory_planning_msg"))
    (:file "_package_trajectory_planning_msg" :depends-on ("_package"))
  ))