
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
			     (:file "bindings")
			     (:file "initialization")
			     (:file "context")
			     (:file "input")
			     (:file "monitor")
			     (:file "vulkan")
			     (:file "window")))))


(asdf:defsystem "cl-glfw/doc"
  :description "GLFW bindings"
  :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
  :license "MIT"
  :depends-on ("cl-glfw")
  :components ((:module "scribble"
		:components ((:file "package")
                             (:scribble "README")
                             (:scribble "reference")))))
