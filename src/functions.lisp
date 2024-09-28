
(in-package #glfw)


(affi:defcfun :bool init ()
  "Initializes the GLFW library.")

(affi:defcfun :void terminate ()
  "Terminates the GLFW library.")

(affi:defcfun init-hint :void ((hint :int) (value :int))
  "Sets the specified init hint to the desired value.")

(affi:defcfun init-allocator :void ((allocator (:struct allocator)))
  "Sets the init allocator to the desired value.")

(affi:defcfun init-vulkan-loader :void ((loader (:pointer :void)))
  "Sets the desired Vulkan vkGetInstanceProcAddr function.")

(affi:defcfun get-version :void
    ((major (:pointer :int) :init (affi:foreign-alloc :int) :private t)
     (minor (:pointer :int) :init (affi:foreign-alloc :int) :private t)
     (rev (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Retrieves the version of the GLFW library."
  (values (affi:mem-ref major) (affi:mem-ref minor) (affi:mem-ref rev)))

(affi:defcfun get-version-string :string-ptr ()
  "Returns a string describing the compile-time configuration.")

(affi:defcfun get-error (error-code :int)
  ((description (:pointer :string-ptr) :init (affi:foreign-alloc :string-ptr) :private t))
  "Returns and clears the last error for the calling thread."
  (values error-code (affi:mem-ref description)))

(affi:defcfun set-error-callback errorfun ((callback errorfun))
  "Sets the error callback.")

(affi:defcfun get-platform :int ()
  "Returns the currently selected platform.")

(affi:defcfun platform-supported :bool ((platform :int))
  "Returns whether the library includes support for the specified platform.")

(affi:defcfun get-monitors (:list-ptr monitor (affi:mem-ref count))
  ((count (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Returns the currently connected monitors.")

(affi:defcfun get-primary-monitor monitor ()
  "Returns the primary monitor.")

