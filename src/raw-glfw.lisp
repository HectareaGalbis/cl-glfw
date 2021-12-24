
;; Raw GLFW bindings, types and constants.
(in-package :raw-glfw)


;; Helper functions and macros
(defmacro defconstants (&body body)
    `(progn
        ,@(mapcar (lambda (x) (cons 'defconstant x)) body)))

(defmacro defctypes (&body body)
    `(progn
        ,@(mapcar (lambda (x) (cons 'defctype x)) body)))


;; Constants
(defconstants

    ; Initialization, version and error
    (+version-major+            3           "The major version number of the GLFW header.")
    (+version-minor+            3           "The minor version number of the GLFW header.")
    (+version-revision+         6           "The revision number of the GLFW header.")
    (+true+                     1           "One.")
    (+false+                    0           "Zero.")
    (+joystick-hat-buttons+     #x00050001  "Joystick hat buttons init hint.")
    (+cocoa-chdir-resources+    #x00051001  "macOS specific init hint.")
    (+cocoa-menubar+            #x00051002  "macOS specific init hint.")

    ; Error codes
    (+no-error+                 0           "No error has occurred.")
    (+not-initialized+          #x00010001  "GLFW has not been initialized.")
    (+no-current-context+       #x00010002  "No context is current for this thread.")
    (+invalid-enum+             #x00010003  "One of the arguments to the function was an invalid enum value.")
    (+invalid-value+            #x00010004  "One of the arguments to the function was an invalid value.")
    (+out-of-memory+            #x00010005  "A memory allocation failed.")
    (+api-unavailable+          #x00010006  "GLFW could not find support for the requested API on the system.")
    (+version-unavailable+      #x00010007  "The requested OpenGL or OpenGL ES version is not available.")
    (+platform-error+           #x00010008  "A platform-specific error occurred that does not match any of the more specific categories.")
    (+format-unavailable+       #x00010009  "The requested format is not supported or available.")
    (+no-window-context+        #x0001000A  "The specified window does not have an OpenGL or OpenGL ES context.")
    
    ; Input
    (+release+                  0           "The key or mouse button was released.")
    (+press+                    1           "The key or mouse button was pressed.")
    (+repeat+                   2           "The key was held down until it repeated.")
    )

;; Typedefs
(defctypes 

    ; Context
    (:glproc            :pointer    "Client API function pointer type.")

    ; Initialization, version and error
    (:errorfun          :pointer    "The function pointer type for error callbacks.")

    ; Input
    (:cursor            :pointer    "Opaque cursor object.")
    (:mousebuttonfun    :pointer    "The function pointer type for mouse button callbacks.")
    (:cursorposfun      :pointer    "The function pointer type for cursor position callbacks.")
    (:cursorenterfun    :pointer    "The function pointer type for cursor enter/leave callbacks.")
    (:scrollfun         :pointer    "The function pointer type for scroll callbacks.")
    (:keyfun            :pointer    "The function pointer type for keyboard key callbacks.")
    (:charfun           :pointer    "The function pointer type for Unicode character callbacks.")
    (:charmodsfun       :pointer    "The function pointer type for Unicode character with modifiers callbacks.")
    (:dropfun           :pointer    "The function pointer type for path drop callbacks.")
    (:joystickfun       :pointer    "The function pointer type for joystick configuration callbacks.")

    ; Window
    (:window        :pointer)
    )


;; Structs

; Input
(defcstruct gamepadstate
    "Gamepad input state."
    (buttons    :unsigned-char  :count  15)
    (axes       :float          :count  6))


; Window
(defcstruct image
    (width  :int)
    (height :int)
    (pixels :pointer))


;; Functions

; Context
(defcfun ("glfwMakeContextCurrent" make-context-current) :void 
    "Makes the context of the specified window current for the calling thread."
    (window :window))

(defcfun ("glfwGetCurrentContext" get-current-context) :window 
    "Returns the window whose context is current on the calling thread.")

(defcfun ("glfwSwapInterval" swap-interval) :void
    "Sets the swap interval for the current context."
    (interval :int))

(defcfun ("glfwExtensionSupported" extension-supported) :int
    "Returns whether the specified extension is available."
    (extension :string))

(defcfun ("glfwGetProcAddress" get-proc-address) :glproc
    "Returns the address of the specified function for the current context."
    (procname :string))

; Intitalization, version and error
(defcfun ("glfwInit" init) :boolean
    "Initializes the GLFW library.")

(defcfun ("glfwTerminate" terminate) :void
    "Terminates the GLFW library.")

(defcfun ("glfwInitHint" init-hint) :void
    "Sets the specified init hint to the desired value."
    (hint :int) (value :int))

(defcfun ("glfwGetVersion" get-version) :void
    "Retrieves the version of the GLFW library."
    (major :point) (minor :pointer) (rev :pointer))

(defcfun ("glfwGetVersionString" get-version-string) :string
    "Returns a string describing the compile-time configuration.")

(defcfun ("glfwGetError" get-error) :int
    "Returns and clears the last error for the calling thread."
    (description :pointer))

(defcfun ("glfwSetErrorCallback" set-error-callback) :errorfun
    "Sets the error callback."
    (callback :errorfun))

; Input
(defcfun ("glfwGetInputMode" get-input-mode) :int
    "Returns the value of an input option for the specified window."
    (window :window) (mode :int))

(defcfun ("glfwSetInputMode" set-input-mode) :void
    "Sets an input option for the specified window."
    (window :window) (mode :int) (value :int))

(defcfun ("glfwRawMouseMotionSupported" raw-mouse-motion-supported) :int
    "Returns whether raw mouse motion is supported.")

(defcfun ("glfwGetKeyName" get-key-name) :string
    "Returns the layout-specific name of the specified printable key."
    (key :int) (scancode :int))

(defcfun ("glfwGetKeyScancode" get-key-scancode) :int
    "Returns the platform-specific scancode of the specified key."
    (key :int))

(defcfun ("glfwGetKey" get-key) :int
    "Returns the last reported state of a keyboard key for the specified window."
    (window :window) (key :int))

(defcfun ("glfwGetMouseButton" get-mouse-button) :int
    "Returns the last reported state of a mouse button for the specified window."
    (window :window) (button :int))

(defcfun ("glfwGetCursorPos" get-cursor-pos) :void
    "Retrieves the position of the cursor relative to the content area of the window."
    (window :window) (xpos :pointer) (ypos :pointer))

(defcfun ("glfwSetCursorPos" set-cursor-pos) :void
    "Sets the position of the cursor, relative to the content area of the window."
    (window :window) (xpos :double) (ypos :double))

(defcfun ("glfwCreateCursor" create-cursor) :cursor
    "Creates a custom cursor."
    (image (:struct image)) (xhot :int) (yhot :int))

(defcfun ("glfwCreateStandardCursor" create-standard-cursor) :cursor
    "Creates a cursor with a standard shape."
    (shape :int))

(defcfun ("glfwDestroyCursor" destroy-cursor) :void
    "Destroys a cursor."
    (cursor :cursor))

(defcfuc ("glfwSetCursor" set-cursor) :void
    "Sets the cursor for the window."
    (window :window) (cursor :cursor))

(defcfun ("glfwSetKeyCallback" set-key-callback) :keyfun
    "Sets the key callback."
    (window :window) (callback :keyfun))

(defcfun ("glfwSetCharCallback" set-char-callback) :charfun
    "Sets the Unicode character callback."
    (window :window) (callback :charfun))

(defcfun ("glfwSetCharModsCallback" set-char-mods-callback) :charmodsfun
    "Sets the Unicode character with modifiers callback."
    (window :window) (callback :charmodsfun))

(defcfun ("glfwSetMouseButtonCallback" set-mouse-button-callback) :mousebuttonfun
    "Sets the mouse button callback."
    (window :window) (callback :mousebuttonfun))

(defcfun ("glfwSetCursorPosCallback" set-cursor-pos-callback) :cursorposfun
    "Sets the cursor position callback."
    (window :window) (callback :cursorposfun))

(defcfun ("glfwSetCursorEnterCallback" set-cursor-enter-callback) :cursorenterfun
    "Sets the cursor enter/leave callback."
    (window :window) (callback :cursorenterfun))

(defcfun ("glfwSetScrollCallback" set-scroll-callback) :scrollfun
    "Sets the scroll callback."
    (window :window) (callback :scrollfun))

(defcfun ("glfwSetDropCallback" set-drop-callback) :dropfun
    "Sets the path drop callback."
    (window :window) (callback :dropfun))

(defcfun ("glfwJoystickPresent" joystick-present) :int
    "Returns whether the specified joystick is present."
    (jid :int))

(defcfun ("glfwGetJoystickAxes" get-joystick-axes) :pointer
    "Returns the values of all axes of the specified joystick."
    (jid :int) (count :pointer))

(defcfun ("glfwGetJoystickButtons" get-joystick-buttons) :pointer
    "Returns the state of all buttons of the specified joystick."
    (jid :int) (count :pointer))

(defcfun ("glfwGetJoystickHats" get-joystick-hats) :pointer
    "Returns the state of all hats of the specified joystick."
    (jid :int) (count :pointer))

(defcfun ("glfwGetJoystickName" get-joystick-name) :string
    "Returns the name of the specified joystick."
    (jid :int))

(defcfun ("glfwGetJoystickGUID" get-joystick-guid) :string
    "Returns the SDL compatible GUID of the specified joystick."
    (jid :int))

(defcfun ("glfwSetJoystickUserPointer" set-joystick-user-pointer) :void
    "Sets the user pointer of the specified joystick."
    (jid :int) (pointer :pointer))

(defcfun ("glfwGetJoystickUserPointer" get-joystick-user-pointer) :pointer
    "Returns the user pointer of the specified joystick."
    (jid :int))

(defcfun ("glfwJoystickIsGamepad" joystick-is-gamepad) :int
    "Returns whether the specified joystick has a gamepad mapping."
    (jid :int))

(defcfun ("glfwSetJoystickCallback" set-joystick-callback) :joystickfun
    "Sets the joystick configuration callback."
    (callback :joystickfun))

(defcfun ("glfwUpdateGamepadMappings" update-gamepad-mappings) :int
    "Adds the specified SDL_GameControllerDB gamepad mappings."
    (string :string))

(defcfun ("glfwGetGamepadName" get-gamepad-name) :string
    "Returns the human-readable gamepad name for the specified joystick."
    (jid :int))

(defcfun ("glfwGetGamepadState" get-gamepad-state) :int
    "Retrieves the state of the specified joystick remapped as a gamepad."
    (jid :int) (state :pointer))

(defcfun ("glfwSetClipboardString" set-clipboard-string) :void
    "Sets the clipboard to the specified string."
    (window :window) (string :string))

(defcfun ("glfwGetClipboardString" get-clipboard-string) :string
    "Returns the contents of the clipboard as a string."
    (window :window))

(defcfun ("glfwGetTime" get-time) :double
    "Returns the GLFW time.")

(defcfun ("glfwSetTime" set-time) :void
    "Sets the GLFW time."
    (time :double))

(defcfun ("glfwGetTimerValue" get-timer-value) :uint64
    "Returns the current value of the raw timer.")

(defcfun ("glfwGetTimerFrequency" get-timer-frequency) :uint64
    "Returns the frequency, in Hz, of the raw timer.")