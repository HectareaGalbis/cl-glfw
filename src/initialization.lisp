
(in-package :glfw)



(defconstants

    ;; Initialization, version and error
    (+version-major+         3          "The major version number of the GLFW header.")
    (+version-minor+         3          "The minor version number of the GLFW header.")
  (+version-revision+      6          "The revision number of the GLFW header.")
  (+joystick-hat-buttons+  #x00050001 "Joystick hat buttons init hint.")
  (+cocoa-chdir-resources+ #x00051001 "macOS specific init hint.")
  (+cocoa-menubar+         #x00051002 "macOS specific init hint.")

  ;; Error codes
  (+no-error+              0          "No error has occurred.")
  (+not-initialized+       #x00010001 "GLFW has not been initialized.")
  (+no-current-context+    #x00010002 "No context is current for this thread.")
  (+invalid-enum+          #x00010003 "One of the arguments to the function was an invalid enum value.")
  (+invalid-value+         #x00010004 "One of the arguments to the function was an invalid value.")
  (+out-of-memory+         #x00010005 "A memory allocation failed.")
  (+api-unavailable+       #x00010006 "GLFW could not find support for the requested API on the system.")
  (+version-unavailable+   #x00010007 "The requested OpenGL or OpenGL ES version is not available.")
  (+platform-error+        #x00010008 "A platform_specific error occurred that does not match any of the more specific categories.")
  (+format-unavailable+    #x00010009 "The requested format is not supported or available.")
  (+no-window-context+     #x0001000A "The specified window does not have an OpenGL or OpenGL ES context."))


(affi:defctype allocatefun ()
  "The function pointer type for memory allocation callbacks."
  '(:pointer (:function (:pointer :void) ((size :size) (user (:pointer :void))))))

(affi:defctype reallocatefun ()
  "The function pointer type for memory reallocation callbacks."
  '(:pointer (:function (:pointer :void) ((block (:pointer :void)) (size :size) (user (:pointer :void))))))

(affi:defctype deallocatefun ()
  "The function pointer type for memory deallocation callbacks."
  '(:pointer (:function :void ((error-code :int) (description :string-ptr)))))

(affi:defctype errorfun ()
  "The function pointer type for error callbacks."
  '(:pointer (:function :void ((error-code :int) (description :string-ptr)))))


(affi:defcstruct allocator
    (allocate allocatefun)
  (reallocate reallocatefun)
  (deallocate deallocatefun)
  (user (:pointer :void)))


(affi:defcfun (init "glfwInit") :bool ()
  "Initializes the GLFW library.")

(affi:defcfun (terminate "glfwTerminate") :void ()
  "Terminates the GLFW library.")

(affi:defcfun (init-hint "glfwInitHint") :void ((hint :int) (value :int))
  "Sets the specified init hint to the desired value.")

(affi:defcfun (init-allocator "glfwInitAllocator") :void ((allocator (:pointer (:struct allocator))))
  "Sets the init allocator to the desired value.")

;; init-vulkan-loader

(affi:defcfun (get-version "glfwGetVersion") :void
  ((major (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (minor (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (rev (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Retrieves the version of the GLFW library."
  (values (affi:mem-ref major)
          (affi:mem-ref minor)
          (affi:mem-ref rev)))

(affi:defcfun (get-version-string "glfwGetVersionString") :string-ptr ()
  "Returns a string describing the compile-time configuration.")

(affi:defcfun (get-error "glfwGetError") (error-code :int)
  ((description (:pointer :string-ptr)) :init (affi:foreign-alloc :string-ptr) :private t)
  "Returns and clears the last error for the calling thread."
  (values error-code (affi:mem-ref description)))

(affi:defcfun (set-error-callback "glfwSetErrorCallback") errorfun ((callback errorfun))
  "Sets the error callback.")

(affi:defcfun (get-platform "glfwGetPlatform") :int ()
  "Returns the currently selected platform.")

(affi:defcfun (platform-supported "glfwPlatformSupported") :bool ((platform :int))
  "Returns whether the library includes support for the specified platform.")
