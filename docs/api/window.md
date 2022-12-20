<h1 id="header:GLFW:WINDOW-REFERENCE-HEADER">Window reference</h1>

<h2 id="header:ADP:HEADERTAG92">Description</h2>

This is the reference documentation for window related functions and types\, including creation\, deletion and event polling\.

* <a href="/docs/api/window.md#header:GLFW:WINDOW-REFERENCE-HEADER">Window reference</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG92">Description</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG93">Constants</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG94">Types</a>
    * <a href="/docs/api/window.md#header:ADP:HEADERTAG95">GFLWimage</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG96">Functions</a>

<h2 id="header:ADP:HEADERTAG93">Constants</h2>

<h4 id="symbol:GLFW:GLFW_FOCUSED">Constant: GLFW_FOCUSED</h4>

```Lisp
(defconstant GLFW:GLFW_FOCUSED 131073)
```

````
Input focus window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_ICONIFIED">Constant: GLFW_ICONIFIED</h4>

```Lisp
(defconstant GLFW:GLFW_ICONIFIED 131074)
```

````
Window iconification window attribute.
````

<h4 id="symbol:GLFW:GLFW_RESIZABLE">Constant: GLFW_RESIZABLE</h4>

```Lisp
(defconstant GLFW:GLFW_RESIZABLE 131075)
```

````
Window resize_ability window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_VISIBLE">Constant: GLFW_VISIBLE</h4>

```Lisp
(defconstant GLFW:GLFW_VISIBLE 131076)
```

````
Window visibility window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_DECORATED">Constant: GLFW_DECORATED</h4>

```Lisp
(defconstant GLFW:GLFW_DECORATED 131077)
```

````
Window decoration window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_AUTO_ICONIFY">Constant: GLFW_AUTO_ICONIFY</h4>

```Lisp
(defconstant GLFW:GLFW_AUTO_ICONIFY 131078)
```

````
Window auto_iconification window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_FLOATING">Constant: GLFW_FLOATING</h4>

```Lisp
(defconstant GLFW:GLFW_FLOATING 131079)
```

````
Window decoration window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_MAXIMIZED">Constant: GLFW_MAXIMIZED</h4>

```Lisp
(defconstant GLFW:GLFW_MAXIMIZED 131080)
```

````
Window maximization window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CENTER_CURSOR">Constant: GLFW_CENTER_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_CENTER_CURSOR 131081)
```

````
Cursor centering window hint.
````

<h4 id="symbol:GLFW:GLFW_TRANSPARENT_FRAMEBUFFER">Constant: GLFW_TRANSPARENT_FRAMEBUFFER</h4>

```Lisp
(defconstant GLFW:GLFW_TRANSPARENT_FRAMEBUFFER 131082)
```

````
Window framebuffer transparency hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_HOVERED">Constant: GLFW_HOVERED</h4>

```Lisp
(defconstant GLFW:GLFW_HOVERED 131083)
```

````
Mouse cursor hover window attribute.
````

<h4 id="symbol:GLFW:GLFW_FOCUS_ON_SHOW">Constant: GLFW_FOCUS_ON_SHOW</h4>

```Lisp
(defconstant GLFW:GLFW_FOCUS_ON_SHOW 131084)
```

````
Input focus on calling show window hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_RED_BITS">Constant: GLFW_RED_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_RED_BITS 135169)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_GREEN_BITS">Constant: GLFW_GREEN_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_GREEN_BITS 135170)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_BLUE_BITS">Constant: GLFW_BLUE_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_BLUE_BITS 135171)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_ALPHA_BITS">Constant: GLFW_ALPHA_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_ALPHA_BITS 135172)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_DEPTH_BITS">Constant: GLFW_DEPTH_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_DEPTH_BITS 135173)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_STENCIL_BITS">Constant: GLFW_STENCIL_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_STENCIL_BITS 135174)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_ACCUM_RED_BITS">Constant: GLFW_ACCUM_RED_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_ACCUM_RED_BITS 135175)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_ACCUM_GREEN_BITS">Constant: GLFW_ACCUM_GREEN_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_ACCUM_GREEN_BITS 135176)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_ACCUM_BLUE_BITS">Constant: GLFW_ACCUM_BLUE_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_ACCUM_BLUE_BITS 135177)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_ACCUM_ALPHA_BITS">Constant: GLFW_ACCUM_ALPHA_BITS</h4>

```Lisp
(defconstant GLFW:GLFW_ACCUM_ALPHA_BITS 135178)
```

````
Framebuffer bit depth hint.
````

<h4 id="symbol:GLFW:GLFW_AUX_BUFFERS">Constant: GLFW_AUX_BUFFERS</h4>

```Lisp
(defconstant GLFW:GLFW_AUX_BUFFERS 135179)
```

````
Framebuffer auxiliary buffer hint.
````

<h4 id="symbol:GLFW:GLFW_STEREO">Constant: GLFW_STEREO</h4>

```Lisp
(defconstant GLFW:GLFW_STEREO 135180)
```

````
OpenGL stereoscopic rendering hint.
````

<h4 id="symbol:GLFW:GLFW_SAMPLES">Constant: GLFW_SAMPLES</h4>

```Lisp
(defconstant GLFW:GLFW_SAMPLES 135181)
```

````
Framebuffer MSAA samples hint.
````

<h4 id="symbol:GLFW:GLFW_SRGB_CAPABLE">Constant: GLFW_SRGB_CAPABLE</h4>

```Lisp
(defconstant GLFW:GLFW_SRGB_CAPABLE 135182)
```

````
Framebuffer sRGB hint.
````

<h4 id="symbol:GLFW:GLFW_REFRESH_RATE">Constant: GLFW_REFRESH_RATE</h4>

```Lisp
(defconstant GLFW:GLFW_REFRESH_RATE 135183)
```

````
Monitor refresh rate hint.
````

<h4 id="symbol:GLFW:GLFW_DOUBLEBUFFER">Constant: GLFW_DOUBLEBUFFER</h4>

```Lisp
(defconstant GLFW:GLFW_DOUBLEBUFFER 135184)
```

````
Framebuffer double buffering hint.
````

<h4 id="symbol:GLFW:GLFW_CLIENT_API">Constant: GLFW_CLIENT_API</h4>

```Lisp
(defconstant GLFW:GLFW_CLIENT_API 139265)
```

````
Context client API hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_VERSION_MAJOR">Constant: GLFW_CONTEXT_VERSION_MAJOR</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_VERSION_MAJOR 139266)
```

````
Context client API major version hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_VERSION_MINOR">Constant: GLFW_CONTEXT_VERSION_MINOR</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_VERSION_MINOR 139267)
```

````
Context client API minor version hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_REVISION">Constant: GLFW_CONTEXT_REVISION</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_REVISION 139268)
```

````
Context client API revision number attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_ROBUSTNESS">Constant: GLFW_CONTEXT_ROBUSTNESS</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_ROBUSTNESS 139269)
```

````
Context robustness hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_OPENGL_FORWARD_COMPAT">Constant: GLFW_OPENGL_FORWARD_COMPAT</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_FORWARD_COMPAT 139270)
```

````
OpenGL forward_compatibility hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_OPENGL_DEBUG_CONTEXT">Constant: GLFW_OPENGL_DEBUG_CONTEXT</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_DEBUG_CONTEXT 139271)
```

````
Debug mode context hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_OPENGL_PROFILE">Constant: GLFW_OPENGL_PROFILE</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_PROFILE 139272)
```

````
OpenGL profile hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_RELEASE_BEHAVIOR">Constant: GLFW_CONTEXT_RELEASE_BEHAVIOR</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_RELEASE_BEHAVIOR 139273)
```

````
Context flush_on_release hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_NO_ERROR">Constant: GLFW_CONTEXT_NO_ERROR</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_NO_ERROR 139274)
```

````
Context error suppression hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_CONTEXT_CREATION_API">Constant: GLFW_CONTEXT_CREATION_API</h4>

```Lisp
(defconstant GLFW:GLFW_CONTEXT_CREATION_API 139275)
```

````
Context creation API hint and attribute.
````

<h4 id="symbol:GLFW:GLFW_SCALE_TO_MONITOR">Constant: GLFW_SCALE_TO_MONITOR</h4>

```Lisp
(defconstant GLFW:GLFW_SCALE_TO_MONITOR 139276)
```

````
Window content area scaling window window hint.
````

<h4 id="symbol:GLFW:GLFW_COCOA_RETINA_FRAMEBUFFER">Constant: GLFW_COCOA_RETINA_FRAMEBUFFER</h4>

```Lisp
(defconstant GLFW:GLFW_COCOA_RETINA_FRAMEBUFFER 143361)
```

````
macOS specific window hint.
````

<h4 id="symbol:GLFW:GLFW_COCOA_FRAME_NAME">Constant: GLFW_COCOA_FRAME_NAME</h4>

```Lisp
(defconstant GLFW:GLFW_COCOA_FRAME_NAME 143362)
```

````
macOS specific window hint.
````

<h4 id="symbol:GLFW:GLFW_COCOA_GRAPHICS_SWITCHING">Constant: GLFW_COCOA_GRAPHICS_SWITCHING</h4>

```Lisp
(defconstant GLFW:GLFW_COCOA_GRAPHICS_SWITCHING 143363)
```

````
macOS specific window hint.
````

<h4 id="symbol:GLFW:GLFW_X11_CLASS_NAME">Constant: GLFW_X11_CLASS_NAME</h4>

```Lisp
(defconstant GLFW:GLFW_X11_CLASS_NAME 147457)
```

````
X11 specific window hint.
````

<h4 id="symbol:GLFW:GLFW_X11_INSTANCE_NAME">Constant: GLFW_X11_INSTANCE_NAME</h4>

```Lisp
(defconstant GLFW:GLFW_X11_INSTANCE_NAME 147458)
```

````
X11 specific window hint.
````

<h4 id="symbol:GLFW:GLFW_DONT_CARE">Constant: GLFW_DONT_CARE</h4>

```Lisp
(defconstant GLFW:GLFW_DONT_CARE -1)
```

<h4 id="symbol:GLFW:GLFW_OPENGL_API">Constant: GLFW_OPENGL_API</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_API 196609)
```

<h4 id="symbol:GLFW:GLFW_OPENGL_ES_API">Constant: GLFW_OPENGL_ES_API</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_ES_API 196610)
```

<h4 id="symbol:GLFW:GLFW_NO_API">Constant: GLFW_NO_API</h4>

```Lisp
(defconstant GLFW:GLFW_NO_API 0)
```

<h4 id="symbol:GLFW:GLFW_NATIVE_CONTEXT_API">Constant: GLFW_NATIVE_CONTEXT_API</h4>

```Lisp
(defconstant GLFW:GLFW_NATIVE_CONTEXT_API 221185)
```

<h4 id="symbol:GLFW:GLFW_EGL_CONTEXT_API">Constant: GLFW_EGL_CONTEXT_API</h4>

```Lisp
(defconstant GLFW:GLFW_EGL_CONTEXT_API 221186)
```

<h4 id="symbol:GLFW:GLFW_OSMESA_CONTEXT_API">Constant: GLFW_OSMESA_CONTEXT_API</h4>

```Lisp
(defconstant GLFW:GLFW_OSMESA_CONTEXT_API 221187)
```

<h4 id="symbol:GLFW:GLFW_NO_ROBUSTNESS">Constant: GLFW_NO_ROBUSTNESS</h4>

```Lisp
(defconstant GLFW:GLFW_NO_ROBUSTNESS 0)
```

<h4 id="symbol:GLFW:GLFW_NO_RESET_NOTIFICATION">Constant: GLFW_NO_RESET_NOTIFICATION</h4>

```Lisp
(defconstant GLFW:GLFW_NO_RESET_NOTIFICATION 200705)
```

<h4 id="symbol:GLFW:GLFW_LOSE_CONTEXT_ON_RESET">Constant: GLFW_LOSE_CONTEXT_ON_RESET</h4>

```Lisp
(defconstant GLFW:GLFW_LOSE_CONTEXT_ON_RESET 200706)
```

<h4 id="symbol:GLFW:GLFW_ANY_RELEASE_BEHAVIOR">Constant: GLFW_ANY_RELEASE_BEHAVIOR</h4>

```Lisp
(defconstant GLFW:GLFW_ANY_RELEASE_BEHAVIOR 0)
```

<h4 id="symbol:GLFW:GLFW_RELEASE_BEHAVIOR_FLUSH">Constant: GLFW_RELEASE_BEHAVIOR_FLUSH</h4>

```Lisp
(defconstant GLFW:GLFW_RELEASE_BEHAVIOR_FLUSH 217089)
```

<h4 id="symbol:GLFW:GLFW_RELEASE_BEHAVIOR_NONE">Constant: GLFW_RELEASE_BEHAVIOR_NONE</h4>

```Lisp
(defconstant GLFW:GLFW_RELEASE_BEHAVIOR_NONE 217090)
```

<h4 id="symbol:GLFW:GLFW_OPENGL_ANY_PROFILE">Constant: GLFW_OPENGL_ANY_PROFILE</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_ANY_PROFILE 0)
```

<h4 id="symbol:GLFW:GLFW_OPENGL_CORE_PROFILE">Constant: GLFW_OPENGL_CORE_PROFILE</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_CORE_PROFILE 204801)
```

<h4 id="symbol:GLFW:GLFW_OPENGL_COMPAT_PROFILE">Constant: GLFW_OPENGL_COMPAT_PROFILE</h4>

```Lisp
(defconstant GLFW:GLFW_OPENGL_COMPAT_PROFILE 204802)
```

<h2 id="header:ADP:HEADERTAG94">Types</h2>

<h4 id="type:GLFW:WINDOW">Type: WINDOW</h4>

```Lisp
(deftype WINDOW NIL
  ...)
```

<h4 id="type:GLFW:WINDOWPOSFUN">Type: WINDOWPOSFUN</h4>

```Lisp
(deftype WINDOWPOSFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWSIZEFUN">Type: WINDOWSIZEFUN</h4>

```Lisp
(deftype WINDOWSIZEFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWCLOSEFUN">Type: WINDOWCLOSEFUN</h4>

```Lisp
(deftype WINDOWCLOSEFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWREFRESHFUN">Type: WINDOWREFRESHFUN</h4>

```Lisp
(deftype WINDOWREFRESHFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWFOCUSFUN">Type: WINDOWFOCUSFUN</h4>

```Lisp
(deftype WINDOWFOCUSFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWICONIFYFUN">Type: WINDOWICONIFYFUN</h4>

```Lisp
(deftype WINDOWICONIFYFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWMAXIMIZEFUN">Type: WINDOWMAXIMIZEFUN</h4>

```Lisp
(deftype WINDOWMAXIMIZEFUN NIL
  ...)
```

<h4 id="type:GLFW:FRAMEBUFFERSIZEFUN">Type: FRAMEBUFFERSIZEFUN</h4>

```Lisp
(deftype FRAMEBUFFERSIZEFUN NIL
  ...)
```

<h4 id="type:GLFW:WINDOWCONTENTSCALEFUN">Type: WINDOWCONTENTSCALEFUN</h4>

```Lisp
(deftype WINDOWCONTENTSCALEFUN NIL
  ...)
```

<h3 id="header:ADP:HEADERTAG95">GFLWimage</h3>

<h4 id="type:GLFW:IMAGE">Type: IMAGE</h4>

```Lisp
(deftype IMAGE NIL
  ...)
```

<h4 id="function:GLFW:CREATE-IMAGE">Function: CREATE-IMAGE</h4>

```Lisp
(defun GLFW:CREATE-IMAGE (&KEY ((:WIDTH G1256) 0) ((:HEIGHT G1257) 0)
                          ((:PIXELS PIXELS-ARG) NIL))
  ...)
```

````
Constructor of IMAGE.
````

<h4 id="function:GLFW:DESTROY-IMAGE">Function: DESTROY-IMAGE</h4>

```Lisp
(defun GLFW:DESTROY-IMAGE (ARG1259)
  ...)
```

````
Destructor of IMAGE.
````

<h4 id="function:GLFW:WITH-IMAGE">Macro: WITH-IMAGE</h4>

```Lisp
(defmacro GLFW:WITH-IMAGE (VAR1268 ARGS1269 &BODY BODY1270)
  ...)
```

````
Wrap the body forms with CREATE-IMAGE and DESTROY-IMAGE.
````

<h4 id="function:GLFW:IMAGE-WIDTH">Function: IMAGE-WIDTH</h4>

```Lisp
(defun GLFW:IMAGE-WIDTH (G1260)
  ...)
```

<h4 id="function:GLFW:IMAGE-HEIGHT">Function: IMAGE-HEIGHT</h4>

```Lisp
(defun GLFW:IMAGE-HEIGHT (G1261)
  ...)
```

<h4 id="function:GLFW:IMAGE-PIXELS">Function: IMAGE-PIXELS</h4>

```Lisp
(defun GLFW:IMAGE-PIXELS (G1262 &OPTIONAL (HEIGHT-INDEX NIL) (WIDTH-INDEX NIL))
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF IMAGE-WIDTH)</h4>

```Lisp
(defun (SETF GLFW:IMAGE-WIDTH) (G1264 G1263)
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF IMAGE-HEIGHT)</h4>

```Lisp
(defun (SETF GLFW:IMAGE-HEIGHT) (G1266 G1265)
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF IMAGE-PIXELS)</h4>

```Lisp
(defun (SETF GLFW:IMAGE-PIXELS) (NEW-VALUE G1267 &OPTIONAL (HEIGHT-INDEX NIL)
                                 (WIDTH-INDEX NIL))
  ...)
```

* <strong>Warning</strong>\: If you want to modify the PIXELS member\, you must change WIDTH and HEIGHT first\.

<h2 id="header:ADP:HEADERTAG96">Functions</h2>

<h4 id="function:GLFW:DELFAULT-WINDOW-HINTS">Function: DELFAULT-WINDOW-HINTS</h4>

```Lisp
(defun DELFAULT-WINDOW-HINTS NIL
  ...)
```

````
Resets all window hints to their default values.
````

<h4 id="function:GLFW:WINDOW-HINT">Function: WINDOW-HINT</h4>

```Lisp
(defun GLFW:WINDOW-HINT (HINT VALUE)
  ...)
```

````
Sets the specified window hint to the desired value.
````

<h4 id="function:GLFW:WINDOW-HINT-STRING">Function: WINDOW-HINT-STRING</h4>

```Lisp
(defun GLFW:WINDOW-HINT-STRING (HINT VALUE)
  ...)
```

````
Sets the specified window hint to the desired value.
````

<h4 id="function:GLFW:CREATE-WINDOW">Function: CREATE-WINDOW</h4>

```Lisp
(defun GLFW:CREATE-WINDOW (WIDTH HEIGHT TITLE MONITOR SHARE)
  ...)
```

````
Creates a window (or returns NIL) and its associated context.
````

<h4 id="function:GLFW:DESTROY-WINDOW">Function: DESTROY-WINDOW</h4>

```Lisp
(defun GLFW:DESTROY-WINDOW (WINDOW)
  ...)
```

````
Destroys the specified window and its context.
````

<h4 id="function:GLFW:WINDOW-SHOULD-CLOSE">Function: WINDOW-SHOULD-CLOSE</h4>

```Lisp
(defun GLFW:WINDOW-SHOULD-CLOSE (WINDOW)
  ...)
```

````
Checks the close flag (t or NIL) of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-SHOULD-CLOSE">Function: SET-WINDOW-SHOULD-CLOSE</h4>

```Lisp
(defun GLFW:SET-WINDOW-SHOULD-CLOSE (WINDOW VALUE)
  ...)
```

````
Sets the close flag (t or NIL) of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-TITLE">Function: SET-WINDOW-TITLE</h4>

```Lisp
(defun GLFW:SET-WINDOW-TITLE (WINDOW TITLE)
  ...)
```

````
Sets the title of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-ICON">Function: SET-WINDOW-ICON</h4>

```Lisp
(defun GLFW:SET-WINDOW-ICON (WINDOW IMAGES)
  ...)
```

````
Sets the icon for the specified window. IMAGES must be a vector or NIL.
````

<h4 id="function:GLFW:GET-WINDOW-POS">Function: GET-WINDOW-POS</h4>

```Lisp
(defun GLFW:GET-WINDOW-POS (WINDOW)
  ...)
```

````
Returns the x-position and y-position of the content area of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-POS">Function: SET-WINDOW-POS</h4>

```Lisp
(defun GLFW:SET-WINDOW-POS (WINDOW XPOS YPOS)
  ...)
```

````
Sets the position of the content area of the specified window.
````

<h4 id="function:GLFW:GET-WINDOW-SIZE">Function: GET-WINDOW-SIZE</h4>

```Lisp
(defun GLFW:GET-WINDOW-SIZE (WINDOW)
  ...)
```

````
Returns the width and height of the content area of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-SIZE-LIMITS">Function: SET-WINDOW-SIZE-LIMITS</h4>

```Lisp
(defun GLFW:SET-WINDOW-SIZE-LIMITS (WINDOW MINWIDTH MINHEIGHT MAXWIDTH
                                    MAXHEIGHT)
  ...)
```

````
Sets the size limits of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-ASPECT-RATIO">Function: SET-WINDOW-ASPECT-RATIO</h4>

```Lisp
(defun GLFW:SET-WINDOW-ASPECT-RATIO (WINDOW NUMER DENOM)
  ...)
```

````
Sets the aspect ratio of the specified window.
````

<h4 id="function:GLFW:SET-WINDOW-SIZE">Function: SET-WINDOW-SIZE</h4>

```Lisp
(defun GLFW:SET-WINDOW-SIZE (WINDOW WIDTH HEIGHT)
  ...)
```

````
Sets the size of the content area of the specified window.
````

<h4 id="function:GLFW:GET-FRAMEBUFFER-SIZE">Function: GET-FRAMEBUFFER-SIZE</h4>

```Lisp
(defun GLFW:GET-FRAMEBUFFER-SIZE (WINDOW)
  ...)
```

````
Returns the width and height of the framebuffer of the specified window.
````

<h4 id="function:GLFW:GET-WINDOW-FRAME-SIZE">Function: GET-WINDOW-FRAME-SIZE</h4>

```Lisp
(defun GLFW:GET-WINDOW-FRAME-SIZE (WINDOW)
  ...)
```

````
Returns the left, top, right and bottom edges of the frame of the window.
````

<h4 id="function:GLFW:GET-WINDOW-CONTENT-SCALE">Function: GET-WINDOW-CONTENT-SCALE</h4>

```Lisp
(defun GLFW:GET-WINDOW-CONTENT-SCALE (WINDOW)
  ...)
```

````
Returns the xscale and yscale of the specified window.
````

<h4 id="function:GLFW:GET-WINDOW-OPACITY">Function: GET-WINDOW-OPACITY</h4>

```Lisp
(defun GLFW:GET-WINDOW-OPACITY (WINDOW)
  ...)
```

````
Returns the opacity of the whole window.
````

<h4 id="function:GLFW:SET-WINDOW-OPACITY">Function: SET-WINDOW-OPACITY</h4>

```Lisp
(defun GLFW:SET-WINDOW-OPACITY (WINDOW OPACITY)
  ...)
```

````
Sets the opacity of the whole window.
````

<h4 id="function:GLFW:ICONIFY-WINDOW">Function: ICONIFY-WINDOW</h4>

```Lisp
(defun GLFW:ICONIFY-WINDOW (WINDOW)
  ...)
```

````
Iconifies the specified window.
````

<h4 id="function:GLFW:RESTORE-WINDOW">Function: RESTORE-WINDOW</h4>

```Lisp
(defun GLFW:RESTORE-WINDOW (WINDOW)
  ...)
```

````
Restores the specified window.
````

<h4 id="function:GLFW:MAXIMIZE-WINDOW">Function: MAXIMIZE-WINDOW</h4>

```Lisp
(defun GLFW:MAXIMIZE-WINDOW (WINDOW)
  ...)
```

````
Maximizes the specified window.
````

<h4 id="function:GLFW:SHOW-WINDOW">Function: SHOW-WINDOW</h4>

```Lisp
(defun GLFW:SHOW-WINDOW (WINDOW)
  ...)
```

````
Makes the specified window visible.
````

<h4 id="function:GLFW:HIDE-WINDOW">Function: HIDE-WINDOW</h4>

```Lisp
(defun GLFW:HIDE-WINDOW (WINDOW)
  ...)
```

````
Hides the specified window.
````

<h4 id="function:GLFW:FOCUS-WINDOW">Function: FOCUS-WINDOW</h4>

```Lisp
(defun GLFW:FOCUS-WINDOW (WINDOW)
  ...)
```

````
Brings the specified window to front and sets input focus.
````

<h4 id="function:GLFW:REQUEST-WINDOW-ATTENTION">Function: REQUEST-WINDOW-ATTENTION</h4>

```Lisp
(defun GLFW:REQUEST-WINDOW-ATTENTION (WINDOW)
  ...)
```

````
Requests user attention to the specified window.
````

<h4 id="function:GLFW:GET-WINDOW-MONITOR">Function: GET-WINDOW-MONITOR</h4>

```Lisp
(defun GLFW:GET-WINDOW-MONITOR (WINDOW)
  ...)
```

````
Returns the monitor (or NIL) that the window uses for full screen mode.
````

<h4 id="function:GLFW:SET-WINDOW-MONITOR">Function: SET-WINDOW-MONITOR</h4>

```Lisp
(defun GLFW:SET-WINDOW-MONITOR (WINDOW MONITOR XPOS YPOS WIDTH HEIGHT
                                REFRESHRATE)
  ...)
```

````
Sets the mode, monitor, video mode and placement of a window.
````

<h4 id="function:GLFW:GET-WINDOW-ATTRIB">Function: GET-WINDOW-ATTRIB</h4>

```Lisp
(defun GLFW:GET-WINDOW-ATTRIB (WINDOW ATTRIB)
  ...)
```

````
Returns an attribute of the specified window. Boolean attributes will be T or NIL.
````

<h4 id="function:GLFW:SET-WINDOW-ATTRIB">Function: SET-WINDOW-ATTRIB</h4>

```Lisp
(defun GLFW:SET-WINDOW-ATTRIB (WINDOW ATTRIB VALUE)
  ...)
```

````
Sets an attribute of the specified window. Boolean attributes must be T or NIL.
````

<h4 id="symbol:GLFW:*WINDOWS-DATA*">Variable: *WINDOWS-DATA*</h4>

```Lisp
(defvar *WINDOWS-DATA* (MAKE-HASH-TABLE))
```

<h4 id="function:GLFW:SET-WINDOW-USER-POINTER">Function: SET-WINDOW-USER-POINTER</h4>

```Lisp
(defun GLFW:SET-WINDOW-USER-POINTER (WINDOW DATA)
  ...)
```

````
Sets the user pointer of the specified window.
````

<h4 id="function:GLFW:GET-WINDOW-USER-POINTER">Function: GET-WINDOW-USER-POINTER</h4>

```Lisp
(defun GLFW:GET-WINDOW-USER-POINTER (WINDOW)
  ...)
```

````
Returns the user pointer of the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-POS-CALLBACK">Macro: DEFINE-WINDOW-POS-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-POS-CALLBACK (CALLBACK-NAME1274 (WINDOW XPOS YPOS)
                                      &BODY CALLBACK-BODY1275)
  ...)
```

````
Defines a position callback.
````

<h4 id="function:GLFW:SET-WINDOW-POS-CALLBACK">Function: SET-WINDOW-POS-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-POS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the position callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-SIZE-CALLBACK">Macro: DEFINE-WINDOW-SIZE-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-SIZE-CALLBACK (CALLBACK-NAME1281 (WINDOW WIDTH HEIGHT)
                                       &BODY CALLBACK-BODY1282)
  ...)
```

````
Defines a size callback.
````

<h4 id="function:GLFW:SET-WINDOW-SIZE-CALLBACK">Function: SET-WINDOW-SIZE-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-SIZE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the size callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-CLOSE-CALLBACK">Macro: DEFINE-WINDOW-CLOSE-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-CLOSE-CALLBACK (CALLBACK-NAME1288 (WINDOW) &BODY
                                        CALLBACK-BODY1289)
  ...)
```

````
Defines a close callback.
````

<h4 id="function:GLFW:SET-WINDOW-CLOSE-CALLBACK">Function: SET-WINDOW-CLOSE-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-CLOSE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the close callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-REFRESH-CALLBACK">Macro: DEFINE-WINDOW-REFRESH-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-REFRESH-CALLBACK (CALLBACK-NAME1293 (WINDOW) &BODY
                                          CALLBACK-BODY1294)
  ...)
```

````
Defines a refresh callback.
````

<h4 id="function:GLFW:SET-WINDOW-REFRESH-CALLBACK">Function: SET-WINDOW-REFRESH-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-REFRESH-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the refresh callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-FOCUS-CALLBACK">Macro: DEFINE-WINDOW-FOCUS-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-FOCUS-CALLBACK (CALLBACK-NAME1298 (WINDOW FOCUSED)
                                        &BODY CALLBACK-BODY1299)
  ...)
```

````
Defines a focus callback.
````

<h4 id="function:GLFW:SET-WINDOW-FOCUS-CALLBACK">Function: SET-WINDOW-FOCUS-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-FOCUS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the focus callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-ICONIFY-CALLBACK">Macro: DEFINE-WINDOW-ICONIFY-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-ICONIFY-CALLBACK (CALLBACK-NAME1304 (WINDOW ICONIFIED)
                                          &BODY CALLBACK-BODY1305)
  ...)
```

````
Defines an iconify callback.
````

<h4 id="function:GLFW:SET-WINDOW-ICONIFY-CALLBACK">Function: SET-WINDOW-ICONIFY-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-ICONIFY-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the iconify callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-MAXIMIZE-CALLBACK">Macro: DEFINE-WINDOW-MAXIMIZE-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-MAXIMIZE-CALLBACK (CALLBACK-NAME1310 (WINDOW MAXIMIZED)
                                           &BODY CALLBACK-BODY1311)
  ...)
```

````
Defines a maximize callback.
````

<h4 id="function:GLFW:SET-WINDOW-MAXIMIZE-CALLBACK">Function: SET-WINDOW-MAXIMIZE-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-MAXIMIZE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the maximize callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-FRAMEBUFFER-SIZE-CALLBACK">Macro: DEFINE-FRAMEBUFFER-SIZE-CALLBACK</h4>

```Lisp
(defmacro DEFINE-FRAMEBUFFER-SIZE-CALLBACK (CALLBACK-NAME1316
                                            (WINDOW WIDTH HEIGHT) &BODY
                                            CALLBACK-BODY1317)
  ...)
```

````
Defines a framebuffer resize callback.
````

<h4 id="function:GLFW:SET-FRAMEBUFFER-SIZE-CALLBACK">Function: SET-FRAMEBUFFER-SIZE-CALLBACK</h4>

```Lisp
(defun GLFW:SET-FRAMEBUFFER-SIZE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the framebuffer resize callback for the specified window.
````

<h4 id="function:GLFW:DEFINE-WINDOW-CONTENT-SCALE-CALLBACK">Macro: DEFINE-WINDOW-CONTENT-SCALE-CALLBACK</h4>

```Lisp
(defmacro DEFINE-WINDOW-CONTENT-SCALE-CALLBACK (CALLBACK-NAME1323
                                                (WINDOW XSCALE YSCALE) &BODY
                                                CALLBACK-BODY1324)
  ...)
```

````
Defines a window content scale callback.
````

<h4 id="function:GLFW:SET-WINDOW-CONTENT-SCALE-CALLBACK">Function: SET-WINDOW-CONTENT-SCALE-CALLBACK</h4>

```Lisp
(defun GLFW:SET-WINDOW-CONTENT-SCALE-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the window content scale callback for the specified window.
````

<h4 id="function:GLFW:POLL-EVENTS">Function: POLL-EVENTS</h4>

```Lisp
(defun GLFW:POLL-EVENTS NIL
  ...)
```

````
Processes all pending events.
````

<h4 id="function:GLFW:WAIT-EVENTS">Function: WAIT-EVENTS</h4>

```Lisp
(defun GLFW:WAIT-EVENTS NIL
  ...)
```

````
Waits until events are queued and processes them.
````

<h4 id="function:GLFW:WAIT-EVENTS-TIMEOUT">Function: WAIT-EVENTS-TIMEOUT</h4>

```Lisp
(defun GLFW:WAIT-EVENTS-TIMEOUT (TIMEOUT)
  ...)
```

````
Waits with timeout until events are queued and processes them.
````

<h4 id="function:GLFW:POST-EMPTY-EVENT">Function: POST-EMPTY-EVENT</h4>

```Lisp
(defun GLFW:POST-EMPTY-EVENT NIL
  ...)
```

````
Posts an empty event to the event queue.
````

<h4 id="function:GLFW:SWAP-BUFFERS">Function: SWAP-BUFFERS</h4>

```Lisp
(defun GLFW:SWAP-BUFFERS (WINDOW)
  ...)
```

````
Swaps the front and back buffers of the specified window.
````

