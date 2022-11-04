
(in-package :glfw)


;; ----- Helper macros -----

(defmacro defconstants (&body body)
  `(progn
     ,@(mapcar (lambda (x) (cons 'defconstant x)) body)))

(defmacro defctypes (&body body)
  `(progn
     ,@(mapcar (lambda (x) (cons 'cffi:defctype x)) body)))


;; ----- types -----

(defctypes

  ;; Context
  (GLFWglproc :pointer)

  ;; Initialization, version and error   
  (GLFWerrorfun :pointer)

  ;; Input
  (GLFWcursor :pointer)
  (GLFWmousebuttonfun :pointer)
  (GLFWcursorposfun :pointer)
  (GLFWcursorenterfun :pointer)
  (GLFWscrollfun :pointer)
  (GLFWkeyfun :pointer)
  (GLFWcharfun :pointer)
  (GLFWcharmodsfun :pointer)
  (GLFWdropfun :pointer)
  (GLFWjoystickfun :pointer)

  ;; Monitor
  (GLFWmonitor :pointer)
  (GLFWmonitorfun :pointer)

  ;; Window
  (GLFWwindow :pointer)
  (GLFWwindowposfun :pointer)
  (GLFWwindowsizefun :pointer)
  (GLFWwindowclosefun :pointer)
  (GLFWwindowrefreshfun :pointer)
  (GLFWwindowfocusfun :pointer)
  (GLFWwindowiconifyfun :pointer)
  (GLFWwindowmaximizefun :pointer)
  (GLFWframebuffersizefun :pointer)
  (GLFWwindowcontentscalefun :pointer))

;; Vulkan support
(eval-when (:compile-toplevel :load-toplevel :execute)
  (if (= 8 (cffi:foreign-type-size :pointer))
      (progn
        (cffi:defctype non-dispatch-handle :pointer))
      (progn
        (cffi:defctype non-dispatch-handle :uint64))))
(cffi:defctype VkInstance non-dispatch-handle)
(cffi:defctype VkPhysicalDevice non-dispatch-handle)
(cffi:defctype VkSurfaceKHR non-dispatch-handle)
(cffi:defctype VkResult :int)
(cffi:defctype GLFWvkproc :pointer)

(deftype pointer (&optional (subtype '*))
  (declare (ignore subtype))
  '(satisfies cffi:pointerp))

  
;; ----- Structs -----

;; Input
(cffi:defcstruct GLFWgamepadstate
    (buttons :uchar :count 15)
    (axes    :float :count 6))

;; Monitor
(cffi:defcstruct GLFWvidmode
    (width          :int)
    (height         :int)
    (redBits        :int)
    (greenBits      :int)
    (blueBits       :int)
    (refreshRate    :int))

(cffi:defcstruct GLFWgammaramp
    (red    :pointer)
    (green  :pointer)
    (blue   :pointer)
    (size   :int))

;; Window
(cffi:defcstruct GLFWimage
    (width  :int)
    (height :int)
    (pixels :pointer))


;; ----- Functions -----

; Context
(cffi:defcfun "glfwMakeContextCurrent" :void 
  (window GLFWwindow))

(cffi:defcfun "glfwGetCurrentContext" :pointer)

(cffi:defcfun "glfwSwapInterval" :void
  (interval :int))

;; OpenGL
(cffi:defcfun "glfwExtensionSupported" :int
  (extension :pointer))

;; OpenGL
(cffi:defcfun "glfwGetProcAddress" GLFWglproc
  (procname :pointer))

; Intitalization, version and error
(cffi:defcfun "glfwInit" :int)

(cffi:defcfun "glfwTerminate" :void)

(cffi:defcfun "glfwInitHint" :void
  (hint :int) (value :int))

(cffi:defcfun "glfwGetVersion" :void
  (major :pointer) (minor :pointer) (rev :pointer))

(cffi:defcfun "glfwGetVersionString" :pointer)

(cffi:defcfun "glfwGetError" :int
  (description :pointer))

(cffi:defcfun "glfwSetErrorCallback" GLFWerrorfun
  (callback :pointer))

; Input
(cffi:defcfun "glfwGetInputMode" :int
  (window GLFWwindow) (mode :int))

(cffi:defcfun "glfwSetInputMode" :void
  (window GLFWwindow) (mode :int) (value :int))

(cffi:defcfun "glfwRawMouseMotionSupported" :int)

(cffi:defcfun "glfwGetKeyName" :pointer
  (key :int) (scancode :int))

(cffi:defcfun "glfwGetKeyScancode" :int
  (key :int))

(cffi:defcfun "glfwGetKey" :int
  (window GLFWwindow) (key :int))

(cffi:defcfun "glfwGetMouseButton" :int
  (window GLFWwindow) (button :int))

(cffi:defcfun "glfwGetCursorPos" :void
  (window GLFWwindow) (xpos :pointer) (ypos :pointer))

(cffi:defcfun "glfwSetCursorPos" :void
  (window GLFWwindow) (xpos :double) (ypos :double))

(cffi:defcfun "glfwCreateCursor" GLFWcursor
  (img :pointer) (xhot :int) (yhot :int))

(cffi:defcfun "glfwCreateStandardCursor" GLFWcursor
  (shape :int))

(cffi:defcfun "glfwDestroyCursor" :void
  (cursor GLFWcursor))

(cffi:defcfun "glfwSetCursor" :void
  (window GLFWwindow) (cursor GLFWcursor))

(cffi:defcfun "glfwSetKeyCallback" GLFWkeyfun
  (window GLFWwindow) (callback GLFWkeyfun))

(cffi:defcfun "glfwSetCharCallback" GLFWcharfun
  (window GLFWwindow) (callback GLFWcharfun))

(cffi:defcfun "glfwSetCharModsCallback" GLFWcharmodsfun
  (window GLFWwindow) (callback GLFWcharmodsfun))

(cffi:defcfun "glfwSetMouseButtonCallback" GLFWmousebuttonfun
  (window GLFWwindow) (callback GLFWmousebuttonfun))

(cffi:defcfun "glfwSetCursorPosCallback" GLFWcursorposfun
  (window GLFWwindow) (callback GLFWcursorposfun))

(cffi:defcfun "glfwSetCursorEnterCallback" GLFWcursorenterfun
  (window GLFWwindow) (callback GLFWcursorenterfun))

(cffi:defcfun "glfwSetScrollCallback" GLFWscrollfun
  (window GLFWwindow) (callback GLFWscrollfun))

(cffi:defcfun "glfwSetDropCallback" GLFWdropfun
  (window GLFWwindow) (callback GLFWdropfun))

(cffi:defcfun "glfwJoystickPresent" :int
  (jid :int))

(cffi:defcfun "glfwGetJoystickAxes" :pointer
  (jid :int) (count :pointer))

(cffi:defcfun "glfwGetJoystickButtons" :pointer
  (jid :int) (count :pointer))

(cffi:defcfun "glfwGetJoystickHats" :pointer
  (jid :int) (count :pointer))

(cffi:defcfun "glfwGetJoystickName" :pointer
  (jid :int))

(cffi:defcfun "glfwGetJoystickGUID" :pointer
  (jid :int))

(cffi:defcfun "glfwSetJoystickUserPointer" :void
  (jid :int) (pointer :pointer))

(cffi:defcfun "glfwGetJoystickUserPointer" :pointer
  (jid :int))

(cffi:defcfun "glfwJoystickIsGamepad" :int
  (jid :int))

(cffi:defcfun "glfwSetJoystickCallback" :pointer
  (callback :pointer))

(cffi:defcfun "glfwUpdateGamepadMappings" :int
  (string :pointer))

(cffi:defcfun "glfwGetGamepadName" :pointer
  (jid :int))

(cffi:defcfun "glfwGetGamepadState" :int
  (jid :int) (state :pointer))

(cffi:defcfun "glfwSetClipboardString" :void
  (window GLFWwindow) (string :pointer))   ; The window parameter is deprecated

(cffi:defcfun "glfwGetClipboardString" :pointer
  (window GLFWwindow))                    ; The window parameter is deprecated

(cffi:defcfun "glfwGetTime" :double)

(cffi:defcfun "glfwSetTime" :void
  (time :double))

(cffi:defcfun "glfwGetTimerValue" :uint64)

(cffi:defcfun "glfwGetTimerFrequency" :uint64)

; Monitor
(cffi:defcfun "glfwGetMonitors" GLFWmonitor
  (count :pointer))

(cffi:defcfun "glfwGetPrimaryMonitor" GLFWmonitor)

(cffi:defcfun "glfwGetMonitorPos" :void
  (monitor GLFWmonitor) (xpos :pointer) (ypos :pointer))

(cffi:defcfun "glfwGetMonitorWorkarea" :void
  (monitor GLFWmonitor) (xpos :pointer) (ypos :pointer) 
  (width :pointer) (height :pointer))

(cffi:defcfun "glfwGetMonitorPhysicalSize" :void
  (monitor GLFWmonitor) (widthMM :pointer) (heightMM :pointer))

(cffi:defcfun "glfwGetMonitorContentScale" :void
  (monitor GLFWmonitor) (xscale :pointer) (yscale :pointer))

(cffi:defcfun "glfwGetMonitorName" :pointer
  (monitor GLFWmonitor))

(cffi:defcfun "glfwSetMonitorUserPointer" :void
  (monitor GLFWmonitor) (pointer :pointer))

(cffi:defcfun "glfwGetMonitorUserPointer" :pointer
  (monitor GLFWmonitor))

(cffi:defcfun "glfwSetMonitorCallback" GLFWmonitorfun
  (callback GLFWmonitorfun))

(cffi:defcfun "glfwGetVideoModes" :pointer
  (monitor GLFWmonitor) (count :pointer))

(cffi:defcfun "glfwGetVideoMode" :pointer
  (monitor GLFWmonitor))

(cffi:defcfun "glfwSetGamma" :void
  (monitor GLFWmonitor) (gamma :float))

(cffi:defcfun "glfwGetGammaRamp" :pointer
  (monitor GLFWmonitor))

(cffi:defcfun "glfwSetGammaRamp" :void
  (monitor GLFWmonitor) (ramp :pointer)) 

; Vulkan support
(cffi:defcfun "glfwVulkanSupported" :int)

(cffi:defcfun "glfwGetRequiredInstanceExtensions" :pointer
  (count :pointer))

(cffi:defcfun "glfwGetInstanceProcAddress" GLFWvkproc
  (instance VkInstance) (procname :pointer))

(cffi:defcfun "glfwGetPhysicalDevicePresentationSupport" :int
  (instance VkInstance) (device VkPhysicalDevice) (queuefamily :uint32))

(cffi:defcfun "glfwCreateWindowSurface" VkResult
  (instance VkInstance) (window GLFWwindow) (allocator :pointer) (surface VkSurfaceKHR))

; Window
(cffi:defcfun "glfwDefaultWindowHints" :void)

(cffi:defcfun "glfwWindowHint" :void
  (hint :int) (value :int))

(cffi:defcfun "glfwWindowHintString" :void
  (hint :int) (value :pointer))

(cffi:defcfun "glfwCreateWindow" :pointer
  (width :int) (height :int) (title :pointer) (monitor :pointer) (share :pointer))

(cffi:defcfun "glfwDestroyWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwWindowShouldClose" :int
  (window GLFWwindow))

(cffi:defcfun "glfwSetWindowShouldClose" :void
  (window GLFWwindow) (value :int))

(cffi:defcfun "glfwSetWindowTitle" :void
  (window GLFWwindow) (title :pointer))

(cffi:defcfun "glfwSetWindowIcon" :void
  (window GLFWwindow) (count :int) (images :pointer))

(cffi:defcfun "glfwGetWindowPos" :void
  (window GLFWwindow) (xpos :pointer) (ypos :pointer))

(cffi:defcfun "glfwSetWindowPos" :void
  (window GLFWwindow) (xpos :int) (ypos :int))

(cffi:defcfun "glfwGetWindowSize" :void
  (window GLFWwindow) (width :pointer) (height :pointer))

(cffi:defcfun "glfwSetWindowSizeLimits" :void
  (window GLFWwindow) (minwidth :int) (minheight :int) (maxwidth :int) (maxheight :int))

(cffi:defcfun "glfwSetWindowAspectRatio" :void
  (window GLFWwindow) (numer :int) (denom :int))

(cffi:defcfun "glfwSetWindowSize" :void
  (window GLFWwindow) (width :int) (height :int))

(cffi:defcfun "glfwGetFramebufferSize" :void
  (window GLFWwindow) (width :pointer) (height :pointer))

(cffi:defcfun "glfwGetWindowFrameSize" :void
  (window GLFWwindow) (left :pointer) (top :pointer) (right :pointer) (bottom :pointer))

(cffi:defcfun "glfwGetWindowContentScale" :void
  (window GLFWwindow) (xscale :float) (yscale :float))

(cffi:defcfun "glfwGetWindowOpacity" :float
  (window GLFWwindow))

(cffi:defcfun "glfwSetWindowOpacity" :void
  (window GLFWwindow) (opacity :float))

(cffi:defcfun "glfwIconifyWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwRestoreWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwMaximizeWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwShowWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwHideWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwFocusWindow" :void
  (window GLFWwindow))

(cffi:defcfun "glfwRequestWindowAttention" :void
  (window GLFWwindow))

(cffi:defcfun "glfwGetWindowMonitor" :pointer
  (window GLFWwindow))

(cffi:defcfun "glfwSetWindowMonitor" :void
  (window GLFWwindow) (monitor :pointer)
  (xpos :int) (ypos :int) (width :int) (height :int) (refreshRate :int))

(cffi:defcfun "glfwGetWindowAttrib" :int
  (window GLFWwindow) (attrib :int))

(cffi:defcfun "glfwSetWindowAttrib" :void
  (window GLFWwindow) (attrib :int) (value :int))

(cffi:defcfun "glfwSetWindowUserPointer" :void
  (window GLFWwindow) (pointer :pointer))

(cffi:defcfun "glfwGetWindowUserPointer" :pointer
  (window GLFWwindow))

(cffi:defcfun "glfwSetWindowPosCallback" GLFWwindowposfun
  (window GLFWwindow) (callback GLFWwindowposfun))

(cffi:defcfun "glfwSetWindowSizeCallback" GLFWwindowsizefun
  (window GLFWwindow) (callback GLFWwindowsizefun))

(cffi:defcfun "glfwSetWindowCloseCallback" GLFWwindowclosefun
  (window GLFWwindow) (callback GLFWwindowclosefun))

(cffi:defcfun "glfwSetWindowRefreshCallback" GLFWwindowrefreshfun
  (window GLFWwindow) (callback GLFWwindowrefreshfun))

(cffi:defcfun "glfwSetWindowFocusCallback" GLFWwindowfocusfun
  (window GLFWwindow) (callback GLFWwindowfocusfun))

(cffi:defcfun "glfwSetWindowIconifyCallback" GLFWwindowiconifyfun
  (window GLFWwindow) (callback GLFWwindowiconifyfun))

(cffi:defcfun "glfwSetWindowMaximizeCallback" GLFWwindowmaximizefun
  (window GLFWwindow) (callback GLFWwindowmaximizefun))

(cffi:defcfun "glfwSetFramebufferSizeCallback" GLFWframebuffersizefun
  (window GLFWwindow) (callback GLFWframebuffersizefun)) 

(cffi:defcfun "glfwSetWindowContentScaleCallback" GLFWwindowcontentscalefun
  (window GLFWwindow) (callback GLFWwindowcontentscalefun))

(cffi:defcfun "glfwPollEvents" :void)

(cffi:defcfun "glfwWaitEvents" :void)

(cffi:defcfun "glfwWaitEventsTimeout" :void
  (timeout :double))

(cffi:defcfun "glfwPostEmptyEvent" :void)

(cffi:defcfun "glfwSwapBuffers" :void
  (window GLFWwindow))
