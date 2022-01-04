# Context reference

## Description

This is the reference documentation for OpenGL and OpenGL ES context related functions. For more task-oriented 
information, see the [Context guide](https://www.glfw.org/docs/latest/context_guide.html).

## Functions


`(make-context-current window)`
Makes the context of the specified window current for the calling thread. [More...](https://hectarea1996.github.io/cl-glfw/context.html#make-context-current)


### make-context-current

`(make-context-current window)`

This function makes the OpenGL or OpenGL ES context of the specified window current on the calling thread. 
A context must only be made current on a single thread at a time and each thread can have only a single current context at a time.

When moving a context between threads, you must make it non-current on the old thread before making it current on the new one.

By default, making a context non-current implicitly forces a pipeline flush. On machines that support GL_KHR_context_flush_control, 
you can control whether a context performs this flush by setting the GLFW_CONTEXT_RELEASE_BEHAVIOR hint.

The specified window must have an OpenGL or OpenGL ES context. Specifying a window without a context will generate a GLFW_NO_WINDOW_CONTEXT error.


