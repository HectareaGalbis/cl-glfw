
(asdf:defsystem "cl-glfw"
  :description "GLFW bindings"
  :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
  :license "MIT"
  :depends-on (:cffi :more-cffi :adp)
  :components ((:file "package")
               (:module "src"
                :components ((:file "load-library")
			     (:file "bindings")
			     (:file "initialization")
			     (:file "context")
			     (:file "input")
			     (:file "monitor")
			     (:file "vulkan")
			     (:file "window")))))


(asdf:defsystem "cl-glfw/docs"
  :description "GLFW bindings"
  :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
  :license "MIT"
  :depends-on (:cffi :more-cffi :adp)
  :components ((:file "package")
	       (:file "readme")
	       (:module "adp"
		:components ((:file "api-introduction")))
               (:module "src"
		:depends-on ("adp")
		:components ((:file "load-library")				       
			     (:file "bindings")
			     (:file "initialization")
			     (:file "context")
			     (:file "input")
			     (:file "monitor")
			     (:file "vulkan")
			     (:file "window")))))
