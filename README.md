# cl-glfw

Welcome to the GLFW bindings!

GLFW is a free, Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan application development. It provides a simple, platform-independent API for creating windows, contexts and surfaces, reading input, handling events, etc.

* [cl-glfw](/README.md#cl-glfw)
  * [Documentation](/README.md#documentation)
  * [Installation](/README.md#installation)
* [The cl-glfw reference](/docs/api-introduction.md#the-cl-glfw-reference)
  * [Function index](/docs/api-introduction.md#function-index)
* [Initialization, version and error reference](/docs/api/initialization.md#initialization-version-and-error-reference)
  * [Description](/docs/api/initialization.md#description)
  * [Constants](/docs/api/initialization.md#constants)
  * [Types](/docs/api/initialization.md#types)
  * [Functions](/docs/api/initialization.md#functions)
* [Context reference](/docs/api/context.md#context-reference)
  * [Description](/docs/api/context.md#description)
  * [Functions](/docs/api/context.md#functions)
* [Input reference](/docs/api/input.md#input-reference)
  * [Description](/docs/api/input.md#description)
  * [Constants](/docs/api/input.md#constants)
  * [Types](/docs/api/input.md#types)
  * [Functions](/docs/api/input.md#functions)
* [Monitor reference](/docs/api/monitor.md#monitor-reference)
  * [Description](/docs/api/monitor.md#description)
  * [Types](/docs/api/monitor.md#types)
  * [Functions](/docs/api/monitor.md#functions)
* [Vulkan support reference](/docs/api/vulkan.md#vulkan-support-reference)
  * [Description](/docs/api/vulkan.md#description)
  * [Types](/docs/api/vulkan.md#types)
  * [Functions](/docs/api/vulkan.md#functions)
* [Window reference](/docs/api/window.md#window-reference)
  * [Description](/docs/api/window.md#description)
  * [Constants](/docs/api/window.md#constants)
  * [Types](/docs/api/window.md#types)
  * [Functions](/docs/api/window.md#functions)

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

