# Context reference

This is the reference documentation for OpenGL and OpenGL ES context related functions.

* [Context reference](/docs/context-reference.md#context-reference)
  * [Constants](/docs/context-reference.md#constants)
  * [Functions](/docs/context-reference.md#functions)

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

