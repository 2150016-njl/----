
(cl:in-package :asdf)

(defsystem "interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Global_route" :depends-on ("_package_Global_route"))
    (:file "_package_Global_route" :depends-on ("_package"))
    (:file "Lane" :depends-on ("_package_Lane"))
    (:file "_package_Lane" :depends-on ("_package"))
    (:file "Lanes" :depends-on ("_package_Lanes"))
    (:file "_package_Lanes" :depends-on ("_package"))
    (:file "Route" :depends-on ("_package_Route"))
    (:file "_package_Route" :depends-on ("_package"))
    (:file "Route_point" :depends-on ("_package_Route_point"))
    (:file "_package_Route_point" :depends-on ("_package"))
  ))