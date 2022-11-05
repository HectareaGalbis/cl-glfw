
(asdf:defsystem "cl-glfw"
    :description "GLFW bindings"
    :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
    :license "MIT"
    :depends-on (:cffi :more-cffi :adp)
    :components ((:file "package")
                 (:module "src"
                  :components ((:file "load-library")
			       (:file "bindings")
                               (:file "context")
			       (:file "initialization")
			       (:file "input")
			       (:file "monitor")
			       (:file "vulkan")
			       (:file "window")))))
