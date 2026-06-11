
(cl:in-package :asdf)

(defsystem "vehicle_info_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Point" :depends-on ("_package_Point"))
    (:file "_package_Point" :depends-on ("_package"))
    (:file "Vector3D" :depends-on ("_package_Vector3D"))
    (:file "_package_Vector3D" :depends-on ("_package"))
    (:file "VehicleInfo" :depends-on ("_package_VehicleInfo"))
    (:file "_package_VehicleInfo" :depends-on ("_package"))
    (:file "VehicleInfoBatch" :depends-on ("_package_VehicleInfoBatch"))
    (:file "_package_VehicleInfoBatch" :depends-on ("_package"))
  ))