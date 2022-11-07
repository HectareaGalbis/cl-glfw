# Window reference

## Description

This is the reference documentation for window related functions and types, including creation, deletion and event polling.

* [Window reference](/docs/api/window.md#window-reference)
  * [Description](/docs/api/window.md#description)
  * [Constants](/docs/api/window.md#constants)
  * [Types](/docs/api/window.md#types)
    * [GFLWimage](/docs/api/window.md#gflwimage)
  * [Functions](/docs/api/window.md#functions)

## Constants

#### Constant: GLFW\_FOCUSED

```Lisp
(defconstant GLFW:GLFW_FOCUSED 131073)
```

````
Input focus window hint and attribute.
````

#### Constant: GLFW\_ICONIFIED

```Lisp
(defconstant GLFW:GLFW_ICONIFIED 131074)
```

````
Window iconification window attribute.
````

#### Constant: GLFW\_RESIZABLE

```Lisp
(defconstant GLFW:GLFW_RESIZABLE 131075)
```

````
Window resize_ability window hint and attribute.
````

#### Constant: GLFW\_VISIBLE

```Lisp
(defconstant GLFW:GLFW_VISIBLE 131076)
```

````
Window visibility window hint and attribute.
````

#### Constant: GLFW\_DECORATED

```Lisp
(defconstant GLFW:GLFW_DECORATED 131077)
```

````
Window decoration window hint and attribute.
````

#### Constant: GLFW\_AUTO\_ICONIFY

```Lisp
(defconstant GLFW:GLFW_AUTO_ICONIFY 131078)
```

````
Window auto_iconification window hint and attribute.
````

#### Constant: GLFW\_FLOATING

```Lisp
(defconstant GLFW:GLFW_FLOATING 131079)
```

````
Window decoration window hint and attribute.
````

#### Constant: GLFW\_MAXIMIZED

```Lisp
(defconstant GLFW:GLFW_MAXIMIZED 131080)
```

````
Window maximization window hint and attribute.
````

#### Constant: GLFW\_CENTER\_CURSOR

```Lisp
(defconstant GLFW:GLFW_CENTER_CURSOR 131081)
```

````
Cursor centering window hint.
````

#### Constant: GLFW\_TRANSPARENT\_FRAMEBUFFER

```Lisp
(defconstant GLFW:GLFW_TRANSPARENT_FRAMEBUFFER 131082)
```

````
Window framebuffer transparency hint and attribute.
````

#### Constant: GLFW\_HOVERED

```Lisp
(defconstant GLFW:GLFW_HOVERED 131083)
```

````
Mouse cursor hover window attribute.
````

#### Constant: GLFW\_FOCUS\_ON\_SHOW

```Lisp
(defconstant GLFW:GLFW_FOCUS_ON_SHOW 131084)
```

````
Input focus on calling show window hint and attribute.
````

#### Constant: GLFW\_RED\_BITS

```Lisp
(defconstant GLFW:GLFW_RED_BITS 135169)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_GREEN\_BITS

```Lisp
(defconstant GLFW:GLFW_GREEN_BITS 135170)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_BLUE\_BITS

```Lisp
(defconstant GLFW:GLFW_BLUE_BITS 135171)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_ALPHA\_BITS

```Lisp
(defconstant GLFW:GLFW_ALPHA_BITS 135172)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_DEPTH\_BITS

```Lisp
(defconstant GLFW:GLFW_DEPTH_BITS 135173)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_STENCIL\_BITS

```Lisp
(defconstant GLFW:GLFW_STENCIL_BITS 135174)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_ACCUM\_RED\_BITS

```Lisp
(defconstant GLFW:GLFW_ACCUM_RED_BITS 135175)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_ACCUM\_GREEN\_BITS

```Lisp
(defconstant GLFW:GLFW_ACCUM_GREEN_BITS 135176)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_ACCUM\_BLUE\_BITS

```Lisp
(defconstant GLFW:GLFW_ACCUM_BLUE_BITS 135177)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_ACCUM\_ALPHA\_BITS

```Lisp
(defconstant GLFW:GLFW_ACCUM_ALPHA_BITS 135178)
```

````
Framebuffer bit depth hint.
````

#### Constant: GLFW\_AUX\_BUFFERS

```Lisp
(defconstant GLFW:GLFW_AUX_BUFFERS 135179)
```

````
Framebuffer auxiliary buffer hint.
````

#### Constant: GLFW\_STEREO

```Lisp
(defconstant GLFW:GLFW_STEREO 135180)
```

````
OpenGL stereoscopic rendering hint.
````

#### Constant: GLFW\_SAMPLES

```Lisp
(defconstant GLFW:GLFW_SAMPLES 135181)
```

````
Framebuffer MSAA samples hint.
````

#### Constant: GLFW\_SRGB\_CAPABLE

```Lisp
(defconstant GLFW:GLFW_SRGB_CAPABLE 135182)
```

````
Framebuffer sRGB hint.
````

#### Constant: GLFW\_REFRESH\_RATE

```Lisp
(defconstant GLFW:GLFW_REFRESH_RATE 135183)
```

````
Monitor refresh rate hint.
````

#### Constant: GLFW\_DOUBLEBUFFER

```Lisp
(defconstant GLFW:GLFW_DOUBLEBUFFER 135184)
```

````
Framebuffer double buffering hint.
````

#### Constant: GLFW\_CLIENT\_API

```Lisp
(defconstant GLFW:GLFW_CLIENT_API 139265)
```

````
Context client API hint and attribute.
````

#### Constant: GLFW\_CONTEXT\_VERSION\_MAJOR

```Lisp
(defconstant GLFW:GLFW_CONTEXT_VERSION_MAJOR 139266)
```

````
Context client API major version hint and attribute.
````

#### Constant: GLFW\_CONTEXT\_VERSION\_MINOR

```Lisp
(defconstant GLFW:GLFW_CONTEXT_VERSION_MINOR 139267)
```

````
Context client API minor version hint and attribute.
````

#### Constant: GLFW\_CONTEXT\_REVISION

```Lisp
(defconstant GLFW:GLFW_CONTEXT_REVISION 139268)
```

````
Context client API revision number attribute.
````

#### Constant: GLFW\_CONTEXT\_ROBUSTNESS

```Lisp
(defconstant GLFW:GLFW_CONTEXT_ROBUSTNESS 139269)
```

````
Context robustness hint and attribute.
````

#### Constant: GLFW\_OPENGL\_FORWARD\_COMPAT

```Lisp
(defconstant GLFW:GLFW_OPENGL_FORWARD_COMPAT 139270)
```

````
OpenGL forward_compatibility hint and attribute.
````

#### Constant: GLFW\_OPENGL\_DEBUG\_CONTEXT

```Lisp
(defconstant GLFW:GLFW_OPENGL_DEBUG_CONTEXT 139271)
```

````
Debug mode context hint and attribute.
````

#### Constant: GLFW\_OPENGL\_PROFILE

```Lisp
(defconstant GLFW:GLFW_OPENGL_PROFILE 139272)
```

````
OpenGL profile hint and attribute.
````

#### Constant: GLFW\_CONTEXT\_RELEASE\_BEHAVIOR

```Lisp
(defconstant GLFW:GLFW_CONTEXT_RELEASE_BEHAVIOR 139273)
```

````
Context flush_on_release hint and attribute.
````

#### Constant: GLFW\_CONTEXT\_NO\_ERROR

```Lisp
(defconstant GLFW:GLFW_CONTEXT_NO_ERROR 139274)
```

````
Context error suppression hint and attribute.
````

#### Constant: GLFW\_CONTEXT\_CREATION\_API

```Lisp
(defconstant GLFW:GLFW_CONTEXT_CREATION_API 139275)
```

````
Context creation API hint and attribute.
````

#### Constant: GLFW\_SCALE\_TO\_MONITOR

```Lisp
(defconstant GLFW:GLFW_SCALE_TO_MONITOR 139276)
```

````
Window content area scaling window window hint.
````

#### Constant: GLFW\_COCOA\_RETINA\_FRAMEBUFFER

```Lisp
(defconstant GLFW:GLFW_COCOA_RETINA_FRAMEBUFFER 143361)
```

````
macOS specific window hint.
````

#### Constant: GLFW\_COCOA\_FRAME\_NAME

```Lisp
(defconstant GLFW:GLFW_COCOA_FRAME_NAME 143362)
```

````
macOS specific window hint.
````

#### Constant: GLFW\_COCOA\_GRAPHICS\_SWITCHING

```Lisp
(defconstant GLFW:GLFW_COCOA_GRAPHICS_SWITCHING 143363)
```

````
macOS specific window hint.
````

#### Constant: GLFW\_X11\_CLASS\_NAME

```Lisp
(defconstant GLFW:GLFW_X11_CLASS_NAME 147457)
```

````
X11 specific window hint.
````

#### Constant: GLFW\_X11\_INSTANCE\_NAME

```Lisp
(defconstant GLFW:GLFW_X11_INSTANCE_NAME 147458)
```

````
X11 specific window hint.
````

## Types

#### Type: WINDOW

```Lisp
(deftype WINDOW NIL
  ...)
```

#### Type: WINDOWPOSFUN

```Lisp
(deftype WINDOWPOSFUN NIL
  ...)
```

#### Type: WINDOWSIZEFUN

```Lisp
(deftype WINDOWSIZEFUN NIL
  ...)
```

#### Type: WINDOWCLOSEFUN

```Lisp
(deftype WINDOWCLOSEFUN NIL
  ...)
```

#### Type: WINDOWREFRESHFUN

```Lisp
(deftype WINDOWREFRESHFUN NIL
  ...)
```

#### Type: WINDOWFOCUSFUN

```Lisp
(deftype WINDOWFOCUSFUN NIL
  ...)
```

#### Type: WINDOWICONIFYFUN

```Lisp
(deftype WINDOWICONIFYFUN NIL
  ...)
```

#### Type: WINDOWMAXIMIZEFUN

```Lisp
(deftype WINDOWMAXIMIZEFUN NIL
  ...)
```

#### Type: FRAMEBUFFERSIZEFUN

```Lisp
(deftype FRAMEBUFFERSIZEFUN NIL
  ...)
```

#### Type: WINDOWCONTENTSCALEFUN

```Lisp
(deftype WINDOWCONTENTSCALEFUN NIL
  ...)
```

### GFLWimage

#### Type: IMAGE

```Lisp
(deftype IMAGE NIL
  ...)
```

#### Function: CREATE-IMAGE

```Lisp
(defun GLFW:CREATE-IMAGE (&KEY ((:WIDTH G1125) 0) ((:HEIGHT G1126) 0)
                          ((:PIXELS PIXELS-ARG) NIL))
  ...)
```

````
Constructor of IMAGE.
````

#### Function: DESTROY-IMAGE

```Lisp
(defun GLFW:DESTROY-IMAGE (ARG1128)
  ...)
```

````
Destructor of IMAGE.
````

#### Macro: WITH-IMAGE

```Lisp
(defmacro GLFW:WITH-IMAGE (VAR1137 ARGS1138 &BODY BODY1139)
  ...)
```

````
Wrap the body forms with CREATE-IMAGE and DESTROY-IMAGE.
````

#### Function: IMAGE-WIDTH

```Lisp
(defun GLFW:IMAGE-WIDTH (G1129)
  ...)
```

#### Function: IMAGE-HEIGHT

```Lisp
(defun GLFW:IMAGE-HEIGHT (G1130)
  ...)
```

#### Function: IMAGE-PIXELS

```Lisp
(defun GLFW:IMAGE-PIXELS (G1131 &OPTIONAL (HEIGHT-INDEX NIL) (WIDTH-INDEX NIL))
  ...)
```

#### Function: (SETF IMAGE-WIDTH)

```Lisp
(defun (SETF GLFW:IMAGE-WIDTH) (G1133 G1132)
  ...)
```

#### Function: (SETF IMAGE-HEIGHT)

```Lisp
(defun (SETF GLFW:IMAGE-HEIGHT) (G1135 G1134)
  ...)
```

#### Function: (SETF IMAGE-PIXELS)

```Lisp
(defun (SETF GLFW:IMAGE-PIXELS) (NEW-VALUE G1136 &OPTIONAL (HEIGHT-INDEX NIL)
                                 (WIDTH-INDEX NIL))
  ...)
```

* **Warning**: If you want to modify the PIXELS member, you must change WIDTH and HEIGHT first.

## Functions

#### Function: DELFAULT-WINDOW-HINTS

```Lisp
(defun DELFAULT-WINDOW-HINTS NIL
  ...)
```

````
Resets all window hints to their default values.
````

#### Function: WINDOW-HINT

```Lisp
(defun GLFW:WINDOW-HINT (HINT VALUE)
  ...)
```

````
Sets the specified window hint to the desired value.
````

#### Function: WINDOW-HINT-STRING

```Lisp
(defun GLFW:WINDOW-HINT-STRING (HINT VALUE)
  ...)
```

````
Sets the specified window hint to the desired value.
````

#### Function: CREATE-WINDOW

```Lisp
(defun GLFW:CREATE-WINDOW (WIDTH HEIGHT TITLE MONITOR SHARE)
  ...)
```

````
Creates a window (or returns NIL) and its associated context.
````

#### Function: DESTROY-WINDOW

```Lisp
(defun GLFW:DESTROY-WINDOW (WINDOW)
  ...)
```

````
Destroys the specified window and its context.
````

#### Function: WINDOW-SHOULD-CLOSE

```Lisp
(defun GLFW:WINDOW-SHOULD-CLOSE (WINDOW)
  ...)
```

````
Checks the close flag (t or NIL) of the specified window.
````

#### Function: SET-WINDOW-SHOULD-CLOSE

```Lisp
(defun GLFW:SET-WINDOW-SHOULD-CLOSE (WINDOW VALUE)
  ...)
```

````
Sets the close flag (t or NIL) of the specified window.
````

#### Function: SET-WINDOW-TITLE

```Lisp
(defun GLFW:SET-WINDOW-TITLE (WINDOW TITLE)
  ...)
```

````
Sets the title of the specified window.
````

#### Function: SET-WINDOW-ICON

```Lisp
(defun GLFW:SET-WINDOW-ICON (WINDOW IMAGES)
  ...)
```

````
Sets the icon for the specified window. IMAGES must be a vector or NIL.
````

#### Function: GET-WINDOW-POS

```Lisp
(defun GLFW:GET-WINDOW-POS (WINDOW)
  ...)
```

````
Returns the x-position and y-position of the content area of the specified window.
````

#### Function: SET-WINDOW-POS

```Lisp
(defun GLFW:SET-WINDOW-POS (WINDOW XPOS YPOS)
  ...)
```

````
Sets the position of the content area of the specified window.
````

#### Function: GET-WINDOW-SIZE

```Lisp
(defun GLFW:GET-WINDOW-SIZE (WINDOW)
  ...)
```

````
Returns the width and height of the content area of the specified window.
````

#### Function: SET-WINDOW-SIZE-LIMITS

```Lisp
(defun GLFW:SET-WINDOW-SIZE-LIMITS (WINDOW MINWIDTH MINHEIGHT MAXWIDTH
                                    MAXHEIGHT)
  ...)
```

````
Sets the size limits of the specified window.
````

#### Function: SET-WINDOW-ASPECT-RATIO

```Lisp
(defun GLFW:SET-WINDOW-ASPECT-RATIO (WINDOW NUMER DENOM)
  ...)
```

````
Sets the aspect ratio of the specified window.
````

#### Function: SET-WINDOW-SIZE

```Lisp
(defun GLFW:SET-WINDOW-SIZE (WINDOW WIDTH HEIGHT)
  ...)
```

````
Sets the size of the content area of the specified window.
````

#### Function: GET-FRAMEBUFFER-SIZE

```Lisp
(defun GLFW:GET-FRAMEBUFFER-SIZE (WINDOW)
  ...)
```

````
Returns the width and height of the framebuffer of the specified window.
````

#### Function: GET-WINDOW-FRAME-SIZE

```Lisp
(defun GLFW:GET-WINDOW-FRAME-SIZE (WINDOW)
  ...)
```

````
Returns the left, top, right and bottom edges of the frame of the window.
````

#### Function: GET-WINDOW-CONTENT-SCALE

```Lisp
(defun GLFW:GET-WINDOW-CONTENT-SCALE (WINDOW)
  ...)
```

````
Returns the xscale and yscale of the specified window.
````

#### Function: GET-WINDOW-OPACITY

```Lisp
(defun GLFW:GET-WINDOW-OPACITY (WINDOW)
  ...)
```

````
Returns the opacity of the whole window.
````

#### Function: SET-WINDOW-OPACITY

```Lisp
(defun GLFW:SET-WINDOW-OPACITY (WINDOW OPACITY)
  ...)
```

````
Sets the opacity of the whole window.
````

#### Function: ICONIFY-WINDOW

```Lisp
(defun GLFW:ICONIFY-WINDOW (WINDOW)
  ...)
```

````
Iconifies the specified window.
````

#### Function: RESTORE-WINDOW

```Lisp
(defun GLFW:RESTORE-WINDOW (WINDOW)
  ...)
```

````
Restores the specified window.
````

#### Function: MAXIMIZE-WINDOW

```Lisp
(defun GLFW:MAXIMIZE-WINDOW (WINDOW)
  ...)
```

````
Maximizes the specified window.
````

#### Function: SHOW-WINDOW

```Lisp
(defun GLFW:SHOW-WINDOW (WINDOW)
  ...)
```

````
Makes the specified window visible.
````

#### Function: HIDE-WINDOW

```Lisp
(defun GLFW:HIDE-WINDOW (WINDOW)
  ...)
```

````
Hides the specified window.
````

#### Function: FOCUS-WINDOW

```Lisp
(defun GLFW:FOCUS-WINDOW (WINDOW)
  ...)
```

````
Brings the specified window to front and sets input focus.
````

#### Function: REQUEST-WINDOW-ATTENTION

```Lisp
(defun GLFW:REQUEST-WINDOW-ATTENTION (WINDOW)
  ...)
```

````
Requests user attention to the specified window.
````

#### Function: GET-WINDOW-MONITOR

```Lisp
(defun GLFW:GET-WINDOW-MONITOR (WINDOW)
  ...)
```

````
Returns the monitor (or NIL) that the window uses for full screen mode.
````

#### Function: SET-WINDOW-MONITOR

```Lisp
(defun GLFW:SET-WINDOW-MONITOR (WINDOW MONITOR XPOS YPOS WIDTH HEIGHT
                                REFRESHRATE)
  ...)
```

````
Sets the mode, monitor, video mode and placement of a window.
````

#### Function: GET-WINDOW-ATTRIB

```Lisp
(defun GLFW:GET-WINDOW-ATTRIB (WINDOW ATTRIB)
  ...)
```

````
Returns an attribute of the specified window. Boolean attributes will be T or NIL.
````

#### Function: SET-WINDOW-ATTRIB

```Lisp
(defun GLFW:SET-WINDOW-ATTRIB (WINDOW ATTRIB VALUE)
  ...)
```

````
Sets an attribute of the specified window. Boolean attributes must be T or NIL.
````

#### Variable: \*WINDOWS-DATA\*

```Lisp
(defvar *WINDOWS-DATA* (MAKE-HASH-TABLE))
```

#### Function: SET-WINDOW-USER-POINTER

```Lisp
(defun GLFW:SET-WINDOW-USER-POINTER (WINDOW DATA)
  ...)
```

````
Sets the user pointer of the specified window.
````

#### Function: GET-WINDOW-USER-POINTER

```Lisp
(defun GLFW:GET-WINDOW-USER-POINTER (WINDOW)
  ...)
```

````
Returns the user pointer of the specified window.
````

#### Macro: DEFINE-WINDOW-POS-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-POS-CALLBACK (CALLBACK-NAME1143 (WINDOW XPOS YPOS)
                                      &BODY CALLBACK-BODY1144)
  ...)
```

````
Defines a position callback.
````

#### Function: SET-WINDOW-POS-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-POS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the position callback for the specified window.
````

#### Macro: DEFINE-WINDOW-SIZE-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-SIZE-CALLBACK (CALLBACK-NAME1150 (WINDOW WIDTH HEIGHT)
                                       &BODY CALLBACK-BODY1151)
  ...)
```

````
Defines a size callback.
````

#### Function: SET-WINDOW-SIZE-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-SIZE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the size callback for the specified window.
````

#### Macro: DEFINE-WINDOW-CLOSE-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-CLOSE-CALLBACK (CALLBACK-NAME1157 (WINDOW) &BODY
                                        CALLBACK-BODY1158)
  ...)
```

````
Defines a close callback.
````

#### Function: SET-WINDOW-CLOSE-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-CLOSE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the close callback for the specified window.
````

#### Macro: DEFINE-WINDOW-REFRESH-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-REFRESH-CALLBACK (CALLBACK-NAME1162 (WINDOW) &BODY
                                          CALLBACK-BODY1163)
  ...)
```

````
Defines a refresh callback.
````

#### Function: SET-WINDOW-REFRESH-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-REFRESH-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the refresh callback for the specified window.
````

#### Macro: DEFINE-WINDOW-FOCUS-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-FOCUS-CALLBACK (CALLBACK-NAME1167 (WINDOW FOCUSED)
                                        &BODY CALLBACK-BODY1168)
  ...)
```

````
Defines a focus callback.
````

#### Function: SET-WINDOW-FOCUS-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-FOCUS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the focus callback for the specified window.
````

#### Macro: DEFINE-WINDOW-ICONIFY-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-ICONIFY-CALLBACK (CALLBACK-NAME1173 (WINDOW ICONIFIED)
                                          &BODY CALLBACK-BODY1174)
  ...)
```

````
Defines an iconify callback.
````

#### Function: SET-WINDOW-ICONIFY-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-ICONIFY-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the iconify callback for the specified window.
````

#### Macro: DEFINE-WINDOW-MAXIMIZE-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-MAXIMIZE-CALLBACK (CALLBACK-NAME1179 (WINDOW MAXIMIZED)
                                           &BODY CALLBACK-BODY1180)
  ...)
```

````
Defines a maximize callback.
````

#### Function: SET-WINDOW-MAXIMIZE-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-MAXIMIZE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the maximize callback for the specified window.
````

#### Macro: DEFINE-FRAMEBUFFER-SIZE-CALLBACK

```Lisp
(defmacro DEFINE-FRAMEBUFFER-SIZE-CALLBACK (CALLBACK-NAME1185
                                            (WINDOW WIDTH HEIGHT) &BODY
                                            CALLBACK-BODY1186)
  ...)
```

````
Defines a framebuffer resize callback.
````

#### Function: SET-FRAMEBUFFER-SIZE-CALLBACK

```Lisp
(defun GLFW:SET-FRAMEBUFFER-SIZE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the framebuffer resize callback for the specified window.
````

#### Macro: DEFINE-WINDOW-CONTENT-SCALE-CALLBACK

```Lisp
(defmacro DEFINE-WINDOW-CONTENT-SCALE-CALLBACK (CALLBACK-NAME1192
                                                (WINDOW XSCALE YSCALE) &BODY
                                                CALLBACK-BODY1193)
  ...)
```

````
Defines a window content scale callback.
````

#### Function: SET-WINDOW-CONTENT-SCALE-CALLBACK

```Lisp
(defun GLFW:SET-WINDOW-CONTENT-SCALE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the window content scale callback for the specified window.
````

#### Function: POLL-EVENTS

```Lisp
(defun GLFW:POLL-EVENTS NIL
  ...)
```

````
Processes all pending events.
````

#### Function: WAIT-EVENTS

```Lisp
(defun GLFW:WAIT-EVENTS NIL
  ...)
```

````
Waits until events are queued and processes them.
````

#### Function: WAIT-EVENTS-TIMEOUT

```Lisp
(defun GLFW:WAIT-EVENTS-TIMEOUT (TIMEOUT)
  ...)
```

````
Waits with timeout until events are queued and processes them.
````

#### Function: POST-EMPTY-EVENT

```Lisp
(defun GLFW:POST-EMPTY-EVENT NIL
  ...)
```

````
Posts an empty event to the event queue.
````

#### Function: SWAP-BUFFERS

```Lisp
(defun GLFW:SWAP-BUFFERS (WINDOW)
  ...)
```

````
Swaps the front and back buffers of the specified window.
````

