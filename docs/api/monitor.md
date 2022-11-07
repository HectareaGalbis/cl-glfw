# Monitor reference

## Description

This is the reference documentation for monitor related functions and types.

* [Monitor reference](/docs/api/monitor.md#monitor-reference)
  * [Description](/docs/api/monitor.md#description)
  * [Types](/docs/api/monitor.md#types)
    * [GFLWvidmode](/docs/api/monitor.md#gflwvidmode)
    * [GLFWgammaramp](/docs/api/monitor.md#glfwgammaramp)
  * [Functions](/docs/api/monitor.md#functions)
    * [glfwGetMonitors](/docs/api/monitor.md#glfwgetmonitors)
    * [glfwGetPrimaryMonitor](/docs/api/monitor.md#glfwgetprimarymonitor)
    * [glfwGetMonitorPos](/docs/api/monitor.md#glfwgetmonitorpos)
    * [glfwGetMonitorWorkarea](/docs/api/monitor.md#glfwgetmonitorworkarea)
    * [glfwGetMonitorPhysicalSize](/docs/api/monitor.md#glfwgetmonitorphysicalsize)
    * [glfwGetMonitorContentScale](/docs/api/monitor.md#glfwgetmonitorcontentscale)
    * [glfwGetMonitorName](/docs/api/monitor.md#glfwgetmonitorname)
    * [glfwSetMonitorUserPointer](/docs/api/monitor.md#glfwsetmonitoruserpointer)
    * [glfwGetMonitorUserPointer](/docs/api/monitor.md#glfwgetmonitoruserpointer)
    * [glfwSetMonitorCallback](/docs/api/monitor.md#glfwsetmonitorcallback)
    * [glfwGetVideoModes](/docs/api/monitor.md#glfwgetvideomodes)
    * [glfwGetVideoMode](/docs/api/monitor.md#glfwgetvideomode)
    * [glfwSetGamma](/docs/api/monitor.md#glfwsetgamma)
    * [glfwGetGammaRamp](/docs/api/monitor.md#glfwgetgammaramp)
    * [glfwSetGammaRamp](/docs/api/monitor.md#glfwsetgammaramp)

## Types

#### Type: MONITOR

```Lisp
(deftype MONITOR NIL
  ...)
```

````
Opaque monitor object.
````

#### Type: MONITORFUN

```Lisp
(deftype MONITORFUN NIL
  ...)
```

````
The function pointer type for monitor configuration callbacks.
````

### GFLWvidmode

#### Type: VIDMODE

```Lisp
(deftype VIDMODE NIL
  ...)
```

#### Function: VIDMODE-WIDTH

```Lisp
(defun GLFW:VIDMODE-WIDTH (G369)
  ...)
```

#### Function: VIDMODE-HEIGHT

```Lisp
(defun GLFW:VIDMODE-HEIGHT (G370)
  ...)
```

#### Function: VIDMODE-REDBITS

```Lisp
(defun GLFW:VIDMODE-REDBITS (G371)
  ...)
```

#### Function: VIDMODE-GREENBITS

```Lisp
(defun GLFW:VIDMODE-GREENBITS (G372)
  ...)
```

#### Function: VIDMODE-BLUEBITS

```Lisp
(defun GLFW:VIDMODE-BLUEBITS (G373)
  ...)
```

#### Function: VIDMODE-REFRESHRATE

```Lisp
(defun GLFW:VIDMODE-REFRESHRATE (G374)
  ...)
```

### GLFWgammaramp

#### Type: GAMMARAMP

```Lisp
(deftype GAMMARAMP NIL
  ...)
```

````
Gamma ramp.
````

#### Function: CREATE-GAMMARAMP

```Lisp
(defun GLFW:CREATE-GAMMARAMP (&KEY ((:RED RED-ARG) NIL)
                              ((:GREEN GREEN-ARG) NIL) ((:BLUE BLUE-ARG) NIL)
                              ((:SIZE G376) 0))
  ...)
```

````
Constructor of GAMMARAMP.
````

#### Function: DESTROY-GAMMARAMP

```Lisp
(defun GLFW:DESTROY-GAMMARAMP (ARG378)
  ...)
```

````
Destructor of GAMMARAMP.
````

#### Macro: WITH-GAMMARAMP

```Lisp
(defmacro GLFW:WITH-GAMMARAMP (VAR388 ARGS389 &BODY BODY390)
  ...)
```

````
Wrap the body forms with CREATE-GAMMARAMP and DESTROY-GAMMARAMP.
````

#### Function: GAMMARAMP-RED

```Lisp
(defun GLFW:GAMMARAMP-RED (G379 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: GAMMARAMP-GREEN

```Lisp
(defun GLFW:GAMMARAMP-GREEN (G380 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: GAMMARAMP-BLUE

```Lisp
(defun GLFW:GAMMARAMP-BLUE (G381 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: GAMMARAMP-SIZE

```Lisp
(defun GLFW:GAMMARAMP-SIZE (G382)
  ...)
```

#### Function: (SETF GAMMARAMP-RED)

```Lisp
(defun (SETF GLFW:GAMMARAMP-RED) (NEW-VALUE G383 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: (SETF GAMMARAMP-GREEN)

```Lisp
(defun (SETF GLFW:GAMMARAMP-GREEN) (NEW-VALUE G384 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: (SETF GAMMARAMP-BLUE)

```Lisp
(defun (SETF GLFW:GAMMARAMP-BLUE) (NEW-VALUE G385 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: (SETF GAMMARAMP-SIZE)

```Lisp
(defun (SETF GLFW:GAMMARAMP-SIZE) (G387 G386)
  ...)
```

## Functions

### glfwGetMonitors

#### Function: GET-MONITORS

```Lisp
(defun GLFW:GET-MONITORS NIL
  ...)
```

````
Returns an array (or NIL) with the currently connected monitors.
````

### glfwGetPrimaryMonitor

#### Function: GET-PRIMARY-MONITOR

```Lisp
(defun GLFW:GET-PRIMARY-MONITOR NIL
  ...)
```

````
Returns the primary monitor (or NIL).
````

### glfwGetMonitorPos

#### Function: GET-MONITOR-POS

```Lisp
(defun GLFW:GET-MONITOR-POS (MONITOR)
  ...)
```

````
Returns the x-position and y-position of the monitor's viewport on the virtual screen.
````

### glfwGetMonitorWorkarea

#### Function: GET-MONITOR-WORKAREA

```Lisp
(defun GLFW:GET-MONITOR-WORKAREA (MONITOR)
  ...)
```

````
Returns the x-position, y-position, width and height of the monitor's work area.
````

### glfwGetMonitorPhysicalSize

#### Function: GET-MONITOR-PHYSICAL-SIZE

```Lisp
(defun GLFW:GET-MONITOR-PHYSICAL-SIZE (MONITOR)
  ...)
```

````
Returns the width and height of the monitor's physical size.
````

### glfwGetMonitorContentScale

#### Function: GET-MONITOR-CONTENT-SCALE

```Lisp
(defun GLFW:GET-MONITOR-CONTENT-SCALE (MONITOR)
  ...)
```

````
Returns the x-scale and y-scale of the monitor's content scale.
````

### glfwGetMonitorName

#### Function: GET-MONITOR-NAME

```Lisp
(defun GLFW:GET-MONITOR-NAME (MONITOR)
  ...)
```

````
Returns the name (or NIL) of the specified monitor.
````

### glfwSetMonitorUserPointer

#### Function: SET-MONITOR-USER-POINTER

```Lisp
(defun GLFW:SET-MONITOR-USER-POINTER (MONITOR DATA)
  ...)
```

````
Sets the user pointer of the specified monitor.
````

### glfwGetMonitorUserPointer

#### Function: GET-MONITOR-USER-POINTER

```Lisp
(defun GLFW:GET-MONITOR-USER-POINTER (MONITOR)
  ...)
```

````
Returns the user pointer of the specified monitor.
````

### glfwSetMonitorCallback

#### Macro: DEFINE-MONITOR-CALLBACK

```Lisp
(defmacro DEFINE-MONITOR-CALLBACK (CALLBACK-NAME404 (MONITOR EVENT) &BODY
                                   CALLBACK-BODY405)
  ...)
```

#### Function: SET-MONITOR-CALLBACK

```Lisp
(defun GLFW:SET-MONITOR-CALLBACK (CALLBACK)
  ...)
```

````
Sets the monitor configuration callback.
````

### glfwGetVideoModes

#### Function: GET-VIDEO-MODES

```Lisp
(defun GLFW:GET-VIDEO-MODES (MONITOR)
  ...)
```

````
Returns a vector (or NIL) with the available video modes for the specified monitor.
````

### glfwGetVideoMode

#### Function: GET-VIDEO-MODE

```Lisp
(defun GLFW:GET-VIDEO-MODE (MONITOR)
  ...)
```

````
Returns the current mode (or NIL) of the specified monitor.
````

### glfwSetGamma

#### Function: SET-GAMMA

```Lisp
(defun GLFW:SET-GAMMA (MONITOR GAMMA)
  ...)
```

````
Generates a gamma ramp and sets it for the specified monitor.
````

### glfwGetGammaRamp

#### Function: GET-GAMMA-RAMP

```Lisp
(defun GLFW:GET-GAMMA-RAMP (MONITOR)
  ...)
```

````
Returns the current gamma ramp (or NIL) for the specified monitor.
````

### glfwSetGammaRamp

#### Function: SET-GAMMA-RAMP

```Lisp
(defun GLFW:SET-GAMMA-RAMP (MONITOR RAMP)
  ...)
```

````
Sets the current gamma ramp for the specified monitor.
````

