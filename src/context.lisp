
(in-package :glfw)

(adp:write-in-file #P"docs/context-reference")

(adp:header "Context reference")

(adp:text "This is the reference documentation for OpenGL and OpenGL ES context related functions.")

(adp:mini-table-of-contents)


(adp:subheader "Constants")

(defconstants
    
    (GLFW_VERSION_MAJOR         3          "The major version number of the GLFW header.")
    (GLFW_VERSION_MINOR         3          "The minor version number of the GLFW header.")
    (GLFW_VERSION_REVISION      6          "The revision number of the GLFW header.")
    (GLFW_TRUE                  1          "One.")
    (GLFW_FALSE                 0          "Zero.")
    (GLFW_JOYSTICK_HAT_BUTTONS  #x00050001 "Joystick hat buttons init hint.")
    (GLFW_COCOA_CHDIR_RESOURCES #x00051001 "macOS specific init hint.")
    (GLFW_COCOA_MENUBAR         #x00051002 "macOS specific init hint."))


(adp:subheader "Functions")

(adp:defun make-context-current (window)
  (declare (type pointer window))
  "Makes the context of the specified window current for the calling thread."
  (let ((window-c (or window (cffi:null-pointer))))
    (glfwMakeContextCurrent window-c)))

(adp:defun get-current-context ()
  "Returns the window whose context is current on the calling thread. "
  (let ((result (glfwGetCurrentContext)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(adp:defun swap-interval (interval)
  (declare (type fixnum interval))
  "Sets the swap interval for the current context."
  (glfwSwapInterval interval))

(adp:defun extension-supported (extension)
  (declare (type string extension))
  "Returns whether the specified extension is available."
  (let ((result (glfwExtensionSupported extension)))
    (equal result GLFW_TRUE)))
