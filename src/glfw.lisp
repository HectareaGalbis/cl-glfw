
(in-package :glfw)


;; Structs

; Input
(defstruct gamepadstate
    (buttons    (make-array 15 :initial-element raw-glfw:+release+))
    (axes       (make-array 6  :initial-element 0.0)))

(defmethod translate-from-foreign (ptr (type raw-glfw:c-gamepadstate))
    (let ((gpstate (make-gamepadstate)))
        (dotimes (i 15)
            (setf (aref (gamepadstate-buttons gpstate) i) 
                  (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gamepadstate) 'raw-glfw:buttons) :uchar i)))
        (dotimes (i 6)
            (setf (aref (gamepadstate-axes gpstate) i) 
                  (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gamepadstate) 'raw-glfw:axes) :float i)))
        gpstate))

(defmethod translate-into-foreign-memory (value (type raw-glfw:c-gamepadstate) ptr)
    (dotimes (i 15)
        (setf (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gamepadstate) 'raw-glfw:buttons) :uchar i) 
              (aref (gamepadstate-buttons value) i)))
    (dotimes (i 6)
        (setf (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gamepadstate) 'raw-glfw:axes) :float i) 
              (aref (gamepadstate-axes value) i))))

#|(defmethod free-translated-object (pointer (type raw-glfw:c-gamepadstate) param)
    (declare (ignore param))
    (with-foreign-slots ((buttons axes) pointer (:struct raw-glfw:gamepadstate))
        (foreign-free buttons)
        (foreign-free axes)))|#

; Monitor
(defstruct vidmode
    (width          0)
    (height         0)
    (redBits        0)
    (greenBits      0)
    (blueBits       0)
    (refreshRate    0))

(defmethod translate-from-foreign (ptr (type raw-glfw:c-vidmode))
    (make-vidmode :width       (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:width) 
                  :height      (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:height)  
                  :redBits     (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:redBits)  
                  :greenBits   (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:greenBits)  
                  :blueBits    (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:blueBits)  
                  :refreshRate (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:refreshRate)))

(defmethod translate-into-foreign-memory (value (type raw-glfw:c-vidmode) ptr)
    (setf (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:width)        (vidmode-width       value)
          (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:height)       (vidmode-height      value)
          (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:redBits)      (vidmode-redBits     value)
          (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:greenBits)    (vidmode-greenBits   value)
          (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:blueBits)     (vidmode-blueBits    value)
          (foreign-slot-value ptr '(:struct raw-glfw:vidmode) 'raw-glfw:refreshRate)  (vidmode-refreshRate value)))

(defstruct gammaramp
    (red    (make-array 256 :initial-element 0))
    (green  (make-array 256 :initial-element 0))
    (blue   (make-array 256 :initial-element 0)))

(defmethod translate-from-foreign (ptr (type raw-glfw:c-gammaramp))
    (let* ((size (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:size))
           (gramp (make-gammaramp :red (make-array size) :green (make-array size) :blue (make-array size))))
        (dotimes (i size)
            (setf (aref (gammaramp-red   gramp) i) (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:red)   :ushort i)
                  (aref (gammaramp-green gramp) i) (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:green) :ushort i)
                  (aref (gammaramp-blue  gramp) i) (mem-aref (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:blue)  :ushort i)))))

(defmethod translate-into-foreign-memory (value (type raw-glfw:c-gammaramp) ptr)
      (setf (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:red)   (foreign-alloc :ushort :initial-contents (gammaramp-red   value))
            (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:green) (foreign-alloc :ushort :initial-contents (gammaramp-green value))
            (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:blue)  (foreign-alloc :ushort :initial-contents (gammaramp-blue  value))
            (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:size)  (min (length (gammaramp-red value)) (length (gammaramp-green value)) (length (gammaramp-blue value)))))

(defmethod free-translated-object (ptr (type raw-glfw:c-gammaramp) param)
    (declare (ignore param))
    (foreign-free (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:red))
    (foreign-free (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:green))
    (foreign-free (foreign-slot-value ptr '(:struct raw-glfw:gammaramp) 'raw-glfw:blue)))

; Window
(defstruct image
    (width  16)
    (height 16)
    (pixels (make-array (* 16 16 4) :initial-element #xFF)))

(defmethod translate-from-foreign (ptr (type raw-glfw:c-image))
    (let* ((width  (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:width))
           (height (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:height))
           (pixels (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:pixels))
           (img (make-image :width width :height height :pixels (make-array (* width height 4)))))
        (dotimes (i (* width height 4))
            (setf (aref (image-pixels img) i) (mem-aref pixels :uchar i)))
        img))

(defmethod translate-into-foreign-memory (value (type raw-glfw:c-image) ptr)
    (setf (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:width)  (image-width  value)
          (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:height) (image-height value)
          (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:pixels) (foreign-alloc :uchar :initial-contents (image-pixels value))))

(defmethod free-translated-object (ptr (type raw-glfw:c-image) param)
    (declare (ignore param))
    (foreign-free (foreign-slot-value ptr '(:struct raw-glfw:image) 'raw-glfw:pixels)))


;; Helper functions
(defun array->list (arr ctype size)
    (do ((i size (1- i)) (lst nil (cons (mem-aref arr ctype i) lst)))
        ((< i 0) lst)))

(defun list->array (lst ctype arr)
    (do ((i 0 (1+ i))
         (l lst (cdr lst)))
        ((>= i (length lst)))
        (setf (mem-aref arr ctype i) (car lst))))


;; Functions

; Intitalization, version and error
(defun get-version ()
    (with-foreign-objects ((major :int) (minor :int) (rev :int))
        (raw-glfw:get-version major minor rev)
        (values (mem-ref major :int) (mem-ref minor :int) (mem-ref rev :int))))

(defun get-error ()
    (with-foreign-object (description :pointer)
        (let ((error-code (raw-glfw:get-error description)))
            (values error-code (convert-from-foreign description :string)))))

; Input
(defun get-cursor-pos (window)
    (with-foreign-objects ((xpos :double) (ypos :double))
        (raw-glfw:get-cursor-pos window xpos ypos)
        (values (mem-ref xpos :double) (mem-ref ypos :double))))

(defun create-cursor (img xhot yhot)
    (with-foreign-object (cimg '(:struct raw-glfw:image))
        (setf (mem-ref cimg '(:struct raw-glfw:image)) img)
        (raw-glfw:create-cursor cimg xhot yhot)
        (free-converted-object cimg '(:struct raw-glfw:image) t)))

#|(defun create-cursor (img xhot yhot)
    (let ((pixels (image-pixels img))) 
        (with-foreign-objects ((cimage (:struct raw-glfw:image)) (cpixels :uchar (array-total-size pixels)))
            (setf (foreign-slot-value cimage (:struct raw-glfw:image) 'width)  (array-dimension pixels 0)
                  (foreign-slot-value cimage (:struct raw-glfw:image) 'height) (array-dimension pixels 1))
            (dotimes (i (array-total-size pixels))
                (setf (mem-aref cpixels :uchar i) (row-major-aref pixels i)))
            (setf (foreign-slot-value cimage (:struct raw-glfw:image) 'pixels) cpixels)
            (raw-glfw:create-cursor cimage xhot yhot))))|#

(defun get-joystick-axes (jid)
    (with-foreign-object (csize :int)
        (let* ((arr-axes (raw-glfw:get-joystick-axes jid csize)) (size (mem-ref csize :int)))
            (if (> size 0) 
                (array->list arr-axes :float size)
                nil))))
        
(defun get-joystick-buttons (jid)
    (with-foreign-object (csize :int)
        (let* ((arr-buttons (raw-glfw:get-joystick-buttons jid csize)) (size (mem-ref csize :int)))
            (if (> size 0) 
                (array->list arr-buttons :int size)
                nil))))

(defun get-joystick-hats (jid)
    (with-foreign-object (csize :int)
        (let* ((arr-hats (raw-glfw:get-joystick-hats jid csize)) (size (mem-ref csize :int)))
            (if (> size 0) 
                (array->list arr-hats :int size)
                nil))))

(defvar *joysticks-data* (make-hash-table))

(defun set-joystick-user-data (jid data)
    (setf (gethash jid *joysticks-data*) data))

(defun get-joystick-user-data (jid)
    (gethash jid *joysticks-data*))

(defun get-gamepad-state (jid)
    (with-foreign-object (cstate '(:struct raw-glfw:gamepadstate))
        (raw-glfw:get-gamepad-state jid cstate)
        (mem-ref cstate '(:struct raw-glfw:gamepadstate))))
        #|(let ((state (make-gamepadstate)))
            (dotimes (i 15)
                (setf (aref (gamepadstate-buttons state) i) (mem-aref :uchar (raw-glfw:gamepadstate-buttons cstate) i)))
            (dotimes (i 6)
                (setf (aref (gamepadstate-axes state) i) (mem-aref :float (raw-glfw:gamepadstate-axes cstate) i)))
            state)))|#

; Monitor
(defun get-monitors ()
    (with-foreign-object (ccount :int)
        (let ((arr-monitors (raw-glfw:get-monitors ccount)))
            (array->list arr-monitors :monitor (mem-ref ccount :int)))))

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

(defun get-video-modes (monitor)
    (with-foreign-object (ccount :int)
        (let ((arr-vidmodes (raw-glfw:get-video-modes monitor ccount)))
            (array->list arr-vidmodes '(:struct raw-glfw:vidmode) (mem-ref ccount :int)))))
            #|(if (not (null-pointer-p arr-vidmodes)) 
                (do ((i (1- (mem-ref ccount)) (1- i)) 
                    (vidmodes nil (cons (with-foreign-slots ((width height reb-bits green-bits blue-bits refresh-rate) 
                                                             (mem-aptr arr-vidmodes (:struct raw-glfw:vidmode) i)
                                                             (:struct raw-glfw:vidmode))
                                            (make-vidmode width height red-bits green-bits blue-bits refresh-rate)) vidmodes)))
                    ((< i 0) vidmodes))
                nil))))|#

(defun get-video-mode (monitor)
    (let ((cmode (raw-glfw:get-video-mode monitor)))
        (if (not (null-pointer-p cmode))
            (mem-ref cmode '(:struct raw-glfw:vidmode))
            nil)))
        #|(if (not (null-pointer-p cmode))
            (with-foreign-slots ((width height reb-bits green-bits blue-bits refresh-rate) cmode (:struct raw-glfw:vidmode))
                (make-vidmode width height red-bits green-bits blue-bits refresh-rate))
            nil)))|#

(defun get-gamma-ramp (monitor)
    (mem-ref (raw-glfw:get-gamma-ramp monitor) '(:struct raw-glfw:gammaramp)))
    #|(let* ((cramp (raw-glfw:get-gamma-ramp monitor))
           (size  (foreign-slot-value cramp (:struct raw-glfw:gammaramp) 'size))
           (ramp  (make-gammaramp (make-array size) (make-array size) (make-array size))))
        (with-foreign-slots ((red green blue) cramp (:struct raw-glfw:gammaramp))
            (dotimes (i size)
                (setf (aref (gammaramp-red   ramp) i) (mem-aref red   :ushort i)
                      (aref (gammaramp-green ramp) i) (mem-aref green :ushort i)
                      (aref (gammaramp-blue  ramp) i) (mem-aref blue  :ushort i)))
            ramp)))|#

(defun set-gamma-ramp (monitor ramp)
    (with-foreign-object (cramp '(:struct raw-glfw:gammaramp))
        (setf (mem-ref cramp '(:struct raw-glfw:gammaramp)) ramp)
        (raw-glfw:set-gamma-ramp monitor cramp)
        (free-converted-object cramp '(:struct raw-glfw:gammaramp) t)))
    #|(let ((size (gammaramp-size ramp))) 
        (with-foreign-objects ((cramp (:struct raw-glfw:gammaramp))
                               (cred   :ushort size)
                               (cgreen :ushort size)
                               (cblue  :ushort size))
            (dotimes (i size)
                (setf (mem-aref cred   :ushort i) (aref (gammaramp-red   ramp) i)
                      (mem-aref cgreen :ushort i) (aref (gammaramp-green ramp) i)
                      (mem-aref cblue  :ushort i) (aref (gammaramp-blue  ramp) i)))
            (setf (foreign-slot-value cram (:struct raw-glfw:gammaramp) 'red)   cred
                  (foreign-slot-value cram (:struct raw-glfw:gammaramp) 'green) cgreen
                  (foreign-slot-value cram (:struct raw-glfw:gammaramp) 'blue)  cblue)
            (raw-glfw:set-gamma-ramp monitor cramp))))|#

; Vulkan support
(defun get-required-instance-extensions ()
    (with-foreign-object (csize :int)
        (let* ((cextensions (raw-glfw:get-required-instance-extensions csize))
               (size (mem-ref csize :int)))
            (array->list cextensions :string size))))

; Window
(defun set-window-icon (window images)
    (with-foreign-object (cimages '(:struct raw-glfw:image) (length images))
        (list->array images '(:struct raw-glfw:image) cimages)
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


;; Macros

; Intitalization, version and error
(defmacro def-error-callback (name (error-code description) &body body)
    `(defcallback ,name ((,error-code :int) (,description :string))
        ,@body))

; Input
(defmacro def-key-callback (name (window key scancode action mods) &body body)
    `(defcallback ,name ((,window :window) (,key :int) (,scancode :int) (,action :int) (,mods :int))
        ,@body))

(defmacro def-char-callback (name (window codepoint) &body body)
    `(defcallback ,name ((,window :window) (,codepoint :uint))
        ,@body))

(defmacro def-char-mods-callback (name (window codepoint mods) &body body)  ; DEPRECATED (removed in 4.0)
    `(defcallback ,name ((,window :window) (,codepoint :uint) (,mods :int))
        ,@body))

(defmacro def-mouse-button-callback (name (window button action mods) &body body)  
    `(defcallback ,name ((,window :window) (,button :int) (,action :int) (,mods :int))
        ,@body))

(defmacro def-cursor-pos-callback (name (window xpos ypos) &body body) 
    `(defcallback ,name ((,window :window) (,xpos :double) (,ypos :double))
        ,@body))

(defmacro def-cursor-enter-callback (name (window entered) &body body) 
    `(defcallback ,name ((,window :window) (,entered :boolean))
        ,@body))

(defmacro def-scroll-callback (name (window xoffset yoffset) &body body) 
    `(defcallback ,name ((,window :window) (,xoffset :double) (,yoffset :double))
        ,@body))

(defmacro def-drop-callback (name (window paths) &body body) 
    (let ((path-count (gensym)) (arr-paths (gensym)))
        `(defcallback ,name ((,window :window) (,path-count :int) (,arr-paths :pointer))
            (let ((,paths (array->list ,arr-paths :string ,path-count))) 
                ,@body))))

(defmacro def-joystick-callback (name (window jid event) &body body) 
    `(defcallback ,name ((,window :window) (,jid :int) (,event :int))
        ,@body))

; Monitor
(defmacro def-monitor-callback (name (monitor event) &body body) 
    `(defcallback ,name ((,monitor :monitor) (,event :int))
        ,@body))

; Window
(defmacro def-window-pos-callback (name (window xpos ypos) &body body) 
    `(defcallback ,name ((,window :window) (,xpos :int) (,ypos :int))
        ,@body))

(defmacro def-window-size-callback (name (window width height) &body body) 
    `(defcallback ,name ((,window :window) (,width :int) (,height :int))
        ,@body))

(defmacro def-window-close-callback (name (window) &body body) 
    `(defcallback ,name ((,window :window))
        ,@body))
        
(defmacro def-window-refresh-callback (name (window) &body body) 
    `(defcallback ,name ((,window :window))
        ,@body))

(defmacro def-window-focus-callback (name (window focused) &body body) 
    `(defcallback ,name ((,window :window) (,focused :boolean))
        ,@body))

(defmacro def-window-iconify-callback (name (window iconified) &body body) 
    `(defcallback ,name ((,window :window) (,iconified :boolean))
        ,@body))

(defmacro def-window-maximize-callback (name (window maximized) &body body) 
    `(defcallback ,name ((,window :window) (,maximized :boolean))
        ,@body))

(defmacro def-framebuffer-size-callback (name (window width height) &body body) 
    `(defcallback ,name ((,window :window) (,width :int) (,height :int))
        ,@body))

(defmacro def-window-content-scale-callback (name (window xscale yscale) &body body) 
    `(defcallback ,name ((,window :window) (,xscale :int) (,yscale :int))
        ,@body))