
(cl:in-package :asdf)

(defsystem "ego_trajectory_udp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AdsUdpState" :depends-on ("_package_AdsUdpState"))
    (:file "_package_AdsUdpState" :depends-on ("_package"))
  ))