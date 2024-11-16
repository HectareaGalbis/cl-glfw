
(asdf:defsystem "cl-glfw"
  :description "GLFW bindings"
  :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
  :license "MIT"
  :depends-on ("affinity")
  :serial t
  :components ((:file "package")
               (:module "src"
                :serial t
                :components ((:file "load-library")
                             (:file "constants")
			     (:file "types")
			     (:file "functions")))))


;; (asdf:defsystem "cl-glfw/doc"
;;   :description "GLFW bindings"
;;   :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
;;   :license "MIT"
;;   :depends-on ("cl-glfw")
;;   :components ((:module "scribble"
;; 		:components ((:file "package")
;;                              (:scribble "README")
;;                              (:scribble "reference")))))
