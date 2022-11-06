
(in-package :glfw)

(adp:write-in-file #P"docs/api/input")

(adp:header "Input reference" input-reference-header)

(adp:subheader "Description")

(adp:text "This is the reference documentation for input related functions and types.")

(adp:mini-table-of-contents)


(adp:subheader "Constants")

(defconstants

  ;; Input
  (GLFW_RELEASE                      0                               "The key or mouse button was released.")
  (GLFW_PRESS                        1                               "The key or mouse button was pressed.")
  (GLFW_REPEAT                       2                               "The key was held down until it repeated.")
  
  ;; Gamepad axes
  (GLFW_GAMEPAD_AXIX_LEFT_X          0)
  (GLFW_GAMEPAD_AXIS_LEFT_Y          1)
  (GLFW_GAMEPAD_AXIS_RIGHT_X         2)
  (GLFW_GAMEPAD_AXIS_RIGHT_Y         3)
  (GLFW_GAMEPAD_AXIS_LEFT_TRIGGER    4)
  (GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER   5)
  (GLFW_GAMEPAD_AXIS_LAST            GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER)

  ;; Gamepad buttons
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

  ;; Joystick hat states
  (GLFW_HAT_CENTERED                 0)
  (GLFW_HAT_UP                       1)
  (GLFW_HAT_RIGHT                    2)
  (GLFW_HAT_DOWN                     4)
  (GLFW_HAT_LEFT                     8)
  (GLFW_HAT_RIGHT_UP                 (logior GLFW_HAT_RIGHT GLFW_HAT_UP))
  (GLFW_HAT_RIGHT_DOWN               (logior GLFW_HAT_RIGHT GLFW_HAT_DOWN))
  (GLFW_HAT_LEFT_UP                  (logior GLFW_HAT_LEFT GLFW_HAT_UP))
  (GLFW_HAT_LEFT_DOWN                (logior GLFW_HAT_LEFT GLFW_HAT_DOWN))

  ;; Joysticks
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

  ;; Keyboard keys
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

  ;; Modifier key flags
  (GLFW_MOD_SHIFT                    #x0001                          "If this bit is set one or more Shift keys were held down.")
  (GLFW_MOD_CONTROL                  #x0002                          "If this bit is set one or more Control keys were held down.")
  (GLFW_MOD_ALT                      #x0004                          "If this bit is set one or more Alt keys were held down.")
  (GLFW_MOD_SUPER                    #x0008                          "If this bit is set one or more Super keys were held down.")
  (GLFW_MOD_CAPS_LOCK                #x0010                          "If this bit is set the Caps Lock key is enabled.")
  (GLFW_MOD_NUM_LOCK                 #x0020                          "If this bit is set the Num Lock key is enabled.")

  ;; Mouse buttons
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

  ;; Standard cursor shapes
  (GLFW_ARROW_CURSOR                 #x00036001                      "The regular arrow cursor shape.")
  (GLFW_IBEAM_CURSOR                 #x00036001                      "The text input I_beam cursor shape.")
  (GLFW_CROSSHAIR_CURSOR             #x00036001                      "The crosshair shape.")
  (GLFW_HAND_CURSOR                  #x00036001                      "The hand shape.")
  (GLFW_HRESIZE_CURSOR               #x00036001                      "The horizontal resize arrow shape.")
  (GLFW_VRESIZE_CURSOR               #x00036001                      "The vertical resize arrow shape.")

  ;; Input mode
  (GLFW_CURSOR                       #x00033001)
  (GLFW_STICKY_KEYS                  #x00033002)
  (GLFW_STICKY_MOUSE_BUTTONS         #x00033003)
  (GLFW_LOCK_KEY_MODS                #x00033004)
  (GLFW_RAW_MOUSE_MOTION             #x00033005)

  ;; Cursor mode
  (GLFW_CURSOR_NORMAL                #x00034001)
  (GLFW_CURSOR_HIDDEN                #x00034002)
  (GLFW_CURSOR_DISABLED              #x00034003)

  ;; Joystick configuration
  (GLFW_CONNECTED                    #x00040001)
  (GLFW_DISCONNECTED                 #x00040002))


(adp:subheader "Types")

(adp:deftype cursor ()
  "Opaque cursor object."
  'pointer)

(adp:deftype mousebuttonfun ()
  "The function pointer type for mouse button callbacks."
  '(or symbol pointer))

(adp:deftype cursorposfun ()
  "The function pointer type for cursor position callbacks."
  '(or symbol pointer))

(adp:deftype cursorenterfun ()
  "The function pointer type for cursor enter/leave callbacks."
  '(or symbol pointer))

(adp:deftype scrollfun ()
  "The function pointer type for scroll callbacks."
  '(or symbol pointer))

(adp:deftype keyfun ()
  "The function pointer type for keyboard key callbacks."
  '(or symbol pointer))

(adp:deftype charfun ()
  "The function pointer type for Unicode character callbacks."
  '(or symbol pointer))

(adp:deftype charmodsfun ()
  "The function pointer type for Unicode character with modifiers callbacks."
  '(or symbol pointer))

(adp:deftype dropfun ()
  "The function pointer type for path drop callbacks."
  '(or symbol pointer))

(adp:deftype joystickfun ()
  "The function pointer type for joystick configuration callbacks."
  '(or symbol pointer))

(adp:subsubheader "GLFWgamepadstate")

(adp:deftype gamepadstate ()
  'pointer)

(mcffi:define-foreign-struct (:struct GLFWgamepadstate) gamepadstate
  (:no-constructor :no-destructor)
  (buttons :reader ((&optional (index nil))
		    (if index
			(cffi:mem-aref buttons :uchar index)
			(let ((buttons-array (make-array 15)))
			  (loop for i from 0 below 15
				do (setf (aref buttons-array i) (cffi:mem-aref buttons :uchar i)))
			  (values buttons-array)))))
  (axes    :reader ((&optional (index nil))
		    (if index
			(cffi:mem-aref axes :float index)
			(let ((axes-array (make-array 6)))
			  (loop for i from 0 below 6
				do (setf (aref axes-array i) (cffi:mem-aref axes :float i)))
			  (values axes-array))))))


(adp:subheader "Functions")

(adp:subsubheader "glfwGetInputMode")

(adp:defun get-input-mode (window mode)
  (declare (type pointer window) (type fixnum mode))
  "Returns the value of an input option for the specified window."
  (glfwGetInputMode window mode))

(adp:subsubheader "glfwSetInputMode")

(adp:defun set-input-mode (window mode value)
  (declare (type pointer window) (type fixnum mode value))
  "Sets an input option for the specified window."
  (glfwSetInputMode window mode value))

(adp:subsubheader "glfwRawMouseMotionSupported")

(adp:defun raw-mouse-motion-supported ()
  "Returns whether raw mouse motion is supported (t or NIL)."
  (let ((result (glfwRawMouseMotionSupported)))
    (equal result GLFW_TRUE)))

(adp:subsubheader "glfwGetKeyName")

(adp:defun get-key-name (key scancode)
  (declare (type fixnum key scancode))
  "Returns the layout-specific name of the specified printable key."
  (let ((result (glfwGetKeyName key scancode)))
    (cffi:foreign-string-to-lisp result)))

(adp:subsubheader "glfwGetKeyScancode")

(adp:defun get-key-scancode (key)
  (declare (type fixnum key))
  "Returns the platform-specific scancode of the specified key."
  (glfwGetKeyScancode key))

(adp:subsubheader "glfwGetKey")

(adp:defun get-key (window key)
  (declare (type pointer window) (type fixnum key))
  "Returns the last reported state of a keyboard key for the specified window."
  (glfwGetKey window key))

(adp:subsubheader "glfwGetMouseButton")

(adp:defun get-mouse-button (window button)
  (declare (type pointer window) (type fixnum button))
  "Returns the last reported state of a mouse button for the specified window."
  (glfwGetMouseButton window button))

(adp:subsubheader "glfwGetCursorPos")

(adp:defun get-cursor-pos (window)
  (declare (type pointer window))
  "Returns the x-position and y-position of the cursor relative to the content area of the window."
  (cffi:with-foreign-objects ((xpos-ptr :double) (ypos-ptr :double))
    (glfwGetCursorPos window xpos-ptr ypos-ptr)
    (values (cffi:mem-ref xpos-ptr :double) (cffi:mem-ref ypos-ptr :double))))

(adp:subsubheader "glfwSetCursorPos")

(adp:defun set-cursor-pos (window xpos ypos)
  (declare (type pointer window) (type double-float xpos ypos))
  "Sets the position of the cursor, relative to the content area of the window."
  (glfwSetCursorPos window xpos ypos))

(adp:subsubheader "glfwCreateCursor")

(adp:defun create-cursor (image xhot yhot)
  (declare (type pointer image) (type fixnum xhot yhot))
  "Creates a custom cursor."
  (glfwCreateCursor image xhot yhot))

(adp:subsubheader "glfwCreateStandardCursor")

(adp:defun create-standard-cursor (shape)
  (declare (type fixnum shape))
  "Creates a cursor with a standard shape."
  (glfwCreateStandardCursor shape))

(adp:subsubheader "glfwDestroyCursor")

(adp:defun destroy-cursor (cursor)
  (declare (type cursor cursor))
  "Destroys a cursor."
  (glfwDestroyCursor cursor))

(adp:subsubheader "glfwSetCursor")

(adp:defun set-cursor (window cursor)
  (declare (type pointer window) (type cursor cursor))
  "Sets the cursor for the window."
  (glfwSetCursor window cursor))

(adp:subsubheader "glfwSetKeyCallback")

(mcffi:define-callback-definer define-key-callback
  "Defines a key callback."
  (window   :type :pointer)
  (key      :type :int)
  (scancode :type :int)
  (action   :type :int)
  (mods     :type :int))

(adp:defun set-key-callback (window callback)
  (declare (type pointer window) (type (or null keyfun) callback))
  "Sets the key callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetKeyCallback window callback-c)))

(adp:subsubheader "glfwSetCharCallback")

(mcffi:define-callback-definer define-char-callback
  "Defines an Unicode character callback."
  (window    :type :pointer)
  (codepoint :type :uint))

(adp:defun set-char-callback (window callback)
  (declare (type pointer window) (type (or null charfun) callback))
  "Sets the Unicode character callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetCharCallback window callback-c)))

(adp:subsubheader "glfwSetCharModsCallback")

(mcffi:define-callback-definer define-char-mods-callback
  "Defines an Unicode character with modifiers callback."
  (window    :type :pointer)
  (codepoint :type :uint)
  (mods      :type :int))

(adp:defun set-char-mods-callback (window callback)
  (declare (type pointer window) (type (or null charmodsfun) callback))
  "Sets the Unicode character with modifiers callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetCharModsCallback window callback-c)))

(adp:subsubheader "glfwSetMouseButtonCallback")

(mcffi:define-callback-definer define-mouse-button-callback
  "Defines a mouse button callback."
  (window :type :pointer)
  (button :type :int)
  (action :type :int)
  (mods   :type :int))

(adp:defun set-mouse-button-callback (window callback)
  (declare (type pointer window) (type (or null mousebuttonfun) callback))
  "Sets the mouse button callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetMouseButtonCallback window callback-c)))

(adp:subsubheader "glfwSetCursorPosCallback")

(mcffi:define-callback-definer define-cursor-pos-callback
  "Defines a cursor position callback."
  (window :type :pointer)
  (xpos   :type :double)
  (ypos   :type :double))

(adp:defun set-cursor-pos-callback (window callback)
  (declare (type pointer window) (type (or null cursorposfun) callback))
  "Sets the cursor position callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetCursorPosCallback window callback-c)))

(adp:subsubheader "glfwSetCursorEnterCallback")

(mcffi:define-callback-definer define-cursor-enter-callback
  "Defines a cursor enter/leave callback."
  (window  :type :pointer)
  (entered :type :int))

(adp:defun set-cursor-enter-callback (window callback)
  (declare (type pointer window) (type (or null cursorenterfun) callback))
  "Sets the cursor enter/leave callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetCursorEnterCallback window callback-c)))

(adp:subsubheader "glfwSetScrollCallback")

(mcffi:define-callback-definer define-scroll-callback
  "Defines a scroll callback."
  (window  :type :pointer)
  (xoffset :type :double)
  (yoffset :type :double))

(adp:defun set-scroll-callback (window callback)
  (declare (type pointer window) (type (or null scrollfun) callback))
  "Sets the scroll callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetScrollCallback window callback-c)))

(adp:subsubheader "glfwSetDropCallback")

(mcffi:define-callback-definer define-drop-callback
  "Defines a path drop callback. The argument PATHS is a vector."
  (window     :type :pointer)
  (path_count :type :int
	      :create nil)
  (paths      :type :pointer
	      :create (let ((paths-array (make-array path_count)))
			(loop for i from 0 below path_count
			      do (setf (aref paths-array i)
				       (cffi:foreign-string-to-lisp (cffi:mem-aref paths :pointer i))))
			(values paths-array))))

(adp:defun set-drop-callback (window callback)
  (declare (type pointer window) (type (or null dropfun) callback))
  "Sets the path drop callback."
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetDropCallback  window callback-c)))

(adp:subsubheader "glfwJoystickPresent")

(adp:defun joystick-present (jid)
  (declare (type fixnum jid))
  "Returns whether the specified joystick is present (t or NIL)."
  (let ((result (glfwJoystickPresent jid)))
    (equal result GLFW_TRUE)))

(adp:subsubheader "glfwGetJoystickAxes")

(adp:defun get-joystick-axes (jid)
  (declare (type fixnum jid))
  "Returns a vector (or NIL) with the values of all axes of the specified joystick."
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((axes-ptr (glfwGetJoystickAxes jid count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
          (let ((axes-array (make-array count)))
	    (loop for i from 0 below count
		  do (setf (aref axes-array i) (cffi:mem-aref axes-ptr :float i)))
	    (values axes-array))
          nil))))
        
(adp:subsubheader "glfwGetJoystickButtons")

(adp:defun get-joystick-buttons (jid)
  (declare (type fixnum jid))
  "Returns a vector (or NIL) with the state of all buttons of the specified joystick."
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((buttons-ptr (glfwGetJoystickButtons jid count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
          (let ((buttons-array (make-array count)))
	    (loop for i from 0 below count
		  do (setf (aref buttons-array i) (cffi:mem-aref buttons-ptr :uchar i)))
	    (values buttons-array))
          nil))))

(adp:subsubheader "glfwGetJoystickHats")

(adp:defun get-joystick-hats (jid)
  (declare (type fixnum jid))
  "Returns a vector (or NIL) with the state of all hats of the specified joystick."
  (cffi:with-foreign-object (count-ptr :int)
    (let* ((hats-ptr (glfwGetJoystickHats jid count-ptr))
	   (count (cffi:mem-ref count-ptr :int)))
      (if (> count 0)
          (let ((hats-array (make-array count)))
	    (loop for i from 0 below count
		  do (setf (aref hats-array i) (cffi:mem-aref hats-ptr :uchar i)))
	    (values hats-array))
          nil))))

(adp:subsubheader "glfwGetJoystickName")

(adp:defun get-joystick-name (jid)
  (declare (type fixnum jid))
  "Returns the name (or NIL) of the specified joystick."
  (let ((result (glfwGetJoystickName jid)))
    (if (cffi:null-pointer-p result)
	nil
	(cffi:foreign-string-to-lisp result))))

(adp:subsubheader "glfwGetJoystickGUID")

(adp:defun get-joystick-guid (jid)
  (declare (type fixnum jid))
  "Returns the SDL compatible GUID (or NIL) of the specified joystick."
  (let ((result (glfwGetJoystickGUID jid)))
    (if (cffi:null-pointer-p result)
	nil
	(cffi:foreign-string-to-lisp result))))

(adp:subsubheader "glfwSetJoystickUserPointer")

(defvar *joysticks-data* (make-hash-table))

(adp:defun set-joystick-user-pointer (jid data)
  (declare (type fixnum jid) (type t data))
  "Sets the user pointer of the specified joystick."
  (setf (gethash jid *joysticks-data*) data))

(adp:subsubheader "glfwGetJoystickUserPointer")

(adp:defun get-joystick-user-pointer (jid)
  (declare (type fixnum jid))
  "Returns the user pointer of the specified joystick."
  (gethash jid *joysticks-data*))

(adp:subsubheader "glfwJoystickIsGamepad")

(adp:defun joystick-is-gamepad (jid)
  (declare (type fixnum jid))
  "Returns whether the specified joystick has a gamepad mapping (t or NIL)."
  (let ((result (glfwJoystickIsGamepad jid)))
    (equal result GLFW_TRUE)))

(adp:subsubheader "glfwSetJoystickCallback")

(mcffi:define-callback-definer define-joystick-callback
  "Defines a joystick configuration callback."
  (jid   :type :int)
  (event :type :int))

(adp:defun set-joystick-callback (callback)
  "Sets the joystick configuration callback."
  (declare (type (or null joystickfun) callback))
  (let ((callback-c (etypecase callback
		      (symbol (cffi:get-callback callback))
		      (null   (cffi:null-pointer))
		      (t      callback))))
    (glfwSetJoystickCallback callback-c)))

(adp:subsubheader "glfwUpdateGamepadMappings")

(adp:defun update-gamepad-mappings (string)
  (declare (type string string))
  "Adds the specified SDL_GameControllerDB gamepad mappings. Returns t or NIL."
  (cffi:with-foreign-string (string-c string)
    (let ((result (glfwUpdateGamepadMappings string-c)))
      (equal result GLFW_TRUE))))

(adp:subsubheader "glfwGetGamepadName")

(adp:defun get-gamepad-name (jid)
  (declare (type fixnum jid))
  "Returns the human-readable gamepad name (or NIL) for the specified joystick."
  (let ((result (glfwGetGamepadName jid)))
    (if (cffi:null-pointer-p result)
	nil
	(cffi:foreign-string-to-lisp result))))

(adp:subsubheader "glfwGetGamepadState")

(adp:defun get-gamepad-state (jid)
  (declare (type fixnum jid))
  "Returns the state of the specified joystick remapped as a gamepad (or NIL)."
  (let* ((state (cffi:foreign-alloc '(:struct GLFWgamepadstate)))
	 (result (glfwGetGamepadState jid state)))
    (if (equal result GLFW_TRUE)
	state
	nil)))

(adp:subsubheader "glfwSetClipboardString")

(adp:defun set-clipboard-string (window string)
  (declare (type pointer window) (type string string))
  "Sets the clipboard to the specified string."
  (let ((window-c (or window (cffi:null-pointer))))
    (cffi:with-foreign-string (string-c string)
      (glfwSetClipboardString window-c string-c))))

(adp:subsubheader "glfwGetClipboardString")

(adp:defun get-clipboard-string (window)
  (declare (type pointer window))
  "Returns the contents of the clipboard as a string."
  (let* ((window-c (or window (cffi:null-pointer)))
	 (result (glfwGetClipboardString window-c)))
    (cffi:foreign-string-to-lisp result)))

(adp:subsubheader "glfwGetTime")

(adp:defun get-time ()
  "Returns the GLFW time."
  (glfwGetTime))

(adp:subsubheader "glfwSetTime")

(adp:defun set-time (time)
  (declare (type double-float time))
  "Sets the GLFW time."
  (glfwSetTime time))

(adp:subsubheader "glfwGetTimerValue")

(adp:defun get-timer-value ()
  "Returns the current value of the raw timer."
  (glfwGetTimerValue))

(adp:subsubheader "glfwGetTimerFrequency")

(adp:defun get-timer-frequency ()
  "Returns the frequency, in Hz, of the raw timer."
  (glfwGetTimerFrequency))
