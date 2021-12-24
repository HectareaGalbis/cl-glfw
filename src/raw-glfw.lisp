
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
    (+version-major+                3                               "The major version number of the GLFW header.")
    (+version-minor+                3                               "The minor version number of the GLFW header.")
    (+version-revision+             6                               "The revision number of the GLFW header.")
    (+true+                         1                               "One.")
    (+false+                        0                               "Zero.")
    (+joystick-hat-buttons+         #x00050001                      "Joystick hat buttons init hint.")
    (+cocoa-chdir-resources+        #x00051001                      "macOS specific init hint.")
    (+cocoa-menubar+                #x00051002                      "macOS specific init hint.")

    ; Error codes
    (+no-error+                     0                               "No error has occurred.")
    (+not-initialized+              #x00010001                      "GLFW has not been initialized.")
    (+no-current-context+           #x00010002                      "No context is current for this thread.")
    (+invalid-enum+                 #x00010003                      "One of the arguments to the function was an invalid enum value.")
    (+invalid-value+                #x00010004                      "One of the arguments to the function was an invalid value.")
    (+out-of-memory+                #x00010005                      "A memory allocation failed.")
    (+api-unavailable+              #x00010006                      "GLFW could not find support for the requested API on the system.")
    (+version-unavailable+          #x00010007                      "The requested OpenGL or OpenGL ES version is not available.")
    (+platform-error+               #x00010008                      "A platform-specific error occurred that does not match any of the more specific categories.")
    (+format-unavailable+           #x00010009                      "The requested format is not supported or available.")
    (+no-window-context+            #x0001000A                      "The specified window does not have an OpenGL or OpenGL ES context.")
    
    ; Input
    (+release+                      0                               "The key or mouse button was released.")
    (+press+                        1                               "The key or mouse button was pressed.")
    (+repeat+                       2                               "The key was held down until it repeated.")
    
    ; Gamepad axes
    (+gamepad-axix-left-x+          0)
    (+gamepad-axis-left-y+          1)
    (+gamepad-axis-right-x+         2)
    (+gamepad-axis-right-y+         3)
    (+gamepad-axis-left-trigger+    4)
    (+gamepad-axis-right-trigger+   5)
    (+gamepad-axis-last+            +gamepad-axis-right-trigger+)

    ; Gamepad buttons
    (+gamepad-button-a+             0)
    (+gamepad-button-b+             1)
    (+gamepad-button-x+             2)
    (+gamepad-button-y+             3)
    (+gamepad-button-left-bumper+   4)
    (+gamepad-button-right-bumper+  5)
    (+gamepad-button-back+          6)
    (+gamepad-button-start+         7)
    (+gamepad-button-guide+         8)
    (+gamepad-button-left-thumb+    9)
    (+gamepad-button-right-thumb+   10)
    (+gamepad-button-dpad-up+       11)
    (+gamepad-button-dpad-right+    12)
    (+gamepad-button-dpad-down+     13)
    (+gamepad-button-dpad-left+     14)
    (+gamepad-button-last+          +gamepad-button-dpad-left+)
    (+gamepad-button-cross+         +gamepad-button-a+)
    (+gamepad-button-circle+        +gamepad-button-b+)
    (+gamepad-button-square+        +gamepad-button-x+)
    (+gamepad-button-triangle+      +gamepad-button-y+)

    ; Joystick hat states
    (+hat-centered+                 0)
    (+hat-up+                       1)
    (+hat-right+                    2)
    (+hat-down+                     4)
    (+hat-left+                     8)
    (+hat-right-up+                 (logior +hat-right+ +hat-up+))
    (+hat-right-down+               (logior +hat-right+ +hat-down+))
    (+hat-left-up+                  (logior +hat-left+ +hat-up+))
    (+hat-left-down+                (logior +hat-left+ +hat-down+))

    ; Joysticks
    (+joystick-1+                   0)
    (+joystick-2+                   1)
    (+joystick-3+                   2)
    (+joystick-4+                   3)
    (+joystick-5+                   4)
    (+joystick-6+                   5)
    (+joystick-7+                   6)
    (+joystick-8+                   7)
    (+joystick-9+                   8)
    (+joystick-10+                  9)
    (+joystick-11+                  10)
    (+joystick-12+                  11)
    (+joystick-13+                  12)
    (+joystick-14+                  13)
    (+joystick-15+                  14)
    (+joystick-16+                  15)
    (+joystick-last+                +joystick-16+)

    ; Keyboard keys
    (+key-unknown+                  -1)
    (+key-space+                    32)
    (+key-apostrophe+               39                              "/* ' */")
    (+key-comma+                    44                              "/* , */")
    (+key-minus+                    45                              "/* - */")
    (+key-period+                   46                              "/* . */")
    (+key-slash+                    47                              "/* / */")
    (+key-0+                        48)
    (+key-1+                        49)
    (+key-2+                        50)
    (+key-3+                        51)
    (+key-4+                        52)
    (+key-5+                        53)
    (+key-6+                        54)
    (+key-7+                        55)
    (+key-8+                        56)
    (+key-9+                        57)
    (+key-semicolon+                59                              "/* ; */")
    (+key-equal+                    61                              "/* = */")
    (+key-a+                        65)
    (+key-b+                        66)
    (+key-c+                        67)
    (+key-d+                        68)
    (+key-e+                        69)
    (+key-f+                        70)
    (+key-g+                        71)
    (+key-h+                        72)
    (+key-i+                        73)
    (+key-j+                        74)
    (+key-k+                        75)
    (+key-l+                        76)
    (+key-m+                        77)
    (+key-n+                        78)
    (+key-o+                        79)
    (+key-p+                        80)
    (+key-q+                        81)
    (+key-r+                        82)
    (+key-s+                        83)
    (+key-t+                        84)
    (+key-u+                        85)
    (+key-v+                        86)
    (+key-w+                        87)
    (+key-x+                        88)
    (+key-y+                        89)
    (+key-z+                        90)
    (+key-left-bracket+             91                              "/* [ */")
    (+key-backslash+                92                              "/* \\ */")
    (+key-right-bracket+            93                              "/* ] */")
    (+key-grave-accent+             96                              "/* ` */")
    (+key-world1+                   161                             "/* non-US #1 */")
    (+key-world2+                   162                             "/* non-US #2 */")
    (+key-escape+                   256)
    (+key-enter+                    257)
    (+key-tab+                      258)
    (+key-backspace+                259)
    (+key-insert+                   260)
    (+key-delete+                   261)
    (+key-right+                    262)
    (+key-left+                     263)
    (+key-down+                     264)
    (+key-up+                       265)
    (+key-page-up+                  266)
    (+key-page-down+                267)
    (+key-home+                     268)
    (+key-end+                      269)
    (+key-caps-lock+                280)
    (+key-scroll-lock+              281)
    (+key-num-lock+                 282)
    (+key-print-screen+             283)
    (+key-pause+                    284)
    (+key-f1+                       290)
    (+key-f2+                       291)
    (+key-f3+                       292)
    (+key-f4+                       293)
    (+key-f5+                       294)
    (+key-f6+                       295)
    (+key-f7+                       296)
    (+key-f8+                       297)
    (+key-f9+                       298)
    (+key-f10+                      299)
    (+key-f11+                      300)
    (+key-f12+                      301)
    (+key-f13+                      302)
    (+key-f14+                      303)
    (+key-f15+                      304)
    (+key-f16+                      305)
    (+key-f17+                      306)
    (+key-f18+                      307)
    (+key-f19+                      308)
    (+key-f20+                      309)
    (+key-f21+                      310)
    (+key-f22+                      311)
    (+key-f23+                      312)
    (+key-f24+                      313)
    (+key-f25+                      314)
    (+key-kp-0+                     320)
    (+key-kp-1+                     321)
    (+key-kp-2+                     322)
    (+key-kp-3+                     323)
    (+key-kp-4+                     324)
    (+key-kp-5+                     325)
    (+key-kp-6+                     326)
    (+key-kp-7+                     327)
    (+key-kp-8+                     328)
    (+key-kp-9+                     329)
    (+key-kp-decimal+               330)
    (+key-kp-divide+                331)
    (+key-kp-multiply+              332)
    (+key-kp-subtract+              333)
    (+key-kp-add+                   334)
    (+key-kp-enter+                 335)
    (+key-kp-equal+                 336)
    (+key-left-shift+               340)
    (+key-left-control+             341)
    (+key-left-alt+                 342)
    (+key-left-super+               343)
    (+key-right-shift+              344)
    (+key-right-control+            345)
    (+key-right-alt+                346)
    (+key-right-super+              347)
    (+key-menu+                     348)
    (+key-last+                     +key-menu+)

    ; Modifier key flags
    (+mod-shift+                    #x0001                          "If this bit is set one or more Shift keys were held down.")
    (+mod-control+                  #x0002                          "If this bit is set one or more Control keys were held down.")
    (+mod-alt+                      #x0004                          "If this bit is set one or more Alt keys were held down.")
    (+mod-super+                    #x0008                          "If this bit is set one or more Super keys were held down.")
    (+mod-caps-lock+                #x0010                          "If this bit is set the Caps Lock key is enabled.")
    (+mod-num-lock+                 #x0020                          "If this bit is set the Num Lock key is enabled.")

    ; Mouse buttons
    (+mouse-button-1+               0)
    (+mouse-button-2+               1)
    (+mouse-button-3+               2)
    (+mouse-button-4+               3)
    (+mouse-button-5+               4)
    (+mouse-button-6+               5)
    (+mouse-button-7+               6)
    (+mouse-button-8+               7)
    (+mouse-button-last+            +mouse-button-8+)
    (+mouse-button-left+            +mouse-button-1+)
    (+mouse-button-right+           +mouse-button-2+)
    (+mouse-button-middle+          +mouse-button-3+)

    ; Standard cursor shapes
    (+arrow-cursor+                 #x00036001                      "The regular arrow cursor shape.")
    (+ibeam-cursor+                 #x00036001                      "The text input I-beam cursor shape.")
    (+crosshair-cursor+             #x00036001                      "The crosshair shape.")
    (+hand-cursor+                  #x00036001                      "The hand shape.")
    (+hresize-cursor+               #x00036001                      "The horizontal resize arrow shape.")
    (+vresize-cursor+               #x00036001                      "The vertical resize arrow shape.")

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

    ; Monitor
    (:monitor           :pointer    "Opaque monitor object.")
    (:monitorfun        :pointer    "The function pointer type for monitor configuration callbacks.")

    ; Window
    (:window        :pointer)
    )


;; Structs

; Input
(defcstruct gamepadstate
    "Gamepad input state."
    (buttons    :unsigned-char  :count  15)
    (axes       :float          :count  6))

; Monitor
(defcstruct vidmode
    "Video mode type."
    (width          :int)
    (height         :int)
    (redBits        :int)
    (greenBits      :int)
    (blueBits       :int)
    (refreshRate    :int))

(defcstruct gammaramp
    "Gamma ramp."
    (red    :pointer)
    (green  :pointer)
    (blue   :pointer)
    (size   :int))

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

; Monitor
(defcfun ("glfwGetMonitors" get-monitors) :pointer
    "Returns the currently connected monitors."
    (count :pointer))

(defcfun ("glfwGetPrimaryMonitor" get-primary-monitor) :pointer
    "Returns the primary monitor.")

(defcfun ("glfwGetMonitorPos" get-monitor-pos) :void
    "Returns the position of the monitor's viewport on the virtual screen."
    (monitor :monitor) (xpos :pointer) (ypos :pointer))

(defcfun ("glfwGetMonitorWorkarea" get-monitor-workarea) :void
    "Retrieves the work area of the monitor."
    (monitor :monitor) (xpos :pointer) (ypos :pointer) 
    (width :pointer) (height :pointer))

(defcfun ("glfwGetMonitorPhysicalSize" get-monitor-physical-size) :void
    "Returns the physical size of the monitor."
    (monitor :monitor) (widthMM :pointer) (heightMM :pointer))

(defcfun ("glfwGetMonitorContentScale" get-monitor-content-scale) :void
    "Retrieves the content scale for the specified monitor."
    (monitor :monitor) (xscale :pointer) (yscale :pointer))

(defcfun ("glfwGetMonitorName" get-monitor-name) :string
    "Returns the name of the specified monitor."
    (monitor :monitor))

(defcfun ("glfwSetMonitorUserPointer" set-monitor-user-pointer) :void
    "Sets the user pointer of the specified monitor."
    (monitor :monitor) (pointer :pointer))

(defcfun ("glfwGetMonitorUserPointer" get-monitor-user-pointer) :pointer
    "Returns the user pointer of the specified monitor."
    (monitor :monitor))

(defcfun ("glfwSetMonitorCallback" set-monitor-callback) :monitorfun
    "Sets the monitor configuration callback."
    (callback :monitorfun))

(defcfun ("glfwGetVideoModes" get-video-modes) :pointer
    "Returns the available video modes for the specified monitor."
    (monitor :monitor) (count :pointer))

(defcfun ("glfwGetVideoMode" get-video-mode) :pointer
    "Returns the current mode of the specified monitor."
    (monitor :monitor))

(defcfun ("glfwSetGamma" set-gamma) :void
    "Generates a gamma ramp and sets it for the specified monitor."
    (monitor :monitor) (gamma :float))

(defcfun ("glfwGetGammaRamp" get-gamma-ramp) :pointer
    "Returns the current gamma ramp for the specified monitor."
    (monitor :monitor))

(defcfun ("glfwSetGammaRamp" set-gamma-ramp) :void
    "Sets the current gamma ramp for the specified monitor."
    (monitor :monitor) (ramp :pointer)) 