
(in-package :glfw)

(adp:in-file #P"docs/api/monitor")

(adp:header "Monitor reference" monitor-reference-header)

(adp:subheader "Description")

(adp:text "This is the reference documentation for monitor related functions and types.")

(adp:mini-table-of-contents)


(adp:subheader "Types")

(adp:deftype monitor ()
  "Opaque monitor object."
  'pointer)

(adp:deftype monitorfun ()
  "The function pointer type for monitor configuration callbacks."
  '(or symbol pointer))

(adp:subsubheader "GFLWvidmode")

(adp:deftype vidmode ()
  'pointer)

(mcffi:define-foreign-struct (:struct GLFWvidmode) vidmode
    (:no-constructor :no-destructor :default-readers)
  (width :reader-documentation
	 "Returns the width, in screen coordinates, of the video mode.")
  (height :reader-documentation
	  "Returns the height, in screen coordinates, of the video mode.")
  (redBits :reader-documentation
	   "Returns the bit depth of the red channel of the video mode.")
  (greenBits :reader-documentation
	     "Returns the bit depth of the red channel of the video mode.")
  (blueBits :reader-documentation
	    "Returns the bit depth of the red channel of the video mode.")
  (refreshRate :reader-documentation
	       "Returns the refresh rate, in Hz, of the video mode."))


(adp:subsubheader "GLFWgammaramp")

(adp:deftype gammaramp ()
  "Gamma ramp."
  'pointer)

(mcffi:define-foreign-struct (:struct GLFWgammaramp) gammaramp
    (:default-constructors :default-readers :default-writers)
  (:constructor-documentation
   "Creates a gammaramp for a monitor.")
  (:destructor-documentation
   "Destroys a gammaramp.")
  (red :initform nil
       :constructor
       ((red-arg)
	(if red-arg
	    (setf red (cffi:foreign-alloc :ushort :initial-contents red-arg))
	    (setf red (cffi:null-pointer))))
       
       :destructor
       (cffi:foreign-free red)
       
       :reader
       ((&optional (index nil))
	(if index
	    (cffi:mem-aref red :ushort index)
	    (if (cffi:null-pointer-p red)
		nil
		(let ((red-array (make-array size)))
		  (loop for i from 0 below size
			do (setf (aref red-array i) (cffi:mem-aref red :ushort i)))
		  (values red-array)))))

       :reader-documentation
       "Returns an array of values describing the response of the red channel. If INDEX is a non-negative
integer, it returns the value at that position."

       :writer
       ((new-value &optional (index nil))
	(if index
	    (setf (cffi:mem-aref red :ushort index) new-value)
	    (progn
	      (when (not (cffi:null-pointer-p red))
		(cffi:foreign-free red))
	      (if new-value
		  (setf red (cffi:foreign-alloc :ushort :initial-contents new-value))
		  (setf red (cffi:null-pointer))))))

       :writer-documentation
       "Modifies the array of values describing the response of the red channel. If INDEX is a non-negative
integer, it modifies the value at that position.")
  (green :initform nil
	 :constructor
	 ((green-arg)
	  (if green-arg
	      (setf green (cffi:foreign-alloc :ushort :initial-contents green-arg))
	      (setf green (cffi:null-pointer))))
	 
	 :destructor
	 (cffi:foreign-free green)
	 
	 :reader
	 ((&optional (index nil))
	  (if index
	      (cffi:mem-aref green :ushort index)
	      (if (cffi:null-pointer-p green)
		  nil
		  (let ((green-array (make-array size)))
		    (loop for i from 0 below size
			  do (setf (aref green-array i) (cffi:mem-aref green :ushort i)))
		    (values green-array)))))
	 :reader-documentation
	 "Returns an array of values describing the response of the green channel. If INDEX is a non-negative
integer, it returns the value at that position."
	 
	 :writer
	 ((new-value &optional (index nil))
	  (if index
	      (setf (cffi:mem-aref green :ushort index) new-value)
	      (progn
		(when (not (cffi:null-pointer-p green))
		  (cffi:foreign-free green))
		(if new-value
		    (setf green (cffi:foreign-alloc :ushort :initial-contents new-value))
		    (setf green (cffi:null-pointer))))))

	 :writer-documentation
	 "Modifies the array of values describing the response of the green channel. If INDEX is a non-negative
integer, it modifies the value at that position.")
  (blue :initform nil
	:constructor
	((blue-arg)
	 (if blue-arg
	     (setf blue (cffi:foreign-alloc :ushort :initial-contents blue-arg))
	     (setf blue (cffi:null-pointer))))
	
	:destructor
	(cffi:foreign-free blue)
	
	:reader
	((&optional (index nil))
	 (if index
	     (cffi:mem-aref blue :ushort index)
	     (if (cffi:null-pointer-p blue)
		 nil
		 (let ((blue-array (make-array size)))
		   (loop for i from 0 below size
			 do (setf (aref blue-array i) (cffi:mem-aref blue :ushort i)))
		   (values blue-array)))))

	:reader-documentation
	"Returns an array of values describing the response of the blue channel. If INDEX is a non-negative
integer, it returns the value at that position."
	
	:writer
	((new-value &optional (index nil))
	 (if index
	     (setf (cffi:mem-aref blue :ushort index) new-value)
	     (progn
	       (when (not (cffi:null-pointer-p blue))
		 (cffi:foreign-free blue))
	       (if new-value
		   (setf blue (cffi:foreign-alloc :ushort :initial-contents new-value))
		   (setf blue (cffi:null-pointer))))))

	:writer-documentation
	"Modifies the array of values describing the response of the blue channel. If INDEX is a non-negative
integer, it modifies the value at that position.")
  (size :reader-documentation
	"Return the number of elements in each array."

	:writer-documentation
	"Modifies the value of the number of elements in each array."))


(adp:subheader "Functions")

(adp:subsubheader "glfwGetMonitors")

(adp:defun get-monitors ()
  "Returns an array (or NIL) with the currently connected monitors."
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((result (glfwGetMonitors count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
	  (let ((monitors-array (make-array count)))
	    (loop for i from 0 below count
	       do (setf (aref monitors-array i) (cffi:mem-aref result :pointer i)))
	    (values monitors-array))
	  nil))))

(adp:subsubheader "glfwGetPrimaryMonitor")

(adp:defun get-primary-monitor ()
  "Returns the primary monitor (or NIL)."
  (let ((result (glfwGetPrimaryMonitor)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(adp:subsubheader "glfwGetMonitorPos")

(adp:defun get-monitor-pos (monitor)
  (declare (type monitor monitor))
  "Returns the x-position and y-position of the monitor's viewport on the virtual screen."
  (cffi:with-foreign-objects ((xpos-ptr :int) (ypos-ptr :int))
    (glfwGetMonitorPos monitor xpos-ptr ypos-ptr)
    (values (cffi:mem-ref xpos-ptr :int) (cffi:mem-ref ypos-ptr :int))))

(adp:subsubheader "glfwGetMonitorWorkarea")

(adp:defun get-monitor-workarea (monitor)
  (declare (type monitor monitor))
  "Returns the x-position, y-position, width and height of the monitor's work area."
  (cffi:with-foreign-objects ((xpos-ptr :int) (ypos-ptr :int) (width-ptr :int) (height-ptr :int))
    (glfwGetMonitorWorkarea monitor xpos-ptr ypos-ptr width-ptr height-ptr)
    (values (cffi:mem-ref xpos-ptr :int) (cffi:mem-ref ypos-ptr :int)
	    (cffi:mem-ref width-ptr :int) (cffi:mem-ref height-ptr :int))))

(adp:subsubheader "glfwGetMonitorPhysicalSize")

(adp:defun get-monitor-physical-size (monitor)
  (declare (type monitor monitor))
  "Returns the width and height of the monitor's physical size."
  (cffi:with-foreign-objects ((widthMM-ptr :int) (heightMM-ptr :int))
    (glfwGetMonitorPhysicalSize monitor widthMM-ptr heightMM-ptr)
    (values (cffi:mem-ref widthMM-ptr :int) (cffi:mem-ref heightMM-ptr :int))))

(adp:subsubheader "glfwGetMonitorContentScale")

(adp:defun get-monitor-content-scale (monitor)
  (declare (type monitor monitor))
  "Returns the x-scale and y-scale of the monitor's content scale."
  (cffi:with-foreign-objects ((xscale-ptr :int) (yscale-ptr :int))
    (glfwGetMonitorContentScale monitor xscale-ptr yscale-ptr)
    (values (cffi:mem-ref xscale-ptr :int) (cffi:mem-ref yscale-ptr :int))))

(adp:subsubheader "glfwGetMonitorName")

(adp:defun get-monitor-name (monitor)
  (declare (type monitor monitor))
  "Returns the name (or NIL) of the specified monitor."
  (let ((result (glfwGetMonitorName monitor)))
    (cffi:foreign-string-to-lisp result)))

(defvar *monitors-data* (make-hash-table))

(adp:subsubheader "glfwSetMonitorUserPointer")

(adp:defun set-monitor-user-pointer (monitor data)
  (declare (type monitor monitor) (type t data))
  "Sets the user pointer of the specified monitor."
  (setf (gethash (cffi:pointer-address monitor) *monitors-data*) data))

(adp:subsubheader "glfwGetMonitorUserPointer")

(adp:defun get-monitor-user-pointer (monitor)
  (declare (type monitor monitor))
  "Returns the user pointer of the specified monitor."
  (gethash (cffi:pointer-address monitor) *monitors-data*))

(adp:subsubheader "glfwSetMonitorCallback")

(mcffi:define-callback-definer define-monitor-callback
  (monitor :type :pointer)
  (event   :type :int))

(adp:defun set-monitor-callback (callback)
  (declare (type (or null monitorfun) callback))
  "Sets the monitor configuration callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetMonitorCallback callback-c)))

(adp:subsubheader "glfwGetVideoModes")

(adp:defun get-video-modes (monitor)
  (declare (type monitor monitor))
  "Returns a vector (or NIL) with the available video modes for the specified monitor."
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((result (glfwGetVideoModes monitor count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
	  (let ((video-modes-array (make-array count)))
	    (loop for i from 0 below count
	          do (setf (aref video-modes-array i) (cffi:mem-aptr result '(:struct GLFWvidmode) i)))
	    (values video-modes-array))
	  nil))))

(adp:subsubheader "glfwGetVideoMode")

(adp:defun get-video-mode (monitor)
  (declare (type monitor monitor))
  "Returns the current mode (or NIL) of the specified monitor."
  (let ((result (glfwGetVideoMode monitor)))
    (if (cffi:null-pointer-p result)
	nil
        result)))

(adp:subsubheader "glfwSetGamma")

(adp:defun set-gamma (monitor gamma)
  (declare (type monitor monitor) (type float gamma))
  "Generates a gamma ramp and sets it for the specified monitor."
  (glfwSetGamma monitor gamma))

(adp:subsubheader "glfwGetGammaRamp")

(adp:defun get-gamma-ramp (monitor)
  (declare (type monitor monitor))
  "Returns the current gamma ramp (or NIL) for the specified monitor."
  (let ((result (glfwGetGammaRamp monitor)))
    (if (cffi:null-pointer-p result)
	nil
	result)))

(adp:subsubheader "glfwSetGammaRamp")

(adp:defun set-gamma-ramp (monitor ramp)
  (declare (type monitor monitor) (type gammaramp ramp))
  "Sets the current gamma ramp for the specified monitor."
  (glfwSetGammaRamp monitor ramp))
