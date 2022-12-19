<h1 id="header:GLFW:VULKAN-REFERENCE-HEADER">Vulkan support reference</h1>

<h2 id="header:ADP:HEADERTAG85">Description</h2>

This is the reference documentation for Vulkan related functions and types\.

* <a href="/docs/api/vulkan.md#header:GLFW:VULKAN-REFERENCE-HEADER">Vulkan support reference</a>
  * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG85">Description</a>
  * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG86">Types</a>
  * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG87">Functions</a>
    * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG88">glfwVulkanSupported</a>
    * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG89">glfwGetRequiredInstanceExtensions</a>
    * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG90">glfwGetPhysicalDevicePresentationSupport</a>
    * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG91">glfwCreateWindowSurface</a>

<h2 id="header:ADP:HEADERTAG86">Types</h2>

<h4 id="type:GLFW:NON-DISPATCH-HANDLE">Type: NON-DISPATCH-HANDLE</h4>

```Lisp
(deftype NON-DISPATCH-HANDLE NIL
  ...)
```

<h4 id="type:GLFW:VKINSTANCE">Type: VKINSTANCE</h4>

```Lisp
(deftype VKINSTANCE NIL
  ...)
```

<h4 id="type:GLFW:VKPHYSICALDEVICE">Type: VKPHYSICALDEVICE</h4>

```Lisp
(deftype VKPHYSICALDEVICE NIL
  ...)
```

<h4 id="type:GLFW:VKALLOCATIONCALLBACKS">Type: VKALLOCATIONCALLBACKS</h4>

```Lisp
(deftype VKALLOCATIONCALLBACKS NIL
  ...)
```

<h2 id="header:ADP:HEADERTAG87">Functions</h2>

<h3 id="header:ADP:HEADERTAG88">glfwVulkanSupported</h3>

<h4 id="function:GLFW:VULKAN-SUPPORTED">Function: VULKAN-SUPPORTED</h4>

```Lisp
(defun GLFW:VULKAN-SUPPORTED NIL
  ...)
```

````
Returns (t or NIL) whether the Vulkan loader and an ICD have been found.
````

<h3 id="header:ADP:HEADERTAG89">glfwGetRequiredInstanceExtensions</h3>

<h4 id="function:GLFW:GET-REQUIRED-INSTANCE-EXTENSIONS">Function: GET-REQUIRED-INSTANCE-EXTENSIONS</h4>

```Lisp
(defun GLFW:GET-REQUIRED-INSTANCE-EXTENSIONS NIL
  ...)
```

````
Returns a vector with the Vulkan instance extensions required by GLFW.
````

<h3 id="header:ADP:HEADERTAG90">glfwGetPhysicalDevicePresentationSupport</h3>

<h4 id="function:GLFW:GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT">Function: GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT</h4>

```Lisp
(defun GLFW:GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT (INSTANCE DEVICE
                                                      QUEUEFAMILY)
  ...)
```

````
Returns (t or NIL) whether the specified queue family can present images.
````

<h3 id="header:ADP:HEADERTAG91">glfwCreateWindowSurface</h3>

<h4 id="function:GLFW:CREATE-WINDOW-SURFACE">Function: CREATE-WINDOW-SURFACE</h4>

```Lisp
(defun GLFW:CREATE-WINDOW-SURFACE (INSTANCE WINDOW ALLOCATOR)
  ...)
```

````
Creates a Vulkan surface for the specified window. Returns the surface (or NIL) and the Vulkan result value.
````

