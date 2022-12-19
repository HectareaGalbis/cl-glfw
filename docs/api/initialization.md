<h1 id="header:GLFW:INITIALIZATION-REFERENCE-HEADER">Initialization, version and error reference</h1>

<h2 id="header:ADP:HEADERTAG4">Description</h2>

This is the reference documentation for initialization and termination of the library\, version management and error handling\.

* <a href="/docs/api/initialization.md#header:GLFW:INITIALIZATION-REFERENCE-HEADER">Initialization, version and error reference</a>
  * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG4">Description</a>
  * <a href="/docs/api/initialization.md#header:GLFW:INITIALIZATION-CONSTANTS-SUBHEADER">Constants</a>
  * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG5">Types</a>
  * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG6">Functions</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG7">glfwInit</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG8">glfwTerminate</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG9">glfwInitHint</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG10">glfwGetVersion</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG11">glfwGetVersionString</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG12">glfwGetError</a>
    * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG13">glfwSetErrorCallback</a>

<h2 id="header:GLFW:INITIALIZATION-CONSTANTS-SUBHEADER">Constants</h2>

<h4 id="symbol:GLFW:GLFW_VERSION_MAJOR">Constant: GLFW_VERSION_MAJOR</h4>

```Lisp
(defconstant GLFW:GLFW_VERSION_MAJOR 3)
```

````
The major version number of the GLFW header.
````

<h4 id="symbol:GLFW:GLFW_VERSION_MINOR">Constant: GLFW_VERSION_MINOR</h4>

```Lisp
(defconstant GLFW:GLFW_VERSION_MINOR 3)
```

````
The minor version number of the GLFW header.
````

<h4 id="symbol:GLFW:GLFW_VERSION_REVISION">Constant: GLFW_VERSION_REVISION</h4>

```Lisp
(defconstant GLFW:GLFW_VERSION_REVISION 6)
```

````
The revision number of the GLFW header.
````

<h4 id="symbol:GLFW:GLFW_TRUE">Constant: GLFW_TRUE</h4>

```Lisp
(defconstant GLFW:GLFW_TRUE 1)
```

````
One.
````

<h4 id="symbol:GLFW:GLFW_FALSE">Constant: GLFW_FALSE</h4>

```Lisp
(defconstant GLFW:GLFW_FALSE 0)
```

````
Zero.
````

<h4 id="symbol:GLFW:GLFW_JOYSTICK_HAT_BUTTONS">Constant: GLFW_JOYSTICK_HAT_BUTTONS</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_HAT_BUTTONS 327681)
```

````
Joystick hat buttons init hint.
````

<h4 id="symbol:GLFW:GLFW_COCOA_CHDIR_RESOURCES">Constant: GLFW_COCOA_CHDIR_RESOURCES</h4>

```Lisp
(defconstant GLFW:GLFW_COCOA_CHDIR_RESOURCES 331777)
```

````
macOS specific init hint.
````

<h4 id="symbol:GLFW:GLFW_COCOA_MENUBAR">Constant: GLFW_COCOA_MENUBAR</h4>

```Lisp
(defconstant GLFW:GLFW_COCOA_MENUBAR 331778)
```

````
macOS specific init hint.
````

<h4 id="symbol:GLFW:GLFW_NO_ERROR">Constant: GLFW_NO_ERROR</h4>

```Lisp
(defconstant GLFW:GLFW_NO_ERROR 0)
```

````
No error has occurred.
````

<h4 id="symbol:GLFW:GLFW_NOT_INITIALIZED">Constant: GLFW_NOT_INITIALIZED</h4>

```Lisp
(defconstant GLFW:GLFW_NOT_INITIALIZED 65537)
```

````
GLFW has not been initialized.
````

<h4 id="symbol:GLFW:GLFW_NO_CURRENT_CONTEXT">Constant: GLFW_NO_CURRENT_CONTEXT</h4>

```Lisp
(defconstant GLFW:GLFW_NO_CURRENT_CONTEXT 65538)
```

````
No context is current for this thread.
````

<h4 id="symbol:GLFW:GLFW_INVALID_ENUM">Constant: GLFW_INVALID_ENUM</h4>

```Lisp
(defconstant GLFW:GLFW_INVALID_ENUM 65539)
```

````
One of the arguments to the function was an invalid enum value.
````

<h4 id="symbol:GLFW:GLFW_INVALID_VALUE">Constant: GLFW_INVALID_VALUE</h4>

```Lisp
(defconstant GLFW:GLFW_INVALID_VALUE 65540)
```

````
One of the arguments to the function was an invalid value.
````

<h4 id="symbol:GLFW:GLFW_OUT_OF_MEMORY">Constant: GLFW_OUT_OF_MEMORY</h4>

```Lisp
(defconstant GLFW:GLFW_OUT_OF_MEMORY 65541)
```

````
A memory allocation failed.
````

<h4 id="symbol:GLFW:GLFW_API_UNAVAILABLE">Constant: GLFW_API_UNAVAILABLE</h4>

```Lisp
(defconstant GLFW:GLFW_API_UNAVAILABLE 65542)
```

````
GLFW could not find support for the requested API on the system.
````

<h4 id="symbol:GLFW:GLFW_VERSION_UNAVAILABLE">Constant: GLFW_VERSION_UNAVAILABLE</h4>

```Lisp
(defconstant GLFW:GLFW_VERSION_UNAVAILABLE 65543)
```

````
The requested OpenGL or OpenGL ES version is not available.
````

<h4 id="symbol:GLFW:GLFW_PLATFORM_ERROR">Constant: GLFW_PLATFORM_ERROR</h4>

```Lisp
(defconstant GLFW:GLFW_PLATFORM_ERROR 65544)
```

````
A platform_specific error occurred that does not match any of the more specific categories.
````

<h4 id="symbol:GLFW:GLFW_FORMAT_UNAVAILABLE">Constant: GLFW_FORMAT_UNAVAILABLE</h4>

```Lisp
(defconstant GLFW:GLFW_FORMAT_UNAVAILABLE 65545)
```

````
The requested format is not supported or available.
````

<h4 id="symbol:GLFW:GLFW_NO_WINDOW_CONTEXT">Constant: GLFW_NO_WINDOW_CONTEXT</h4>

```Lisp
(defconstant GLFW:GLFW_NO_WINDOW_CONTEXT 65546)
```

````
The specified window does not have an OpenGL or OpenGL ES context.
````

<h2 id="header:ADP:HEADERTAG5">Types</h2>

<h4 id="type:GLFW:ERRORFUN">Type: ERRORFUN</h4>

```Lisp
(deftype ERRORFUN NIL
  ...)
```

````
The function pointer type for error callbacks.
````

<h2 id="header:ADP:HEADERTAG6">Functions</h2>

<h3 id="header:ADP:HEADERTAG7">glfwInit</h3>

<h4 id="function:GLFW:INIT">Function: INIT</h4>

```Lisp
(defun GLFW:INIT NIL
  ...)
```

````
Initializes the GLFW library.
````

<h3 id="header:ADP:HEADERTAG8">glfwTerminate</h3>

<h4 id="function:GLFW:TERMINATE">Function: TERMINATE</h4>

```Lisp
(defun GLFW:TERMINATE NIL
  ...)
```

````
Terminates the GLFW library.
````

<h3 id="header:ADP:HEADERTAG9">glfwInitHint</h3>

<h4 id="function:GLFW:INIT-HINT">Function: INIT-HINT</h4>

```Lisp
(defun GLFW:INIT-HINT (HINT VALUE)
  ...)
```

````
Sets the specified init hint to the desired value.
````

<h3 id="header:ADP:HEADERTAG10">glfwGetVersion</h3>

<h4 id="function:GLFW:GET-VERSION">Function: GET-VERSION</h4>

```Lisp
(defun GLFW:GET-VERSION NIL
  ...)
```

````
Retrieves the version of the GLFW library. Returns three values.
````

<h3 id="header:ADP:HEADERTAG11">glfwGetVersionString</h3>

<h4 id="function:GLFW:GET-VERSION-STRING">Function: GET-VERSION-STRING</h4>

```Lisp
(defun GLFW:GET-VERSION-STRING NIL
  ...)
```

````
Returns a string describing the compile-time configuration.
````

<h3 id="header:ADP:HEADERTAG12">glfwGetError</h3>

<h4 id="function:GLFW:GET-ERROR">Function: GET-ERROR</h4>

```Lisp
(defun GLFW:GET-ERROR NIL
  ...)
```

````
Returns the error code and desccription of the last error for the calling thread and clears it.
````

<h3 id="header:ADP:HEADERTAG13">glfwSetErrorCallback</h3>

<h4 id="function:GLFW:DEFINE-ERROR-CALLBACK">Macro: DEFINE-ERROR-CALLBACK</h4>

```Lisp
(defmacro DEFINE-ERROR-CALLBACK (CALLBACK-NAME1059 (ERROR-CODE DESCRIPTION)
                                 &BODY CALLBACK-BODY1060)
  ...)
```

````
Defines an error callback.
````

<h4 id="function:GLFW:SET-ERROR-CALLBACK">Function: SET-ERROR-CALLBACK</h4>

```Lisp
(defun GLFW:SET-ERROR-CALLBACK (CALLBACK)
  ...)
```

````
Sets the error callback.
````

