# Initialization, version and error reference

## Description

This is the reference documentation for initialization and termination of the library, version management and error handling.

* [Initialization, version and error reference](/docs/api/initialization.md#initialization-version-and-error-reference)
  * [Description](/docs/api/initialization.md#description)
  * [Constants](/docs/api/initialization.md#constants)
  * [Types](/docs/api/initialization.md#types)
  * [Functions](/docs/api/initialization.md#functions)
    * [glfwInit](/docs/api/initialization.md#glfwinit)
    * [glfwTerminate](/docs/api/initialization.md#glfwterminate)
    * [glfwInitHint](/docs/api/initialization.md#glfwinithint)
    * [glfwGetVersion](/docs/api/initialization.md#glfwgetversion)
    * [glfwGetVersionString](/docs/api/initialization.md#glfwgetversionstring)
    * [glfwGetError](/docs/api/initialization.md#glfwgeterror)
    * [glfwSetErrorCallback](/docs/api/initialization.md#glfwseterrorcallback)

## Constants

#### Constant: GLFW\_VERSION\_MAJOR

```Lisp
(defconstant GLFW:GLFW_VERSION_MAJOR 3)
```

````
The major version number of the GLFW header.
````

#### Constant: GLFW\_VERSION\_MINOR

```Lisp
(defconstant GLFW:GLFW_VERSION_MINOR 3)
```

````
The minor version number of the GLFW header.
````

#### Constant: GLFW\_VERSION\_REVISION

```Lisp
(defconstant GLFW:GLFW_VERSION_REVISION 6)
```

````
The revision number of the GLFW header.
````

#### Constant: GLFW\_TRUE

```Lisp
(defconstant GLFW:GLFW_TRUE 1)
```

````
One.
````

#### Constant: GLFW\_FALSE

```Lisp
(defconstant GLFW:GLFW_FALSE 0)
```

````
Zero.
````

#### Constant: GLFW\_JOYSTICK\_HAT\_BUTTONS

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_HAT_BUTTONS 327681)
```

````
Joystick hat buttons init hint.
````

#### Constant: GLFW\_COCOA\_CHDIR\_RESOURCES

```Lisp
(defconstant GLFW:GLFW_COCOA_CHDIR_RESOURCES 331777)
```

````
macOS specific init hint.
````

#### Constant: GLFW\_COCOA\_MENUBAR

```Lisp
(defconstant GLFW:GLFW_COCOA_MENUBAR 331778)
```

````
macOS specific init hint.
````

#### Constant: GLFW\_NO\_ERROR

```Lisp
(defconstant GLFW:GLFW_NO_ERROR 0)
```

````
No error has occurred.
````

#### Constant: GLFW\_NOT\_INITIALIZED

```Lisp
(defconstant GLFW:GLFW_NOT_INITIALIZED 65537)
```

````
GLFW has not been initialized.
````

#### Constant: GLFW\_NO\_CURRENT\_CONTEXT

```Lisp
(defconstant GLFW:GLFW_NO_CURRENT_CONTEXT 65538)
```

````
No context is current for this thread.
````

#### Constant: GLFW\_INVALID\_ENUM

```Lisp
(defconstant GLFW:GLFW_INVALID_ENUM 65539)
```

````
One of the arguments to the function was an invalid enum value.
````

#### Constant: GLFW\_INVALID\_VALUE

```Lisp
(defconstant GLFW:GLFW_INVALID_VALUE 65540)
```

````
One of the arguments to the function was an invalid value.
````

#### Constant: GLFW\_OUT\_OF\_MEMORY

```Lisp
(defconstant GLFW:GLFW_OUT_OF_MEMORY 65541)
```

````
A memory allocation failed.
````

#### Constant: GLFW\_API\_UNAVAILABLE

```Lisp
(defconstant GLFW:GLFW_API_UNAVAILABLE 65542)
```

````
GLFW could not find support for the requested API on the system.
````

#### Constant: GLFW\_VERSION\_UNAVAILABLE

```Lisp
(defconstant GLFW:GLFW_VERSION_UNAVAILABLE 65543)
```

````
The requested OpenGL or OpenGL ES version is not available.
````

#### Constant: GLFW\_PLATFORM\_ERROR

```Lisp
(defconstant GLFW:GLFW_PLATFORM_ERROR 65544)
```

````
A platform_specific error occurred that does not match any of the more specific categories.
````

#### Constant: GLFW\_FORMAT\_UNAVAILABLE

```Lisp
(defconstant GLFW:GLFW_FORMAT_UNAVAILABLE 65545)
```

````
The requested format is not supported or available.
````

#### Constant: GLFW\_NO\_WINDOW\_CONTEXT

```Lisp
(defconstant GLFW:GLFW_NO_WINDOW_CONTEXT 65546)
```

````
The specified window does not have an OpenGL or OpenGL ES context.
````

## Types

#### Type: ERRORFUN

```Lisp
(deftype ERRORFUN NIL
  ...)
```

````
The function pointer type for error callbacks.
````

## Functions

### glfwInit

#### Function: INIT

```Lisp
(defun GLFW:INIT NIL
  ...)
```

````
Initializes the GLFW library.
````

### glfwTerminate

#### Function: TERMINATE

```Lisp
(defun GLFW:TERMINATE NIL
  ...)
```

````
Terminates the GLFW library.
````

### glfwInitHint

#### Function: INIT-HINT

```Lisp
(defun GLFW:INIT-HINT (HINT VALUE)
  ...)
```

````
Sets the specified init hint to the desired value.
````

### glfwGetVersion

#### Function: GET-VERSION

```Lisp
(defun GLFW:GET-VERSION NIL
  ...)
```

````
Retrieves the version of the GLFW library. Returns three values.
````

### glfwGetVersionString

#### Function: GET-VERSION-STRING

```Lisp
(defun GLFW:GET-VERSION-STRING NIL
  ...)
```

````
Returns a string describing the compile-time configuration.
````

### glfwGetError

#### Function: GET-ERROR

```Lisp
(defun GLFW:GET-ERROR NIL
  ...)
```

````
Returns the error code and desccription of the last error for the calling thread and clears it.
````

### glfwSetErrorCallback

#### Macro: DEFINE-ERROR-CALLBACK

```Lisp
(defmacro DEFINE-ERROR-CALLBACK (CALLBACK-NAME933 (ERROR-CODE DESCRIPTION)
                                 &BODY CALLBACK-BODY934)
  ...)
```

````
Defines an error callback.
````

#### Function: SET-ERROR-CALLBACK

```Lisp
(defun GLFW:SET-ERROR-CALLBACK (CALLBACK)
  ...)
```

````
Sets the error callback.
````

