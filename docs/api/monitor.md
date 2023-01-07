<h1 id="header:GLFW:MONITOR-REFERENCE-HEADER">Monitor reference</h1>

<h2 id="header:ADP:HEADERTAG65">Description</h2>

This is the reference documentation for monitor related functions and types\.

* <a href="/docs/api/monitor.md#header:GLFW:MONITOR-REFERENCE-HEADER">Monitor reference</a>
  * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG65">Description</a>
  * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG66">Types</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG67">GFLWvidmode</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG68">GLFWgammaramp</a>
  * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG69">Functions</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG70">glfwGetMonitors</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG71">glfwGetPrimaryMonitor</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG72">glfwGetMonitorPos</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG73">glfwGetMonitorWorkarea</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG74">glfwGetMonitorPhysicalSize</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG75">glfwGetMonitorContentScale</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG76">glfwGetMonitorName</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG77">glfwSetMonitorUserPointer</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG78">glfwGetMonitorUserPointer</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG79">glfwSetMonitorCallback</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG80">glfwGetVideoModes</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG81">glfwGetVideoMode</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG82">glfwSetGamma</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG83">glfwGetGammaRamp</a>
    * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG84">glfwSetGammaRamp</a>

<h2 id="header:ADP:HEADERTAG66">Types</h2>

<h4 id="type:GLFW:MONITOR">Type: MONITOR</h4>

```Lisp
(DEFTYPE MONITOR NIL
  ...)
```

````
Opaque monitor object.
````

<h4 id="type:GLFW:MONITORFUN">Type: MONITORFUN</h4>

```Lisp
(DEFTYPE MONITORFUN NIL
  ...)
```

````
The function pointer type for monitor configuration callbacks.
````

<h3 id="header:ADP:HEADERTAG67">GFLWvidmode</h3>

<h4 id="type:GLFW:VIDMODE">Type: VIDMODE</h4>

```Lisp
(DEFTYPE VIDMODE NIL
  ...)
```

<h4 id="function:GLFW:VIDMODE-WIDTH">Function: VIDMODE-WIDTH</h4>

```Lisp
(DEFUN GLFW:VIDMODE-WIDTH (OBJECT)
  ...)
```

````
Returns the width, in screen coordinates, of the video mode.
````

<h4 id="function:GLFW:VIDMODE-HEIGHT">Function: VIDMODE-HEIGHT</h4>

```Lisp
(DEFUN GLFW:VIDMODE-HEIGHT (OBJECT)
  ...)
```

````
Returns the height, in screen coordinates, of the video mode.
````

<h4 id="function:GLFW:VIDMODE-REDBITS">Function: VIDMODE-REDBITS</h4>

```Lisp
(DEFUN GLFW:VIDMODE-REDBITS (OBJECT)
  ...)
```

````
Returns the bit depth of the red channel of the video mode.
````

<h4 id="function:GLFW:VIDMODE-GREENBITS">Function: VIDMODE-GREENBITS</h4>

```Lisp
(DEFUN GLFW:VIDMODE-GREENBITS (OBJECT)
  ...)
```

````
Returns the bit depth of the red channel of the video mode.
````

<h4 id="function:GLFW:VIDMODE-BLUEBITS">Function: VIDMODE-BLUEBITS</h4>

```Lisp
(DEFUN GLFW:VIDMODE-BLUEBITS (OBJECT)
  ...)
```

````
Returns the bit depth of the red channel of the video mode.
````

<h4 id="function:GLFW:VIDMODE-REFRESHRATE">Function: VIDMODE-REFRESHRATE</h4>

```Lisp
(DEFUN GLFW:VIDMODE-REFRESHRATE (OBJECT)
  ...)
```

````
Returns the refresh rate, in Hz, of the video mode.
````

<h3 id="header:ADP:HEADERTAG68">GLFWgammaramp</h3>

<h4 id="type:GLFW:GAMMARAMP">Type: GAMMARAMP</h4>

```Lisp
(DEFTYPE GAMMARAMP NIL
  ...)
```

````
Gamma ramp.
````

<h4 id="function:GLFW:CREATE-GAMMARAMP">Function: CREATE-GAMMARAMP</h4>

```Lisp
(DEFUN GLFW:CREATE-GAMMARAMP (&KEY ((:RED RED-ARG) NIL)
                              ((:GREEN GREEN-ARG) NIL) ((:BLUE BLUE-ARG) NIL)
                              ((:SIZE SIZE) 0))
  ...)
```

<h4 id="function:GLFW:DESTROY-GAMMARAMP">Function: DESTROY-GAMMARAMP</h4>

```Lisp
(DEFUN GLFW:DESTROY-GAMMARAMP (OBJECT)
  ...)
```

<h4 id="function:GLFW:GAMMARAMP-RED">Function: GAMMARAMP-RED</h4>

```Lisp
(DEFUN GLFW:GAMMARAMP-RED (OBJECT &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:GLFW:GAMMARAMP-GREEN">Function: GAMMARAMP-GREEN</h4>

```Lisp
(DEFUN GLFW:GAMMARAMP-GREEN (OBJECT &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:GLFW:GAMMARAMP-BLUE">Function: GAMMARAMP-BLUE</h4>

```Lisp
(DEFUN GLFW:GAMMARAMP-BLUE (OBJECT &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:GLFW:GAMMARAMP-SIZE">Function: GAMMARAMP-SIZE</h4>

```Lisp
(DEFUN GLFW:GAMMARAMP-SIZE (OBJECT)
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF GAMMARAMP-RED)</h4>

```Lisp
(DEFUN (SETF GLFW:GAMMARAMP-RED) (NEW-VALUE OBJECT &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF GAMMARAMP-GREEN)</h4>

```Lisp
(DEFUN (SETF GLFW:GAMMARAMP-GREEN) (NEW-VALUE OBJECT &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF GAMMARAMP-BLUE)</h4>

```Lisp
(DEFUN (SETF GLFW:GAMMARAMP-BLUE) (NEW-VALUE OBJECT &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:COMMON-LISP:NIL">Function: (SETF GAMMARAMP-SIZE)</h4>

```Lisp
(DEFUN (SETF GLFW:GAMMARAMP-SIZE) (NEW-VALUE OBJECT)
  ...)
```

<h2 id="header:ADP:HEADERTAG69">Functions</h2>

<h3 id="header:ADP:HEADERTAG70">glfwGetMonitors</h3>

<h4 id="function:GLFW:GET-MONITORS">Function: GET-MONITORS</h4>

```Lisp
(DEFUN GLFW:GET-MONITORS NIL
  ...)
```

````
Returns an array (or NIL) with the currently connected monitors.
````

<h3 id="header:ADP:HEADERTAG71">glfwGetPrimaryMonitor</h3>

<h4 id="function:GLFW:GET-PRIMARY-MONITOR">Function: GET-PRIMARY-MONITOR</h4>

```Lisp
(DEFUN GLFW:GET-PRIMARY-MONITOR NIL
  ...)
```

````
Returns the primary monitor (or NIL).
````

<h3 id="header:ADP:HEADERTAG72">glfwGetMonitorPos</h3>

<h4 id="function:GLFW:GET-MONITOR-POS">Function: GET-MONITOR-POS</h4>

```Lisp
(DEFUN GLFW:GET-MONITOR-POS (MONITOR)
  ...)
```

````
Returns the x-position and y-position of the monitor's viewport on the virtual screen.
````

<h3 id="header:ADP:HEADERTAG73">glfwGetMonitorWorkarea</h3>

<h4 id="function:GLFW:GET-MONITOR-WORKAREA">Function: GET-MONITOR-WORKAREA</h4>

```Lisp
(DEFUN GLFW:GET-MONITOR-WORKAREA (MONITOR)
  ...)
```

````
Returns the x-position, y-position, width and height of the monitor's work area.
````

<h3 id="header:ADP:HEADERTAG74">glfwGetMonitorPhysicalSize</h3>

<h4 id="function:GLFW:GET-MONITOR-PHYSICAL-SIZE">Function: GET-MONITOR-PHYSICAL-SIZE</h4>

```Lisp
(DEFUN GLFW:GET-MONITOR-PHYSICAL-SIZE (MONITOR)
  ...)
```

````
Returns the width and height of the monitor's physical size.
````

<h3 id="header:ADP:HEADERTAG75">glfwGetMonitorContentScale</h3>

<h4 id="function:GLFW:GET-MONITOR-CONTENT-SCALE">Function: GET-MONITOR-CONTENT-SCALE</h4>

```Lisp
(DEFUN GLFW:GET-MONITOR-CONTENT-SCALE (MONITOR)
  ...)
```

````
Returns the x-scale and y-scale of the monitor's content scale.
````

<h3 id="header:ADP:HEADERTAG76">glfwGetMonitorName</h3>

<h4 id="function:GLFW:GET-MONITOR-NAME">Function: GET-MONITOR-NAME</h4>

```Lisp
(DEFUN GLFW:GET-MONITOR-NAME (MONITOR)
  ...)
```

````
Returns the name (or NIL) of the specified monitor.
````

<h3 id="header:ADP:HEADERTAG77">glfwSetMonitorUserPointer</h3>

<h4 id="function:GLFW:SET-MONITOR-USER-POINTER">Function: SET-MONITOR-USER-POINTER</h4>

```Lisp
(DEFUN GLFW:SET-MONITOR-USER-POINTER (MONITOR DATA)
  ...)
```

````
Sets the user pointer of the specified monitor.
````

<h3 id="header:ADP:HEADERTAG78">glfwGetMonitorUserPointer</h3>

<h4 id="function:GLFW:GET-MONITOR-USER-POINTER">Function: GET-MONITOR-USER-POINTER</h4>

```Lisp
(DEFUN GLFW:GET-MONITOR-USER-POINTER (MONITOR)
  ...)
```

````
Returns the user pointer of the specified monitor.
````

<h3 id="header:ADP:HEADERTAG79">glfwSetMonitorCallback</h3>

<h4 id="function:GLFW:DEFINE-MONITOR-CALLBACK">Macro: DEFINE-MONITOR-CALLBACK</h4>

```Lisp
(DEFMACRO DEFINE-MONITOR-CALLBACK (NAME (MONITOR EVENT) &BODY BODY)
  ...)
```

<h4 id="function:GLFW:SET-MONITOR-CALLBACK">Function: SET-MONITOR-CALLBACK</h4>

```Lisp
(DEFUN GLFW:SET-MONITOR-CALLBACK (CALLBACK)
  ...)
```

````
Sets the monitor configuration callback.
````

<h3 id="header:ADP:HEADERTAG80">glfwGetVideoModes</h3>

<h4 id="function:GLFW:GET-VIDEO-MODES">Function: GET-VIDEO-MODES</h4>

```Lisp
(DEFUN GLFW:GET-VIDEO-MODES (MONITOR)
  ...)
```

````
Returns a vector (or NIL) with the available video modes for the specified monitor.
````

<h3 id="header:ADP:HEADERTAG81">glfwGetVideoMode</h3>

<h4 id="function:GLFW:GET-VIDEO-MODE">Function: GET-VIDEO-MODE</h4>

```Lisp
(DEFUN GLFW:GET-VIDEO-MODE (MONITOR)
  ...)
```

````
Returns the current mode (or NIL) of the specified monitor.
````

<h3 id="header:ADP:HEADERTAG82">glfwSetGamma</h3>

<h4 id="function:GLFW:SET-GAMMA">Function: SET-GAMMA</h4>

```Lisp
(DEFUN GLFW:SET-GAMMA (MONITOR GAMMA)
  ...)
```

````
Generates a gamma ramp and sets it for the specified monitor.
````

<h3 id="header:ADP:HEADERTAG83">glfwGetGammaRamp</h3>

<h4 id="function:GLFW:GET-GAMMA-RAMP">Function: GET-GAMMA-RAMP</h4>

```Lisp
(DEFUN GLFW:GET-GAMMA-RAMP (MONITOR)
  ...)
```

````
Returns the current gamma ramp (or NIL) for the specified monitor.
````

<h3 id="header:ADP:HEADERTAG84">glfwSetGammaRamp</h3>

<h4 id="function:GLFW:SET-GAMMA-RAMP">Function: SET-GAMMA-RAMP</h4>

```Lisp
(DEFUN GLFW:SET-GAMMA-RAMP (MONITOR RAMP)
  ...)
```

````
Sets the current gamma ramp for the specified monitor.
````

