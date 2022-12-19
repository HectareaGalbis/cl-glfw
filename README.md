<h1 id="header:ADP:HEADERTAG0">cl-glfw</h1>

Welcome to the GLFW bindings\!

GLFW is a free\, Open Source\, multi\-platform library for OpenGL\, OpenGL ES and Vulkan application development\. It provides a simple\, platform\-independent API for creating windows\, contexts and surfaces\, reading input\, handling events\, etc\.

* <a href="/README.md#header:ADP:HEADERTAG0">cl-glfw</a>
  * <a href="/README.md#header:ADP:HEADERTAG1">Documentation</a>
  * <a href="/README.md#header:ADP:HEADERTAG2">Installation</a>
* <a href="/docs/api-introduction.md#header:GLFW:API-REFERENCE-HEADER">The cl-glfw reference</a>
  * <a href="/docs/api-introduction.md#header:ADP:HEADERTAG3">Function index</a>
* <a href="/docs/api/initialization.md#header:GLFW:INITIALIZATION-REFERENCE-HEADER">Initialization, version and error reference</a>
  * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG4">Description</a>
  * <a href="/docs/api/initialization.md#header:GLFW:INITIALIZATION-CONSTANTS-SUBHEADER">Constants</a>
  * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG5">Types</a>
  * <a href="/docs/api/initialization.md#header:ADP:HEADERTAG6">Functions</a>
* <a href="/docs/api/context.md#header:GLFW:CONTEXT-REFERENCE-HEADER">Context reference</a>
  * <a href="/docs/api/context.md#header:ADP:HEADERTAG14">Description</a>
  * <a href="/docs/api/context.md#header:ADP:HEADERTAG15">Functions</a>
* <a href="/docs/api/input.md#header:GLFW:INPUT-REFERENCE-HEADER">Input reference</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG20">Description</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG21">Constants</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG22">Types</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG24">Functions</a>
* <a href="/docs/api/monitor.md#header:GLFW:MONITOR-REFERENCE-HEADER">Monitor reference</a>
  * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG65">Description</a>
  * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG66">Types</a>
  * <a href="/docs/api/monitor.md#header:ADP:HEADERTAG69">Functions</a>
* <a href="/docs/api/vulkan.md#header:GLFW:VULKAN-REFERENCE-HEADER">Vulkan support reference</a>
  * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG85">Description</a>
  * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG86">Types</a>
  * <a href="/docs/api/vulkan.md#header:ADP:HEADERTAG87">Functions</a>
* <a href="/docs/api/window.md#header:GLFW:WINDOW-REFERENCE-HEADER">Window reference</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG92">Description</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG93">Constants</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG94">Types</a>
  * <a href="/docs/api/window.md#header:ADP:HEADERTAG96">Functions</a>

<h2 id="header:ADP:HEADERTAG1">Documentation</h2>

This project offers you <a href="/docs/api-introduction.md#header:GLFW:API-REFERENCE-HEADER">The cl-glfw reference</a> with a brief description of each function\. If you find some description unclear\, don\'t hesitate to post an issue\. However\, the main documentation source must be the [GLFW official documentation](https://www.glfw.org/documentation.html)\.

<h2 id="header:ADP:HEADERTAG2">Installation</h2>

This project is available on Ultralisp\. If you don\'t have it\, eval the next expression in your REPL\:

`````Lisp
(ql-dist:install-dist "http://dist.ultralisp.org/" :prompt nil)
`````

Finally\, install cl\-glfw\:

`````Lisp
(ql:quickload :cl-glfw)
`````

Also\, to make cl\-glfw work you need to install the shared libraries that you can find in the official [web page](https://www.glfw.org/download.html)\.

