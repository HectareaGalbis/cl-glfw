
(in-package #:glfw)


(affi:defctype glprec ()
  "Client API function pointer type."
  '(:pointer :void))

(affi:defctype vkproc ()
  "Vulkan API function pointer type."
  '(:pointer :void))

(affi:defctype monitor ()
  "Opaque monitor object."
  '(:pointer :void))

(affi:defctype window ()
  "Opaque window object."
  '(:pointer :void))

(affi:defctype cursor ()
  "Opaque cursor object."
  '(:pointer :void))

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

(affi:defctype windowposfun ()
  "The function pointer type for window position callbacks."
  '(:pointer (:function :void ((window window) (xpos :int) (ypos :int)))))

(affi:defctype windowsizefun ()
  "The function pointer type for window size callbacks."
  '(:pointer (:function :void ((window window) (width :int) (height :int)))))

(affi:defctype windowclosefun ()
  "The function pointer type for window close callbacks."
  '(:pointer (:function :void ((window window)))))

(affi:defctype windowrefreshfun ()
  "The function pointer type for window content refresh callbacks."
  '(:pointer (:function :void ((window window)))))

(affi:defctype windowfocusfun ()
  "The function pointer type for window focus callbacks."
  '(:pointer (:function :void ((window window) (focused :bool)))))

(affi:defctype windowiconifyfun ()
  "The function pointer type for window iconify callbacks."
  '(:pointer (:function :void ((window window) (iconified :bool)))))

(affi:defctype windowmaximizefun ()
  "The function pointer type for window maximize callbacks."
  '(:pointer (:function :void ((window window) (maximized :bool)))))

(affi:defctype framebuffersizefun ()
  "The function pointer type for framebuffer size callbacks."
  '(:pointer (:function :void ((window window) (width :int) (height :int)))))

(affi:defctype windowcontentscalefun ()
  "The function pointer type for window content scale callbacks."
  '(:pointer (:function :void ((window window) (xscale :float) (yscale :float)))))

(affi:defctype mousebuttonfun ()
  "The function pointer type for mouse button callbacks."
  '(:pointer (:function :void ((window window) (button :int) (action :int) (mods :int)))))

(affi:defctype cursorposfun ()
  "The function pointer type for cursor position callbacks."
  '(:pointer (:function :void ((window window) (xpos :double) (ypos :double)))))

(affi:defctype cursorenterfun ()
  "The function pointer type for cursor enter/leave callbacks."
  '(:pointer (:function :void ((window window) (entered :bool)))))

(affi:defctype scrollfun ()
  "The function pointer type for scroll callbacks."
  '(:pointer (:function :void ((window window) (xoffset :double) (yoffset :double)))))

(affi:defctype keyfun ()
  "The function pointer type for keyboard key callbacks."
  '(:pointer (:function :void ((window window) (scancode :int) (action :int) (mods :int)))))

(affi:defctype charfun ()
  "The function pointer type for Unicode character callbacks."
  '(:pointer (:function :void ((window window) (codepoint :unsigned-int)))))

(affi:defctype charmodsfun ()
  "The function pointer type for Unicode character with modifiers callbacks."
  '(:pointer (:function :void ((window window) (codepoint :unsigned-int) (mods :int)))))

(affi:defctype dropfun ()
  "The function pointer type for path drop callbacks."
  '(:pointer (:function :void ((window window) (path-count :int) (paths (:pointer (:pointer :char)))))))

(affi:defctype monitorfun ()
  "The function pointer type for monitor configuration callbacks."
  '(:pointer (:function :void ((monitor monitor) (event :int)))))

(affi:defctype joystickfun ()
  "The function pointer type for joystick configuration callbacks."
  '(:pointer (:function :void ((jid :int) (event :int)))))


(affi:defcstruct vidmode
    (width :int)
  (height :int)
  (red-bits :int)
  (green-bits :int)
  (blue-bits :int)
  (refresh-rate :int))

(affi:defcstruct gammaramp
    (red (:pointer :unsigned-short) :private t)
  (green (:pointer :unsigned-short) :private t)
  (blue (:pointer :unsigned-short) :private t)
  (size :unsigned-int :private t)
  (pixels (:multi-list-ptr size red green blue)))

(affi:defcstruct image
    (width :int :private t)
  (height :int :private t)
  (pixels (:list-ptr :unsigned-char height width)))

(affi:defcstruct gamepadstate
    (buttons (:list-array :unsigned-char 15))
  (axes (:list-array :float 6)))

(affi:defcstruct allocator
    (allocate allocatefun)
  (reallocatefun reallocate)
  (deallocatefun deallocate)
  (user (:pointer :void)))
