# Context reference

## Description

This is the reference documentation for OpenGL and OpenGL ES context related functions. For more task-oriented 
information, see the [Context guide](https://www.glfw.org/docs/latest/context_guide.html).

## Functions


[make-context-current window](https://hectarea1996.github.io/cl-glfw/context.html#make-context-current): Makes the context of the specified window current for the calling thread.
[get-current-context](https://hectarea1996.github.io/cl-glfw/context.html#get-current-context): Returns the window whose context is current on the calling thread.
[swap-interval](https://hectarea1996.github.io/cl-glfw/context.html#swap-interval): Sets the swap interval for the current context.
[extension-supported](https://hectarea1996.github.io/cl-glfw/context.html#extension-supported): Returns whether the specified extension is available.
[get-proc-address](https://hectarea1996.github.io/cl-glfw/context.html#get-proc-address): Returns the address of the specified function for the current context.


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

* Parameters:
  * window The window whose context to make current, or `nil` to detach the current context.
* Errors: Possible errors include [GLFW_NOT_INITIALIZED](https://www.glfw.org/docs/latest/group__errors.html#ga2374ee02c177f12e1fa76ff3ed15e14a), [GLFW_NO_WINDOW_CONTEXT](https://www.glfw.org/docs/latest/group__errors.html#gacff24d2757da752ae4c80bf452356487) and [GLFW_PLATFORM_ERROR](https://www.glfw.org/docs/latest/group__errors.html#gad44162d78100ea5e87cdd38426b8c7a1).
* Thread safety: This function may be called from any thread.
* See also: [Current context](https://www.glfw.org/docs/latest/context_guide.html#context_current), [get-current-context](https://hectarea1996.github.io/cl-glfw/context.html#get-current-context).

### get-current-context


