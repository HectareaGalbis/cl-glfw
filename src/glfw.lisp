
(in-package :glfw)



;; Structs

(mcffi:def-foreign-accessors gamepadstate (:struct GLFWgamepadstate)
  (buttons :getter ((&optional (index nil))
		    (if index
			(cffi:mem-aref buttons :uchar index)
			(loop for i from 0 below 15
			      collect (cffi:mem-aref buttons :uchar i))))
	   :setter nil)
  (axes    :getter ((&optional (index nil))
		    (if index
			(cffi:mem-aref axes :float index)
			(loop for i from 0 below 6
			      collect (cffi:mem-aref axes :float i))))
	   :setter nil))


(mcffi:def-foreign-accessors vidmode (:struct GLFWvidmode)
  (width :setter nil)
  (height :setter nil)
  (redBits :setter nil)
  (greenBits :setter nil)
  (blueBits :setter nil)
  (refreshRate :setter nil))


(mcffi:def-foreign-accessors gammaramp (:struct GLFWgammaramp)
  (red   :getter ((&optional (index nil))
		  (if index
		      (cffi:mem-aref red :ushort index)
		      (loop for i from 0 below size
			    collect (cffi:mem-aref red :ushort i))))
         :setter ((new-value &optional (index nil))
		  (if index
		      (setf (cffi:mem-aref red :ushort index) new-value)
		      (loop for i from 0 below size
			    for v in new-value
			    do (setf (cffi:mem-aref red :ushort i) v)))))
  (green :getter ((&optional (index nil))
		  (if index
		      (cffi:mem-aref green :ushort index)
		      (loop for i from 0 below size
			    collect (cffi:mem-aref green :ushort i))))
         :setter ((new-value &optional (index nil))
		  (if index
		      (setf (cffi:mem-aref green :ushort index) new-value)
		      (loop for i from 0 below size
			    for v in new-value
			    do (setf (cffi:mem-aref green :ushort i) v)))))
  (blue  :getter ((&optional (index nil))
		  (if index
		      (cffi:mem-aref blue :ushort index)
		      (loop for i from 0 below size
			    collect (cffi:mem-aref blue :ushort i))))
         :setter ((new-value &optional (index nil))
		  (if index
		      (setf (cffi:mem-aref blue :ushort index) new-value)
		      (loop for i from 0 below size
			    for v in new-value
			    do (setf (cffi:mem-aref blue :ushort i) v)))))
  size)


(mcffi:def-foreign-accessors image (:struct GLFWimage)
  width
  height
  (pixels :getter ((&optional (width-index nil) (height-index nil))
		   (if (and width-index height-index)
		       (cffi:mem-aref pixels :uchar (+ (* width height-index) width))
		       (loop for i from 0 below (* width height)
			     collect (cffi:mem-aref pixels :uchar i))))
	  :setter ((new-value &optional (width-index nil) (height-index nil))
		   (if (and width-index height-index)
		       (setf (cffi:mem-aref pixels :uchar (+ (* width height-index) width)) new-value)
		       (loop for i from 0 below (* width height)
			     for v in new-value
			     do (setf (cffi:mem-aref pixels :uchar i) v))))))

;; ----

(mcffi:def-foreign-constructor-destructor gammaramp (:struct GLFWgammaramp)
  ((red nil) (cffi:foreign-alloc :ushort :initial-contents red) (cffi:foreign-free red))
  ((green nil) (cffi:foreign-alloc :ushort :initial-contents green) (cffi:foreign-free green))
  ((blue nil) (cffi:foreign-alloc :ushort :initial-contents blue) (cffi:foreign-free blue))
  ((size 0)))


(mcffi:def-foreign-constructor-destructor image (:struct GLFWimage)
  ((width 0))
  ((height 0))
  ((pixels nil) (cffi:foreign-alloc :uchar :initial-contents pixels) (cffi:foreign-free pixels)))


;; Functions

;; Context
(defun make-context-current (window)
  (let ((window-c (or window (cffi:null-pointer))))
    (glfwMakeContextCurrent window-c)))

(defun get-current-context ()
  (let ((result (glfwGetCurrentContext)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(defun swap-interval (interval)
  (glfwSwapInterval interval))

(defun extension-supported (extension)
  (let ((result (glfwExtensionSupported extension)))
    (equal result GLFW_TRUE)))


;; Intitalization, version and error
(defun init ()
  (let ((result (glfwInit)))
    (equal result GLFW_TRUE)))

(defun terminate ()
  (glfwTerminate))

(defun init-hint (hint value)
  (glfwInitHint hint value))

(defun get-version ()
  (cffi:with-foreign-objects ((major-ptr :int) (minor-ptr :int) (rev-ptr :int))
    (glfwGetVersion major-ptr minor-ptr rev-ptr)
    (values (cffi:mem-ref major :int) (cffi:mem-ref minor :int) (cffi:mem-ref rev :int))))

(defun get-version-string ()
  (let ((result (glfwGetVersionString)))
    (cffi:foreign-string-to-lisp result)))

(defun get-error ()
  (with-foreign-object (description :pointer)
    (let ((error-code (glfwGetError description)))
      (values error-code (cffi:foreign-string-to-lisp (cffi:mem-ref description :pointer))))))

(let ((current-callback))
  (defun set-error-callback (callback)
    (let ((callback-c (if callback (get-callback callback) (cffi:null-pointer))))
      (glfwSetErrorCallback callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))


;; Input
(defun get-input-mode (window mode)
  (glfwGetInputMode window mode))

(defun set-input-mode (window mode value)
  (glfwSetInputMode window mode value))

(defun raw-mouse-motion-supported ()
  (let ((result (glfwRawMouseMotionSupported)))
    (equal result GLFW_TRUE)))

(defun get-key-name (key scancode)
  (let ((result (glfwGetKeyName key scancode)))
    (cffi:foreign-string-to-lisp result)))

(defun get-key-scancode (key)
  (glfwGetKeyScancode key))

(defun get-key (window key)
  (glfwGetKey window key))

(defun get-mouse-button (window button)
  (glfwGetMouseButton window button))

(defun get-cursor-pos (window)
  (cffi:with-foreign-objects ((xpos-ptr :double) (ypos-ptr :double))
    (glfwGetCursorPos window xpos-ptr ypos-ptr)
    (values (cffi:mem-ref xpos-ptr :double) (cffi:mem-ref ypos-ptr :double))))

(defun set-cursor-pos (window xpos ypos)
  (glfwSetCursorPos window xpos ypos))

(defun create-cursor (image xhot yhot)
  (glfwCreateCursor img xhot yhot))

(defun create-standard-cursor (shape)
  (glfwCreateStandardCursor shape))

(defun destroy-cursor (cursor)
  (glfwDestroyCursor cursor))

(defun set-cursor (window cursor)
  (glfwSetCursor window cursor))

(let ((current-callback))
  (defun set-key-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetKeyCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-char-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetCharCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-char-mods-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetCharModsCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-mouse-button-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetMouseButtonCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-cursor-pos-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetCursorPosCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-cursor-enter-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetCursorEnterCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-scroll-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwScrollCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-drop-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetDropCallback  window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(defun joystick-present (jid)
  (let ((result (glfwJoystickPresent jid)))
    (equal result GLFW_TRUE)))

(defun get-joystick-axes (jid)
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((axes-ptr (glfwGetJoystickAxes jid count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
          (loop for i from 0 below count
		collect (cffi:mem-aref axes-ptr :float i))
          nil))))
        
(defun get-joystick-buttons (jid)
  (cffi:with-foreign-object (counter-ptr :int)
    (let* ((buttons-ptr (glfwGetJoystickButtons jid csize))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
          (loop for i from 0 below count
		collect (cffi:mem-aref buttons-ptr :uchar i))
          nil))))

(defun get-joystick-hats (jid)
  (cffi:with-foreign-object (counter-ptr :int)
    (let* ((hats-ptr (glfwGetJoystickHats jid csize))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
          (loop for i from 0 below count
		collect (cffi:mem-aref hats-ptr :uchar i))
          nil))))

(defun get-joystick-name (jid)
  (let ((result (cffi:glfwGetJoystickName jid)))
    (if (cffi:null-pointer-p result)
	nil
	(cffi:foreign-string-to-lisp result))))

(defun get-joystick-guid (jid)
  (let ((result (glfwGetJoystickGUID jid)))
    (if (cffi:null-pointer-p result)
	nil
	(cffi:foreign-string-to-lisp result))))

(defvar *joysticks-data* (make-hash-table))

(defun set-joystick-user-pointer (jid data)
  (setf (gethash jid *joysticks-data*) data))

(defun get-joystick-user-pointer (jid)
  (gethash jid *joysticks-data*))

(defun joystick-is-gamepad (jid)
  (let ((result (glfwJoystickIsGamepad jid)))
    (equal result GLFW_TRUE)))

(let ((current-callback))
  (defun set-joystick-callback (callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetJoystickCallback  callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(defun update-gamepad-mappings (string)
  (cffi:with-foreign-string (string-c string)
    (let ((result (glfwUpdateGamepadMappings string-c)))
      (equal result GLFW_TRUE))))

(defun get-gamepad-name (jid)
  (let ((result (glfwGetGamepadName jid)))
    (if (cffi:null-pointer-p result)
	nil
	(cffi:foreign-string-to-lisp result))))

(defun get-gamepad-state (jid state)
  (let ((result (glfwGetGamepadState jid state)))
    (equal result GLFW_TRUE)))

(defun set-clipboard-string (window string)
  (let ((window-c (or window (cffi:null-pointer))))
    (cffi:with-foreign-string (string-c string)
      (glfwSetClipboardString window-c string-c))))

(defun get-clipboard-string (window)
  (let* ((window-c (or window (cffi:null-pointer)))
	 (result (glfwGetClipboardString window-c)))
    (cffi:foreign-string-to-lisp result)))

(defun get-time ()
  (glfwGetTime))

(defun set-time (time)
  (glfwSetTime time))

(defun get-timer-value ()
  (glfwGetTimerValue))

(defun get-timer-frequency ()
  (glfwGetTimerFrequency))


; Monitor
(defun get-monitors ()
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((result (glfwGetMonitors count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
	  (loop for i from 0 below count
		collect (cffi:mem-aref result :pointer i))
	  nil))))

(defun get-primary-monitor ()
  (let ((result (glfwGetPrimaryMonitor)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(defun get-monitor-pos (monitor)
  (with-foreign-objects ((xpos-ptr :int) (ypos-ptr :int))
    (glfwGetMonitorPos monitor xpos-ptr ypos-ptr)
    (values (cffi:mem-ref xpos-ptr :int) (cffi:mem-ref ypos-ptr :int))))

(defun get-monitor-workarea (monitor)
  (with-foreign-objects ((xpos-ptr :int) (ypos-ptr :int) (width-ptr :int) (height-ptr :int))
    (glfwGetMonitorWorkarea monitor xpos-ptr ypos-ptr width-ptr height-ptr)
    (values (cffi:mem-ref xpos-ptr :int) (cffi:mem-ref ypos-ptr :int)
	    (cffi:mem-ref width-ptr :int) (cffi:mem-ref height-ptr :int))))

(defun get-monitor-physical-size (monitor)
  (with-foreign-objects ((widthMM-ptr :int) (heightMM-ptr :int))
    (glfwGetMonitorPhysicalSize monitor widthMM-ptr heightMM-ptr)
    (values (cffi:mem-ref widthMM-ptr :int) (cffi:mem-ref heightMM-ptr :int))))

(defun get-monitor-content-scale (monitor)
  (with-foreign-objects ((xscale-ptr :int) (yscale-ptr :int))
    (glfwGetMonitorContentScale monitor xscale-ptr yscale-ptr)
    (values (cffi:mem-ref xscale-ptr :int) (cffi:mem-ref yscale-ptr :int))))

(defun get-monitor-name (monitor)
  (let ((result (glfwGetMonitorName monitor)))
    (cffi:foreign-string-to-lisp result)))

(defvar *monitors-data* (make-hash-table))

(defun set-monitor-user-pointer (monitor data)
  (setf (gethash (pointer-address monitor) *monitors-data*) data))

(defun get-monitor-user-data (monitor)
  (gethash (pointer-address monitor) *monitors-data*))

(let ((current-callback))
  (defun set-monitor-callback (callback)
    (let ((callback-c (or callback (cffi:null-pointer))))
      (cffi:glfwSetMonitorCallback callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(defun get-video-modes (monitor)
  (with-foreign-object (count-ptr :int)
    (let* ((result (glfwGetVideoModes monitor count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
	  (loop for i from 0 below count
	        collect (cffi:mem-aptr result '(:struct GLFWvidmode) i))
	  nil))))

(defun get-video-mode (monitor)
  (let ((result (glfwGetVideoMode monitor)))
    (if (null-pointer-p cmode)
	nil
        result)))

(defun set-gamma (monitor gamma)
  (glfwSetGamma monitor gamma))

(defun get-gamma-ramp (monitor)
  (let ((result (glfwGetGammaRamp monitor)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(defun set-gamma-ramp (monitor ramp)
  (gflwSetGammaRamp monitor ramp))


;; Vulkan support
(defun vulkan-supported ()
  (let ((result (glfwVulkanSupported)))
    (equal result GLFW_TRUE)))

(defun get-required-instance-extensions ()
  (cffi:with-foreign-object (count-ptr :uint32)
    (let* ((result (glfwGetRequiredInstanceExtensions count-ptr))
           (count (cffi:mem-ref count-ptr :uint32)))
      (if (> count 0) 
          (loop for i from 0 below count
	        collect (cffi:foreign-string-to lisp (cffi:mem-aref result :pointer i)))
          nil))))

(defun get-physical-device-presentation-support (instance device queueFamily)
  (let ((result (glfwGetPhysicalDevicePresentationSupport instance device queueFamily)))
    (equal result GLFW_TRUE)))

(defun create-window-surface (instance window allocator surface)
  (glfwCreateWindowSurface instance window allocator surface))


;; Window
(defun delfault-window-hints ()
  (glfwDefaultWindowHints))

(defun window-hint (hint value)
  (glfwWindowHint hint value))

(defun window-hint-string (hint value)
  (cffi:with-foreign-string (value-c value)
    (glfwWindowHintString hint value-c)))

(defun create-window (width height title monitor share)
  (cffi:with-foreign-string (title-c title)
    (let* ((monitor-c (or monitor (cffi:null-pointer)))
	   (share-c (or share (cffi:null-pointer)))
	   (result (glfwCreateWindow width height title-c monitor-c share-c)))
      (if (cffi:null-pointer-p result)
	  nil
	  result))))

(defun destroy-window (window)
  (glfwDestroyWindow window))

(defun window-should-close (window)
  (let ((result (glfwWindowShouldClose window)))
    (equal result GLFW_TRUE)))

(defun set-window-should-close (window value)
  (let ((value-c (if value GLFW_TRUE GLFW_FALSE)))
    (glfwSetWindowShouldClose window value-c)))

(defun set-window-title (window title)
  (cffi:with-foreign-string (title-c title)
    (glfwSetWindowTitle window title-c)))

(defun set-window-icon (window images)
  (let ((images-c (cffi:foreign-alloc '(:struct GLFWimage) :initial-contents
					(mapcar (lambda (x) (cffi:mem-ref x '(:struct GLFWimage))) images))))
    (glfwSetWindowIcon window (length images) images-c)
    (cffi:foreign-free images-c)))

(defun get-window-pos (window)
  (cffi:with-foreign-objects ((xpos-ptr :int) (ypos-ptr :int))
    (glfwGetWindowPos window xpos-ptr ypos-ptr)
    (values (cffi:mem-ref xpos-ptr :int) (cffi:mem-ref ypos :int))))

(defun set-window-pos (window xpos ypos)
  (glfwSetWindowPos window xpos ypos))

(defun get-window-size (window)
  (cffi:with-foreign-objects ((width-ptr :int) (height-ptr :int))
    (glfwGetWindowSize window width-ptr height-ptr)
    (values (cffi:mem-ref width-ptr :int) (cffi:mem-ref height-ptr :int))))

(defun set-window-size-limits (window minwidth minheight maxwidth maxheight)
  (glfwSetWindowSizeLimits window minwidth minheight maxwidth maxheight))

(defun set-window-aspect-ratio (window numer denom)
  (glfwSetWindowAspectRatio window numer denom))

(defun set-window-size (window width height)
  (glfwSetWindowSize window width height))

(defun get-framebuffer-size (window)
  (cffi:with-foreign-objects ((width-ptr :int) (height-ptr :int))
    (glfwGetFramebufferSize window width-ptr height-ptr)
    (values (cffi:mem-ref width-ptr :int) (cffi:mem-ref height-ptr :int))))

(defun get-window-frame-size (window)
  (cffi:with-foreign-objects ((left-ptr :int) (top-ptr :int) (right-ptr :int) (bottom-ptr :int))
    (glfwGetWindowFrameSize window left-ptr top-ptr right-ptr bottom-ptr)
    (values (cffi:mem-ref left-ptr :int) (cffi:mem-ref top-ptr :int)
	    (cffi:mem-ref right-ptr :int) (cffi:mem-ref bottom-ptr :int))))

(defun get-window-content-scale (window)
  (cffi:with-foreign-objects ((xscale-ptr :float) (yscale-ptr :float))
    (glfwGetWindowContentScale window xscale-ptr yscale-ptr)
    (values (cffi:mem-ref xscale-ptr :float) (cffi:mem-ref yscale-ptr :float))))

(defun get-window-opacity (window)
  (glfwGetWindowOpacity window))

(defun set-window-opacity (window opacity)
  (glfwSetWindowOpacity window opacity))

(defun iconify-window (window)
  (glfwIconifyWindow window))

(defun restore-window (window)
  (glfwRestoreWindow window))

(defun maximize-window (window)
  (glfwMaximizeWindow window))

(defun show-window (window)
  (glfwShowWindow window))

(defun hide-window (window)
  (glfwHideWindow window))

(defun focus-window (window)
  (glfwFocusWindow window))

(defun request-window-attention (window)
  (glfwRequestWindowAttention window))

(defun get-window-monitor (window)
  (let ((result (glfwGetWindowMonitor window)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(defun set-window-monitor (window monitor xpos ypos width height refreshRate)
  (let ((monitor-c (or monitor (cffi:null-pointer))))
    (glfwSetWindowMonitor window monitor-c xpos ypos width height refreshRate)))

(defun get-window-attrib (window attrib)
  (glfwGetWindowAttrib window attrib))

(defun set-window-attrib (window attrib value)
  (glfwSetWindowAttrib window attrib value))

(defvar *windows-data* (make-hash-table))

(defun set-window-user-data (window data)
  (setf (gethash (pointer-address window) *windows-data*) data))

(defun get-window-user-data (window)
  (gethash (pointer-address window) *monitors-data*))

(let ((current-callback))
  (defun set-window-pos-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowPosCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-size-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowSizeCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-close-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowCloseCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-refresh-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowRefreshCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-focus-callback (window callback)
    (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowFocusCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-iconify-callback (window callback)
    (let* ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowIconifyCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-maximize-callback (window callback)
    (let* ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowMaximizeCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-framebuffer-size-callback (window callback)
    (let* ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetFramebufferSizeCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(let ((current-callback))
  (defun set-window-content-scale-callback (window callback)
    (let* ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
      (glfwSetWindowContentScaleCallback window callback-c))
    (let ((old-callback current-callback))
      (setf current-callback callback)
      old-callback)))

(defun poll-events ()
  (glfwPollEvents))

(defun wait-events ()
  (glfwWaitEvents))

(defun wait-events-timeout (timeout)
  (glfwWaitEventsTimeout timeout))

(defun post-empty-event ()
  (glfwPostEmptyEvent))

(defun swap-buffers (window)
  (glfwSwapBuffers window))


;; Macros

; Intitalization, version and error
(defmacro def-error-callback (name (error-code description) &body body)
  `(defcallback ,name :void ((,error-code :int) (,description :string))
     ,@body))

; Input
(defmacro def-key-callback (name (window key scancode action mods) &body body)
  `(defcallback ,name :void ((,window :pointer) (,key :int) (,scancode :int)
					       (,action :int) (,mods :int))
     ,@body))

(defmacro def-char-callback (name (window codepoint) &body body)
  `(defcallback ,name :void ((,window :pointer) (,codepoint :uint))   
     ,@body))

(defmacro def-char-mods-callback (name (window codepoint mods) &body body)  ; DEPRECATED (removed in 4.0)
  `(defcallback ,name :void ((,window :pointer) (,codepoint :uint) (,mods :int))
     ,@body))

(defmacro def-mouse-button-callback (name (window button action mods) &body body)  
  `(defcallback ,name :void ((,window :pointer) (,button :int) (,action :int) (,mods :int))
     ,@body))

(defmacro def-cursor-pos-callback (name (window xpos ypos) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,xpos :double) (,ypos :double))
     ,@body))

(defmacro def-cursor-enter-callback (name (window entered) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,entered :boolean))
     ,@body))

(defmacro def-scroll-callback (name (window xoffset yoffset) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,xoffset :double) (,yoffset :double))
     ,@body))

(defmacro def-drop-callback (name (window paths) &body body) 
  (let ((path-count (gensym)) (arr-paths (gensym)))
    `(defcallback ,name :pointer ((,window :pointer) (,path-count :int) (,arr-paths :pointer))
       (let ((,paths (loop for i from 0 below ,path-count
			   collect (cffi:foreign-string-to-list (cffi:mem-aref ,arr-path :pointer i))))) 
         ,@body))))

(defmacro def-joystick-callback (name (window jid event) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,jid :int) (,event :int))
     ,@body))

; Monitor
(defmacro def-monitor-callback (name (monitor event) &body body) 
  `(defcallback ,name :void ((,monitor :pointer) (,event :int))
     ,@body))

; Window
(defmacro def-window-pos-callback (name (window xpos ypos) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,xpos :int) (,ypos :int))
     ,@body))

(defmacro def-window-size-callback (name (window width height) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,width :int) (,height :int))
     ,@body))

(defmacro def-window-close-callback (name (window) &body body) 
  `(defcallback ,name :void ((,window :pointer))
     ,@body))
        
(defmacro def-window-refresh-callback (name (window) &body body) 
  `(defcallback ,name :void ((,window :pointer))
     ,@body))

(defmacro def-window-focus-callback (name (window focused) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,focused :boolean))
     ,@body))

(defmacro def-window-iconify-callback (name (window iconified) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,iconified :boolean))
     ,@body))

(defmacro def-window-maximize-callback (name (window maximized) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,maximized :boolean))
     ,@body))

(defmacro def-framebuffer-size-callback (name (window width height) &rest body) 
  `(defcallback ,name :void ((,window :pointer) (,width :int) (,height :int))
     ,@body))

(defmacro def-window-content-scale-callback (name (window xscale yscale) &body body) 
  `(defcallback ,name :void ((,window :pointer) (,xscale :int) (,yscale :int))
     ,@body))
