
(cl:in-package :asdf)

(defsystem "vision_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :mayfield_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ClassifiedObjects" :depends-on ("_package_ClassifiedObjects"))
    (:file "_package_ClassifiedObjects" :depends-on ("_package"))
    (:file "FrameResults" :depends-on ("_package_FrameResults"))
    (:file "_package_FrameResults" :depends-on ("_package"))
    (:file "FaceArray" :depends-on ("_package_FaceArray"))
    (:file "_package_FaceArray" :depends-on ("_package"))
    (:file "DetectedObjects" :depends-on ("_package_DetectedObjects"))
    (:file "_package_DetectedObjects" :depends-on ("_package"))
    (:file "ImageQuality" :depends-on ("_package_ImageQuality"))
    (:file "_package_ImageQuality" :depends-on ("_package"))
    (:file "ClassifiedObject" :depends-on ("_package_ClassifiedObject"))
    (:file "_package_ClassifiedObject" :depends-on ("_package"))
    (:file "ObjectFeatures" :depends-on ("_package_ObjectFeatures"))
    (:file "_package_ObjectFeatures" :depends-on ("_package"))
    (:file "VisionCmdMsg" :depends-on ("_package_VisionCmdMsg"))
    (:file "_package_VisionCmdMsg" :depends-on ("_package"))
    (:file "Face" :depends-on ("_package_Face"))
    (:file "_package_Face" :depends-on ("_package"))
    (:file "ImageClustering" :depends-on ("_package_ImageClustering"))
    (:file "_package_ImageClustering" :depends-on ("_package"))
  ))