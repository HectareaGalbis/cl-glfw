
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Initialization, version and error reference

## Description

This is the reference documentation for initialization and termination of the library, version management and error handling. 
For more task-oriented information, see the [Introduction to the API](https://www.glfw.org/docs/latest/intro_guide.html).

## Constants

* [+version-major+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-major) 3
* [+version-minor+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-minor) 3
* [+version-revision+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-revision) 6 
* [+true+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#true) 1
* [+false+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#false) 0   
* [+joystick-hat-buttons+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#joystick-hat-buttons) #x00050001
* [+cocoa-chdir-resources+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#cocoa-chdir-resources) #x00051001    
* [+cocoa-menubar+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#cocoa-menubar) #x00051002

### Error codes

* [+no-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-error) 0
* [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) #x00010001
* [+no-current-context+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-current-context) #x00010002
* [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) #x00010003
* [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) #x00010004
* [+out-of-memory+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#out-of-memory) #x00010005
* [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) #x00010006
* [+version-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-unavailable) #x00010006
* [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error) #x00010008
* [+format-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#format-unavailable) #x00010009
* [+no-window-context+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-window-context) #x0001000A

## Functions

## Constant documentation

### version-major

```
(defconstant +version-major+ 3) 
```

The major version number of the GLFW header. This is incremented when the API is changed in non-compatible ways.

### +version-minor+

```
(defconstant +version-minor+ 3)
```

The minor version number of the GLFW header. This is incremented when features are added to the API but it remains backward-compatible.

### +version-revision+

```
(defconstant +version-revision+ 6)
```

The revision number of the GLFW header. This is incremented when a bug fix release is made that does not contain any API changes.

### +true+

```
(defconstant +true+ 1)
```

This is only semantic sugar for the number 1. You can instead use `1` or `true` or `_True` or `GL_TRUE` or `VK_TRUE` or anything else that is equal to one.

### +false+

```
(defconstant +false+ 0)
```

This is only semantic sugar for the number 0. You can instead use `0` or `false` or `_False` or `GL_FALSE` or VK_FALSE or anything else that is equal to zero.

### +joystick-hat-buttons+

```
(defconstant +joystick-hat-buttons+ #x00050001)
```

Joystick hat buttons [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_JOYSTICK_HAT_BUTTONS).

### +cocoa-chdir-resources+

```
(defconstant +cocoa-chdir-resources+ #x00051001)
```

macOS specific [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_COCOA_CHDIR_RESOURCES_hint).

### +cocoa-menubar+

```
(defconstant +cocoa-menubar+ #x00051002)
```

macOS specific [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_COCOA_MENUBAR_hint).

### +no-error+

```
(defconstant +no-error+ 0)
```

No error has occurred.

**Analysis**: Yay.

### +not-initialized+

```
(defconstant +not-initialized+ #x00010001)
```

This occurs if a GLFW function was called that must not be called unless the library is [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).

**Analysis**: Application programmer error. Initialize GLFW before calling any function that requires initialization.

### +no-current-context+

```
(defconstant +no-current-context+ #x00010002)
```

This occurs if a GLFW function was called that needs and operates on the current OpenGL or OpenGL ES context but no context is current on the calling thread. One such function is [swap-interval](https://hectarea1996.github.io/cl-glfw/context.html#swap-interval).

**Analysis**: Application programmer error. Ensure a context is current before calling functions that require a current context.

### +invalid-enum+

```
(defconstant +invalid-enum+ #x00010003)
```

One of the arguments to the function was an invalid enum value, for example requesting [+red-bits+](https://hectarea1996.github.io/cl-glfw/window.html#red-bits) with [get-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#get-window-attrib).

**Analysis**: Application programmer error. Fix the offending call.

### +invalid-value+

```
(defconstant +invalid-value+ #x00010004)
```

One of the arguments to the function was an invalid value, for example requesting a non-existent OpenGL or OpenGL ES version like 2.7.

Requesting a valid but unavailable OpenGL or OpenGL ES version will instead result in a [+version-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-unavailable) error.

**Analysis**: Application programmer error. Fix the offending call.

### +out-of-memory+

```
(defconstant +out-of-memory+ #x00010005)
```

A memory allocation failed.

**Analysis**: A bug in GLFW or the underlying operating system. Report the bug to our [issue tracker](https://github.com/glfw/glfw/issues).

### +api-unavailable+

```
(defconstant +api-unavailable+ #x00010006)
```

GLFW could not find support for the requested API on the system.

**Analysis**: The installed graphics driver does not support the requested API, or does not support it via the chosen context creation backend. Below are a few examples. Some pre-installed Windows graphics drivers do not support OpenGL. AMD only supports OpenGL ES via EGL, while Nvidia and Intel only support it via a WGL or GLX extension. macOS does not provide OpenGL ES at all. The Mesa EGL, OpenGL and OpenGL ES libraries do not interface with the Nvidia binary driver. Older graphics drivers do not support Vulkan.

### +version-unavailable+

```
(defconstant +version-unavailable+ #x00010007)
```

The requested OpenGL or OpenGL ES version (including any requested context or framebuffer hints) is not available on this machine.

**Analysis**: The machine does not support your requirements. If your application is sufficiently flexible, downgrade your requirements and try again. Otherwise, inform the user that their machine does not match your requirements. Future invalid OpenGL and OpenGL ES versions, for example OpenGL 4.8 if 5.0 comes out before the 4.x series gets that far, also fail with this error and not [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value), because GLFW cannot know what future versions will exist.

### +platform-error+

```
(defconstant +platform-error+ #x00010008)
```

A platform-specific error occurred that does not match any of the more specific categories.

**Analysis**: A bug or configuration error in GLFW, the underlying operating system or its drivers, or a lack of required resources. Report the issue to our [issue tracker](https://github.com/glfw/glfw/issues).

### +format-unavailable+

```
(defconstant +format-unavailable+ #x00010009)
```

If emitted during window creation, the requested pixel format is not supported.

If emitted when querying the clipboard, the contents of the clipboard could not be converted to the requested format.

**Analysis**: If emitted during window creation, one or more [hard constraints](https://www.glfw.org/docs/latest/window_guide.html#window_hints_hard) did not match any of the available pixel formats. If your application is sufficiently flexible, downgrade your requirements and try again. Otherwise, inform the user that their machine does not match your requirements. If emitted when querying the clipboard, ignore the error or report it to the user, as appropriate.

### +no-window-context+

```
(defconstant +no-window-context+ #x0001000A)
```

A window that does not have an OpenGL or OpenGL ES context was passed to a function that requires it to have one.

**Analysis**: Application programmer error. Fix the offending call.

## Function documentation 
