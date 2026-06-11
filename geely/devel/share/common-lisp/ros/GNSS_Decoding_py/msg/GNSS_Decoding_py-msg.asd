
(cl:in-package :asdf)

(defsystem "GNSS_Decoding_py-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GNSS_Output" :depends-on ("_package_GNSS_Output"))
    (:file "_package_GNSS_Output" :depends-on ("_package"))
  ))