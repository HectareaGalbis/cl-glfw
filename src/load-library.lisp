
(in-package :glfw)

(define-foreign-library glfw
    (:unix (:or "libglfw.so" "libglfw.so.3" "libglfw.so.3.3"))
    (t (:default "glfw3" "libglfw")))
   
(use-foreign-library glfw)
