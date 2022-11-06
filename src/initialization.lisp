
(in-package :glfw)

(adp:write-in-file #P"docs/api/initialization")

(adp:header "Initialization, version and error reference" initialization-header)

(adp:subheader "Description")

(adp:text "This is the reference documentation for initialization and termination of the library, version management and error handling. For more task-oriented information, see the " @h(introduction-header) ".")

(adp:mini-table-of-contents)


(adp:subheader "Constants" initialization-constants-subheader)

(defconstants

  ;; Initialization, version and error
  (GLFW_VERSION_MAJOR         3          "The major version number of the GLFW header.")
  (GLFW_VERSION_MINOR         3          "The minor version number of the GLFW header.")
  (GLFW_VERSION_REVISION      6          "The revision number of the GLFW header.")
  (GLFW_TRUE                  1          "One.")
  (GLFW_FALSE                 0          "Zero.")
  (GLFW_JOYSTICK_HAT_BUTTONS  #x00050001 "Joystick hat buttons init hint.")
  (GLFW_COCOA_CHDIR_RESOURCES #x00051001 "macOS specific init hint.")
  (GLFW_COCOA_MENUBAR         #x00051002 "macOS specific init hint.")

  ;; Error codes
  (GLFW_NO_ERROR              0          "No error has occurred.")
  (GLFW_NOT_INITIALIZED       #x00010001 "GLFW has not been initialized.")
  (GLFW_NO_CURRENT_CONTEXT    #x00010002 "No context is current for this thread.")
  (GLFW_INVALID_ENUM          #x00010003 "One of the arguments to the function was an invalid enum value.")
  (GLFW_INVALID_VALUE         #x00010004 "One of the arguments to the function was an invalid value.")
  (GLFW_OUT_OF_MEMORY         #x00010005 "A memory allocation failed.")
  (GLFW_API_UNAVAILABLE       #x00010006 "GLFW could not find support for the requested API on the system.")
  (GLFW_VERSION_UNAVAILABLE   #x00010007 "The requested OpenGL or OpenGL ES version is not available.")
  (GLFW_PLATFORM_ERROR        #x00010008 "A platform_specific error occurred that does not match any of the more specific categories.")
  (GLFW_FORMAT_UNAVAILABLE    #x00010009 "The requested format is not supported or available.")
  (GLFW_NO_WINDOW_CONTEXT     #x0001000A "The specified window does not have an OpenGL or OpenGL ES context."))


(adp:subheader "Types")

(adp:deftype errorfun ()
  "The function pointer type for error callbacks."
  '(or symbol pointer))


(adp:subheader "Functions")

(adp:subsubheader "glfwInit")

(adp:defun init ()
  "Initializes the GLFW library."
  (let ((result (glfwInit)))
    (equal result GLFW_TRUE)))

(adp:subsubheader "glfwTerminate")

(adp:defun terminate ()
  "Terminates the GLFW library."
  (glfwTerminate))

(adp:subsubheader "glfwInitHint")

(adp:defun init-hint (hint value)
  "Sets the specified init hint to the desired value."
  (declare (type fixnum hint) (type boolean value))
  (let ((real-value (if value GLFW_TRUE GLFW_FALSE)))
    (glfwInitHint hint real-value)))

(adp:subsubheader "glfwGetVersion")

(adp:defun get-version ()
  "Retrieves the version of the GLFW library. Returns three values."
  (cffi:with-foreign-objects ((major-ptr :int) (minor-ptr :int) (rev-ptr :int))
    (glfwGetVersion major-ptr minor-ptr rev-ptr)
    (values (cffi:mem-ref major-ptr :int) (cffi:mem-ref minor-ptr :int) (cffi:mem-ref rev-ptr :int))))

(adp:subsubheader "glfwGetVersionString")

(adp:defun get-version-string ()
  "Returns a string describing the compile-time configuration."
  (let ((result (glfwGetVersionString)))
    (cffi:foreign-string-to-lisp result)))

(adp:subsubheader "glfwGetError")

(adp:defun get-error ()
  "Returns the error code and desccription of the last error for the calling thread and clears it."
  (cffi:with-foreign-object (description :pointer)
    (let ((error-code (glfwGetError description)))
      (values error-code (cffi:foreign-string-to-lisp (cffi:mem-ref description :pointer))))))

(adp:subsubheader "glfwSetErrorCallback")

(mcffi:define-callback-definer define-error-callback
  "Defines an error callback."
  (error-code :type :int)
  (description :type :pointer :create (cffi:foreign-string-to-lisp description)))

(adp:defun set-error-callback (callback)
  "Sets the error callback."
  (declare (type (or null pointer) callback))
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetErrorCallback callback-c)))
