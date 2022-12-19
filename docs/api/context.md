<h1 id="header:GLFW:CONTEXT-REFERENCE-HEADER">Context reference</h1>

<h2 id="header:ADP:HEADERTAG14">Description</h2>

This is the reference documentation for OpenGL and OpenGL ES context related functions\.

* <a href="/docs/api/context.md#header:GLFW:CONTEXT-REFERENCE-HEADER">Context reference</a>
  * <a href="/docs/api/context.md#header:ADP:HEADERTAG14">Description</a>
  * <a href="/docs/api/context.md#header:ADP:HEADERTAG15">Functions</a>
    * <a href="/docs/api/context.md#header:ADP:HEADERTAG16">glfwMakeContextCurrent</a>
    * <a href="/docs/api/context.md#header:ADP:HEADERTAG17">glfwGetCurrentContext</a>
    * <a href="/docs/api/context.md#header:ADP:HEADERTAG18">glfwSwapInterval</a>
    * <a href="/docs/api/context.md#header:ADP:HEADERTAG19">glfwExtensionSupported</a>

<h2 id="header:ADP:HEADERTAG15">Functions</h2>

<h3 id="header:ADP:HEADERTAG16">glfwMakeContextCurrent</h3>

<h4 id="function:GLFW:MAKE-CONTEXT-CURRENT">Function: MAKE-CONTEXT-CURRENT</h4>

```Lisp
(defun GLFW:MAKE-CONTEXT-CURRENT (WINDOW)
  ...)
```

````
Makes the context of the specified window current for the calling thread.
````

<h3 id="header:ADP:HEADERTAG17">glfwGetCurrentContext</h3>

<h4 id="function:GLFW:GET-CURRENT-CONTEXT">Function: GET-CURRENT-CONTEXT</h4>

```Lisp
(defun GLFW:GET-CURRENT-CONTEXT NIL
  ...)
```

````
Returns the window whose context is current on the calling thread.
````

<h3 id="header:ADP:HEADERTAG18">glfwSwapInterval</h3>

<h4 id="function:GLFW:SWAP-INTERVAL">Function: SWAP-INTERVAL</h4>

```Lisp
(defun GLFW:SWAP-INTERVAL (INTERVAL)
  ...)
```

````
Sets the swap interval for the current context.
````

<h3 id="header:ADP:HEADERTAG19">glfwExtensionSupported</h3>

<h4 id="function:GLFW:EXTENSION-SUPPORTED">Function: EXTENSION-SUPPORTED</h4>

```Lisp
(defun GLFW:EXTENSION-SUPPORTED (EXTENSION)
  ...)
```

````
Returns whether the specified extension is available.
````

