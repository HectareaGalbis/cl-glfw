
(in-package :glfw)

(adp:write-in-file #P"README")

(adp:header "cl-glfw")

(adp:text "Welcome to the GLFW bindings!")

(adp:text "GLFW is a free, Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan application development. It provides a simple, platform-independent API for creating windows, contexts and surfaces, reading input, handling events, etc.")

(adp:table-of-contents)


(adp:subheader "Installation")

(adp:text "This project is available on Ultralisp. If you don't have it, eval the next expression in your REPL:")

(adp:code-block ()
  (ql-dist:install-dist "http://dist.ultralisp.org/"
			:prompt nil))

(adp:text "Finally, install cl-glfw:")

(adp:code-block ()
  (ql:quickload :cl-glfw))

(adp:text "Also, to make cl-glfw work you need to install the shared libraries that you can find in the official " @w("web page" "https://www.glfw.org/download.html") ".")
