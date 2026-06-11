
(cl:in-package :asdf)

(defsystem "geely_location_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Geely_Location" :depends-on ("_package_Geely_Location"))
    (:file "_package_Geely_Location" :depends-on ("_package"))
  ))