
(cl:in-package :asdf)

(defsystem "plusgo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageRect" :depends-on ("_package_ImageRect"))
    (:file "_package_ImageRect" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "Objects" :depends-on ("_package_Objects"))
    (:file "_package_Objects" :depends-on ("_package"))
    (:file "Polygon" :depends-on ("_package_Polygon"))
    (:file "_package_Polygon" :depends-on ("_package"))
  ))