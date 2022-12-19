<h1 id="header:GLFW:API-REFERENCE-HEADER">The cl-glfw reference</h1>

Welcome to the cl\-glfw reference\!

Here you can see how the GLFW functions look like in Common Lisp\. They have a brief description of what they do and maybe some notes about the types of the arguments\. Remember that the main documentation source must be [the GLFW official documentation](https://www.glfw.org/documentation.html)\.

* <a href="/docs/api/context.md#header:GLFW:CONTEXT-REFERENCE-HEADER">Context reference</a>
* <a href="/docs/api/initialization.md#header:GLFW:INITIALIZATION-REFERENCE-HEADER">Initialization, version and error reference</a>
* <a href="/docs/api/input.md#header:GLFW:INPUT-REFERENCE-HEADER">Input reference</a>
* <a href="/docs/api/monitor.md#header:GLFW:MONITOR-REFERENCE-HEADER">Monitor reference</a>
* <a href="/docs/api/vulkan.md#header:GLFW:VULKAN-REFERENCE-HEADER">Vulkan support reference</a>
* <a href="/docs/api/window.md#header:GLFW:WINDOW-REFERENCE-HEADER">Window reference</a>

<h2 id="header:ADP:HEADERTAG3">Function index</h2>

* W
  * <a href="/docs/api/window.md#function:GLFW:WITH-IMAGE">GLFW:WITH-IMAGE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:WITH-GAMMARAMP">GLFW:WITH-GAMMARAMP</a>
  * <a href="/docs/api/window.md#function:GLFW:WINDOW-SHOULD-CLOSE">GLFW:WINDOW-SHOULD-CLOSE</a>
  * <a href="/docs/api/window.md#function:GLFW:WINDOW-HINT-STRING">GLFW:WINDOW-HINT-STRING</a>
  * <a href="/docs/api/window.md#function:GLFW:WINDOW-HINT">GLFW:WINDOW-HINT</a>
  * <a href="/docs/api/window.md#function:GLFW:WAIT-EVENTS-TIMEOUT">GLFW:WAIT-EVENTS-TIMEOUT</a>
  * <a href="/docs/api/window.md#function:GLFW:WAIT-EVENTS">GLFW:WAIT-EVENTS</a>
* V
  * <a href="/docs/api/vulkan.md#function:GLFW:VULKAN-SUPPORTED">GLFW:VULKAN-SUPPORTED</a>
  * <a href="/docs/api/monitor.md#function:GLFW:VIDMODE-WIDTH">GLFW:VIDMODE-WIDTH</a>
  * <a href="/docs/api/monitor.md#function:GLFW:VIDMODE-REFRESHRATE">GLFW:VIDMODE-REFRESHRATE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:VIDMODE-REDBITS">GLFW:VIDMODE-REDBITS</a>
  * <a href="/docs/api/monitor.md#function:GLFW:VIDMODE-HEIGHT">GLFW:VIDMODE-HEIGHT</a>
  * <a href="/docs/api/monitor.md#function:GLFW:VIDMODE-GREENBITS">GLFW:VIDMODE-GREENBITS</a>
  * <a href="/docs/api/monitor.md#function:GLFW:VIDMODE-BLUEBITS">GLFW:VIDMODE-BLUEBITS</a>
* U
  * <a href="/docs/api/input.md#function:GLFW:UPDATE-GAMEPAD-MAPPINGS">GLFW:UPDATE-GAMEPAD-MAPPINGS</a>
* T
  * <a href="/docs/api/initialization.md#function:GLFW:TERMINATE">GLFW:TERMINATE</a>
* S
  * <a href="/docs/api/context.md#function:GLFW:SWAP-INTERVAL">GLFW:SWAP-INTERVAL</a>
  * <a href="/docs/api/window.md#function:GLFW:SWAP-BUFFERS">GLFW:SWAP-BUFFERS</a>
  * <a href="/docs/api/window.md#function:GLFW:SHOW-WINDOW">GLFW:SHOW-WINDOW</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-USER-POINTER">GLFW:SET-WINDOW-USER-POINTER</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-TITLE">GLFW:SET-WINDOW-TITLE</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-SIZE-LIMITS">GLFW:SET-WINDOW-SIZE-LIMITS</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-SIZE-CALLBACK">GLFW:SET-WINDOW-SIZE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-SIZE">GLFW:SET-WINDOW-SIZE</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-SHOULD-CLOSE">GLFW:SET-WINDOW-SHOULD-CLOSE</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-REFRESH-CALLBACK">GLFW:SET-WINDOW-REFRESH-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-POS-CALLBACK">GLFW:SET-WINDOW-POS-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-POS">GLFW:SET-WINDOW-POS</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-OPACITY">GLFW:SET-WINDOW-OPACITY</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-MONITOR">GLFW:SET-WINDOW-MONITOR</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-MAXIMIZE-CALLBACK">GLFW:SET-WINDOW-MAXIMIZE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-ICONIFY-CALLBACK">GLFW:SET-WINDOW-ICONIFY-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-ICON">GLFW:SET-WINDOW-ICON</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-FOCUS-CALLBACK">GLFW:SET-WINDOW-FOCUS-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-CONTENT-SCALE-CALLBACK">GLFW:SET-WINDOW-CONTENT-SCALE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-CLOSE-CALLBACK">GLFW:SET-WINDOW-CLOSE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-ATTRIB">GLFW:SET-WINDOW-ATTRIB</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-WINDOW-ASPECT-RATIO">GLFW:SET-WINDOW-ASPECT-RATIO</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-TIME">GLFW:SET-TIME</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-SCROLL-CALLBACK">GLFW:SET-SCROLL-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-MOUSE-BUTTON-CALLBACK">GLFW:SET-MOUSE-BUTTON-CALLBACK</a>
  * <a href="/docs/api/monitor.md#function:GLFW:SET-MONITOR-USER-POINTER">GLFW:SET-MONITOR-USER-POINTER</a>
  * <a href="/docs/api/monitor.md#function:GLFW:SET-MONITOR-CALLBACK">GLFW:SET-MONITOR-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-KEY-CALLBACK">GLFW:SET-KEY-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-JOYSTICK-USER-POINTER">GLFW:SET-JOYSTICK-USER-POINTER</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-JOYSTICK-CALLBACK">GLFW:SET-JOYSTICK-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-INPUT-MODE">GLFW:SET-INPUT-MODE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:SET-GAMMA-RAMP">GLFW:SET-GAMMA-RAMP</a>
  * <a href="/docs/api/monitor.md#function:GLFW:SET-GAMMA">GLFW:SET-GAMMA</a>
  * <a href="/docs/api/window.md#function:GLFW:SET-FRAMEBUFFER-SIZE-CALLBACK">GLFW:SET-FRAMEBUFFER-SIZE-CALLBACK</a>
  * <a href="/docs/api/initialization.md#function:GLFW:SET-ERROR-CALLBACK">GLFW:SET-ERROR-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-DROP-CALLBACK">GLFW:SET-DROP-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CURSOR-POS-CALLBACK">GLFW:SET-CURSOR-POS-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CURSOR-POS">GLFW:SET-CURSOR-POS</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CURSOR-ENTER-CALLBACK">GLFW:SET-CURSOR-ENTER-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CURSOR">GLFW:SET-CURSOR</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CLIPBOARD-STRING">GLFW:SET-CLIPBOARD-STRING</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CHAR-MODS-CALLBACK">GLFW:SET-CHAR-MODS-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:SET-CHAR-CALLBACK">GLFW:SET-CHAR-CALLBACK</a>
* R
  * <a href="/docs/api/window.md#function:GLFW:RESTORE-WINDOW">GLFW:RESTORE-WINDOW</a>
  * <a href="/docs/api/window.md#function:GLFW:REQUEST-WINDOW-ATTENTION">GLFW:REQUEST-WINDOW-ATTENTION</a>
  * <a href="/docs/api/input.md#function:GLFW:RAW-MOUSE-MOTION-SUPPORTED">GLFW:RAW-MOUSE-MOTION-SUPPORTED</a>
* P
  * <a href="/docs/api/window.md#function:GLFW:POST-EMPTY-EVENT">GLFW:POST-EMPTY-EVENT</a>
  * <a href="/docs/api/window.md#function:GLFW:POLL-EVENTS">GLFW:POLL-EVENTS</a>
* N
  * <a href="/docs/api/window.md#function:COMMON-LISP:NIL">NIL</a>
* M
  * <a href="/docs/api/window.md#function:GLFW:MAXIMIZE-WINDOW">GLFW:MAXIMIZE-WINDOW</a>
  * <a href="/docs/api/context.md#function:GLFW:MAKE-CONTEXT-CURRENT">GLFW:MAKE-CONTEXT-CURRENT</a>
* J
  * <a href="/docs/api/input.md#function:GLFW:JOYSTICK-PRESENT">GLFW:JOYSTICK-PRESENT</a>
  * <a href="/docs/api/input.md#function:GLFW:JOYSTICK-IS-GAMEPAD">GLFW:JOYSTICK-IS-GAMEPAD</a>
* I
  * <a href="/docs/api/initialization.md#function:GLFW:INIT-HINT">GLFW:INIT-HINT</a>
  * <a href="/docs/api/initialization.md#function:GLFW:INIT">GLFW:INIT</a>
  * <a href="/docs/api/window.md#function:GLFW:IMAGE-WIDTH">GLFW:IMAGE-WIDTH</a>
  * <a href="/docs/api/window.md#function:GLFW:IMAGE-PIXELS">GLFW:IMAGE-PIXELS</a>
  * <a href="/docs/api/window.md#function:GLFW:IMAGE-HEIGHT">GLFW:IMAGE-HEIGHT</a>
  * <a href="/docs/api/window.md#function:GLFW:ICONIFY-WINDOW">GLFW:ICONIFY-WINDOW</a>
* H
  * <a href="/docs/api/window.md#function:GLFW:HIDE-WINDOW">GLFW:HIDE-WINDOW</a>
* G
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-USER-POINTER">GLFW:GET-WINDOW-USER-POINTER</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-SIZE">GLFW:GET-WINDOW-SIZE</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-POS">GLFW:GET-WINDOW-POS</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-OPACITY">GLFW:GET-WINDOW-OPACITY</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-MONITOR">GLFW:GET-WINDOW-MONITOR</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-FRAME-SIZE">GLFW:GET-WINDOW-FRAME-SIZE</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-CONTENT-SCALE">GLFW:GET-WINDOW-CONTENT-SCALE</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-WINDOW-ATTRIB">GLFW:GET-WINDOW-ATTRIB</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-VIDEO-MODES">GLFW:GET-VIDEO-MODES</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-VIDEO-MODE">GLFW:GET-VIDEO-MODE</a>
  * <a href="/docs/api/initialization.md#function:GLFW:GET-VERSION-STRING">GLFW:GET-VERSION-STRING</a>
  * <a href="/docs/api/initialization.md#function:GLFW:GET-VERSION">GLFW:GET-VERSION</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-TIMER-VALUE">GLFW:GET-TIMER-VALUE</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-TIMER-FREQUENCY">GLFW:GET-TIMER-FREQUENCY</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-TIME">GLFW:GET-TIME</a>
  * <a href="/docs/api/vulkan.md#function:GLFW:GET-REQUIRED-INSTANCE-EXTENSIONS">GLFW:GET-REQUIRED-INSTANCE-EXTENSIONS</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-PRIMARY-MONITOR">GLFW:GET-PRIMARY-MONITOR</a>
  * <a href="/docs/api/vulkan.md#function:GLFW:GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT">GLFW:GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-MOUSE-BUTTON">GLFW:GET-MOUSE-BUTTON</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITORS">GLFW:GET-MONITORS</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITOR-WORKAREA">GLFW:GET-MONITOR-WORKAREA</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITOR-USER-POINTER">GLFW:GET-MONITOR-USER-POINTER</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITOR-POS">GLFW:GET-MONITOR-POS</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITOR-PHYSICAL-SIZE">GLFW:GET-MONITOR-PHYSICAL-SIZE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITOR-NAME">GLFW:GET-MONITOR-NAME</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-MONITOR-CONTENT-SCALE">GLFW:GET-MONITOR-CONTENT-SCALE</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-KEY-SCANCODE">GLFW:GET-KEY-SCANCODE</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-KEY-NAME">GLFW:GET-KEY-NAME</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-KEY">GLFW:GET-KEY</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-JOYSTICK-USER-POINTER">GLFW:GET-JOYSTICK-USER-POINTER</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-JOYSTICK-NAME">GLFW:GET-JOYSTICK-NAME</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-JOYSTICK-HATS">GLFW:GET-JOYSTICK-HATS</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-JOYSTICK-GUID">GLFW:GET-JOYSTICK-GUID</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-JOYSTICK-BUTTONS">GLFW:GET-JOYSTICK-BUTTONS</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-JOYSTICK-AXES">GLFW:GET-JOYSTICK-AXES</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-INPUT-MODE">GLFW:GET-INPUT-MODE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GET-GAMMA-RAMP">GLFW:GET-GAMMA-RAMP</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-GAMEPAD-STATE">GLFW:GET-GAMEPAD-STATE</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-GAMEPAD-NAME">GLFW:GET-GAMEPAD-NAME</a>
  * <a href="/docs/api/window.md#function:GLFW:GET-FRAMEBUFFER-SIZE">GLFW:GET-FRAMEBUFFER-SIZE</a>
  * <a href="/docs/api/initialization.md#function:GLFW:GET-ERROR">GLFW:GET-ERROR</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-CURSOR-POS">GLFW:GET-CURSOR-POS</a>
  * <a href="/docs/api/context.md#function:GLFW:GET-CURRENT-CONTEXT">GLFW:GET-CURRENT-CONTEXT</a>
  * <a href="/docs/api/input.md#function:GLFW:GET-CLIPBOARD-STRING">GLFW:GET-CLIPBOARD-STRING</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GAMMARAMP-SIZE">GLFW:GAMMARAMP-SIZE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GAMMARAMP-RED">GLFW:GAMMARAMP-RED</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GAMMARAMP-GREEN">GLFW:GAMMARAMP-GREEN</a>
  * <a href="/docs/api/monitor.md#function:GLFW:GAMMARAMP-BLUE">GLFW:GAMMARAMP-BLUE</a>
  * <a href="/docs/api/input.md#function:GLFW:GAMEPADSTATE-BUTTONS">GLFW:GAMEPADSTATE-BUTTONS</a>
  * <a href="/docs/api/input.md#function:GLFW:GAMEPADSTATE-AXES">GLFW:GAMEPADSTATE-AXES</a>
* F
  * <a href="/docs/api/window.md#function:GLFW:FOCUS-WINDOW">GLFW:FOCUS-WINDOW</a>
* E
  * <a href="/docs/api/context.md#function:GLFW:EXTENSION-SUPPORTED">GLFW:EXTENSION-SUPPORTED</a>
* D
  * <a href="/docs/api/window.md#function:GLFW:DESTROY-WINDOW">GLFW:DESTROY-WINDOW</a>
  * <a href="/docs/api/window.md#function:GLFW:DESTROY-IMAGE">GLFW:DESTROY-IMAGE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:DESTROY-GAMMARAMP">GLFW:DESTROY-GAMMARAMP</a>
  * <a href="/docs/api/input.md#function:GLFW:DESTROY-CURSOR">GLFW:DESTROY-CURSOR</a>
  * <a href="/docs/api/window.md#function:GLFW:DELFAULT-WINDOW-HINTS">GLFW::DELFAULT-WINDOW-HINTS</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-SIZE-CALLBACK">GLFW::DEFINE-WINDOW-SIZE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-REFRESH-CALLBACK">GLFW::DEFINE-WINDOW-REFRESH-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-POS-CALLBACK">GLFW::DEFINE-WINDOW-POS-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-MAXIMIZE-CALLBACK">GLFW::DEFINE-WINDOW-MAXIMIZE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-ICONIFY-CALLBACK">GLFW::DEFINE-WINDOW-ICONIFY-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-FOCUS-CALLBACK">GLFW::DEFINE-WINDOW-FOCUS-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-CONTENT-SCALE-CALLBACK">GLFW::DEFINE-WINDOW-CONTENT-SCALE-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-WINDOW-CLOSE-CALLBACK">GLFW::DEFINE-WINDOW-CLOSE-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-SCROLL-CALLBACK">GLFW::DEFINE-SCROLL-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-MOUSE-BUTTON-CALLBACK">GLFW::DEFINE-MOUSE-BUTTON-CALLBACK</a>
  * <a href="/docs/api/monitor.md#function:GLFW:DEFINE-MONITOR-CALLBACK">GLFW::DEFINE-MONITOR-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-KEY-CALLBACK">GLFW::DEFINE-KEY-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-JOYSTICK-CALLBACK">GLFW::DEFINE-JOYSTICK-CALLBACK</a>
  * <a href="/docs/api/window.md#function:GLFW:DEFINE-FRAMEBUFFER-SIZE-CALLBACK">GLFW::DEFINE-FRAMEBUFFER-SIZE-CALLBACK</a>
  * <a href="/docs/api/initialization.md#function:GLFW:DEFINE-ERROR-CALLBACK">GLFW::DEFINE-ERROR-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-DROP-CALLBACK">GLFW::DEFINE-DROP-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-CURSOR-POS-CALLBACK">GLFW::DEFINE-CURSOR-POS-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-CURSOR-ENTER-CALLBACK">GLFW::DEFINE-CURSOR-ENTER-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-CHAR-MODS-CALLBACK">GLFW::DEFINE-CHAR-MODS-CALLBACK</a>
  * <a href="/docs/api/input.md#function:GLFW:DEFINE-CHAR-CALLBACK">GLFW::DEFINE-CHAR-CALLBACK</a>
* C
  * <a href="/docs/api/vulkan.md#function:GLFW:CREATE-WINDOW-SURFACE">GLFW:CREATE-WINDOW-SURFACE</a>
  * <a href="/docs/api/window.md#function:GLFW:CREATE-WINDOW">GLFW:CREATE-WINDOW</a>
  * <a href="/docs/api/input.md#function:GLFW:CREATE-STANDARD-CURSOR">GLFW:CREATE-STANDARD-CURSOR</a>
  * <a href="/docs/api/window.md#function:GLFW:CREATE-IMAGE">GLFW:CREATE-IMAGE</a>
  * <a href="/docs/api/monitor.md#function:GLFW:CREATE-GAMMARAMP">GLFW:CREATE-GAMMARAMP</a>
  * <a href="/docs/api/input.md#function:GLFW:CREATE-CURSOR">GLFW:CREATE-CURSOR</a>

