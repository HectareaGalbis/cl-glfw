
(in-package #:glfw)


(affi:defcfun (init "glfwInit") :bool  ()
  "Initializes the GLFW library.")

(affi:defcfun (terminate "glfwTerminate") :void ()
  "Terminates the GLFW library.")

(affi:defcfun (init-hint "glfwInitHint") :void ((hint :int) (value :int))
  "Sets the specified init hint to the desired value.")

(affi:defcfun (init-allocator "glfwInitAllocator") :void ((allocator (:pointer (:struct allocator))))
  "Sets the init allocator to the desired value.")

(affi:defcfun (init-vulkan-loader "glfwInitVulkanLoader") :void ((loader (:pointer :void)))
  "Sets the desired Vulkan vkGetInstanceProcAddr function.")

(affi:define-c-function (get-version "glfwGetVersion") (_ :void)
    ((major (:pointer :int) :init (affi:foreign-alloc :int) :private t)
     (minor (:pointer :int) :init (affi:foreign-alloc :int) :private t)
     (rev (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Retrieves the version of the GLFW library."
  (values (affi:mem-ref major) (affi:mem-ref minor) (affi:mem-ref rev)))

(affi:defcfun (get-version-string "glfwGetVersionString") :string-ptr ()
  "Returns a string describing the compile-time configuration.")

(affi:define-c-function (get-error "glfwGetError") (error-code :int)
  ((description (:pointer :string-ptr) :init (affi:foreign-alloc :string-ptr) :private t))
  "Returns and clears the last error for the calling thread."
  (values error-code (affi:mem-ref description)))

(affi:defcfun set-error-callback errorfun ((callback errorfun))
  "Sets the error callback.")

(affi:defcfun get-platform :int ()
  "Returns the currently selected platform.")

(affi:defcfun platform-supported :bool ((platform :int))
  "Returns whether the library includes support for the specified platform.")

(affi:defcfun get-monitors (:list-ptr (:pointer monitor) (affi:mem-ref count))
  ((count (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Returns the currently connected monitors.")

(affi:defcfun get-primary-monitor (:pointer monitor) ()
  "Returns the primary monitor.")

(affi:defcfun get-monitor-pos :void
  ((monitor (:pointer monitor))
   (xpos (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (ypos (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Returns the position of the monitor's viewport on the virtual screen."
  (values (affi:mem-ref xpos) (affi:mem-ref ypos)))

(affi:defcfun get-monitor-work-area :void
  ((monitor (:pointer monitor))
   (xpos (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (ypos (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (width (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (height (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Retrieves the work area of the monitor."
  (values (affi:mem-ref xpos) (affi:mem-ref ypos) (affi:mem-ref width) (affi:mem-ref height)))

(affi:defcfun get-monitor-physical-size :void
  ((monitor (:pointer monitor))
   (width-mm (:pointer :int) :init (affi:foreign-alloc :int) :private t)
   (height-mm (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Returns the physical size of the monitor."
  (values (affi:mem-ref width-mm) (afffi:mem-ref height-mm)))

(affi:defcfun get-monitor-content-scale :void
  ((monitor (:pointer monitor))
   (xscale (:pointer :float) :init (affi:foreign-alloc :float) :private t)
   (yscale (:pointer :float) :init (affi:foreign-alloc :float) :private t))
  "Retrieves the content scale for the specified monitor."
  (values (affi:mem-ref xscale) (affi:mem-ref yscale)))

(affi:defcfun get-monitor-name :string-ptr ((monitor (:pointer monitor)))
  "Returns the name of the specified monitor.")

(affi:defcfun set-monitor-user-data :void ((monitor (:pointer monitor)) (pointer :user-data))
  "Sets the user pointer of the specified monitor.")

(affi:defcfun get-monitor-user-data :user-data ((monitor (:pointer monitor)))
  "Returns the user pointer of the specified monitor.")

(affi:defcfun set-monitor-callback monitorfun ((callback monitorfun))
  "Sets the monitor configuration callback.")

(affi:defcfun get-video-modes (:list-ptr vidmode count)
  ((monitor (:pointer monitor))
   (count (:pointer :int) :init (affi:foreign-alloc :int) :private t))
  "Returns the available video modes for the specified monitor.")

(affi:defcfun get-video-mode (:pointer vidmode) ((monitor (:pointer monitor)))
  "Returns the current mode of the specified monitor.")

(affi:defcfun set-gamma :void ((monitor (:pointer monitor)) (gamma :float))
  "Generates a gamma ramp and sets it for the specified monitor.")

(affi:defcfun get-gamma-ramp (:pointer gammaramp) ((monitor (:pointer monitor)))
  "Returns the current gamma ramp for the specified monitor.")

(affi:defcfun set-gamma-ramp :void ((monitor (:pointer monitor)) (ramp (:pointer gammaramp)))
  "Sets the current gamma ramp for the specified monitor.")

(affi:defcfun default-window-hints :void ()
  "Resets all window hints to their default values.")

(affi:defcfun window-hint :void ((hint :int) (value :int)) ;; value of type hint?
  "Sets the specified window hint to the desired value.")

(affi:defcfun window-hint-string :void ((hint :int) (value :string-ptr))
  "Sets the specified window hint to the desired value.")

(affi:defcfun create-window (:pointer window)
  ((width :int) (height :int) (title :string-ptr) (monitor (:pointer monitor)) (share (:pointer window)))
  "Creates a window and its associated context.")

(affi:defcfun destroy-window :void ((window (:pointer window)))
  "Destroys the specified window and its context.")

(affi:defcfun window-should-close :bool ((window (:pointer window)))
  "Checks the close flag of the specified window.")

(affi:defcfun set-window-should-close :void ((window (:pointer window)) (value :bool))
  "Sets the close flag of the specified window.")

(affi:defcfun get-window-title :string-ptr ((window (:pointer window)))
  "Returns the title of the specified window.")

(affi:defcfun set-window-title :void ((window (:pointer window)) (title :string-ptr))
  "Sets the title of the specified window.")

(affi:defcfun set-window-icon :void
  ((window (:pointer window)) (count :int :private t) (images (:list-ptr (:pointer image) count)))
  "Sets the icon for the specified window.")
