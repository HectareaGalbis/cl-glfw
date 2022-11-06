# Context reference

## Description

This is the reference documentation for OpenGL and OpenGL ES context related functions.

* [Context reference](/docs/api/context.md#context-reference)
  * [Description](/docs/api/context.md#description)
  * [Functions](/docs/api/context.md#functions)
    * [glfwMakeContextCurrent](/docs/api/context.md#glfwmakecontextcurrent)
    * [glfwGetCurrentContext](/docs/api/context.md#glfwgetcurrentcontext)
    * [glfwSwapInterval](/docs/api/context.md#glfwswapinterval)
    * [glfwExtensionSupported](/docs/api/context.md#glfwextensionsupported)

## Functions

### glfwMakeContextCurrent

#### Function: MAKE-CONTEXT-CURRENT

```Lisp
(defun GLFW:MAKE-CONTEXT-CURRENT (WINDOW)
  ...)
```

````
Makes the context of the specified window current for the calling thread.
````

### glfwGetCurrentContext

#### Function: GET-CURRENT-CONTEXT

```Lisp
(defun GLFW:GET-CURRENT-CONTEXT NIL
  ...)
```

````
Returns the window whose context is current on the calling thread.
````

### glfwSwapInterval

#### Function: SWAP-INTERVAL

```Lisp
(defun GLFW:SWAP-INTERVAL (INTERVAL)
  ...)
```

````
Sets the swap interval for the current context.
````

### glfwExtensionSupported

#### Function: EXTENSION-SUPPORTED

```Lisp
(defun GLFW:EXTENSION-SUPPORTED (EXTENSION)
  ...)
```

````
Returns whether the specified extension is available.
````

