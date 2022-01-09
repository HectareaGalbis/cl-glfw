
;; Raw GLFW bindings, types and constants.
(in-package :raw-glfw)

(define-foreign-library glfw
    (t (:default "glfw3")))
   
(use-foreign-library glfw)


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

    ; Input mode
    (+cursor+                       #x00033001)
    (+sticky-keys+                  #x00033002)
    (+sticky-mouse-buttons+         #x00033003)
    (+lock-key-mods+                #x00033004)
    (+raw-mouse-motion+             #x00033005)

    ; Cursor mode
    (+cursor-normal+                #x00034001)
    (+cursor-hidden+                #x00034002)
    (+cursor-disabled+              #x00034003)

    ; Joystick configuration
    (+connected+                    #x00040001)
    (+disconnected+                 #x00040002)

    ; Window
    (+focused+                      #x00020001                      "Input focus window hint and attribute.")
    (+iconified+                    #x00020002                      "Window iconification window attribute.")
    (+resizable+                    #x00020003                      "Window resize-ability window hint and attribute.")
    (+visible+                      #x00020004                      "Window visibility window hint and attribute.")
    (+decorated+                    #x00020005                      "Window decoration window hint and attribute.")
    (+auto-iconify+                 #x00020006                      "Window auto-iconification window hint and attribute.")
    (+floating+                     #x00020007                      "Window decoration window hint and attribute.")
    (+maximized+                    #x00020008                      "Window maximization window hint and attribute.")
    (+center-cursor+                #x00020009                      "Cursor centering window hint.")
    (+transparent-framebuffer+      #x0002000A                      "Window framebuffer transparency hint and attribute.")
    (+hovered+                      #x0002000B                      "Mouse cursor hover window attribute.")
    (+focus-on-show+                #x0002000C                      "Input focus on calling show window hint and attribute.")
    (+red-bits+                     #x00021001                      "Framebuffer bit depth hint.")
    (+green-bits+                   #x00021002                      "Framebuffer bit depth hint.")
    (+blue-bits+                    #x00021003                      "Framebuffer bit depth hint.")
    (+alpha-bits+                   #x00021004                      "Framebuffer bit depth hint.")
    (+depth-bits+                   #x00021005                      "Framebuffer bit depth hint.")
    (+stencil-bits+                 #x00021006                      "Framebuffer bit depth hint.")
    (+accum-red-bits+               #x00021007                      "Framebuffer bit depth hint.")
    (+accum-green-bits+             #x00021008                      "Framebuffer bit depth hint.")
    (+accum-blue-bits+              #x00021009                      "Framebuffer bit depth hint.")
    (+accum-alpha-bits+             #x0002100A                      "Framebuffer bit depth hint.")
    (+aux-buffers+                  #x0002100B                      "Framebuffer auxiliary buffer hint.")
    (+stereo+                       #x0002100C                      "OpenGL stereoscopic rendering hint.")
    (+samples+                      #x0002100D                      "Framebuffer MSAA samples hint.")
    (+srgb-capable+                 #x0002100E                      "Framebuffer sRGB hint.")
    (+refresh-rate+                 #x0002100F                      "Monitor refresh rate hint.")
    (+doublebuffer+                 #x00021010                      "Framebuffer double buffering hint.")
    (+client-api+                   #x00022001                      "Context client API hint and attribute.")
    (+context-version-major+        #x00022002                      "Context client API major version hint and attribute.")
    (+context-version-minor+        #x00022003                      "Context client API minor version hint and attribute.")
    (+context-revision+             #x00022004                      "Context client API revision number attribute.")
    (+context-robustness+           #x00022005                      "Context robustness hint and attribute.")
    (+opengl-forward-compat+        #x00022006                      "OpenGL forward-compatibility hint and attribute.")
    (+opengl-debug-context+         #x00022007                      "Debug mode context hint and attribute.")
    (+opengl-profile+               #x00022008                      "OpenGL profile hint and attribute.")
    (+context-release-behavior+     #x00022009                      "Context flush-on-release hint and attribute.")
    (+context-no-error+             #x0002200A                      "Context error suppression hint and attribute.")
    (+context-creation-api+         #x0002200B                      "Context creation API hint and attribute.")
    (+scale-to-monitor+             #x0002200C                      "Window content area scaling window window hint.")
    (+cocoa-retina-framebuffer+     #x00023001                      "macOS specific window hint.")
    (+cocoa-frame-name+             #x00023002                      "macOS specific window hint.")
    (+cocoa-graphics-switching+     #x00023003                      "macOS specific window hint.")
    (+x11-class-name+               #x00024001                      "X11 specific window hint.")
    (+x11-instance-name+            #x00024002                      "X11 specific window hint.")
    
    ; Others
    (+dont-care+                    -1))


;; Deftypes

(define-foreign-type pointer-or-nil-type ()
    ()
    (:actual-type :pointer)
    (:simple-parser pointer-or-nil))

(defmethod translate-to-foreign (value (type pointer-or-nil-type))
    (if (null value) (null-pointer) value))
   
(defmethod translate-from-foreign (ptr (type pointer-or-nil-type))
    (if (null-pointer-p ptr) nil ptr))

;; Structs

; Input
(defcstruct (gamepadstate :class c-gamepadstate)
    "Gamepad input state."
    (buttons :uchar :count 15)
    (axes    :float :count 6))

; Monitor
(defcstruct (vidmode :class c-vidmode)
    "Video mode type."
    (width          :int)
    (height         :int)
    (redBits        :int)
    (greenBits      :int)
    (blueBits       :int)
    (refreshRate    :int))

(defcstruct (gammaramp :class c-gammaramp)
    "Gamma ramp."
    (red    :pointer)
    (green  :pointer)
    (blue   :pointer)
    (size   :int))

; Window
(defcstruct (image :class c-image)
    "Image data."
    (width  :int)
    (height :int)
    (pixels :pointer))


;; Functions

; Context
(defcfun ("glfwMakeContextCurrent" make-context-current) :void 
    "Makes the context of the specified window current for the calling thread."
    (window pointer-or-nil))

(defcfun ("glfwGetCurrentContext" get-current-context) pointer-or-nil 
    "Returns the window whose context is current on the calling thread.")

(defcfun ("glfwSwapInterval" swap-interval) :void
    "Sets the swap interval for the current context."
    (interval :int))

(defcfun ("glfwExtensionSupported" extension-supported) :boolean
    "Returns whether the specified extension is available."
    (extension :string))

(defcfun ("glfwGetProcAddress" get-proc-address) :pointer
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
    (major :pointer) (minor :pointer) (rev :pointer))

(defcfun ("glfwGetVersionString" get-version-string) :string
    "Returns a string describing the compile-time configuration.")

(defcfun ("glfwGetError" get-error) :int
    "Returns and clears the last error for the calling thread."
    (description :pointer))

(defcfun ("glfwSetErrorCallback" set-error-callback) pointer-or-nil
    "Sets the error callback."
    (callback pointer-or-nil))

; Input
(defcfun ("glfwGetInputMode" get-input-mode) :int
    "Returns the value of an input option for the specified window."
    (window :pointer) (mode :int))

(defcfun ("glfwSetInputMode" set-input-mode) :void
    "Sets an input option for the specified window."
    (window :pointer) (mode :int) (value :int))

(defcfun ("glfwRawMouseMotionSupported" raw-mouse-motion-supported) :boolean
    "Returns whether raw mouse motion is supported.")

(defcfun ("glfwGetKeyName" get-key-name) :string
    "Returns the layout-specific name of the specified printable key."
    (key :int) (scancode :int))

(defcfun ("glfwGetKeyScancode" get-key-scancode) :int
    "Returns the platform-specific scancode of the specified key."
    (key :int))

(defcfun ("glfwGetKey" get-key) :int
    "Returns the last reported state of a keyboard key for the specified window."
    (window :pointer) (key :int))

(defcfun ("glfwGetMouseButton" get-mouse-button) :int
    "Returns the last reported state of a mouse button for the specified window."
    (window :pointer) (button :int))

(defcfun ("glfwGetCursorPos" get-cursor-pos) :void
    "Retrieves the position of the cursor relative to the content area of the window."
    (window :pointer) (xpos :pointer) (ypos :pointer))

(defcfun ("glfwSetCursorPos" set-cursor-pos) :void
    "Sets the position of the cursor, relative to the content area of the window."
    (window :pointer) (xpos :double) (ypos :double))

(defcfun ("glfwCreateCursor" create-cursor) pointer-or-nil
    "Creates a custom cursor."
    (img :pointer) (xhot :int) (yhot :int))

(defcfun ("glfwCreateStandardCursor" create-standard-cursor) pointer-or-nil
    "Creates a cursor with a standard shape."
    (shape :int))

(defcfun ("glfwDestroyCursor" destroy-cursor) :void
    "Destroys a cursor."
    (cursor :pointer))

(defcfun ("glfwSetCursor" set-cursor) :void
    "Sets the cursor for the window."
    (window :pointer) (cursor pointer-or-nil))

(defcfun ("glfwSetKeyCallback" set-key-callback) pointer-or-nil
    "Sets the key callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetCharCallback" set-char-callback) pointer-or-nil
    "Sets the Unicode character callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetCharModsCallback" set-char-mods-callback) pointer-or-nil
    "Sets the Unicode character with modifiers callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetMouseButtonCallback" set-mouse-button-callback) pointer-or-nil
    "Sets the mouse button callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetCursorPosCallback" set-cursor-pos-callback) pointer-or-nil
    "Sets the cursor position callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetCursorEnterCallback" set-cursor-enter-callback) pointer-or-nil
    "Sets the cursor enter/leave callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetScrollCallback" set-scroll-callback) pointer-or-nil
    "Sets the scroll callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetDropCallback" set-drop-callback) pointer-or-nil
    "Sets the path drop callback."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwJoystickPresent" joystick-present) :boolean
    "Returns whether the specified joystick is present."
    (jid :int))

(defcfun ("glfwGetJoystickAxes" get-joystick-axes) pointer-or-nil
    "Returns the values of all axes of the specified joystick."
    (jid :int) (count :pointer))

(defcfun ("glfwGetJoystickButtons" get-joystick-buttons) pointer-or-nil
    "Returns the state of all buttons of the specified joystick."
    (jid :int) (count :pointer))

(defcfun ("glfwGetJoystickHats" get-joystick-hats) pointer-or-nil
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
    (jid :int) (pointer pointer-or-nil))

(defcfun ("glfwGetJoystickUserPointer" get-joystick-user-pointer) pointer-or-nil
    "Returns the user pointer of the specified joystick."
    (jid :int))

(defcfun ("glfwJoystickIsGamepad" joystick-is-gamepad) :boolean
    "Returns whether the specified joystick has a gamepad mapping."
    (jid :int))

(defcfun ("glfwSetJoystickCallback" set-joystick-callback) pointer-or-nil
    "Sets the joystick configuration callback."
    (callback pointer-or-nil))

(defcfun ("glfwUpdateGamepadMappings" update-gamepad-mappings) :boolean
    "Adds the specified SDL_GameControllerDB gamepad mappings."
    (string :string))

(defcfun ("glfwGetGamepadName" get-gamepad-name) :string
    "Returns the human-readable gamepad name for the specified joystick."
    (jid :int))

(defcfun ("glfwGetGamepadState" get-gamepad-state) :boolean
    "Retrieves the state of the specified joystick remapped as a gamepad."
    (jid :int) (state :pointer))

(defcfun ("glfwSetClipboardString" set-clipboard-string) :void
    "Sets the clipboard to the specified string."
    (window pointer-or-nil) (string :string))   ; The window parameter is deprecated

(defcfun ("glfwGetClipboardString" get-clipboard-string) :string
    "Returns the contents of the clipboard as a string."
    (window pointer-or-nil))                    ; The window parameter is deprecated

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
(defcfun ("glfwGetMonitors" get-monitors) pointer-or-nil
    "Returns the currently connected monitors."
    (count :pointer))

(defcfun ("glfwGetPrimaryMonitor" get-primary-monitor) pointer-or-nil
    "Returns the primary monitor.")

(defcfun ("glfwGetMonitorPos" get-monitor-pos) :void
    "Returns the position of the monitor's viewport on the virtual screen."
    (monitor :pointer) (xpos :pointer) (ypos :pointer))

(defcfun ("glfwGetMonitorWorkarea" get-monitor-workarea) :void
    "Retrieves the work area of the monitor."
    (monitor :pointer) (xpos :pointer) (ypos :pointer) 
    (width :pointer) (height :pointer))

(defcfun ("glfwGetMonitorPhysicalSize" get-monitor-physical-size) :void
    "Returns the physical size of the monitor."
    (monitor :pointer) (widthMM :pointer) (heightMM :pointer))

(defcfun ("glfwGetMonitorContentScale" get-monitor-content-scale) :void
    "Retrieves the content scale for the specified monitor."
    (monitor :pointer) (xscale :pointer) (yscale :pointer))

(defcfun ("glfwGetMonitorName" get-monitor-name) :string
    "Returns the name of the specified monitor."
    (monitor :pointer))

(defcfun ("glfwSetMonitorUserPointer" set-monitor-user-pointer) :void
    "Sets the user pointer of the specified monitor."
    (monitor :pointer) (pointer pointer-or-nil))

(defcfun ("glfwGetMonitorUserPointer" get-monitor-user-pointer) pointer-or-nil
    "Returns the user pointer of the specified monitor."
    (monitor :pointer))

(defcfun ("glfwSetMonitorCallback" set-monitor-callback) pointer-or-nil
    "Sets the monitor configuration callback."
    (callback pointer-or-nil))

(defcfun ("glfwGetVideoModes" get-video-modes) pointer-or-nil
    "Returns the available video modes for the specified monitor."
    (monitor :pointer) (count :pointer))

(defcfun ("glfwGetVideoMode" get-video-mode) pointer-or-nil
    "Returns the current mode of the specified monitor."
    (monitor :pointer))

(defcfun ("glfwSetGamma" set-gamma) :void
    "Generates a gamma ramp and sets it for the specified monitor."
    (monitor :pointer) (gamma :float))

(defcfun ("glfwGetGammaRamp" get-gamma-ramp) pointer-or-nil
    "Returns the current gamma ramp for the specified monitor."
    (monitor :pointer))

(defcfun ("glfwSetGammaRamp" set-gamma-ramp) :void
    "Sets the current gamma ramp for the specified monitor."
    (monitor :pointer) (ramp :pointer)) 

; Vulkan support
(defcfun ("glfwVulkanSupported" vulkan-supported) :boolean
    "Returns whether the Vulkan loader and an ICD have been found.")

(defcfun ("glfwGetRequiredInstanceExtensions" get-required-instance-extensions) pointer-or-nil
    "Returns the Vulkan instance extensions required by GLFW."
    (count :pointer))

(defcfun ("glfwGetInstanceProcAddress" get-instance-proc-address) pointer-or-nil
    "Returns the address of the specified Vulkan instance function."
    (instance pointer-or-nil) (procname :string))

(defcfun ("glfwGetPhysicalDevicePresentationSupport" get-physical-device-presentation-support) :boolean
    "Returns whether the specified queue family can present images."
    (instance :pointer) (device :pointer) (queuefamily :uint32))

(defcfun ("glfwCreateWindowSurface" create-window-surface) :int
    "Creates a Vulkan surface for the specified window."
    (instance :pointer) (window :pointer) (allocator pointer-or-nil) (surface :pointer))

; Window
(defcfun ("glfwDefaultWindowHints" default-window-hints) :void
    "Resets all window hints to their default values.")

(defcfun ("glfwWindowHint" window-hint) :void
    "Sets the specified window hint to the desired value."
    (hint :int) (value :int))

(defcfun ("glfwWindowHintString" window-hint-string) :void
    "Sets the specified window hint to the desired value."
    (hint :int) (value :string))

(defcfun ("glfwCreateWindow" create-window) pointer-or-nil
    "Creates a window and its associated context."
    (width :int) (height :int) (title :string) (monitor pointer-or-nil) (share pointer-or-nil))

(defcfun ("glfwDestroyWindow" destroy-window) :void
    "Destroys the specified window and its context."
    (window :pointer))

(defcfun ("glfwWindowShouldClose" window-should-close) :boolean
    "Checks the close flag of the specified window."
    (window :pointer))

(defcfun ("glfwSetWindowShouldClose" set-window-should-close) :void
    "Sets the close flag of the specified window."
    (window :pointer) (value :boolean))

(defcfun ("glfwSetWindowTitle" set-window-title) :void
    "Sets the title of the specified window."
    (window :pointer) (title :string))

(defcfun ("glfwSetWindowIcon" set-window-icon) :void
    "Sets the icon for the specified window."
    (window :pointer) (count :int) (images :pointer))

(defcfun ("glfwGetWindowPos" get-window-pos) :void
    "Retrieves the position of the content area of the specified window."
    (window :pointer) (xpos :pointer) (ypos :pointer))

(defcfun ("glfwSetWindowPos" set-window-pos) :void
    "Sets the position of the content area of the specified window."
    (window :pointer) (xpos :int) (ypos :int))

(defcfun ("glfwGetWindowSize" get-window-size) :void
    "Retrieves the size of the content area of the specified window."
    (window :pointer) (width :pointer) (height :pointer))

(defcfun ("glfwSetWindowSizeLimits" set-window-size-limits) :void
    "Sets the size limits of the specified window."
    (window :pointer) (minwidth :int) (minheight :int) (maxwidth :int) (maxheight :int))

(defcfun ("glfwSetWindowAspectRatio" set-window-aspect-ratio) :void
    "Sets the aspect ratio of the specified window."
    (window :pointer) (numer :int) (denom :int))

(defcfun ("glfwSetWindowSize" set-window-size) :void
    "Sets the size of the content area of the specified window."
    (window :pointer) (width :int) (height :int))

(defcfun ("glfwGetFramebufferSize" get-framebuffer-size) :void
    "Retrieves the size of the framebuffer of the specified window."
    (window :pointer) (width :pointer) (height :pointer))

(defcfun ("glfwGetWindowFrameSize" get-window-frame-size) :void
    "Retrieves the size of the frame of the window."
    (window :pointer) (left :pointer) (top :pointer) (right :pointer) (bottom :pointer))

(defcfun ("glfwGetWindowContentScale" get-window-content-scale) :void
    "Retrieves the content scale for the specified window."
    (window :pointer) (xscale :float) (yscale :float))

(defcfun ("glfwGetWindowOpacity" get-window-opacity) :float
    "Returns the opacity of the whole window."
    (window :pointer))

(defcfun ("glfwSetWindowOpacity" set-window-opacity) :void
    "Sets the opacity of the whole window."
    (window :pointer) (opacity :float))

(defcfun ("glfwIconifyWindow" iconify-window) :void
    "Iconifies the specified window."
    (window :pointer))

(defcfun ("glfwRestoreWindow" restore-window) :void
    "Restores the specified window."
    (window :pointer))

(defcfun ("glfwMaximizeWindow" maximize-window) :void
    "Maximizes the specified window."
    (window :pointer))

(defcfun ("glfwShowWindow" show-window) :void
    "Makes the specified window visible."
    (window :pointer))

(defcfun ("glfwHideWindow" hide-window) :void
    "Hides the specified window."
    (window :pointer))

(defcfun ("glfwFocusWindow" focus-window) :void
    "Brings the specified window to front and sets input focus."
    (window :pointer))

(defcfun ("glfwRequestWindowAttention" request-window-attention) :void
    "Requests user attention to the specified window."
    (window :pointer))

(defcfun ("glfwGetWindowMonitor" get-window-monitor) pointer-or-nil
    "Returns the monitor that the window uses for full screen mode."
    (window :pointer))

(defcfun ("glfwSetWindowMonitor" set-window-monitor) :void
    "Sets the mode, monitor, video mode and placement of a window."
    (window :pointer) (monitor pointer-or-nil)
    (xpos :int) (ypos :int) (width :int) (height :int) (refresh-rate :int))

(defcfun ("glfwGetWindowAttrib" get-window-attrib) :int
    "Returns an attribute of the specified window."
    (window :pointer) (attrib :int))

(defcfun ("glfwSetWindowAttrib" set-window-attrib) :void
    "Sets an attribute of the specified window."
    (window :pointer) (attrib :int) (value :int))

(defcfun ("glfwSetWindowUserPointer" set-window-user-pointer) :void
    "Sets the user pointer of the specified window."
    (window :pointer) (pointer pointer-or-nil))

(defcfun ("glfwGetWindowUserPointer" get-window-user-pointer) pointer-or-nil
    "Returns the user pointer of the specified window."
    (window :pointer))

(defcfun ("glfwSetWindowPosCallback" set-window-pos-callback) pointer-or-nil
    "Sets the position callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetWindowSizeCallback" set-window-size-callback) pointer-or-nil
    "Sets the size callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetWindowCloseCallback" set-window-close-callback) pointer-or-nil
    "Sets the close callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetWindowRefreshCallback" set-window-refresh-callback) pointer-or-nil
    "Sets the refresh callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetWindowFocusCallback" set-window-focus-callback) pointer-or-nil
    "Sets the focus callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetWindowIconifyCallback" set-window-iconify-callback) pointer-or-nil
    "Sets the iconify callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetWindowMaximizeCallback" set-window-maximize-callback) pointer-or-nil
    "Sets the maximize callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwSetFramebufferSizeCallback" set-framebuffer-size-callback) pointer-or-nil
    "Sets the framebuffer resize callback for the specified window."
    (window :pointer) (callback pointer-or-nil)) 

(defcfun ("glfwSetWindowContentScaleCallback" set-window-content-scale-callback) pointer-or-nil
    "Sets the window content scale callback for the specified window."
    (window :pointer) (callback pointer-or-nil))

(defcfun ("glfwPollEvents" poll-events) :void
    "Processes all pending events.")

(defcfun ("glfwWaitEvents" wait-events) :void
    "Waits until events are queued and processes them.")

(defcfun ("glfwWaitEventsTimeout" wait-events-timeout) :void
    "Waits with timeout until events are queued and processes them."
    (timeout :double))

(defcfun ("glfwPostEmptyEvent" post-empty-event) :void
    "Posts an empty event to the event queue.")

(defcfun ("glfwSwapBuffers" swap-buffers) :void
    "Swaps the front and back buffers of the specified window."
    (window :pointer))