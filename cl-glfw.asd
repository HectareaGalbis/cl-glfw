
(asdf:defsystem "cl-glfw"
    :description "GLFW bindings"
    :author "Hector Galbis Sanchis <hectometrocuadrado@gmail.com>"
    :license "MIT"
    :depends-on (:cffi)
    :components ((:file "packages")
                 (:module "src"
                  :components ((:file "raw-glfw")
                               (:file "glfw")))))