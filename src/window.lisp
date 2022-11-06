
(in-package :glfw)

(adp:write-in-file #P"docs/api/window")

(adp:header "Window reference" window-reference-header)

(adp:subheader "Description")

(adp:text "This is the reference documentation for window related functions and types, including creation, deletion and event polling.")

(adp:mini-table-of-contents)


(adp:subheader "Constants")

(defconstants

  ;; Window
  (GLFW_FOCUSED                  #x00020001 "Input focus window hint and attribute.")
  (GLFW_ICONIFIED                #x00020002 "Window iconification window attribute.")
  (GLFW_RESIZABLE                #x00020003 "Window resize_ability window hint and attribute.")
  (GLFW_VISIBLE                  #x00020004 "Window visibility window hint and attribute.")
  (GLFW_DECORATED                #x00020005 "Window decoration window hint and attribute.")
  (GLFW_AUTO_ICONIFY             #x00020006 "Window auto_iconification window hint and attribute.")
  (GLFW_FLOATING                 #x00020007 "Window decoration window hint and attribute.")
  (GLFW_MAXIMIZED                #x00020008 "Window maximization window hint and attribute.")
  (GLFW_CENTER_CURSOR            #x00020009 "Cursor centering window hint.")
  (GLFW_TRANSPARENT_FRAMEBUFFER  #x0002000A "Window framebuffer transparency hint and attribute.")
  (GLFW_HOVERED                  #x0002000B "Mouse cursor hover window attribute.")
  (GLFW_FOCUS_ON_SHOW            #x0002000C "Input focus on calling show window hint and attribute.")
  (GLFW_RED_BITS                 #x00021001 "Framebuffer bit depth hint.")
  (GLFW_GREEN_BITS               #x00021002 "Framebuffer bit depth hint.")
  (GLFW_BLUE_BITS                #x00021003 "Framebuffer bit depth hint.")
  (GLFW_ALPHA_BITS               #x00021004 "Framebuffer bit depth hint.")
  (GLFW_DEPTH_BITS               #x00021005 "Framebuffer bit depth hint.")
  (GLFW_STENCIL_BITS             #x00021006 "Framebuffer bit depth hint.")
  (GLFW_ACCUM_RED_BITS           #x00021007 "Framebuffer bit depth hint.")
  (GLFW_ACCUM_GREEN_BITS         #x00021008 "Framebuffer bit depth hint.")
  (GLFW_ACCUM_BLUE_BITS          #x00021009 "Framebuffer bit depth hint.")
  (GLFW_ACCUM_ALPHA_BITS         #x0002100A "Framebuffer bit depth hint.")
  (GLFW_AUX_BUFFERS              #x0002100B "Framebuffer auxiliary buffer hint.")
  (GLFW_STEREO                   #x0002100C "OpenGL stereoscopic rendering hint.")
  (GLFW_SAMPLES                  #x0002100D "Framebuffer MSAA samples hint.")
  (GLFW_SRGB_CAPABLE             #x0002100E "Framebuffer sRGB hint.")
  (GLFW_REFRESH_RATE             #x0002100F "Monitor refresh rate hint.")
  (GLFW_DOUBLEBUFFER             #x00021010 "Framebuffer double buffering hint.")
  (GLFW_CLIENT_API               #x00022001 "Context client API hint and attribute.")
  (GLFW_CONTEXT_VERSION_MAJOR    #x00022002 "Context client API major version hint and attribute.")
  (GLFW_CONTEXT_VERSION_MINOR    #x00022003 "Context client API minor version hint and attribute.")
  (GLFW_CONTEXT_REVISION         #x00022004 "Context client API revision number attribute.")
  (GLFW_CONTEXT_ROBUSTNESS       #x00022005 "Context robustness hint and attribute.")
  (GLFW_OPENGL_FORWARD_COMPAT    #x00022006 "OpenGL forward_compatibility hint and attribute.")
  (GLFW_OPENGL_DEBUG_CONTEXT     #x00022007 "Debug mode context hint and attribute.")
  (GLFW_OPENGL_PROFILE           #x00022008 "OpenGL profile hint and attribute.")
  (GLFW_CONTEXT_RELEASE_BEHAVIOR #x00022009 "Context flush_on_release hint and attribute.")
  (GLFW_CONTEXT_NO_ERROR         #x0002200A "Context error suppression hint and attribute.")
  (GLFW_CONTEXT_CREATION_API     #x0002200B "Context creation API hint and attribute.")
  (GLFW_SCALE_TO_MONITOR         #x0002200C "Window content area scaling window window hint.")
  (GLFW_COCOA_RETINA_FRAMEBUFFER #x00023001 "macOS specific window hint.")
  (GLFW_COCOA_FRAME_NAME         #x00023002 "macOS specific window hint.")
  (GLFW_COCOA_GRAPHICS_SWITCHING #x00023003 "macOS specific window hint.")
  (GLFW_X11_CLASS_NAME           #x00024001 "X11 specific window hint.")
  (GLFW_X11_INSTANCE_NAME        #x00024002 "X11 specific window hint."))


(adp:subheader "Types")

(adp:deftype window ()
  'pointer)

(adp:deftype windowposfun ()
  '(or symbol pointer))

(adp:deftype windowsizefun ()
  '(or symbol pointer))

(adp:deftype windowclosefun ()
  '(or symbol pointer))

(adp:deftype windowrefreshfun ()
  '(or symbol pointer))

(adp:deftype windowfocusfun ()
  '(or symbol pointer))

(adp:deftype windowiconifyfun ()
  '(or symbol pointer))

(adp:deftype windowmaximizefun ()
  '(or symbol pointer))

(adp:deftype framebuffersizefun ()
  '(or symbol pointer))

(adp:deftype windowcontentscalefun ()
  '(or symbol pointer))

(adp:subsubheader "GFLWimage")

(adp:deftype image ()
  'pointer)

(mcffi:define-foreign-struct (:struct GLFWimage) image
    (:default-constructors :default-readers :default-writers)
  width
  height
  (pixels :initform nil
	  :constructor ((pixels-arg)
			(setf pixels (if pixels-arg
					 (cffi:foreign-alloc :uchar :count (* width height))
					 (cffi:null-pointer)))
			(when pixels-arg
			  (loop for i from 0 below height
				do (loop for j from 0 below width
					 for index = (+ (* width i) j)
					 do (setf (cffi:mem-aref pixels :uchar index) (aref pixels-arg i j))))))
	  :destructor  (when (not (cffi:null-pointer-p pixels))
			 (cffi:foreign-free pixels))
	  :reader      ((&optional (height-index nil) (width-index nil))
			(if (and width-index height-index)
			    (cffi:mem-aref pixels :uchar (+ (* width height-index) width-index))
			    (let ((pixels-array (make-array (list height width))))
			      (loop for i from 0 below height
				    do (loop for j from 0 below width
					     do (setf (aref pixels-array i j) (cffi:mem-aref pixels :uchar (+ (* width i) j)))))
			      (values pixels-array))))
	  :writer      ((new-value &optional (height-index nil) (width-index nil))
			(if (and width-index height-index)
			    (setf (cffi:mem-aref pixels :uchar (+ (* width height-index) width-index)) new-value)
			    (progn
			      (when (not (cffi:null-pointer-p pixels))
				(cffi:foreign-free pixels))
			      (setf pixels (if new-value
					       (cffi:foreign-alloc :uchar :count (* width height))
					       (cffi:null-pointer)))
			      (when new-value
				(loop for i from 0 below height
				      do (loop for j from 0 below width
					       for index = (+ (* width i) j)
					       do (setf (cffi:mem-aref pixels :uchar index) (aref new-value i j))))))))))

(adp:itemize (:item (adp:bold "Warning") ": If you want to modify the PIXELS member, you must change WIDTH and HEIGHT first."))


(adp:subheader "Functions")

(adp:defun delfault-window-hints ()
  "Resets all window hints to their default values."
  (glfwDefaultWindowHints))

(adp:defun window-hint (hint value)
  (declare (type fixnum hint value))
  "Sets the specified window hint to the desired value."
  (glfwWindowHint hint value))

(adp:defun window-hint-string (hint value)
  (declare (type fixnum hint) (type string value))
  "Sets the specified window hint to the desired value."
  (cffi:with-foreign-string (value-c value)
    (glfwWindowHintString hint value-c)))

(adp:defun create-window (width height title monitor share)
  (declare (type fixnum width height) (type string title) (type (or null monitor) monitor) (type (or null window) share))
  "Creates a window (or returns NIL) and its associated context."
  (cffi:with-foreign-string (title-c title)
    (let* ((monitor-c (or monitor (cffi:null-pointer)))
	   (share-c (or share (cffi:null-pointer)))
	   (result (glfwCreateWindow width height title-c monitor-c share-c)))
      (if (cffi:null-pointer-p result)
	  nil
	  result))))

(adp:defun destroy-window (window)
  (declare (type window window))
  "Destroys the specified window and its context."
  (glfwDestroyWindow window))

(adp:defun window-should-close (window)
  (declare (type window window))
  "Checks the close flag (t or NIL) of the specified window."
  (let ((result (glfwWindowShouldClose window)))
    (equal result GLFW_TRUE)))

(adp:defun set-window-should-close (window value)
  (declare (type window window) (type boolean value))
  "Sets the close flag (t or NIL) of the specified window."
  (let ((value-c (if value GLFW_TRUE GLFW_FALSE)))
    (glfwSetWindowShouldClose window value-c)))

(adp:defun set-window-title (window title)
  (declare (type window window) (type string title))
  "Sets the title of the specified window."
  (cffi:with-foreign-string (title-c title)
    (glfwSetWindowTitle window title-c)))

(adp:defun set-window-icon (window images)
  (declare (type window window) (type (or null (vector image)) images))
  "Sets the icon for the specified window. IMAGES must be a vector or NIL."
  (if images
      (cffi:with-foreign-object (images-c '(:struct GLFWimage) (length images))
	(loop for i from 0 below (length images)
	      do (memcpy (cffi:mem-aptr images-c '(:struct GLFWimage) i) (aref images i) (cffi:foreign-type-size '(:struct GLFWimage))))
	(glfwSetWindowIcon window (length images) images-c))
      (glfwSetWindowIcon window 0 (cffi:null-pointer))))

(adp:defun get-window-pos (window)
  (declare (type window window))
  "Returns the x-position and y-position of the content area of the specified window."
  (cffi:with-foreign-objects ((xpos-ptr :int) (ypos-ptr :int))
    (glfwGetWindowPos window xpos-ptr ypos-ptr)
    (values (cffi:mem-ref xpos-ptr :int) (cffi:mem-ref ypos-ptr :int))))

(adp:defun set-window-pos (window xpos ypos)
  (declare (type window window) (type fixnum xpos ypos))
  "Sets the position of the content area of the specified window."
  (glfwSetWindowPos window xpos ypos))

(adp:defun get-window-size (window)
  (declare (type window window))
  "Returns the width and height of the content area of the specified window."
  (cffi:with-foreign-objects ((width-ptr :int) (height-ptr :int))
    (glfwGetWindowSize window width-ptr height-ptr)
    (values (cffi:mem-ref width-ptr :int) (cffi:mem-ref height-ptr :int))))

(adp:defun set-window-size-limits (window minwidth minheight maxwidth maxheight)
  (declare (type window window) (type fixnum minwidth minheight maxwidth maxheight))
  "Sets the size limits of the specified window."
  (glfwSetWindowSizeLimits window minwidth minheight maxwidth maxheight))

(adp:defun set-window-aspect-ratio (window numer denom)
  (declare (type window window) (type fixnum numer denom))
  "Sets the aspect ratio of the specified window."
  (glfwSetWindowAspectRatio window numer denom))

(adp:defun set-window-size (window width height)
  (declare (type window window) (type fixnum width height))
  "Sets the size of the content area of the specified window."
  (glfwSetWindowSize window width height))

(adp:defun get-framebuffer-size (window)
  (declare (type window window))
  "Returns the width and height of the framebuffer of the specified window."
  (cffi:with-foreign-objects ((width-ptr :int) (height-ptr :int))
    (glfwGetFramebufferSize window width-ptr height-ptr)
    (values (cffi:mem-ref width-ptr :int) (cffi:mem-ref height-ptr :int))))

(adp:defun get-window-frame-size (window)
  (declare (type window window))
  "Returns the left, top, right and bottom edges of the frame of the window."
  (cffi:with-foreign-objects ((left-ptr :int) (top-ptr :int) (right-ptr :int) (bottom-ptr :int))
    (glfwGetWindowFrameSize window left-ptr top-ptr right-ptr bottom-ptr)
    (values (cffi:mem-ref left-ptr :int) (cffi:mem-ref top-ptr :int)
	    (cffi:mem-ref right-ptr :int) (cffi:mem-ref bottom-ptr :int))))

(adp:defun get-window-content-scale (window)
  (declare (type window window))
  "Returns the xscale and yscale of the specified window."
  (cffi:with-foreign-objects ((xscale-ptr :float) (yscale-ptr :float))
    (glfwGetWindowContentScale window xscale-ptr yscale-ptr)
    (values (cffi:mem-ref xscale-ptr :float) (cffi:mem-ref yscale-ptr :float))))

(adp:defun get-window-opacity (window)
  (declare (type window window))
  "Returns the opacity of the whole window."
  (glfwGetWindowOpacity window))

(adp:defun set-window-opacity (window opacity)
  (declare (type window window) (type float opacity))
  "Sets the opacity of the whole window."
  (glfwSetWindowOpacity window opacity))

(adp:defun iconify-window (window)
  (declare (type window window))
  "Iconifies the specified window."
  (glfwIconifyWindow window))

(adp:defun restore-window (window)
  (declare (type window window))
  "Restores the specified window."
  (glfwRestoreWindow window))

(adp:defun maximize-window (window)
  (declare (type window window))
  "Maximizes the specified window."
  (glfwMaximizeWindow window))

(adp:defun show-window (window)
  (declare (type window window))
  "Makes the specified window visible."
  (glfwShowWindow window))

(adp:defun hide-window (window)
  (declare (type window window))
  "Hides the specified window."
  (glfwHideWindow window))

(adp:defun focus-window (window)
  (declare (type window window))
  "Brings the specified window to front and sets input focus."
  (glfwFocusWindow window))

(adp:defun request-window-attention (window)
  (declare (type window window))
  "Requests user attention to the specified window."
  (glfwRequestWindowAttention window))

(adp:defun get-window-monitor (window)
  (declare (type window window))
  "Returns the monitor (or NIL) that the window uses for full screen mode."
  (let ((result (glfwGetWindowMonitor window)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(adp:defun set-window-monitor (window monitor xpos ypos width height refreshRate)
  (declare (type window window) (type (or null monitor) monitor) (type fixnum xpos ypos width height refreshRate))
  "Sets the mode, monitor, video mode and placement of a window."
  (let ((monitor-c (or monitor (cffi:null-pointer))))
    (glfwSetWindowMonitor window monitor-c xpos ypos width height refreshRate)))


(defvar *bool-attributes* (list GLFW_FOCUSED GLFW_ICONIFIED GLFW_MAXIMIZED GLFW_HOVERED GLFW_VISIBLE
				GLFW_RESIZABLE GLFW_DECORATED GLFW_AUTO_ICONIFY GLFW_FLOATING
				GLFW_TRANSPARENT_FRAMEBUFFER GLFW_FOCUS_ON_SHOW GLFW_OPENGL_FORWARD_COMPAT
				GLFW_OPENGL_DEBUG_CONTEXT GLFW_CONTEXT_NO_ERROR))

(adp:defun get-window-attrib (window attrib)
  (declare (type window window) (type fixnum attrib))
  "Returns an attribute of the specified window. Boolean attributes will be T or NIL."
  (let ((result (glfwGetWindowAttrib window attrib)))
    (if (member attrib *bool-attributes*)
	(equal result GLFW_TRUE)
	result)))

(adp:defun set-window-attrib (window attrib value)
  (declare (type window window) (type (or boolean fixnum) attrib value))
  "Sets an attribute of the specified window. Boolean attributes must be T or NIL."
  (let ((value-c (if (member attrib *bool-attributes*)
		     (if value GLFW_TRUE GLFW_FALSE)
		     value)))
    (glfwSetWindowAttrib window attrib value-c)))

(adp:defvar *windows-data* (make-hash-table))

(adp:defun set-window-user-pointer (window data)
  (declare (type window window) (type t data))
  "Sets the user pointer of the specified window."
  (setf (gethash (cffi:pointer-address window) *windows-data*) data))

(adp:defun get-window-user-pointer (window)
  (declare (type window window))
  "Returns the user pointer of the specified window."
  (gethash (cffi:pointer-address window) *windows-data*))

(mcffi:define-callback-definer define-window-pos-callback
  "Defines a position callback."
  (window :type :pointer)
  (xpos   :type :int)
  (ypos   :type :int))

(adp:defun set-window-pos-callback (window callback)
  (declare (type window window) (type windowposfun callback))
  "Sets the position callback for the specified window."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetWindowPosCallback window callback-c)))

(mcffi:define-callback-definer define-window-size-callback
  "Defines a size callback."
  (window :type :pointer)
  (width  :type :int)
  (height :type :int))

(adp:defun set-window-size-callback (window callback)
  (declare (type window window) (type windowsizefun callback))
  "Sets the size callback for the specified window."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetWindowSizeCallback window callback-c)))

(mcffi:define-callback-definer define-window-close-callback
  "Defines a close callback."
  (window :type :pointer))

(adp:defun set-window-close-callback (window callback)
  (declare (type window window) (type windowclosefun callback))
  "Sets the close callback for the specified window."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetWindowCloseCallback window callback-c)))

(mcffi:define-callback-definer define-window-refresh-callback
  "Defines a refresh callback."
  (window :type :pointer))

(adp:defun set-window-refresh-callback (window callback)
  (declare (type window window) (type windowrefreshfun callback))
  "Sets the refresh callback for the specified window."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetWindowRefreshCallback window callback-c)))

(mcffi:define-callback-definer define-window-focus-callback
  "Defines a focus callback."
  (window  :type :pointer)
  (focused :type :int
	   :create (equal focused GLFW_TRUE)))

(adp:defun set-window-focus-callback (window callback)
  (declare (type window window) (type windowfocusfun callback))
  "Sets the focus callback for the specified window."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetWindowFocusCallback window callback-c)))

(mcffi:define-callback-definer define-window-iconify-callback
  "Defines an iconify callback."
  (window    :type :pointer)
  (iconified :type :int
	     :create (equal iconified GLFW_TRUE)))

(adp:defun set-window-iconify-callback (window callback)
  (declare (type window window) (type windowiconifyfun callback))
  "Sets the iconify callback for the specified window."
  (let* ((callback-c (etypecase callback
		       (symbol (cffi:get-callback callback))
		       (null   (cffi:null-pointer))
		       (t      callback))))
    (glfwSetWindowIconifyCallback window callback-c)))

(mcffi:define-callback-definer define-window-maximize-callback
  "Defines a maximize callback."
  (window    :type :pointer)
  (maximized :type :int
	     :create (equal maximized GLFW_TRUE)))

(adp:defun set-window-maximize-callback (window callback)
  (declare (type window window) (type windowmaximizefun callback))
  "Sets the maximize callback for the specified window."
  (let* ((callback-c (etypecase callback
		       (symbol (cffi:get-callback callback))
		       (null   (cffi:null-pointer))
		       (t      callback))))
    (glfwSetWindowMaximizeCallback window callback-c)))

(mcffi:define-callback-definer define-framebuffer-size-callback
  "Defines a framebuffer resize callback."
  (window :type :pointer)
  (width  :type :int)
  (height :type :int))

(adp:defun set-framebuffer-size-callback (window callback)
  (declare (type window window) (type framebuffersizefun callback))
  "Sets the framebuffer resize callback for the specified window."
  (let* ((callback-c (etypecase callback
		       (symbol (cffi:get-callback callback))
		       (null   (cffi:null-pointer))
		       (t      callback))))
    (glfwSetFramebufferSizeCallback window callback-c)))

(mcffi:define-callback-definer define-window-content-scale-callback
  "Defines a window content scale callback."
  (window :type :pointer)
  (xscale :type :float)
  (yscale :type :float))

(adp:defun set-window-content-scale-callback (window callback)
  (declare (type window window) (type windowcontentscalefun callback))
  "Sets the window content scale callback for the specified window."
  (let* ((callback-c (etypecase callback
		       (symbol (cffi:get-callback callback))
		       (null   (cffi:null-pointer))
		       (t      callback))))
    (glfwSetWindowContentScaleCallback window callback-c)))

(adp:defun poll-events ()
  "Processes all pending events."
  (glfwPollEvents))

(adp:defun wait-events ()
  "Waits until events are queued and processes them."
  (glfwWaitEvents))

(adp:defun wait-events-timeout (timeout)
  (declare (type double-float timeout))
  "Waits with timeout until events are queued and processes them."
  (glfwWaitEventsTimeout timeout))

(adp:defun post-empty-event ()
  "Posts an empty event to the event queue."
  (glfwPostEmptyEvent))

(adp:defun swap-buffers (window)
  (declare (type window window))
  "Swaps the front and back buffers of the specified window."
  (glfwSwapBuffers window))
