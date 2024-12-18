
(in-package #:glfw)


(defmacro defconstants (&body body)
  `(progn
     ,@(mapcar #¿(cons 'defconstant ?) body)))


(defconstants

  (+version-major+     3  "The major version number of the GLFW header.")
  (+version-minor+     3  "The minor version number of the GLFW header.")
  (+version-revision+  6  "The revision number of the GLFW header.")

  (+release+  0  "The key or mouse button was released.")
  (+press+    1  "The key or mouse button was pressed.")
  (+repeat+   2  "The key was held down until it repeated.")
  (+hat-centered+    0)
  (+hat-up+          1)
  (+hat-right+       2)
  (+hat-down+        4)
  (+hat-left+        8)
  (+hat-right-up+    (logior +hat-right+ +hat-up+))
  (+hat-right-down+  (logior +hat-right+ +hat-down+))
  (+hat-left-up+     (logior +hat-left+ +hat-up+))
  (+hat-left-down+   (logior +hat-left+ +hat-down+))

  (+key-unknown+  -1)

  (+key-space+          32)
  (+key-apostrophe+     39   "/* ' */")
  (+key-comma+          44   "/* , */")
  (+key-minus+          45   "/* _ */")
  (+key-period+         46   "/* . */")
  (+key-slash+          47   "/* / */")
  (+key-0+              48)
  (+key-1+              49)
  (+key-2+              50)
  (+key-3+              51)
  (+key-4+              52)
  (+key-5+              53)
  (+key-6+              54)
  (+key-7+              55)
  (+key-8+              56)
  (+key-9+              57)
  (+key-semicolon+      59   "/* ; */")
  (+key-equal+          61   "/* = */")
  (+key-a+              65)
  (+key-b+              66)
  (+key-c+              67)
  (+key-d+              68)
  (+key-e+              69)
  (+key-f+              70)
  (+key-g+              71)
  (+key-h+              72)
  (+key-i+              73)
  (+key-j+              74)
  (+key-k+              75)
  (+key-l+              76)
  (+key-m+              77)
  (+key-n+              78)
  (+key-o+              79)
  (+key-p+              80)
  (+key-q+              81)
  (+key-r+              82)
  (+key-s+              83)
  (+key-t+              84)
  (+key-u+              85)
  (+key-v+              86)
  (+key-w+              87)
  (+key-x+              88)
  (+key-y+              89)
  (+key-z+              90)
  (+key-left-bracket+   91   "/* [ */")
  (+key-backslash+      92   "/* \\ */")
  (+key-right-bracket+  93   "/* ] */")
  (+key-grave-accent+   96   "/* ` */")
  (+key-world1+         161  "/* non_US #1 */")
  (+key-world2+         162  "/* non_US #2 */")
  
  (+key-escape+         256)
  (+key-enter+          257)
  (+key-tab+            258)
  (+key-backspace+      259)
  (+key-insert+         260)
  (+key-delete+         261)
  (+key-right+          262)
  (+key-left+           263)
  (+key-down+           264)
  (+key-up+             265)
  (+key-page-up+        266)
  (+key-page-down+      267)
  (+key-home+           268)
  (+key-end+            269)
  (+key-caps-lock+      280)
  (+key-scroll-lock+    281)
  (+key-num-lock+       282)
  (+key-print-screen+   283)
  (+key-pause+          284)
  (+key-f1+             290)
  (+key-f2+             291)
  (+key-f3+             292)
  (+key-f4+             293)
  (+key-f5+             294)
  (+key-f6+             295)
  (+key-f7+             296)
  (+key-f8+             297)
  (+key-f9+             298)
  (+key-f10+            299)
  (+key-f11+            300)
  (+key-f12+            301)
  (+key-f13+            302)
  (+key-f14+            303)
  (+key-f15+            304)
  (+key-f16+            305)
  (+key-f17+            306)
  (+key-f18+            307)
  (+key-f19+            308)
  (+key-f20+            309)
  (+key-f21+            310)
  (+key-f22+            311)
  (+key-f23+            312)
  (+key-f24+            313)
  (+key-f25+            314)
  (+key-kp_0+           320)
  (+key-kp_1+           321)
  (+key-kp_2+           322)
  (+key-kp_3+           323)
  (+key-kp_4+           324)
  (+key-kp_5+           325)
  (+key-kp_6+           326)
  (+key-kp_7+           327)
  (+key-kp_8+           328)
  (+key-kp_9+           329)
  (+key-kp-decimal+     330)
  (+key-kp-divide+      331)
  (+key-kp-multiply+    332)
  (+key-kp-subtract+    333)
  (+key-kp-add+         334)
  (+key-kp-enter+       335)
  (+key-kp-equal+       336)
  (+key-left-shift+     340)
  (+key-left-control+   341)
  (+key-left-alt+       342)
  (+key-left-super+     343)
  (+key-right-shift+    344)
  (+key-right-control+  345)
  (+key-right-alt+      346)
  (+key-right-super+    347)
  (+key-menu+           348)
  
  (+key-last+  +key-menu+)

  (+mod-shift+      #x0001  "If this bit is set one or more Shift keys were held down.")
  (+mod-control+    #x0002  "If this bit is set one or more Control keys were held down.")
  (+mod-alt+        #x0004  "If this bit is set one or more Alt keys were held down.")
  (+mod-super+      #x0008  "If this bit is set one or more Super keys were held down.")
  (+mod-caps-lock+  #x0010  "If this bit is set the Caps Lock key is enabled.")
  (+mod-num-lock+   #x0020  "If this bit is set the Num Lock key is enabled.")

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

  (+gamepad-button-cross+        +gamepad-button-a+)
  (+gamepad-button-circle+       +gamepad-button-b+)
  (+gamepad-button-square+       +gamepad-button-x+)
  (+gamepad-button-triangle+     +gamepad-button-y+)
  (+gamepad-axix-left-x+          0)
  (+gamepad-axis-left-y+          1)
  (+gamepad-axis-right-x+         2)
  (+gamepad-axis-right-y+         3)
  (+gamepad-axis-left-trigger+    4)
  (+gamepad-axis-right-trigger+   5)
  (+gamepad-axis-last+            +gamepad-axis-right-trigger+)
  (+no-error+               0           "No error has occurred.")
  (+not-initialized+        #x00010001  "GLFW has not been initialized.")
  (+no-current-context+     #x00010002  "No context is current for this thread.")
  (+invalid-enum+           #x00010003  "One of the arguments to the function was an invalid enum value.")
  (+invalid-value+          #x00010004  "One of the arguments to the function was an invalid value.")
  (+out-of-memory+          #x00010005  "A memory allocation failed.")
  (+api-unavailable+        #x00010006  "GLFW could not find support for the requested API on the system.")
  (+version-unavailable+    #x00010007  "The requested OpenGL or OpenGL ES version is not available.")
  (+platform-error+         #x00010008  "A platform_specific error occurred that does not match any of the more specific categories.")
  (+format-unavailable+     #x00010009  "The requested format is not supported or available.")
  (+no-window-context+      #x0001000A  "The specified window does not have an OpenGL or OpenGL ES context.")
  (+cursor-unavailable+     #x0001000B  "The specified cursor shape is not available.")
  (+feature-unavailable+    #x0001000C  "The requested feature is not provided by the platform.")
  (+feature-unimplemented+  #x0001000D  "The requested feature is not implemented for the platform.")
  (+platform-unavailable+   #x0001000E  "Platform unavailable or no matching platform was found.")
  (+focused+                  #x00020001  "Input focus window hint and attribute.")
  (+iconified+                #x00020002  "Window iconification window attribute.")
  (+resizable+                #x00020003  "Window resize_ability window hint and attribute.")
  (+visible+                  #x00020004  "Window visibility window hint and attribute.")
  (+decorated+                #x00020005  "Window decoration window hint and attribute.")
  (+auto-iconify+             #x00020006  "Window auto_iconification window hint and attribute.")
  (+floating+                 #x00020007  "Window decoration window hint and attribute.")
  (+maximized+                #x00020008  "Window maximization window hint and attribute.")
  (+center-cursor+            #x00020009  "Cursor centering window hint.")
  (+transparent-framebuffer+  #x0002000A  "Window framebuffer transparency hint and attribute.")
  (+hovered+                  #x0002000B  "Mouse cursor hover window attribute.")
  (+focus-on-show+            #x0002000C  "Input focus on calling show window hint and attribute.")

  (+mouse-passthrough+  #x0002000D  "Mouse input transparency window hint and attribute.")

  (+position-x+  #x0002000E  "Initial position x-coordinate window hint.")

  (+position-y+  #x0002000F  "Initial position y-coordinate window hint.")

  (+red-bits+          #x00021001  "Framebuffer bit depth hint.")
  (+green-bits+        #x00021002  "Framebuffer bit depth hint.")
  (+blue-bits+         #x00021003  "Framebuffer bit depth hint.")
  (+alpha-bits+        #x00021004  "Framebuffer bit depth hint.")
  (+depth-bits+        #x00021005  "Framebuffer bit depth hint.")
  (+stencil-bits+      #x00021006  "Framebuffer bit depth hint.")
  (+accum-red-bits+    #x00021007  "Framebuffer bit depth hint.")
  (+accum-green-bits+  #x00021008  "Framebuffer bit depth hint.")
  (+accum-blue-bits+   #x00021009  "Framebuffer bit depth hint.")
  (+accum-alpha-bits+  #x0002100A  "Framebuffer bit depth hint.")
  (+aux-buffers+       #x0002100B  "Framebuffer auxiliary buffer hint.")
  (+stereo+            #x0002100C  "OpenGL stereoscopic rendering hint.")
  (+samples+           #x0002100D  "Framebuffer MSAA samples hint.")
  (+srgb-capable+      #x0002100E  "Framebuffer sRGB hint.")
  (+refresh-rate+      #x0002100F  "Monitor refresh rate hint.")
  (+doublebuffer+      #x00021010  "Framebuffer double buffering hint.")

  (+client-api+                #x00022001  "Context client API hint and attribute.")
  (+context-version-major+     #x00022002  "Context client API major version hint and attribute.")
  (+context-version-minor+     #x00022003  "Context client API minor version hint and attribute.")
  (+context-revision+          #x00022004  "Context client API revision number attribute.")
  (+context-robustness+        #x00022005  "Context robustness hint and attribute.")
  (+opengl-forward-compat+     #x00022006  "OpenGL forward_compatibility hint and attribute.")
  (+opengl-debug-context+      #x00022007  "Debug mode context hint and attribute.")
  (+opengl-profile+            #x00022008  "OpenGL profile hint and attribute.")
  (+context-release-behavior+  #x00022009  "Context flush_on_release hint and attribute.")
  (+context-no-error+          #x0002200A  "Context error suppression hint and attribute.")
  (+context-creation-api+      #x0002200B  "Context creation API hint and attribute.")
  (+scale-to-monitor+          #x0002200C  "Window content area scaling window window hint.")
  (+cocoa-retina-framebuffer+  #x00023001  "macOS specific window hint.")
  (+cocoa-frame-name+          #x00023002  "macOS specific window hint.")
  (+cocoa-graphics-switching+  #x00023003  "macOS specific window hint.")
  (+x11-class-name+            #x00024001  "X11 specific window hint.")
  (+x11-instance-name+         #x00024002  "X11 specific window hint.")
  (+win32-keyboard-menu+       #x00025001)
  (+win32-showdefault+         #x00025002  "Win32 specific window hint.")
  (+wayland-app-id+            #x00026001  "Wayland specific window hint.")
  (+no-api+                    0)
  (+opengl-api+                #x00030001)
  (+opengl-es-api+             #x00030002)

  (+no-robustness+          0)
  (+no-reset-notification+  #x00031001)
  (+lose-context-on-reset+  #x00031002)

  (+opengl-any-profile+     0)
  (+opengl-core-profile+    #x00032001)
  (+opengl-compat-profile+  #x00032002)

  (+cursor+                #x00033001)
  (+sticky-keys+           #x00033002)
  (+sticky-mouse-buttons+  #x00033003)
  (+lock-key-mods+         #x00033004)
  (+raw-mouse-motion+      #x00033005)

  (+cursor-normal+    #x00034001)
  (+cursor-hidden+    #x00034002)
  (+cursor-disabled+  #x00034003)
  (+cursor-captured+  #x00034004)

  (+any-release-behavior+    0)
  (+release-behavior-flush+  #x00035001)
  (+release-behavior-none+   #x00035002)

  (+native-context-api+  #x00036001)
  (+egl-context-api+     #x00036002)
  (+osmesa-context-api+  #x00036003)

  (+angle-platform-type-none+      #x00037001)
  (+angle-platform-type-opengl+    #x00037002)
  (+angle-platform-type-opengles+  #x00037003)
  (+angle-platform-type-d3d9+      #x00037004)
  (+angle-platform-type-d3d11+     #x00037005)
  (+angle-platform-type-vulkan+    #x00037007)
  (+angle-platform-type-metal+     #x00037008)

  (+wayland-prefer-libdecor+   #x00038001)
  (+wayland-disable-libdecor+  #x00038002)

  (+any-position+  #x80000000)

  (+arrow-cursor+          #x00036001  "The regular arrow cursor shape.")
  (+ibeam-cursor+          #x00036002  "The text input I_beam cursor shape.")
  (+crosshair-cursor+      #x00036003  "The crosshair shape.")
  (+pointing-hand-cursor+  #x00036004  "The pointing hand cursor shape.")
  (+resize-ew-cursor+      #x00036005  "The horizontal resize/move arrow shape.")
  (+resize-ns-cursor+      #x00036006  "The vertical resize/move arrow shape.")
  (+resize-nwse-cursor+    #x00036007  "The top-left to bottom-right diagonal resize/move arrow shape.")
  (+resize-nesw-cursor+    #x00036008  "The top-right to bottom-left diagonal resize/move arrow shape.")
  (+resize-all-cursor+     #x00036009  "The omni-directional resize/move cursor shape.")
  (+not-allowed-cursor+    #x0003600A  "The operation-not-allowed shape.")
  (+hresize-cursor+        +resize-ew-cursor+      "The horizontal resize arrow shape.")
  (+vresize-cursor+        +resize-ns-cursor+      "The vertical resize arrow shape.")
  (+hand-cursor+           +pointing-hand-cursor+  "The hand shape.")
  (+connected+             #x00040001)
  (+disconnected+          #x00040002)

  (+joystick-hat-buttons+    #x00050001  "Joystick hat buttons init hint.")
  (+angle-platform-type+     #x00050002  "ANGLE rendering backend init hint.")
  (+platform+                #x00050003  "Platform selection init hint.")
  (+cocoa-chdir-resources+   #x00051001  "macOS specific init hint.")
  (+cocoa-menubar+           #x00051002  "macOS specific init hint.")
  (+x11-xcb-vulkan-surface+  #x00052001  "X11 specific init hint.")
  (+wayland-libdecor+        #x00053001  "Wayland specific init hint.")
  (+any-platform+            #x00060000  "Hint value that enables automatic platform selection.")
  (+platform-win32+          #x00060001)
  (+platform-cocoa+          #x00060002)
  (+platform-wayland+        #x00060003)
  (+platform-x11+            #x00060004)
  (+platform-null+           #x00060005)

  (+dont-care+  -1))
