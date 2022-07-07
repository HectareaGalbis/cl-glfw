
;; Raw GLFW bindings, types and constants.
(in-package :glfw)


;; Helper functions and macros
(defmacro defconstants (&body body)
  `(progn
     ,@(mapcar (lambda (x) (cons 'defconstant x)) body)))

(defmacro defctypes (&body body)
  `(progn
     ,@(mapcar (lambda (x) (cons 'cffi:defctype x)) body)))


;; Constants
(defconstants

    ; Initialization, version and error
    (GLFW_VERSION_MAJOR                3                               "The major version number of the GLFW header.")
    (GLFW_VERSION_MINOR                3                               "The minor version number of the GLFW header.")
    (GLFW_VERSION_REVISION             6                               "The revision number of the GLFW header.")
    (GLFW_TRUE                         1                               "One.")
    (GLFW_FALSE                        0                               "Zero.")
    (GLFW_JOYSTICK_HAT_BUTTONS         #x00050001                      "Joystick hat buttons init hint.")
    (GLFW_COCOA_CHDIR_RESOURCES        #x00051001                      "macOS specific init hint.")
    (GLFW_COCOA_MENUBAR                #x00051002                      "macOS specific init hint.")

    ; Error codes
    (GLFW_NO_ERROR                     0                               "No error has occurred.")
    (GLFW_NOT_INITIALIZED              #x00010001                      "GLFW has not been initialized.")
    (GLFW_NO_CURRENT_CONTEXT           #x00010002                      "No context is current for this thread.")
    (GLFW_INVALID_ENUM                 #x00010003                      "One of the arguments to the function was an invalid enum value.")
    (GLFW_INVALID_VALUE                #x00010004                      "One of the arguments to the function was an invalid value.")
    (GLFW_OUT_OF_MEMORY                #x00010005                      "A memory allocation failed.")
    (GLFW_API_UNAVAILABLE              #x00010006                      "GLFW could not find support for the requested API on the system.")
    (GLFW_VERSION_UNAVAILABLE          #x00010007                      "The requested OpenGL or OpenGL ES version is not available.")
    (GLFW_PLATFORM_ERROR               #x00010008                      "A platform_specific error occurred that does not match any of the more specific categories.")
    (GLFW_FORMAT_UNAVAILABLE           #x00010009                      "The requested format is not supported or available.")
    (GLFW_NO_WINDOW_CONTEXT            #x0001000A                      "The specified window does not have an OpenGL or OpenGL ES context.")
    
    ; Input
    (GLFW_RELEASE                      0                               "The key or mouse button was released.")
    (GLFW_PRESS                        1                               "The key or mouse button was pressed.")
    (GLFW_REPEAT                       2                               "The key was held down until it repeated.")
    
    ; Gamepad axes
    (GLFW_GAMEPAD_AXIX_LEFT_X          0)
    (GLFW_GAMEPAD_AXIS_LEFT_Y          1)
    (GLFW_GAMEPAD_AXIS_RIGHT_X         2)
    (GLFW_GAMEPAD_AXIS_RIGHT_Y         3)
    (GLFW_GAMEPAD_AXIS_LEFT_TRIGGER    4)
    (GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER   5)
    (GLFW_GAMEPAD_AXIS_LAST            GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER)

    ; Gamepad buttons
    (GLFW_GAMEPAD_BUTTON_A             0)
    (GLFW_GAMEPAD_BUTTON_B             1)
    (GLFW_GAMEPAD_BUTTON_X             2)
    (GLFW_GAMEPAD_BUTTON_Y             3)
    (GLFW_GAMEPAD_BUTTON_LEFT_BUMPER   4)
    (GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER  5)
    (GLFW_GAMEPAD_BUTTON_BACK          6)
    (GLFW_GAMEPAD_BUTTON_START         7)
    (GLFW_GAMEPAD_BUTTON_GUIDE         8)
    (GLFW_GAMEPAD_BUTTON_LEFT_THUMB    9)
    (GLFW_GAMEPAD_BUTTON_RIGHT_THUMB   10)
    (GLFW_GAMEPAD_BUTTON_DPAD_UP       11)
    (GLFW_GAMEPAD_BUTTON_DPAD_RIGHT    12)
    (GLFW_GAMEPAD_BUTTON_DPAD_DOWN     13)
    (GLFW_GAMEPAD_BUTTON_DPAD_LEFT     14)
    (GLFW_GAMEPAD_BUTTON_LAST          GLFW_GAMEPAD_BUTTON_DPAD_LEFT)
    (GLFW_GAMEPAD_BUTTON_CROSS         GLFW_GAMEPAD_BUTTON_A)
    (GLFW_GAMEPAD_BUTTON_CIRCLE        GLFW_GAMEPAD_BUTTON_B)
    (GLFW_GAMEPAD_BUTTON_SQUARE        GLFW_GAMEPAD_BUTTON_X)
    (GLFW_GAMEPAD_BUTTON_TRIANGLE      GLFW_GAMEPAD_BUTTON_Y)

    ; Joystick hat states
    (GLFW_HAT_CENTERED                 0)
    (GLFW_HAT_UP                       1)
    (GLFW_HAT_RIGHT                    2)
    (GLFW_HAT_DOWN                     4)
    (GLFW_HAT_LEFT                     8)
    (GLFW_HAT_RIGHT_UP                 (logior GLFW_HAT_RIGHT GLFW_HAT_UP))
    (GLFW_HAT_RIGHT_DOWN               (logior GLFW_HAT_RIGHT GLFW_HAT_DOWN))
    (GLFW_HAT_LEFT_UP                  (logior GLFW_HAT_LEFT GLFW_HAT_UP))
    (GLFW_HAT_LEFT_DOWN                (logior GLFW_HAT_LEFT GLFW_HAT_DOWN))

    ; Joysticks
    (GLFW_JOYSTICK_1                   0)
    (GLFW_JOYSTICK_2                   1)
    (GLFW_JOYSTICK_3                   2)
    (GLFW_JOYSTICK_4                   3)
    (GLFW_JOYSTICK_5                   4)
    (GLFW_JOYSTICK_6                   5)
    (GLFW_JOYSTICK_7                   6)
    (GLFW_JOYSTICK_8                   7)
    (GLFW_JOYSTICK_9                   8)
    (GLFW_JOYSTICK_10                  9)
    (GLFW_JOYSTICK_11                  10)
    (GLFW_JOYSTICK_12                  11)
    (GLFW_JOYSTICK_13                  12)
    (GLFW_JOYSTICK_14                  13)
    (GLFW_JOYSTICK_15                  14)
    (GLFW_JOYSTICK_16                  15)
    (GLFW_JOYSTICK_LAST                GLFW_JOYSTICK_16)

    ; Keyboard keys
    (GLFW_KEY_UNKNOWN                  -1)
    (GLFW_KEY_SPACE                    32)
    (GLFW_KEY_APOSTROPHE               39                              "/* ' */")
    (GLFW_KEY_COMMA                    44                              "/* , */")
    (GLFW_KEY_MINUS                    45                              "/* _ */")
    (GLFW_KEY_PERIOD                   46                              "/* . */")
    (GLFW_KEY_SLASH                    47                              "/* / */")
    (GLFW_KEY_0                        48)
    (GLFW_KEY_1                        49)
    (GLFW_KEY_2                        50)
    (GLFW_KEY_3                        51)
    (GLFW_KEY_4                        52)
    (GLFW_KEY_5                        53)
    (GLFW_KEY_6                        54)
    (GLFW_KEY_7                        55)
    (GLFW_KEY_8                        56)
    (GLFW_KEY_9                        57)
    (GLFW_KEY_SEMICOLON                59                              "/* ; */")
    (GLFW_KEY_EQUAL                    61                              "/* = */")
    (GLFW_KEY_A                        65)
    (GLFW_KEY_B                        66)
    (GLFW_KEY_C                        67)
    (GLFW_KEY_D                        68)
    (GLFW_KEY_E                        69)
    (GLFW_KEY_F                        70)
    (GLFW_KEY_G                        71)
    (GLFW_KEY_H                        72)
    (GLFW_KEY_I                        73)
    (GLFW_KEY_J                        74)
    (GLFW_KEY_K                        75)
    (GLFW_KEY_L                        76)
    (GLFW_KEY_M                        77)
    (GLFW_KEY_N                        78)
    (GLFW_KEY_O                        79)
    (GLFW_KEY_P                        80)
    (GLFW_KEY_Q                        81)
    (GLFW_KEY_R                        82)
    (GLFW_KEY_S                        83)
    (GLFW_KEY_T                        84)
    (GLFW_KEY_U                        85)
    (GLFW_KEY_V                        86)
    (GLFW_KEY_W                        87)
    (GLFW_KEY_X                        88)
    (GLFW_KEY_Y                        89)
    (GLFW_KEY_Z                        90)
    (GLFW_KEY_LEFT_BRACKET             91                              "/* [ */")
    (GLFW_KEY_BACKSLASH                92                              "/* \\ */")
    (GLFW_KEY_RIGHT_BRACKET            93                              "/* ] */")
    (GLFW_KEY_GRAVE_ACCENT             96                              "/* ` */")
    (GLFW_KEY_WORLD1                   161                             "/* non_US #1 */")
    (GLFW_KEY_WORLD2                   162                             "/* non_US #2 */")
    (GLFW_KEY_ESCAPE                   256)
    (GLFW_KEY_ENTER                    257)
    (GLFW_KEY_TAB                      258)
    (GLFW_KEY_BACKSPACE                259)
    (GLFW_KEY_INSERT                   260)
    (GLFW_KEY_DELETE                   261)
    (GLFW_KEY_RIGHT                    262)
    (GLFW_KEY_LEFT                     263)
    (GLFW_KEY_DOWN                     264)
    (GLFW_KEY_UP                       265)
    (GLFW_KEY_PAGE_UP                  266)
    (GLFW_KEY_PAGE_DOWN                267)
    (GLFW_KEY_HOME                     268)
    (GLFW_KEY_END                      269)
    (GLFW_KEY_CAPS_LOCK                280)
    (GLFW_KEY_SCROLL_LOCK              281)
    (GLFW_KEY_NUM_LOCK                 282)
    (GLFW_KEY_PRINT_SCREEN             283)
    (GLFW_KEY_PAUSE                    284)
    (GLFW_KEY_F1                       290)
    (GLFW_KEY_F2                       291)
    (GLFW_KEY_F3                       292)
    (GLFW_KEY_F4                       293)
    (GLFW_KEY_F5                       294)
    (GLFW_KEY_F6                       295)
    (GLFW_KEY_F7                       296)
    (GLFW_KEY_F8                       297)
    (GLFW_KEY_F9                       298)
    (GLFW_KEY_F10                      299)
    (GLFW_KEY_F11                      300)
    (GLFW_KEY_F12                      301)
    (GLFW_KEY_F13                      302)
    (GLFW_KEY_F14                      303)
    (GLFW_KEY_F15                      304)
    (GLFW_KEY_F16                      305)
    (GLFW_KEY_F17                      306)
    (GLFW_KEY_F18                      307)
    (GLFW_KEY_F19                      308)
    (GLFW_KEY_F20                      309)
    (GLFW_KEY_F21                      310)
    (GLFW_KEY_F22                      311)
    (GLFW_KEY_F23                      312)
    (GLFW_KEY_F24                      313)
    (GLFW_KEY_F25                      314)
    (GLFW_KEY_KP_0                     320)
    (GLFW_KEY_KP_1                     321)
    (GLFW_KEY_KP_2                     322)
    (GLFW_KEY_KP_3                     323)
    (GLFW_KEY_KP_4                     324)
    (GLFW_KEY_KP_5                     325)
    (GLFW_KEY_KP_6                     326)
    (GLFW_KEY_KP_7                     327)
    (GLFW_KEY_KP_8                     328)
    (GLFW_KEY_KP_9                     329)
    (GLFW_KEY_KP_DECIMAL               330)
    (GLFW_KEY_KP_DIVIDE                331)
    (GLFW_KEY_KP_MULTIPLY              332)
    (GLFW_KEY_KP_SUBTRACT              333)
    (GLFW_KEY_KP_ADD                   334)
    (GLFW_KEY_KP_ENTER                 335)
    (GLFW_KEY_KP_EQUAL                 336)
    (GLFW_KEY_LEFT_SHIFT               340)
    (GLFW_KEY_LEFT_CONTROL             341)
    (GLFW_KEY_LEFT_ALT                 342)
    (GLFW_KEY_LEFT_SUPER               343)
    (GLFW_KEY_RIGHT_SHIFT              344)
    (GLFW_KEY_RIGHT_CONTROL            345)
    (GLFW_KEY_RIGHT_ALT                346)
    (GLFW_KEY_RIGHT_SUPER              347)
    (GLFW_KEY_MENU                     348)
    (GLFW_KEY_LAST                     GLFW_KEY_MENU)

    ; Modifier key flags
    (GLFW_MOD_SHIFT                    #x0001                          "If this bit is set one or more Shift keys were held down.")
    (GLFW_MOD_CONTROL                  #x0002                          "If this bit is set one or more Control keys were held down.")
    (GLFW_MOD_ALT                      #x0004                          "If this bit is set one or more Alt keys were held down.")
    (GLFW_MOD_SUPER                    #x0008                          "If this bit is set one or more Super keys were held down.")
    (GLFW_MOD_CAPS_LOCK                #x0010                          "If this bit is set the Caps Lock key is enabled.")
    (GLFW_MOD_NUM_LOCK                 #x0020                          "If this bit is set the Num Lock key is enabled.")

    ; Mouse buttons
    (GLFW_MOUSE_BUTTON_1               0)
    (GLFW_MOUSE_BUTTON_2               1)
    (GLFW_MOUSE_BUTTON_3               2)
    (GLFW_MOUSE_BUTTON_4               3)
    (GLFW_MOUSE_BUTTON_5               4)
    (GLFW_MOUSE_BUTTON_6               5)
    (GLFW_MOUSE_BUTTON_7               6)
    (GLFW_MOUSE_BUTTON_8               7)
    (GLFW_MOUSE_BUTTON_LAST            GLFW_MOUSE_BUTTON_8)
    (GLFW_MOUSE_BUTTON_LEFT            GLFW_MOUSE_BUTTON_1)
    (GLFW_MOUSE_BUTTON_RIGHT           GLFW_MOUSE_BUTTON_2)
    (GLFW_MOUSE_BUTTON_MIDDLE          GLFW_MOUSE_BUTTON_3)

    ; Standard cursor shapes
    (GLFW_ARROW_CURSOR                 #x00036001                      "The regular arrow cursor shape.")
    (GLFW_IBEAM_CURSOR                 #x00036001                      "The text input I_beam cursor shape.")
    (GLFW_CROSSHAIR_CURSOR             #x00036001                      "The crosshair shape.")
    (GLFW_HAND_CURSOR                  #x00036001                      "The hand shape.")
    (GLFW_HRESIZE_CURSOR               #x00036001                      "The horizontal resize arrow shape.")
    (GLFW_VRESIZE_CURSOR               #x00036001                      "The vertical resize arrow shape.")

    ; Input mode
    (GLFW_CURSOR                       #x00033001)
    (GLFW_STICKY_KEYS                  #x00033002)
    (GLFW_STICKY_MOUSE_BUTTONS         #x00033003)
    (GLFW_LOCK_KEY_MODS                #x00033004)
    (GLFW_RAW_MOUSE_MOTION             #x00033005)

    ; Cursor mode
    (GLFW_CURSOR_NORMAL                #x00034001)
    (GLFW_CURSOR_HIDDEN                #x00034002)
    (GLFW_CURSOR_DISABLED              #x00034003)

    ; Joystick configuration
    (GLFW_CONNECTED                    #x00040001)
    (GLFW_DISCONNECTED                 #x00040002)

    ; Window
    (GLFW_FOCUSED                      #x00020001                      "Input focus window hint and attribute.")
    (GLFW_ICONIFIED                    #x00020002                      "Window iconification window attribute.")
    (GLFW_RESIZABLE                    #x00020003                      "Window resize_ability window hint and attribute.")
    (GLFW_VISIBLE                      #x00020004                      "Window visibility window hint and attribute.")
    (GLFW_DECORATED                    #x00020005                      "Window decoration window hint and attribute.")
    (GLFW_AUTO_ICONIFY                 #x00020006                      "Window auto_iconification window hint and attribute.")
    (GLFW_FLOATING                     #x00020007                      "Window decoration window hint and attribute.")
    (GLFW_MAXIMIZED                    #x00020008                      "Window maximization window hint and attribute.")
    (GLFW_CENTER_CURSOR                #x00020009                      "Cursor centering window hint.")
    (GLFW_TRANSPARENT_FRAMEBUFFER      #x0002000A                      "Window framebuffer transparency hint and attribute.")
    (GLFW_HOVERED                      #x0002000B                      "Mouse cursor hover window attribute.")
    (GLFW_FOCUS_ON_SHOW                #x0002000C                      "Input focus on calling show window hint and attribute.")
    (GLFW_RED_BITS                     #x00021001                      "Framebuffer bit depth hint.")
    (GLFW_GREEN_BITS                   #x00021002                      "Framebuffer bit depth hint.")
    (GLFW_BLUE_BITS                    #x00021003                      "Framebuffer bit depth hint.")
    (GLFW_ALPHA_BITS                   #x00021004                      "Framebuffer bit depth hint.")
    (GLFW_DEPTH_BITS                   #x00021005                      "Framebuffer bit depth hint.")
    (GLFW_STENCIL_BITS                 #x00021006                      "Framebuffer bit depth hint.")
    (GLFW_ACCUM_RED_BITS               #x00021007                      "Framebuffer bit depth hint.")
    (GLFW_ACCUM_GREEN_BITS             #x00021008                      "Framebuffer bit depth hint.")
    (GLFW_ACCUM_BLUE_BITS              #x00021009                      "Framebuffer bit depth hint.")
    (GLFW_ACCUM_ALPHA_BITS             #x0002100A                      "Framebuffer bit depth hint.")
    (GLFW_AUX_BUFFERS                  #x0002100B                      "Framebuffer auxiliary buffer hint.")
    (GLFW_STEREO                       #x0002100C                      "OpenGL stereoscopic rendering hint.")
    (GLFW_SAMPLES                      #x0002100D                      "Framebuffer MSAA samples hint.")
    (GLFW_SRGB_CAPABLE                 #x0002100E                      "Framebuffer sRGB hint.")
    (GLFW_REFRESH_RATE                 #x0002100F                      "Monitor refresh rate hint.")
    (GLFW_DOUBLEBUFFER                 #x00021010                      "Framebuffer double buffering hint.")
    (GLFW_CLIENT_API                   #x00022001                      "Context client API hint and attribute.")
    (GLFW_CONTEXT_VERSION_MAJOR        #x00022002                      "Context client API major version hint and attribute.")
    (GLFW_CONTEXT_VERSION_MINOR        #x00022003                      "Context client API minor version hint and attribute.")
    (GLFW_CONTEXT_REVISION             #x00022004                      "Context client API revision number attribute.")
    (GLFW_CONTEXT_ROBUSTNESS           #x00022005                      "Context robustness hint and attribute.")
    (GLFW_OPENGL_FORWARD_COMPAT        #x00022006                      "OpenGL forward_compatibility hint and attribute.")
    (GLFW_OPENGL_DEBUG_CONTEXT         #x00022007                      "Debug mode context hint and attribute.")
    (GLFW_OPENGL_PROFILE               #x00022008                      "OpenGL profile hint and attribute.")
    (GLFW_CONTEXT_RELEASE_BEHAVIOR     #x00022009                      "Context flush_on_release hint and attribute.")
    (GLFW_CONTEXT_NO_ERROR             #x0002200A                      "Context error suppression hint and attribute.")
    (GLFW_CONTEXT_CREATION_API         #x0002200B                      "Context creation API hint and attribute.")
    (GLFW_SCALE_TO_MONITOR             #x0002200C                      "Window content area scaling window window hint.")
    (GLFW_COCOA_RETINA_FRAMEBUFFER     #x00023001                      "macOS specific window hint.")
    (GLFW_COCOA_FRAME_NAME             #x00023002                      "macOS specific window hint.")
    (GLFW_COCOA_GRAPHICS_SWITCHING     #x00023003                      "macOS specific window hint.")
    (GLFW_X11_CLASS_NAME               #x00024001                      "X11 specific window hint.")
    (GLFW_X11_INSTANCE_NAME            #x00024002                      "X11 specific window hint.")
    
    ; Others
    (GLFW_NO_API                       0)
    (GLFW_OPENGL_API                   #x00030001)
    (GLFW_OPENGL_ES_API                #x00030002)
    (GLFW_NO_ROBUSTNESS                0)
    (GLFW_NO_RESET_NOTIFICATION        #x00031001)
    (GLFW_LOSE_CONTEXT_ON_RESET        #x00031002)
    (GLFW_OPENGL_ANY_PROFILE           0)
    (GLFW_OPENGL_CORE_PROFILE          #x00032001)
    (GLFW_OPENGL_COMPAT_PROFILE        #x00032002)
    (GLFW_ANY_RELEASE_BEHAVIOR         0)
    (GLFW_RELEASE_BEHAVIOR_FLUSH       #x00035001)
    (GLFW_RELEASE_BEHAVIOR_NONE        #x00035002)
    (GLFW_NATIVE_CONTEXT_API           #x00036001)
    (GLFW_EGL_CONTEXT_API              #x00036002)
    (GLFW_OSMESA_CONTEXT_API           #x00036003)
    (GLFW_DONT_CARE                    -1))


(defctypes

  ;; Context
  (GLFWglproc :pointer)

  ;; Initialization, version and error   
  (GLFWerrorfun :pointer)

  ;; Input
  (GLFWcursor :pointer)
  (GLFWmousebuttonfun :pointer)
  (GLFWcursorposfun :pointer)
  (GLFWcursorenterfun :pointer)
  (GLFWscrollfun :pointer)
  (GLFWkeyfun :pointer)
  (GLFWcharfun :pointer)
  (GLFWcharmodsfun :pointer)
  (GLFWdropfun :pointer)
  (GLFWjoystickfun :pointer)

  ;; Monitor
  (GLFWmonitor :pointer)
  (GLFWmonitorfun :pointer)

  ;; Window
  (GLFWwindow :pointer)
  (GLFWwindowposfun :pointer)
  (GLFWwindowsizefun :pointer)
  (GLFWwindowclosefun :pointer)
  (GLFWwindowrefreshfun :pointer)
  (GLFWwindowfocusfun :pointer)
  (GLFWwindowiconifyfun :pointer)
  (GLFWwindowmaximizefun :pointer)
  (GLFWframebuffersizefun :pointer)
  (GLFWwindowcontentscalefun :pointer))

;; Vulkan support
(eval-when (:compile-toplevel :load-toplevel :execute)
  (if (= 8 (cffi:foreign-type-size :pointer))
      (progn
        (cffi:defctype non-dispatch-handle :pointer))
      (progn
        (cffi:defctype non-dispatch-handle :uint64))))
(cffi:defctype VkInstance non-dispatch-handle)
(cffi:defctype VkPhysicalDevice non-dispatch-handle)
(cffi:defctype VkSurfaceKHR non-dispatch-handle)
(cffi:defctype VkResult :int)
(cffi:defctype GLFWvkproc :pointer)


  
;; Structs

;; Input
(cffi:defcstruct GLFWgamepadstate
    "Gamepad input state."
    (buttons :uchar :count 15)
    (axes    :float :count 6))

;; Monitor
(cffi:defcstruct GLFWvidmode
    "Video mode type."
    (width          :int)
    (height         :int)
    (redBits        :int)
    (greenBits      :int)
    (blueBits       :int)
    (refreshRate    :int))

(cffi:defcstruct GLFWgammaramp
    "Gamma ramp."
    (red    :pointer)
    (green  :pointer)
    (blue   :pointer)
    (size   :int))

;; Window
(cffi:defcstruct GLFWimage
    "Image data."
    (width  :int)
    (height :int)
    (pixels :pointer))


;; Functions

; Context
(cffi:defcfun "glfwMakeContextCurrent" :void 
    "Makes the context of the specified window current for the calling thread."
    (window GLFWwindow))

(cffi:defcfun "glfwGetCurrentContext" :pointer 
    "Returns the window whose context is current on the calling thread.")

(cffi:defcfun "glfwSwapInterval" :void
    "Sets the swap interval for the current context."
    (interval :int))

;; OpenGL
(cffi:defcfun "glfwExtensionSupported" :int
    "Returns whether the specified extension is available."
    (extension :pointer))

;; OpenGL
(cffi:defcfun "glfwGetProcAddress" GLFWglproc
    "Returns the address of the specified function for the current context."
    (procname :pointer))

; Intitalization, version and error
(cffi:defcfun "glfwInit" :int
    "Initializes the GLFW library.")

(cffi:defcfun "glfwTerminate" :void
    "Terminates the GLFW library.")

(cffi:defcfun "glfwInitHint" :void
    "Sets the specified init hint to the desired value."
    (hint :int) (value :int))

(cffi:defcfun "glfwGetVersion" :void
    "Retrieves the version of the GLFW library."
    (major :pointer) (minor :pointer) (rev :pointer))

(cffi:defcfun "glfwGetVersionString" :pointer
    "Returns a string describing the compile-time configuration.")

(cffi:defcfun "glfwGetError" :int
    "Returns and clears the last error for the calling thread."
    (description :pointer))

(cffi:defcfun "glfwSetErrorCallback" GLFWerrorfun
    "Sets the error callback."
    (callback :pointer))

; Input
(cffi:defcfun "glfwGetInputMode" :int
    "Returns the value of an input option for the specified window."
    (window GLFWwindow) (mode :int))

(cffi:defcfun "glfwSetInputMode" :void
    "Sets an input option for the specified window."
    (window GLFWwindow) (mode :int) (value :int))

(cffi:defcfun "glfwRawMouseMotionSupported" :int
    "Returns whether raw mouse motion is supported.")

(cffi:defcfun "glfwGetKeyName" :pointer
    "Returns the layout-specific name of the specified printable key."
    (key :int) (scancode :int))

(cffi:defcfun "glfwGetKeyScancode" :int
    "Returns the platform-specific scancode of the specified key."
    (key :int))

(cffi:defcfun "glfwGetKey" :int
    "Returns the last reported state of a keyboard key for the specified window."
    (window GLFWwindow) (key :int))

(cffi:defcfun "glfwGetMouseButton" :int
    "Returns the last reported state of a mouse button for the specified window."
    (window GLFWwindow) (button :int))

(cffi:defcfun "glfwGetCursorPos" :void
    "Retrieves the position of the cursor relative to the content area of the window."
    (window GLFWwindow) (xpos :pointer) (ypos :pointer))

(cffi:defcfun "glfwSetCursorPos" :void
    "Sets the position of the cursor, relative to the content area of the window."
    (window GLFWwindow) (xpos :double) (ypos :double))

(cffi:defcfun "glfwCreateCursor" GLFWcursor
    "Creates a custom cursor."
    (img :pointer) (xhot :int) (yhot :int))

(cffi:defcfun "glfwCreateStandardCursor" GLFWcursor
    "Creates a cursor with a standard shape."
    (shape :int))

(cffi:defcfun "glfwDestroyCursor" :void
    "Destroys a cursor."
    (cursor GLFWcursor))

(cffi:defcfun "glfwSetCursor" :void
    "Sets the cursor for the window."
    (window GLFWwindow) (cursor GLFWcursor))

(cffi:defcfun "glfwSetKeyCallback" GLFWkeyfun
    "Sets the key callback."
    (window GLFWwindow) (callback GLFWkeyfun))

(cffi:defcfun "glfwSetCharCallback" GLFWcharfun
    "Sets the Unicode character callback."
    (window GLFWwindow) (callback GLFWcharfun))

(cffi:defcfun "glfwSetCharModsCallback" GLFWcharmodsfun
    "Sets the Unicode character with modifiers callback."
    (window GLFWwindow) (callback GLFWcharmodsfun))

(cffi:defcfun "glfwSetMouseButtonCallback" GLFWmousebuttonfun
    "Sets the mouse button callback."
    (window GLFWwindow) (callback GLFWmousebuttonfun))

(cffi:defcfun "glfwSetCursorPosCallback" GLFWcursorposfun
    "Sets the cursor position callback."
    (window GLFWwindow) (callback GLFWcursorposfun))

(cffi:defcfun "glfwSetCursorEnterCallback" GLFWcursorenterfun
    "Sets the cursor enter/leave callback."
    (window GLFWwindow) (callback GLFWcursorenterfun))

(cffi:defcfun "glfwSetScrollCallback" GLFWscrollfun
    "Sets the scroll callback."
    (window GLFWwindow) (callback GLFWscrollfun))

(cffi:defcfun "glfwSetDropCallback" GLFWdropfun
    "Sets the path drop callback."
    (window GLFWwindow) (callback GLFWdropfun))

(cffi:defcfun "glfwJoystickPresent" :int
    "Returns whether the specified joystick is present."
    (jid :int))

(cffi:defcfun "glfwGetJoystickAxes" :pointer
    "Returns the values of all axes of the specified joystick."
    (jid :int) (count :pointer))

(cffi:defcfun "glfwGetJoystickButtons" :pointer
    "Returns the state of all buttons of the specified joystick."
    (jid :int) (count :pointer))

(cffi:defcfun "glfwGetJoystickHats" :pointer
    "Returns the state of all hats of the specified joystick."
    (jid :int) (count :pointer))

(cffi:defcfun "glfwGetJoystickName" :pointer
    "Returns the name of the specified joystick."
    (jid :int))

(cffi:defcfun "glfwGetJoystickGUID" :pointer
    "Returns the SDL compatible GUID of the specified joystick."
    (jid :int))

(cffi:defcfun "glfwSetJoystickUserPointer" :void
    "Sets the user pointer of the specified joystick."
    (jid :int) (pointer :pointer))

(cffi:defcfun "glfwGetJoystickUserPointer" :pointer
    "Returns the user pointer of the specified joystick."
    (jid :int))

(cffi:defcfun "glfwJoystickIsGamepad" :int
    "Returns whether the specified joystick has a gamepad mapping."
    (jid :int))

(cffi:defcfun "glfwSetJoystickCallback" :pointer
    "Sets the joystick configuration callback."
    (callback :pointer))

(cffi:defcfun "glfwUpdateGamepadMappings" :int
    "Adds the specified SDL_GameControllerDB gamepad mappings."
    (string :pointer))

(cffi:defcfun "glfwGetGamepadName" :pointer
    "Returns the human-readable gamepad name for the specified joystick."
    (jid :int))

(cffi:defcfun "glfwGetGamepadState" :int
    "Retrieves the state of the specified joystick remapped as a gamepad."
    (jid :int) (state :pointer))

(cffi:defcfun "glfwSetClipboardString" :void
    "Sets the clipboard to the specified string."
    (window GLFWwindow) (string :pointer))   ; The window parameter is deprecated

(cffi:defcfun "glfwGetClipboardString" :pointer
    "Returns the contents of the clipboard as a string."
    (window GLFWwindow))                    ; The window parameter is deprecated

(cffi:defcfun "glfwGetTime" :double
    "Returns the GLFW time.")

(cffi:defcfun "glfwSetTime" :void
    "Sets the GLFW time."
    (time :double))

(cffi:defcfun "glfwGetTimerValue" :uint64
    "Returns the current value of the raw timer.")

(cffi:defcfun "glfwGetTimerFrequency" :uint64
    "Returns the frequency, in Hz, of the raw timer.")

; Monitor
(cffi:defcfun "glfwGetMonitors" GLFWmonitor
    "Returns the currently connected monitors."
    (count :pointer))

(cffi:defcfun "glfwGetPrimaryMonitor" GLFWmonitor
    "Returns the primary monitor.")

(cffi:defcfun "glfwGetMonitorPos" :void
    "Returns the position of the monitor's viewport on the virtual screen."
    (monitor GLFWmonitor) (xpos :pointer) (ypos :pointer))

(cffi:defcfun "glfwGetMonitorWorkarea" :void
    "Retrieves the work area of the monitor."
    (monitor GLFWmonitor) (xpos :pointer) (ypos :pointer) 
    (width :pointer) (height :pointer))

(cffi:defcfun "glfwGetMonitorPhysicalSize" :void
    "Returns the physical size of the monitor."
    (monitor GLFWmonitor) (widthMM :pointer) (heightMM :pointer))

(cffi:defcfun "glfwGetMonitorContentScale" :void
    "Retrieves the content scale for the specified monitor."
    (monitor GLFWmonitor) (xscale :pointer) (yscale :pointer))

(cffi:defcfun "glfwGetMonitorName" :pointer
    "Returns the name of the specified monitor."
    (monitor GLFWmonitor))

(cffi:defcfun "glfwSetMonitorUserPointer" :void
    "Sets the user pointer of the specified monitor."
    (monitor GLFWmonitor) (pointer :pointer))

(cffi:defcfun "glfwGetMonitorUserPointer" :pointer
    "Returns the user pointer of the specified monitor."
    (monitor GLFWmonitor))

(cffi:defcfun "glfwSetMonitorCallback" GLFWmonitorfun
    "Sets the monitor configuration callback."
    (callback GLFWmonitorfun))

(cffi:defcfun "glfwGetVideoModes" :pointer
    "Returns the available video modes for the specified monitor."
    (monitor GLFWmonitor) (count :pointer))

(cffi:defcfun "glfwGetVideoMode" :pointer
    "Returns the current mode of the specified monitor."
    (monitor GLFWmonitor))

(cffi:defcfun "glfwSetGamma" :void
    "Generates a gamma ramp and sets it for the specified monitor."
    (monitor GLFWmonitor) (gamma :float))

(cffi:defcfun "glfwGetGammaRamp" :pointer
    "Returns the current gamma ramp for the specified monitor."
    (monitor GLFWmonitor))

(cffi:defcfun "glfwSetGammaRamp" :void
    "Sets the current gamma ramp for the specified monitor."
    (monitor GLFWmonitor) (ramp :pointer)) 

; Vulkan support
(cffi:defcfun "glfwVulkanSupported" :int
    "Returns whether the Vulkan loader and an ICD have been found.")

(cffi:defcfun "glfwGetRequiredInstanceExtensions" :pointer
    "Returns the Vulkan instance extensions required by GLFW."
    (count :pointer))

(cffi:defcfun "glfwGetInstanceProcAddress" GLFWvkproc
    "Returns the address of the specified Vulkan instance function."
    (instance VkInstance) (procname :pointer))

(cffi:defcfun "glfwGetPhysicalDevicePresentationSupport" :int
    "Returns whether the specified queue family can present images."
    (instance VkInstance) (device VkPhysicalDevice) (queuefamily :uint32))

(cffi:defcfun "glfwCreateWindowSurface" VkResult
    "Creates a Vulkan surface for the specified window."
    (instance VkInstance) (window GLFWwindow) (allocator :pointer) (surface VkSurfaceKHR))

; Window
(cffi:defcfun "glfwDefaultWindowHints" :void
    "Resets all window hints to their default values.")

(cffi:defcfun "glfwWindowHint" :void
    "Sets the specified window hint to the desired value."
    (hint :int) (value :int))

(cffi:defcfun "glfwWindowHintString" :void
    "Sets the specified window hint to the desired value."
    (hint :int) (value :pointer))

(cffi:defcfun "glfwCreateWindow" :pointer
    "Creates a window and its associated context."
    (width :int) (height :int) (title :pointer) (monitor :pointer) (share :pointer))

(cffi:defcfun "glfwDestroyWindow" :void
    "Destroys the specified window and its context."
    (window GLFWwindow))

(cffi:defcfun "glfwWindowShouldClose" :int
    "Checks the close flag of the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwSetWindowShouldClose" :void
    "Sets the close flag of the specified window."
    (window GLFWwindow) (value :int))

(cffi:defcfun "glfwSetWindowTitle" :void
    "Sets the title of the specified window."
    (window GLFWwindow) (title :pointer))

(cffi:defcfun "glfwSetWindowIcon" :void
    "Sets the icon for the specified window."
    (window GLFWwindow) (count :int) (images :pointer))

(cffi:defcfun "glfwGetWindowPos" :void
    "Retrieves the position of the content area of the specified window."
    (window GLFWwindow) (xpos :pointer) (ypos :pointer))

(cffi:defcfun "glfwSetWindowPos" :void
    "Sets the position of the content area of the specified window."
    (window GLFWwindow) (xpos :int) (ypos :int))

(cffi:defcfun "glfwGetWindowSize" :void
    "Retrieves the size of the content area of the specified window."
    (window GLFWwindow) (width :pointer) (height :pointer))

(cffi:defcfun "glfwSetWindowSizeLimits" :void
    "Sets the size limits of the specified window."
    (window GLFWwindow) (minwidth :int) (minheight :int) (maxwidth :int) (maxheight :int))

(cffi:defcfun "glfwSetWindowAspectRatio" :void
    "Sets the aspect ratio of the specified window."
    (window GLFWwindow) (numer :int) (denom :int))

(cffi:defcfun "glfwSetWindowSize" :void
    "Sets the size of the content area of the specified window."
    (window GLFWwindow) (width :int) (height :int))

(cffi:defcfun "glfwGetFramebufferSize" :void
    "Retrieves the size of the framebuffer of the specified window."
    (window GLFWwindow) (width :pointer) (height :pointer))

(cffi:defcfun "glfwGetWindowFrameSize" :void
    "Retrieves the size of the frame of the window."
    (window GLFWwindow) (left :pointer) (top :pointer) (right :pointer) (bottom :pointer))

(cffi:defcfun "glfwGetWindowContentScale" :void
    "Retrieves the content scale for the specified window."
    (window GLFWwindow) (xscale :float) (yscale :float))

(cffi:defcfun "glfwGetWindowOpacity" :float
    "Returns the opacity of the whole window."
    (window GLFWwindow))

(cffi:defcfun "glfwSetWindowOpacity" :void
    "Sets the opacity of the whole window."
    (window GLFWwindow) (opacity :float))

(cffi:defcfun "glfwIconifyWindow" :void
    "Iconifies the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwRestoreWindow" :void
    "Restores the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwMaximizeWindow" :void
    "Maximizes the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwShowWindow" :void
    "Makes the specified window visible."
    (window GLFWwindow))

(cffi:defcfun "glfwHideWindow" :void
    "Hides the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwFocusWindow" :void
    "Brings the specified window to front and sets input focus."
    (window GLFWwindow))

(cffi:defcfun "glfwRequestWindowAttention" :void
    "Requests user attention to the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwGetWindowMonitor" :pointer
    "Returns the monitor that the window uses for full screen mode."
    (window GLFWwindow))

(cffi:defcfun "glfwSetWindowMonitor" :void
    "Sets the mode, monitor, video mode and placement of a window."
    (window GLFWwindow) (monitor :pointer)
    (xpos :int) (ypos :int) (width :int) (height :int) (refreshRate :int))

(cffi:defcfun "glfwGetWindowAttrib" :int
    "Returns an attribute of the specified window."
    (window GLFWwindow) (attrib :int))

(cffi:defcfun "glfwSetWindowAttrib" :void
    "Sets an attribute of the specified window."
    (window GLFWwindow) (attrib :int) (value :int))

(cffi:defcfun "glfwSetWindowUserPointer" :void
    "Sets the user pointer of the specified window."
    (window GLFWwindow) (pointer :pointer))

(cffi:defcfun "glfwGetWindowUserPointer" :pointer
    "Returns the user pointer of the specified window."
    (window GLFWwindow))

(cffi:defcfun "glfwSetWindowPosCallback" GLFWwindowposfun
    "Sets the position callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowposfun))

(cffi:defcfun "glfwSetWindowSizeCallback" GLFWwindowsizefun
    "Sets the size callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowsizefun))

(cffi:defcfun "glfwSetWindowCloseCallback" GLFWwindowclosefun
    "Sets the close callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowclosefun))

(cffi:defcfun "glfwSetWindowRefreshCallback" GLFWwindowrefreshfun
    "Sets the refresh callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowrefreshfun))

(cffi:defcfun "glfwSetWindowFocusCallback" GLFWwindowfocusfun
    "Sets the focus callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowfocusfun))

(cffi:defcfun "glfwSetWindowIconifyCallback" GLFWwindowiconifyfun
    "Sets the iconify callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowiconifyfun))

(cffi:defcfun "glfwSetWindowMaximizeCallback" GLFWwindowmaximizefun
    "Sets the maximize callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowmaximizefun))

(cffi:defcfun "glfwSetFramebufferSizeCallback" GLFWframebuffersizefun
    "Sets the framebuffer resize callback for the specified window."
    (window GLFWwindow) (callback GLFWframebuffersizefun)) 

(cffi:defcfun "glfwSetWindowContentScaleCallback" GLFWwindowcontentscalefun
    "Sets the window content scale callback for the specified window."
    (window GLFWwindow) (callback GLFWwindowcontentscalefun))

(cffi:defcfun "glfwPollEvents" :void
    "Processes all pending events.")

(cffi:defcfun "glfwWaitEvents" :void
    "Waits until events are queued and processes them.")

(cffi:defcfun "glfwWaitEventsTimeout" :void
    "Waits with timeout until events are queued and processes them."
    (timeout :double))

(cffi:defcfun "glfwPostEmptyEvent" :void
    "Posts an empty event to the event queue.")

(cffi:defcfun "glfwSwapBuffers" :void
    "Swaps the front and back buffers of the specified window."
    (window GLFWwindow))
