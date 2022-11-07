# The cl-glfw reference

Welcome to the cl-glfw reference!

Here you can see how the GLFW functions look like in Common Lisp. They have a brief description of what they do and maybe some notes about the types of the arguments. Remember that the main documentation source must be [the GLFW official documentation](https://www.glfw.org/documentation.html).

* [Context reference](/docs/api/context.md#context-reference)
* [Initialization, version and error reference](/docs/api/initialization.md#initialization-version-and-error-reference)
* [Input reference](/docs/api/input.md#input-reference)
* [Monitor reference](/docs/api/monitor.md#monitor-reference)
* [Vulkan support reference](/docs/api/vulkan.md#vulkan-support-reference)
* [Window reference](/docs/api/window.md#window-reference)

## Function index

* C
  * [GLFW:CREATE-CURSOR](/docs/api/input.md#function-create-cursor)
  * [GLFW:CREATE-GAMMARAMP](/docs/api/monitor.md#function-create-gammaramp)
  * [GLFW:CREATE-IMAGE](/docs/api/window.md#function-create-image)
  * [GLFW:CREATE-STANDARD-CURSOR](/docs/api/input.md#function-create-standard-cursor)
  * [GLFW:CREATE-WINDOW](/docs/api/window.md#function-create-window)
  * [GLFW:CREATE-WINDOW-SURFACE](/docs/api/vulkan.md#function-create-window-surface)
* D
  * [DEFINE-CHAR-CALLBACK](/docs/api/input.md#macro-define-char-callback)
  * [DEFINE-CHAR-MODS-CALLBACK](/docs/api/input.md#macro-define-char-mods-callback)
  * [DEFINE-CURSOR-ENTER-CALLBACK](/docs/api/input.md#macro-define-cursor-enter-callback)
  * [DEFINE-CURSOR-POS-CALLBACK](/docs/api/input.md#macro-define-cursor-pos-callback)
  * [DEFINE-DROP-CALLBACK](/docs/api/input.md#macro-define-drop-callback)
  * [DEFINE-ERROR-CALLBACK](/docs/api/initialization.md#macro-define-error-callback)
  * [DEFINE-FRAMEBUFFER-SIZE-CALLBACK](/docs/api/window.md#macro-define-framebuffer-size-callback)
  * [DEFINE-JOYSTICK-CALLBACK](/docs/api/input.md#macro-define-joystick-callback)
  * [DEFINE-KEY-CALLBACK](/docs/api/input.md#macro-define-key-callback)
  * [DEFINE-MONITOR-CALLBACK](/docs/api/monitor.md#macro-define-monitor-callback)
  * [DEFINE-MOUSE-BUTTON-CALLBACK](/docs/api/input.md#macro-define-mouse-button-callback)
  * [DEFINE-SCROLL-CALLBACK](/docs/api/input.md#macro-define-scroll-callback)
  * [DEFINE-WINDOW-CLOSE-CALLBACK](/docs/api/window.md#macro-define-window-close-callback)
  * [DEFINE-WINDOW-CONTENT-SCALE-CALLBACK](/docs/api/window.md#macro-define-window-content-scale-callback)
  * [DEFINE-WINDOW-FOCUS-CALLBACK](/docs/api/window.md#macro-define-window-focus-callback)
  * [DEFINE-WINDOW-ICONIFY-CALLBACK](/docs/api/window.md#macro-define-window-iconify-callback)
  * [DEFINE-WINDOW-MAXIMIZE-CALLBACK](/docs/api/window.md#macro-define-window-maximize-callback)
  * [DEFINE-WINDOW-POS-CALLBACK](/docs/api/window.md#macro-define-window-pos-callback)
  * [DEFINE-WINDOW-REFRESH-CALLBACK](/docs/api/window.md#macro-define-window-refresh-callback)
  * [DEFINE-WINDOW-SIZE-CALLBACK](/docs/api/window.md#macro-define-window-size-callback)
  * [DELFAULT-WINDOW-HINTS](/docs/api/window.md#function-delfault-window-hints)
  * [GLFW:DESTROY-CURSOR](/docs/api/input.md#function-destroy-cursor)
  * [GLFW:DESTROY-GAMMARAMP](/docs/api/monitor.md#function-destroy-gammaramp)
  * [GLFW:DESTROY-IMAGE](/docs/api/window.md#function-destroy-image)
  * [GLFW:DESTROY-WINDOW](/docs/api/window.md#function-destroy-window)
* E
  * [GLFW:EXTENSION-SUPPORTED](/docs/api/context.md#function-extension-supported)
* F
  * [GLFW:FOCUS-WINDOW](/docs/api/window.md#function-focus-window)
* G
  * [GLFW:GAMEPADSTATE-AXES](/docs/api/input.md#function-gamepadstate-axes)
  * [GLFW:GAMEPADSTATE-BUTTONS](/docs/api/input.md#function-gamepadstate-buttons)
  * [GLFW:GAMMARAMP-BLUE](/docs/api/monitor.md#function-gammaramp-blue)
  * [GLFW:GAMMARAMP-GREEN](/docs/api/monitor.md#function-gammaramp-green)
  * [GLFW:GAMMARAMP-RED](/docs/api/monitor.md#function-gammaramp-red)
  * [GLFW:GAMMARAMP-SIZE](/docs/api/monitor.md#function-gammaramp-size)
  * [GLFW:GET-CLIPBOARD-STRING](/docs/api/input.md#function-get-clipboard-string)
  * [GLFW:GET-CURRENT-CONTEXT](/docs/api/context.md#function-get-current-context)
  * [GLFW:GET-CURSOR-POS](/docs/api/input.md#function-get-cursor-pos)
  * [GLFW:GET-ERROR](/docs/api/initialization.md#function-get-error)
  * [GLFW:GET-FRAMEBUFFER-SIZE](/docs/api/window.md#function-get-framebuffer-size)
  * [GLFW:GET-GAMEPAD-NAME](/docs/api/input.md#function-get-gamepad-name)
  * [GLFW:GET-GAMEPAD-STATE](/docs/api/input.md#function-get-gamepad-state)
  * [GLFW:GET-GAMMA-RAMP](/docs/api/monitor.md#function-get-gamma-ramp)
  * [GLFW:GET-INPUT-MODE](/docs/api/input.md#function-get-input-mode)
  * [GLFW:GET-JOYSTICK-AXES](/docs/api/input.md#function-get-joystick-axes)
  * [GLFW:GET-JOYSTICK-BUTTONS](/docs/api/input.md#function-get-joystick-buttons)
  * [GLFW:GET-JOYSTICK-GUID](/docs/api/input.md#function-get-joystick-guid)
  * [GLFW:GET-JOYSTICK-HATS](/docs/api/input.md#function-get-joystick-hats)
  * [GLFW:GET-JOYSTICK-NAME](/docs/api/input.md#function-get-joystick-name)
  * [GLFW:GET-JOYSTICK-USER-POINTER](/docs/api/input.md#function-get-joystick-user-pointer)
  * [GLFW:GET-KEY](/docs/api/input.md#function-get-key)
  * [GLFW:GET-KEY-NAME](/docs/api/input.md#function-get-key-name)
  * [GLFW:GET-KEY-SCANCODE](/docs/api/input.md#function-get-key-scancode)
  * [GLFW:GET-MONITOR-CONTENT-SCALE](/docs/api/monitor.md#function-get-monitor-content-scale)
  * [GLFW:GET-MONITOR-NAME](/docs/api/monitor.md#function-get-monitor-name)
  * [GLFW:GET-MONITOR-PHYSICAL-SIZE](/docs/api/monitor.md#function-get-monitor-physical-size)
  * [GLFW:GET-MONITOR-POS](/docs/api/monitor.md#function-get-monitor-pos)
  * [GLFW:GET-MONITOR-USER-POINTER](/docs/api/monitor.md#function-get-monitor-user-pointer)
  * [GLFW:GET-MONITOR-WORKAREA](/docs/api/monitor.md#function-get-monitor-workarea)
  * [GLFW:GET-MONITORS](/docs/api/monitor.md#function-get-monitors)
  * [GLFW:GET-MOUSE-BUTTON](/docs/api/input.md#function-get-mouse-button)
  * [GLFW:GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT](/docs/api/vulkan.md#function-get-physical-device-presentation-support)
  * [GLFW:GET-PRIMARY-MONITOR](/docs/api/monitor.md#function-get-primary-monitor)
  * [GLFW:GET-REQUIRED-INSTANCE-EXTENSIONS](/docs/api/vulkan.md#function-get-required-instance-extensions)
  * [GLFW:GET-TIME](/docs/api/input.md#function-get-time)
  * [GLFW:GET-TIMER-FREQUENCY](/docs/api/input.md#function-get-timer-frequency)
  * [GLFW:GET-TIMER-VALUE](/docs/api/input.md#function-get-timer-value)
  * [GLFW:GET-VERSION](/docs/api/initialization.md#function-get-version)
  * [GLFW:GET-VERSION-STRING](/docs/api/initialization.md#function-get-version-string)
  * [GLFW:GET-VIDEO-MODE](/docs/api/monitor.md#function-get-video-mode)
  * [GLFW:GET-VIDEO-MODES](/docs/api/monitor.md#function-get-video-modes)
  * [GLFW:GET-WINDOW-ATTRIB](/docs/api/window.md#function-get-window-attrib)
  * [GLFW:GET-WINDOW-CONTENT-SCALE](/docs/api/window.md#function-get-window-content-scale)
  * [GLFW:GET-WINDOW-FRAME-SIZE](/docs/api/window.md#function-get-window-frame-size)
  * [GLFW:GET-WINDOW-MONITOR](/docs/api/window.md#function-get-window-monitor)
  * [GLFW:GET-WINDOW-OPACITY](/docs/api/window.md#function-get-window-opacity)
  * [GLFW:GET-WINDOW-POS](/docs/api/window.md#function-get-window-pos)
  * [GLFW:GET-WINDOW-SIZE](/docs/api/window.md#function-get-window-size)
  * [GLFW:GET-WINDOW-USER-POINTER](/docs/api/window.md#function-get-window-user-pointer)
* H
  * [GLFW:HIDE-WINDOW](/docs/api/window.md#function-hide-window)
* I
  * [GLFW:ICONIFY-WINDOW](/docs/api/window.md#function-iconify-window)
  * [GLFW:IMAGE-HEIGHT](/docs/api/window.md#function-image-height)
  * [GLFW:IMAGE-PIXELS](/docs/api/window.md#function-image-pixels)
  * [GLFW:IMAGE-WIDTH](/docs/api/window.md#function-image-width)
  * [GLFW:INIT](/docs/api/initialization.md#function-init)
  * [GLFW:INIT-HINT](/docs/api/initialization.md#function-init-hint)
* J
  * [GLFW:JOYSTICK-IS-GAMEPAD](/docs/api/input.md#function-joystick-is-gamepad)
  * [GLFW:JOYSTICK-PRESENT](/docs/api/input.md#function-joystick-present)
* M
  * [GLFW:MAKE-CONTEXT-CURRENT](/docs/api/context.md#function-make-context-current)
  * [GLFW:MAXIMIZE-WINDOW](/docs/api/window.md#function-maximize-window)
* P
  * [GLFW:POLL-EVENTS](/docs/api/window.md#function-poll-events)
  * [GLFW:POST-EMPTY-EVENT](/docs/api/window.md#function-post-empty-event)
* R
  * [GLFW:RAW-MOUSE-MOTION-SUPPORTED](/docs/api/input.md#function-raw-mouse-motion-supported)
  * [GLFW:REQUEST-WINDOW-ATTENTION](/docs/api/window.md#function-request-window-attention)
  * [GLFW:RESTORE-WINDOW](/docs/api/window.md#function-restore-window)
* S
  * [GLFW:SET-CHAR-CALLBACK](/docs/api/input.md#function-set-char-callback)
  * [GLFW:SET-CHAR-MODS-CALLBACK](/docs/api/input.md#function-set-char-mods-callback)
  * [GLFW:SET-CLIPBOARD-STRING](/docs/api/input.md#function-set-clipboard-string)
  * [GLFW:SET-CURSOR](/docs/api/input.md#function-set-cursor)
  * [GLFW:SET-CURSOR-ENTER-CALLBACK](/docs/api/input.md#function-set-cursor-enter-callback)
  * [GLFW:SET-CURSOR-POS](/docs/api/input.md#function-set-cursor-pos)
  * [GLFW:SET-CURSOR-POS-CALLBACK](/docs/api/input.md#function-set-cursor-pos-callback)
  * [GLFW:SET-DROP-CALLBACK](/docs/api/input.md#function-set-drop-callback)
  * [GLFW:SET-ERROR-CALLBACK](/docs/api/initialization.md#function-set-error-callback)
  * [GLFW:SET-FRAMEBUFFER-SIZE-CALLBACK](/docs/api/window.md#function-set-framebuffer-size-callback)
  * [GLFW:SET-GAMMA](/docs/api/monitor.md#function-set-gamma)
  * [GLFW:SET-GAMMA-RAMP](/docs/api/monitor.md#function-set-gamma-ramp)
  * [GLFW:SET-INPUT-MODE](/docs/api/input.md#function-set-input-mode)
  * [GLFW:SET-JOYSTICK-CALLBACK](/docs/api/input.md#function-set-joystick-callback)
  * [GLFW:SET-JOYSTICK-USER-POINTER](/docs/api/input.md#function-set-joystick-user-pointer)
  * [GLFW:SET-KEY-CALLBACK](/docs/api/input.md#function-set-key-callback)
  * [GLFW:SET-MONITOR-CALLBACK](/docs/api/monitor.md#function-set-monitor-callback)
  * [GLFW:SET-MONITOR-USER-POINTER](/docs/api/monitor.md#function-set-monitor-user-pointer)
  * [GLFW:SET-MOUSE-BUTTON-CALLBACK](/docs/api/input.md#function-set-mouse-button-callback)
  * [GLFW:SET-SCROLL-CALLBACK](/docs/api/input.md#function-set-scroll-callback)
  * [GLFW:SET-TIME](/docs/api/input.md#function-set-time)
  * [GLFW:SET-WINDOW-ASPECT-RATIO](/docs/api/window.md#function-set-window-aspect-ratio)
  * [GLFW:SET-WINDOW-ATTRIB](/docs/api/window.md#function-set-window-attrib)
  * [GLFW:SET-WINDOW-CLOSE-CALLBACK](/docs/api/window.md#function-set-window-close-callback)
  * [GLFW:SET-WINDOW-CONTENT-SCALE-CALLBACK](/docs/api/window.md#function-set-window-content-scale-callback)
  * [GLFW:SET-WINDOW-FOCUS-CALLBACK](/docs/api/window.md#function-set-window-focus-callback)
  * [GLFW:SET-WINDOW-ICON](/docs/api/window.md#function-set-window-icon)
  * [GLFW:SET-WINDOW-ICONIFY-CALLBACK](/docs/api/window.md#function-set-window-iconify-callback)
  * [GLFW:SET-WINDOW-MAXIMIZE-CALLBACK](/docs/api/window.md#function-set-window-maximize-callback)
  * [GLFW:SET-WINDOW-MONITOR](/docs/api/window.md#function-set-window-monitor)
  * [GLFW:SET-WINDOW-OPACITY](/docs/api/window.md#function-set-window-opacity)
  * [GLFW:SET-WINDOW-POS](/docs/api/window.md#function-set-window-pos)
  * [GLFW:SET-WINDOW-POS-CALLBACK](/docs/api/window.md#function-set-window-pos-callback)
  * [GLFW:SET-WINDOW-REFRESH-CALLBACK](/docs/api/window.md#function-set-window-refresh-callback)
  * [GLFW:SET-WINDOW-SHOULD-CLOSE](/docs/api/window.md#function-set-window-should-close)
  * [GLFW:SET-WINDOW-SIZE](/docs/api/window.md#function-set-window-size)
  * [GLFW:SET-WINDOW-SIZE-CALLBACK](/docs/api/window.md#function-set-window-size-callback)
  * [GLFW:SET-WINDOW-SIZE-LIMITS](/docs/api/window.md#function-set-window-size-limits)
  * [GLFW:SET-WINDOW-TITLE](/docs/api/window.md#function-set-window-title)
  * [GLFW:SET-WINDOW-USER-POINTER](/docs/api/window.md#function-set-window-user-pointer)
  * [GLFW:SHOW-WINDOW](/docs/api/window.md#function-show-window)
  * [GLFW:SWAP-BUFFERS](/docs/api/window.md#function-swap-buffers)
  * [GLFW:SWAP-INTERVAL](/docs/api/context.md#function-swap-interval)
* T
  * [GLFW:TERMINATE](/docs/api/initialization.md#function-terminate)
* U
  * [GLFW:UPDATE-GAMEPAD-MAPPINGS](/docs/api/input.md#function-update-gamepad-mappings)
* V
  * [GLFW:VIDMODE-BLUEBITS](/docs/api/monitor.md#function-vidmode-bluebits)
  * [GLFW:VIDMODE-GREENBITS](/docs/api/monitor.md#function-vidmode-greenbits)
  * [GLFW:VIDMODE-HEIGHT](/docs/api/monitor.md#function-vidmode-height)
  * [GLFW:VIDMODE-REDBITS](/docs/api/monitor.md#function-vidmode-redbits)
  * [GLFW:VIDMODE-REFRESHRATE](/docs/api/monitor.md#function-vidmode-refreshrate)
  * [GLFW:VIDMODE-WIDTH](/docs/api/monitor.md#function-vidmode-width)
  * [GLFW:VULKAN-SUPPORTED](/docs/api/vulkan.md#function-vulkan-supported)
* W
  * [GLFW:WAIT-EVENTS](/docs/api/window.md#function-wait-events)
  * [GLFW:WAIT-EVENTS-TIMEOUT](/docs/api/window.md#function-wait-events-timeout)
  * [GLFW:WINDOW-HINT](/docs/api/window.md#function-window-hint)
  * [GLFW:WINDOW-HINT-STRING](/docs/api/window.md#function-window-hint-string)
  * [GLFW:WINDOW-SHOULD-CLOSE](/docs/api/window.md#function-window-should-close)
  * [GLFW:WITH-GAMMARAMP](/docs/api/monitor.md#macro-with-gammaramp)
  * [GLFW:WITH-IMAGE](/docs/api/window.md#macro-with-image)
