
(asdf:defsystem "cl-glfw"
    :description "GLFW bindings"
    :author "Héctor Galbis Sanchis <hectometrocuadrado@gmail.com>"
    :license "MIT"
    :depends-on (:cffi :more-cffi)
    :components ((:file "package")
                 (:module "src"
                  :components ((:file "raw-glfw")
                               (:file "glfw")))))
