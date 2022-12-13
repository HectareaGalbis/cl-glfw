
(in-package :glfw)

(adp:in-file #P"docs/api/context")

(adp:header "Context reference" context-reference-header)

(adp:subheader "Description")

(adp:text "This is the reference documentation for OpenGL and OpenGL ES context related functions.")

(adp:mini-table-of-contents)


(adp:subheader "Functions")

(adp:subsubheader "glfwMakeContextCurrent")

(adp:defun make-context-current (window)
  (declare (type pointer window))
  "Makes the context of the specified window current for the calling thread."
  (let ((window-c (or window (cffi:null-pointer))))
    (glfwMakeContextCurrent window-c)))

(adp:subsubheader "glfwGetCurrentContext")

(adp:defun get-current-context ()
  "Returns the window whose context is current on the calling thread."
  (let ((result (glfwGetCurrentContext)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(adp:subsubheader "glfwSwapInterval")

(adp:defun swap-interval (interval)
  (declare (type fixnum interval))
  "Sets the swap interval for the current context."
  (glfwSwapInterval interval))

(adp:subsubheader "glfwExtensionSupported")

(adp:defun extension-supported (extension)
  (declare (type string extension))
  "Returns whether the specified extension is available."
  (let ((result (glfwExtensionSupported extension)))
    (equal result GLFW_TRUE)))
