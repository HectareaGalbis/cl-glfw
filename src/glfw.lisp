
(in-package :glfw)


;; Structs

; Input
(defstruct gamepadstate
    (buttons    (make-array 15 :initial-element raw-glfw:+release+))
    (axes       (make-array 6  :initial-element 0.0)))

; Monitor
(defstruct vidmode
    (width          0)
    (height         0)
    (redBits        0)
    (greenBits      0)
    (blueBits       0)
    (refreshRate    0))


;; Helper functions
(defun array->list (arr ctype size)
    (do ((i size (1- i)) (lst nil (cons (mem-aref arr ctype i) lst)))
        ((< i 0) lst)))


;; Functions

; Intitalization, version and error
(defun get-version ()
    (with-foreign-objects ((major :int) (minor :int) (rev :int))
        (raw-glfw:get-version major minor rev)
        (values (mem-ref major) (mem-ref minor) (mem-ref rev))))

(defun get-error ()
    (with-foreign-object (description :pointer)
        (let ((error-code (raw-glfw:get-error description)))
            (values error-code (convert-from-foreign description :string)))))

(defmacro def-error-callback (name (error-code description) &body body)
    `(defcallback ,name ((,error-code :int) (,description :string))
        ,@body))

; Input
(defun get-cursor-pos (window)
    (with-foreign-objects ((xpos :double) (ypos :double))
        (raw-glfw:get-cursor-pos window xpos ypos)
        (values (mem-ref xpos) (mem-ref ypos))))

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

(defun get-joystick-axes (jid)
    (with-foreign-object (csize :int)
        (let* ((arr-axes (raw-glfw:get-joystick-axes jid csize)) (size (mem-ref csize)))
            (if (> size 0) 
                (array->list arr-axes :float size)
                nil))))
        
(defun get-joystick-buttons (jid)
    (with-foreign-object (csize :int)
        (let* ((arr-buttons (raw-glfw:get-joystick-buttons jid csize)) (size (mem-ref csize)))
            (if (> size 0) 
                (array->list arr-buttons :int size)
                nil))))

(defun get-joystick-hats (jid)
    (with-foreign-object (csize :int)
        (let* ((arr-hats (raw-glfw:get-joystick-hats jid csize)) (size (mem-ref csize)))
            (if (> size 0) 
                (array->list arr-hats :int size)
                nil))))

(defvar *joysticks-data* (make-hash-table))

(defun set-joystick-user-data (jid data)
    (setf (gethash jid *joysticks-data*) data))

(defun get-joystick-user-data (jid)
    (gethash jid *joysticks-data*))

(defmacro def-joystick-callback (name (window jid event) &body body) 
    `(defcallback ,name ((,window :window) (,jid :int) (,event :int))
        ,@body))

(defun get-gamepad-state (jid)
    (with-foreign-object (cstate (:struct raw-glfw:gamepadstate))
        (raw-glfw:get-gamepad-state jid cstate)
        (let ((state (make-gamepadstate)))
            (dotimes (i 15)
                (setf (aref (gamepadstate-buttons state) i) (mem-aref :uchar (raw-glfw:gamepadstate-buttons cstate) i)))
            (dotimes (i 6)
                (setf (aref (gamepadstate-axes state) i) (mem-aref :float (raw-glfw:gamepadstate-axes cstate) i)))
            state)))

; Monitor
(defun get-monitors ()
    (with-foreign-object (ccount :int)
        (let (arr-monitors (raw-glfw:get-monitors ccount))
            (array->list arr-monitors :monitor (mem-ref ccount)))))

(defun get-monitor-pos (monitor)
    (with-foreign-objects ((xpos :int) (ypos :int))
        (raw-glfw:get-monitor-pos xpos ypos)
        (values (mem-ref xpos) (mem-ref ypos))))

(defun get-monitor-work-area (monitor)
    (with-foreign-objects ((xpos :int) (ypos :int) (width :int) (height :int))
        (raw-glfw:get-monitor-work-area xpos ypos width height)
        (values (mem-ref xpos) (mem-ref ypos) (mem-ref width) (mem-ref height))))

(defun get-monitor-physical-size (monitor)
    (with-foreign-objects ((widthMM :int) (heightMM :int))
        (raw-glfw:get-monitor-physical-size widthMM heightMM)
        (values (mem-ref widthMM) (mem-ref heightMM))))

(defun get-monitor-content-scale (monitor)
    (with-foreign-objects ((xscale :int) (yscale :int))
        (raw-glfw:get-monitor-content-scale xscale yscale)
        (values (mem-ref xscale) (mem-ref yscale))))

(defvar *monitors-data* (make-hash-table))

(defun set-monitor-user-data (monitor data)
    (setf (gethash (pointer-address monitor) *monitors-data*) data))

(defun get-monitor-user-data (monitor)
    (gethash (pointer-address monitor) *monitors-data*))

(defmacro def-monitor-callback (name (monitor event) &body body) 
    `(defcallback ,name ((,monitor :monitor) (,event :int))
        ,@body))

(defun get-video-modes (monitor)
    (with-foreign-object (ccount :int)
        (let ((arr-vidmodes (raw-glfw:get-video-modes monitor ccount)))
            (do ((i (1- (mem-ref ccount)) (1- i)) 
                 (vidmodes nil (cons (let ((vmode (mem-aref arr-vidmodes (:struct vidmode) i))) 
                                        (make-vidmode (raw-glfw:vidmode-width       vmode)
                                                      (raw-glfw:vidmode-height      vmode)
                                                      (raw-glfw:vidmode-redBits     vmode)
                                                      (raw-glfw:vidmode-greenBits   vmode)
                                                      (raw-glfw:vidmode-blueBits    vmode)
                                                      (raw-glfw:vidmode-refreshRate vmode))) vidmodes)))
                ((< i 0) vidmodes)))))

(defun get-video-mode (monitor)
    (let ((cmode (raw-glfw:get-video-mode monitor)))
        (make-vidmode (raw-glfw:vidmode-width       cmode)
                      (raw-glfw:vidmode-height      cmode)
                      (raw-glfw:vidmode-redBits     cmode)
                      (raw-glfw:vidmode-greenBits   cmode)
                      (raw-glfw:vidmode-blueBits    cmode)
                      (raw-glfw:vidmode-refreshRate cmode))))