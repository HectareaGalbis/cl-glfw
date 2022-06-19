
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
  (red (cffi:foreign-alloc :ushort :initial-contents red) (cffi:foreign-free red))
  (green (cffi:foreign-alloc :ushort :initial-contents green) (cffi:foreign-free green))
  (blue (cffi:foreign-alloc :ushort :initial-contents blue) (cffi:foreign-free blue))
  size)


(mcffi:def-foreign-constructor-destructor image (:struct GLFWimage)
  width
  height
  (pixels (cffi:foreign-alloc :uchar :initial-contents pixels) (cffi:foreign-free pixels)))


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

(defun set-error-callback (callback)
  (let ((callback-c (if callback (get-callback callback) (cffi:null-pointer))))
    (glfwSetErrorCallback callback-c)))


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

(defun set-key-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetKeyCallback  window callback-c)))

(defun set-char-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetCharCallback  window callback-c)))

(defun set-char-mods-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetCharModsCallback  window callback-c)))

(defun set-mouse-button-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetMouseButtonCallback  window callback-c)))

(defun set-cursor-pos-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetCursorPosCallback  window callback-c)))

(defun set-cursor-enter-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetCursorEnterCallback  window callback-c)))

(defun set-scroll-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwScrollCallback  window callback-c)))

(defun set-drop-callback (window callback)
  (let ((callback-c (if callback (cffi:get-callback callback) (cffi:null-pointer))))
    (glfwSetDropCallback  window callback-c)))

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

;; Por aqui me he quedado

(defvar *joysticks-data* (make-hash-table))

(defun set-joystick-user-data (jid data)
    (setf (gethash jid *joysticks-data*) data))

(defun get-joystick-user-data (jid)
    (gethash jid *joysticks-data*))

(defun set-joystick-callback (callback)
    (raw-glfw:set-joystick-callback (get-callback callback)))

(defun get-gamepad-state (jid)
    (with-foreign-object (cstate '(:struct raw-glfw:gamepadstate))
        (let ((success (raw-glfw:get-gamepad-state jid cstate)))
            (values success (mem-ref cstate '(:struct raw-glfw:gamepadstate))))))

; Monitor
(defun get-monitors ()
    (with-foreign-object (ccount :int)
        (let ((arr-monitors (raw-glfw:get-monitors ccount)))
            (carray->array arr-monitors :pointer (mem-ref ccount :int)))))

(defun get-monitor-pos (monitor)
    (with-foreign-objects ((xpos :int) (ypos :int))
        (raw-glfw:get-monitor-pos monitor xpos ypos)
        (values (mem-ref xpos :int) (mem-ref ypos :int))))

(defun get-monitor-workarea (monitor)
    (with-foreign-objects ((xpos :int) (ypos :int) (width :int) (height :int))
        (raw-glfw:get-monitor-workarea monitor xpos ypos width height)
        (values (mem-ref xpos :int) (mem-ref ypos :int) (mem-ref width :int) (mem-ref height :int))))

(defun get-monitor-physical-size (monitor)
    (with-foreign-objects ((widthMM :int) (heightMM :int))
        (raw-glfw:get-monitor-physical-size monitor widthMM heightMM)
        (values (mem-ref widthMM :int) (mem-ref heightMM :int))))

(defun get-monitor-content-scale (monitor)
    (with-foreign-objects ((xscale :int) (yscale :int))
        (raw-glfw:get-monitor-content-scale monitor xscale yscale)
        (values (mem-ref xscale :int) (mem-ref yscale :int))))

(defvar *monitors-data* (make-hash-table))

(defun set-monitor-user-data (monitor data)
    (setf (gethash (pointer-address monitor) *monitors-data*) data))

(defun get-monitor-user-data (monitor)
    (gethash (pointer-address monitor) *monitors-data*))

(defun set-monitor-callback (callback)
    (raw-glfw:set-monitor-callback (get-callback callback)))

(defun get-video-modes (monitor)
    (with-foreign-object (ccount :int)
        (let ((arr-vidmodes (raw-glfw:get-video-modes monitor ccount)))
            (array->list arr-vidmodes '(:struct raw-glfw:vidmode) (mem-ref ccount :int)))))

(defun get-video-mode (monitor)
    (let ((cmode (raw-glfw:get-video-mode monitor)))
        (if (not (null-pointer-p cmode))
            (mem-ref cmode '(:struct raw-glfw:vidmode))
            nil)))

(defun get-gamma-ramp (monitor)
    (mem-ref (raw-glfw:get-gamma-ramp monitor) '(:struct raw-glfw:gammaramp)))
 

(defun set-gamma-ramp (monitor ramp)
    (with-foreign-object (cramp '(:struct raw-glfw:gammaramp))
        (setf (mem-ref cramp '(:struct raw-glfw:gammaramp)) ramp)
        (raw-glfw:set-gamma-ramp monitor cramp)
        (free-converted-object cramp '(:struct raw-glfw:gammaramp) t)))
   

; Vulkan support
(defun get-required-instance-extensions ()
  (with-foreign-object (csize :uint32)
    (let* ((cextensions (raw-glfw:get-required-instance-extensions csize))
           (size (mem-ref csize :int)))
      (if (not (null-pointer-p cextensions)) 
          (loop for i from 0 below size
	        collect (mem-aref cextensions :string i))
          nil))))

; Window
(defun set-window-icon (window images)
    (with-foreign-object (cimages '(:struct raw-glfw:image) (length images))
        (array->carray images '(:struct raw-glfw:image) cimages)
        (raw-glfw:set-window-icon window (length images) cimages)
        (dotimes (i (length images))
            (free-converted-object (mem-aptr cimages '(:struct raw-glfw:image) i) '(:struct raw-glfw:image) t))))

(defun get-window-pos (window)
    (with-foreign-objects ((xpos :int) (ypos :int))
        (raw-glfw:get-window-pos window xpos ypos)
        (values (mem-ref xpos :int) (mem-ref ypos :int))))

(defun get-window-size (window)
    (with-foreign-objects ((width :int) (height :int))
        (raw-glfw:get-window-size window width height)
        (values (mem-ref width :int) (mem-ref height :int))))

(defun get-framebuffer-size (window)
    (with-foreign-objects ((width :int) (height :int))
        (raw-glfw:get-framebuffer-size window width height)
        (values (mem-ref width :int) (mem-ref height :int))))

(defun get-window-frame-size (window)
    (with-foreign-objects ((left :int) (top :int) (right :int) (bottom :int))
        (raw-glfw:get-window-frame-size window left top right bottom)
        (values (mem-ref left :int) (mem-ref top :int) (mem-ref right :int) (mem-ref bottom :int))))

(defun get-window-content-scale (window)
    (with-foreign-objects ((xscale :float) (yscale :float))
        (raw-glfw:get-window-content-scale window xscale yscale)
        (values (mem-ref xscale :float) (mem-ref yscale :float))))

(defvar *windows-data* (make-hash-table))

(defun set-window-user-data (window data)
    (setf (gethash (pointer-address window) *windows-data*) data))

(defun get-window-user-data (window)
    (gethash (pointer-address window) *monitors-data*))

(defun set-window-pos-callback (window callback)
    (raw-glfw:set-window-pos-callback window (get-callback callback)))

(defun set-window-size-callback (window callback)
    (raw-glfw:set-window-size-callback window (get-callback callback)))

(defun set-window-close-callback (window callback)
    (raw-glfw:set-window-close-callback window (get-callback callback)))

(defun set-window-refresh-callback (window callback)
    (raw-glfw:set-window-refresh-callback window (get-callback callback)))

(defun set-window-focus-callback (window callback)
    (raw-glfw:set-window-focus-callback window (get-callback callback)))

(defun set-window-iconify-callback (window callback)
    (raw-glfw:set-window-iconify-callback window (get-callback callback)))

(defun set-window-maximize-callback (window callback)
    (raw-glfw:set-window-maximize-callback window (get-callback callback)))

(defun set-framebuffer-size-callback (window callback)
    (raw-glfw:set-framebuffer-size-callback window (get-callback callback)))

(defun set-window-content-scale-callback (window callback)
    (raw-glfw:set-window-content-scale-callback window (get-callback callback)))

;; Macros

; Intitalization, version and error
(defmacro def-error-callback (name (error-code description) &body body)
    `(defcallback ,name raw-glfw:pointer-or-nil ((,error-code :int) (,description :string))
        (declare (ignorable ,error-code ,description))
        ,@body))

; Input
(defmacro def-key-callback (name (window key scancode action mods) &body body)
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,key :int) (,scancode :int) (,action :int) (,mods :int))
        (declare (ignorable ,window ,key ,scancode ,action ,mods))
        ,@body))

(defmacro def-char-callback (name (window codepoint) &body body)
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,codepoint :uint))
        (declare (ignorable ,window ,codepoint))
        ,@body))

(defmacro def-char-mods-callback (name (window codepoint mods) &body body)  ; DEPRECATED (removed in 4.0)
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,codepoint :uint) (,mods :int))
        (declare (ignorable ,window ,codepoint ,mods))
        ,@body))

(defmacro def-mouse-button-callback (name (window button action mods) &body body)  
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,button :int) (,action :int) (,mods :int))
        (declare (ignorable ,window ,button ,action ,mods))
        ,@body))

(defmacro def-cursor-pos-callback (name (window xpos ypos) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,xpos :double) (,ypos :double))
        (declare (ignorable ,window ,xpos ,ypos))
        ,@body))

(defmacro def-cursor-enter-callback (name (window entered) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,entered :boolean))
        (declare (ignorable ,window ,entered))
        ,@body))

(defmacro def-scroll-callback (name (window xoffset yoffset) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,xoffset :double) (,yoffset :double))
        (declare (ignorable ,window ,xoffset ,yoffset))
        ,@body))

(defmacro def-drop-callback (name (window paths) &body body) 
    (let ((path-count (gensym)) (arr-paths (gensym)))
        `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,path-count :int) (,arr-paths :pointer))
            (declare (ignorable ,window))
            (let ((,paths (carray->array ,arr-paths :string ,path-count))) 
                (declare (ignorable ,paths))
                ,@body))))

(defmacro def-joystick-callback (name (window jid event) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,jid :int) (,event :int))
        (declare (ignorable ,window ,jid ,event))
        ,@body))

; Monitor
(defmacro def-monitor-callback (name (monitor event) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,monitor :pointer) (,event :int))
        (declare (ignorable ,monitor ,event))
        ,@body))

; Window
(defmacro def-window-pos-callback (name (window xpos ypos) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,xpos :int) (,ypos :int))
        (declare (ignorable ,window ,xpos ,ypos))
        ,@body))

(defmacro def-window-size-callback (name (window width height) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,width :int) (,height :int))
        (declare (ignorable ,window ,width ,height))
        ,@body))

(defmacro def-window-close-callback (name (window) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer))
        (declare (ignorable ,window))
        ,@body))
        
(defmacro def-window-refresh-callback (name (window) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer))
        (declare (ignorable ,window))
        ,@body))

(defmacro def-window-focus-callback (name (window focused) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,focused :boolean))
        (declare (ignorable ,window ,focused))
        ,@body))

(defmacro def-window-iconify-callback (name (window iconified) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,iconified :boolean))
        (declare (ignorable ,window ,iconified))
        ,@body))

(defmacro def-window-maximize-callback (name (window maximized) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,maximized :boolean))
        (declare (ignorable ,window ,maximized))
        ,@body))

(defmacro def-framebuffer-size-callback (name (window width height) &rest body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,width :int) (,height :int))
        (declare (ignorable ,window ,width ,height))
        ,@body))

(defmacro def-window-content-scale-callback (name (window xscale yscale) &body body) 
    `(defcallback ,name raw-glfw:pointer-or-nil ((,window :pointer) (,xscale :int) (,yscale :int))
        (declare (ignorable ,window ,xscale ,yscale))
        ,@body))
