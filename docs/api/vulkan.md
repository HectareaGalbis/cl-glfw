# Vulkan support reference

## Description

This is the reference documentation for Vulkan related functions and types.

* [Vulkan support reference](/docs/api/vulkan.md#vulkan-support-reference)
  * [Description](/docs/api/vulkan.md#description)
  * [Types](/docs/api/vulkan.md#types)
  * [Functions](/docs/api/vulkan.md#functions)
    * [glfwVulkanSupported](/docs/api/vulkan.md#glfwvulkansupported)
    * [glfwGetRequiredInstanceExtensions](/docs/api/vulkan.md#glfwgetrequiredinstanceextensions)
    * [glfwGetPhysicalDevicePresentationSupport](/docs/api/vulkan.md#glfwgetphysicaldevicepresentationsupport)
    * [glfwCreateWindowSurface](/docs/api/vulkan.md#glfwcreatewindowsurface)

## Types

#### Type: NON-DISPATCH-HANDLE

```Lisp
(deftype NON-DISPATCH-HANDLE NIL
  ...)
```

#### Type: VKINSTANCE

```Lisp
(deftype VKINSTANCE NIL
  ...)
```

#### Type: VKPHYSICALDEVICE

```Lisp
(deftype VKPHYSICALDEVICE NIL
  ...)
```

#### Type: VKALLOCATIONCALLBACKS

```Lisp
(deftype VKALLOCATIONCALLBACKS NIL
  ...)
```

## Functions

### glfwVulkanSupported

#### Function: VULKAN-SUPPORTED

```Lisp
(defun GLFW:VULKAN-SUPPORTED NIL
  ...)
```

````
Returns (t or NIL) whether the Vulkan loader and an ICD have been found.
````

### glfwGetRequiredInstanceExtensions

#### Function: GET-REQUIRED-INSTANCE-EXTENSIONS

```Lisp
(defun GLFW:GET-REQUIRED-INSTANCE-EXTENSIONS NIL
  ...)
```

````
Returns a vector with the Vulkan instance extensions required by GLFW.
````

### glfwGetPhysicalDevicePresentationSupport

#### Function: GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT

```Lisp
(defun GLFW:GET-PHYSICAL-DEVICE-PRESENTATION-SUPPORT (INSTANCE DEVICE
                                                      QUEUEFAMILY)
  ...)
```

````
Returns (t or NIL) whether the specified queue family can present images.
````

### glfwCreateWindowSurface

#### Function: CREATE-WINDOW-SURFACE

```Lisp
(defun GLFW:CREATE-WINDOW-SURFACE (INSTANCE WINDOW ALLOCATOR)
  ...)
```

````
Creates a Vulkan surface for the specified window. Returns the surface (or NIL) and the Vulkan result value.
````

