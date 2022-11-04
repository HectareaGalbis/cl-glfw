# Context reference

This is the reference documentation for OpenGL and OpenGL ES context related functions.

* [Context reference](/docs/context-reference.md#context-reference)
  * [Constants](/docs/context-reference.md#constants)
  * [Functions](/docs/context-reference.md#functions)

## Constants

## Functions

#### Function: MAKE-CONTEXT-CURRENT

```Lisp
(defun GLFW:MAKE-CONTEXT-CURRENT (WINDOW)
  ...)
```

````
Makes the context of the specified window current for the calling thread.
````

#### Function: GET-CURRENT-CONTEXT

```Lisp
(defun GLFW:GET-CURRENT-CONTEXT NIL
  ...)
```

````
Returns the window whose context is current on the calling thread. 
````

#### Function: SWAP-INTERVAL

```Lisp
(defun GLFW:SWAP-INTERVAL (INTERVAL)
  ...)
```

````
Sets the swap interval for the current context.
````

#### Function: EXTENSION-SUPPORTED

```Lisp
(defun GLFW:EXTENSION-SUPPORTED (EXTENSION)
  ...)
```

````
Returns whether the specified extension is available.
````

