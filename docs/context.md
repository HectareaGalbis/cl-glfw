# Context reference

## Description

This is the reference documentation for OpenGL and OpenGL ES context related functions. For more task-oriented 
information, see the [Context guide](https://www.glfw.org/docs/latest/context_guide.html).

## Functions


* [make-context-current window](https://hectarea1996.github.io/cl-glfw/context.html#make-context-current): Makes the context of the specified window current for the calling thread.
* [get-current-context](https://hectarea1996.github.io/cl-glfw/context.html#get-current-context): Returns the window whose context is current on the calling thread.
* [swap-interval](https://hectarea1996.github.io/cl-glfw/context.html#swap-interval): Sets the swap interval for the current context.
* [extension-supported](https://hectarea1996.github.io/cl-glfw/context.html#extension-supported): Returns whether the specified extension is available.
* [get-proc-address](https://hectarea1996.github.io/cl-glfw/context.html#get-proc-address): Returns the address of the specified function for the current context.


### make-context-current

```
(make-context-current window)
```

This function makes the OpenGL or OpenGL ES context of the specified window current on the calling thread. 
A context must only be made current on a single thread at a time and each thread can have only a single current context at a time.

When moving a context between threads, you must make it non-current on the old thread before making it current on the new one.

By default, making a context non-current implicitly forces a pipeline flush. On machines that support `GL_KHR_context_flush_control`, 
you can control whether a context performs this flush by setting the [GLFW_CONTEXT_RELEASE_BEHAVIOR](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_RELEASE_BEHAVIOR_hint) hint.

The specified window must have an OpenGL or OpenGL ES context. Specifying a window without a context will generate a [GLFW_NO_WINDOW_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gacff24d2757da752ae4c80bf452356487) error.

* *Parameters*:
  * **window**: The window whose context to make current, or `nil` to detach the current context.
* *Errors*: Possible errors include [GLFW_NOT_INITIALIZED](https://www.glfw.org/docs/latest/group__errors.html#ga2374ee02c177f12e1fa76ff3ed15e14a), [GLFW_NO_WINDOW_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gacff24d2757da752ae4c80bf452356487) and [GLFW_PLATFORM_ERROR](https://www.glfw.org/docs/latest/group__errors.html#gad44162d78100ea5e87cdd38426b8c7a1).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Current context](https://www.glfw.org/docs/latest/context_guide.html#context_current), [get-current-context](https://hectarea1996.github.io/cl-glfw/context.html#get-current-context).

### get-current-context

```
(get-current-context) => window
```

This function returns the window whose OpenGL or OpenGL ES context is current on the calling thread.

* *Returns*: 
  * **window**: The window whose context is current, or `nil` if no window's context is current.
* *Errors*: Possible errors include [GLFW_NOT_INITIALIZED](https://www.glfw.org/docs/latest/group__errors.html#ga2374ee02c177f12e1fa76ff3ed15e14a).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Current context](https://www.glfw.org/docs/latest/context_guide.html#context_current), [make-context-current](https://hectarea1996.github.io/cl-glfw/context.html#make-context-current).

### swap-interval

```
(swap-interval interval)
```

This function sets the swap interval for the current OpenGL or OpenGL ES context, i.e. the number of screen updates to wait from the time [swap-buffers](https://hectarea1996.github.io/cl-glfw/window.html#swap-buffers) was called before swapping the buffers and returning. This is sometimes called *vertical synchronization*, *vertical retrace synchronization* or just *vsync*.

A context that supports either of the `WGL_EXT_swap_control_tear` and `GLX_EXT_swap_control_tear` extensions also accepts *negative* swap intervals, which allows the driver to swap immediately even if a frame arrives a little bit late. You can check for these extensions with [extension-supported](https://hectarea1996.github.io/cl-glfw/context.html#extension-supported).

A context must be current on the calling thread. Calling this function without a current context will cause a [GLFW_NO_CURRENT_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gaa8290386e9528ccb9e42a3a4e16fc0d0) error.

This function does not apply to Vulkan. If you are rendering with Vulkan, see the present mode of your swapchain instead.

* *Parameters*:
  * **interval**: The minimum number of screen updates to wait for until the buffers are swapped by [swap-buffers](https://hectarea1996.github.io/cl-glfw/window.html#swap-buffers).
* *Errors*: Possible errors include [GLFW_NOT_INITIALIZED](https://www.glfw.org/docs/latest/group__errors.html#ga2374ee02c177f12e1fa76ff3ed15e14a), [GLFW_NO_CURRENT_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gaa8290386e9528ccb9e42a3a4e16fc0d0) and [GLFW_PLATFORM_ERROR](https://www.glfw.org/docs/latest/group__errors.html#gad44162d78100ea5e87cdd38426b8c7a1).
* *Remarks*: This function is not called during context creation, leaving the swap interval set to whatever is the default on that platform. This is done because some swap interval extensions used by GLFW do not allow the swap interval to be reset to zero once it has been set to a non-zero value. Some GPU drivers do not honor the requested swap interval, either because of a user setting that overrides the application's request or due to bugs in the driver.
* *Thread safety*: This function may be called from any thread.
* *See also*: [Buffer swapping](https://www.glfw.org/docs/latest/window_guide.html#buffer_swap), [swap-buffers](https://hectarea1996.github.io/cl-glfw/window.html#swap-buffers).

### extension-supported

```
(extension-supported extension) => supported
```

This function returns whether the specified [API extension](https://www.glfw.org/docs/latest/context_guide.html#context_glext) is supported by the current OpenGL or OpenGL ES context. It searches both for client API extension and context creation API extensions.

A context must be current on the calling thread. Calling this function without a current context will cause a [GLFW_NO_CURRENT_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gaa8290386e9528ccb9e42a3a4e16fc0d0) error.

As this functions retrieves and searches one or more extension strings each call, it is recommended that you cache its results if it is going to be used frequently. The extension strings will not change during the lifetime of a context, so there is no danger in doing this.

This function does not apply to Vulkan. If you are using Vulkan, see [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions), `vkEnumerateInstanceExtensionProperties` and `vkEnumerateDeviceExtensionProperties` instead.

* *Parameters*:
  * **extension**: The ASCII encoded name of the extension.
* *Returns*:
  * **supported**: `t` if the extension is available, or `nil` otherwise.
* *Errors*: Possible errors include [GLFW_NOT_INITIALIZED](https://www.glfw.org/docs/latest/group__errors.html#ga2374ee02c177f12e1fa76ff3ed15e14a), [GLFW_NO_CURRENT_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gaa8290386e9528ccb9e42a3a4e16fc0d0), [GLFW_INVALID_VALUE](https://www.glfw.org/docs/latest/group__errors.html#gaaf2ef9aa8202c2b82ac2d921e554c687) and [GLFW_PLATFORM_ERROR](https://www.glfw.org/docs/latest/group__errors.html#gad44162d78100ea5e87cdd38426b8c7a1).
* *Thread safety*: This function may be called from any thread.
* *See also*: [OpenGL and OpenGL ES extensions](https://www.glfw.org/docs/latest/context_guide.html#context_glext), [get-proc-address](https://hectarea1996.github.io/cl-glfw/context.html#get-proc-address).

### get-proc-address

```
(get-proc-address procname) => proc
```

This function returns the address of the specified OpenGL or OpenGL ES [core or extension function](https://www.glfw.org/docs/latest/context_guide.html#context_glext), if it is supported by the current context.

A context must be current on the calling thread. Calling this function without a current context will cause a [GLFW_NO_CURRENT_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gaa8290386e9528ccb9e42a3a4e16fc0d0) error.

This function does not apply to Vulkan. If you are rendering with Vulkan, see [get-instance-proc-address](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-instance-proc-address), `vkGetInstanceProcAddr` and `vkGetDeviceProcAddr` instead.

* *Parameters*:
  * **procname**: The ASCII encoded name of the function.
* *Returns*:
  * **proc**: The function, or `nil` if an error occurred.
* *Errors*: Possible errors include [GLFW_NOT_INITIALIZED](https://www.glfw.org/docs/latest/group__errors.html#ga2374ee02c177f12e1fa76ff3ed15e14a), [GLFW_NO_CURRENT_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gaa8290386e9528ccb9e42a3a4e16fc0d0) and [GLFW_PLATFORM_ERROR](https://www.glfw.org/docs/latest/group__errors.html#gad44162d78100ea5e87cdd38426b8c7a1).
* *Remarks*: The address of a given function is not guaranteed to be the same between contexts. This function may return a function despite the associated version or extension not being available. Always check the context version or extension string first.
* *Function lifetime*: The returned function is valid until the context is destroyed or the library is terminated.
* *Thread safety*: This function may be called from any thread.
* *See also*: [OpenGL and OpenGL ES extensions](https://www.glfw.org/docs/latest/context_guide.html#context_glext), [extension-supported](https://hectarea1996.github.io/cl-glfw/context.html#extension-supported)






