
(in-package :glfw)


(affi:defctype glproc ()
  "Client API function pointer type."
  '(:function :void ()))


(affi:defcfun (make-current-context "glfwMakeContextCurrent") :void (window (:pointer window))
  "Makes the context of the specified window current for the calling thread.")

(affi:defcfun (get-current-context "glfwGetCurrentContext") (:pointer window) ()
  "Returns the window whose context is current on the calling thread.")

(affi:defcfun (swap-interval "glfwSwapInterval") :void (interval :int)
  "Sets the swap interval for the current context.")

(affi:defcfun (extension-supported "glfwExtensionSupported") :bool (extension :string-ptr)
  "Returns whether the specified extension is available.")

(affi:defcfun (get-proc-address "glfwGetProcAddress") (:pointer glproc) (procname :string-ptr)
  "Returns the address of the specified function for the current context.")
