# cl-glfw

Welcome to the GLFW bindings!

GLFW is a free, Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan application development. It provides a simple, platform-independent API for creating windows, contexts and surfaces, reading input, handling events, etc.

## Documentation

This project offers you [The cl-glfw reference](/docs/api-introduction.md#the-cl-glfw-reference) with a brief description of each function. If you find some description unclear, don't hesitate to post an issue. However, the main documentation source must be the [GLFW official documentation](https://www.glfw.org/documentation.html).

## Installation

This project is available on Ultralisp. If you don't have it, eval the next expression in your REPL:

```
(QL-DIST:INSTALL-DIST "http://dist.ultralisp.org/" :PROMPT NIL)
```

Finally, install cl-glfw:

```
(QL:QUICKLOAD :CL-GLFW)
```

Also, to make cl-glfw work you need to install the shared libraries that you can find in the official [web page](https://www.glfw.org/download.html).

