
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Initialization, version and error reference

## Description

This is the reference documentation for initialization and termination of the library, version management and error handling. 
For more task-oriented information, see the [Introduction to the API](https://www.glfw.org/docs/latest/intro_guide.html).

* [Constants](https://hectarea1996.github.io/cl-glfw/init-version-error.html#constants)
* [Functions](https://hectarea1996.github.io/cl-glfw/init-version-error.html#functions)
* [Macros](https://hectarea1996.github.io/cl-glfw/init-version-error.html#macros)

## Constants

* [GLFW_VERSION_MAJOR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-major) 3
* [GLFW_VERSION_MINOR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-minor) 3
* [GLFW_VERSION_REVISION](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-revision) 6 
* [GLFW_TRUE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#true) 1
* [GLFW_FALSE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#false) 0   
* [GLFW_JOYSTICK_HAT_BUTTONS](https://hectarea1996.github.io/cl-glfw/init-version-error.html#joystick-hat-buttons) #x00050001
* [GLFW_COCOA_CHDIR_RESOURCES](https://hectarea1996.github.io/cl-glfw/init-version-error.html#cocoa-chdir-resources) #x00051001    
* [GLFW_COCOA_MENUBAR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#cocoa-menubar) #x00051002

### Error codes

* [GLFW_NO_ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-error) 0
* [GLFW_NOT_INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) #x00010001
* [GLFW_NO_CURRENT_CONTEXT](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-current-context) #x00010002
* [GLFW_INVALID_ENUM](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) #x00010003
* [GLFW_INVALID_VALUE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) #x00010004
* [GLFW_OUT_OF_MEMORY](https://hectarea1996.github.io/cl-glfw/init-version-error.html#out-of-memory) #x00010005
* [GLFW_API_UNAVAILABLE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) #x00010006
* [GLFW_VERSION_UNAVAILABLE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-unavailable) #x00010006
* [GLFW_PLATFORM_ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error) #x00010008
* [GLFW_FORMAT_UNAVAILABLE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#format-unavailable) #x00010009
* [GLFW_NO_WINDOW_CONTEXT](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-window-context) #x0001000A

## Functions

* [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init): Initializes the GLFW library.
* [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate): Terminates the GLFW library.
* [init-hint](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init-hint): Sets the specified init hint to the desired value.
* [get-version](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-version): Retrieves the version of the GLFW library.
* [get-version-string](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-version-string): Returns a string describing the compile-time configuration.
* [get-error](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-error): Returns and clears the last error for the calling thread.
* [set-error-callback](https://hectarea1996.github.io/cl-glfw/init-version-error.html#set-error-callback): Sets the error callback.

## Macros

* [def-error-callback](https://hectarea1996.github.io/cl-glfw/init-version-error.html#def-error-callback): Defines an error callback. 

## Constant documentation

### version-major

```
(defconstant GLFW_VERSION_MAJOR 3) 
```

The major version number of the GLFW header. This is incremented when the API is changed in non-compatible ways.

### GLFW_VERSION_MINOR

```
(defconstant GLFW_VERSION_MINOR 3)
```

The minor version number of the GLFW header. This is incremented when features are added to the API but it remains backward-compatible.

### GLFW_VERSION_REVISION

```
(defconstant GLFW_VERSION_REVISION 6)
```

The revision number of the GLFW header. This is incremented when a bug fix release is made that does not contain any API changes.

### GLFW_TRUE

```
(defconstant GLFW_TRUE 1)
```

This is only semantic sugar for the number 1. You can instead use `1` or `true` or `_True` or `GL_TRUE` or `VK_TRUE` or anything else that is equal to one.

### GLFW_FALSE

```
(defconstant GLFW_FALSE 0)
```

This is only semantic sugar for the number 0. You can instead use `0` or `false` or `_False` or `GL_FALSE` or VK_FALSE or anything else that is equal to zero.

### GLFW_JOYSTICK_HAT_BUTTONS

```
(defconstant GLFW_JOYSTICK_HAT_BUTTONS #x00050001)
```

Joystick hat buttons [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_JOYSTICK_HAT_BUTTONS).

### GLFW_COCOA_CHDIR_RESOURCES

```
(defconstant GLFW_COCOA_CHDIR_RESOURCES #x00051001)
```

macOS specific [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_COCOA_CHDIR_RESOURCES_hint).

### GLFW_COCOA_MENUBAR

```
(defconstant GLFW_COCOA_MENUBAR #x00051002)
```

macOS specific [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_COCOA_MENUBAR_hint).

### GLFW_NO_ERROR

```
(defconstant GLFW_NO_ERROR 0)
```

No error has occurred.

**Analysis**: Yay.

### GLFW_NOT_INITIALIZED

```
(defconstant GLFW_NOT_INITIALIZED #x00010001)
```

This occurs if a GLFW function was called that must not be called unless the library is [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).

**Analysis**: Application programmer error. Initialize GLFW before calling any function that requires initialization.

### GLFW_NO_CURRENT_CONTEXT

```
(defconstant GLFW_NO_CURRENT_CONTEXT #x00010002)
```

This occurs if a GLFW function was called that needs and operates on the current OpenGL or OpenGL ES context but no context is current on the calling thread. One such function is [swap-interval](https://hectarea1996.github.io/cl-glfw/context.html#swap-interval).

**Analysis**: Application programmer error. Ensure a context is current before calling functions that require a current context.

### GLFW_INVALID_ENUM

```
(defconstant GLFW_INVALID_ENUM #x00010003)
```

One of the arguments to the function was an invalid enum value, for example requesting [GLFW_RED_BITS](https://hectarea1996.github.io/cl-glfw/window.html#red-bits) with [get-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#get-window-attrib).

**Analysis**: Application programmer error. Fix the offending call.

### GLFW_INVALID_VALUE

```
(defconstant GLFW_INVALID_VALUE #x00010004)
```

One of the arguments to the function was an invalid value, for example requesting a non-existent OpenGL or OpenGL ES version like 2.7.

Requesting a valid but unavailable OpenGL or OpenGL ES version will instead result in a [GLFW_VERSION_UNAVAILABLE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-unavailable) error.

**Analysis**: Application programmer error. Fix the offending call.

### GLFW_OUT_OF_MEMORY

```
(defconstant GLFW_OUT_OF_MEMORY #x00010005)
```

A memory allocation failed.

**Analysis**: A bug in GLFW or the underlying operating system. Report the bug to our [issue tracker](https://github.com/glfw/glfw/issues).

### GLFW_API_UNAVAILABLE

```
(defconstant GLFW_API_UNAVAILABLE #x00010006)
```

GLFW could not find support for the requested API on the system.

**Analysis**: The installed graphics driver does not support the requested API, or does not support it via the chosen context creation backend. Below are a few examples. Some pre-installed Windows graphics drivers do not support OpenGL. AMD only supports OpenGL ES via EGL, while Nvidia and Intel only support it via a WGL or GLX extension. macOS does not provide OpenGL ES at all. The Mesa EGL, OpenGL and OpenGL ES libraries do not interface with the Nvidia binary driver. Older graphics drivers do not support Vulkan.

### GLFW_VERSION_UNAVAILABLE

```
(defconstant GLFW_VERSION_UNAVAILABLE #x00010007)
```

The requested OpenGL or OpenGL ES version (including any requested context or framebuffer hints) is not available on this machine.

**Analysis**: The machine does not support your requirements. If your application is sufficiently flexible, downgrade your requirements and try again. Otherwise, inform the user that their machine does not match your requirements. Future invalid OpenGL and OpenGL ES versions, for example OpenGL 4.8 if 5.0 comes out before the 4.x series gets that far, also fail with this error and not [GLFW_INVALID_VALUE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value), because GLFW cannot know what future versions will exist.

### GLFW_PLATFORM_ERROR

```
(defconstant GLFW_PLATFORM_ERROR #x00010008)
```

A platform-specific error occurred that does not match any of the more specific categories.

**Analysis**: A bug or configuration error in GLFW, the underlying operating system or its drivers, or a lack of required resources. Report the issue to our [issue tracker](https://github.com/glfw/glfw/issues).

### GLFW_FORMAT_UNAVAILABLE

```
(defconstant GLFW_FORMAT_UNAVAILABLE #x00010009)
```

If emitted during window creation, the requested pixel format is not supported.

If emitted when querying the clipboard, the contents of the clipboard could not be converted to the requested format.

**Analysis**: If emitted during window creation, one or more [hard constraints](https://www.glfw.org/docs/latest/window_guide.html#window_hints_hard) did not match any of the available pixel formats. If your application is sufficiently flexible, downgrade your requirements and try again. Otherwise, inform the user that their machine does not match your requirements. If emitted when querying the clipboard, ignore the error or report it to the user, as appropriate.

### GLFW_NO_WINDOW_CONTEXT

```
(defconstant GLFW_NO_WINDOW_CONTEXT #x0001000A)
```

A window that does not have an OpenGL or OpenGL ES context was passed to a function that requires it to have one.

**Analysis**: Application programmer error. Fix the offending call.

## Function documentation 

### init

```
(init) => success
```

This function initializes the GLFW library. Before most GLFW functions can be used, GLFW must be initialized, and before an application terminates GLFW should be terminated in order to free any resources allocated during or after initialization.

If this function fails, it calls [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate) before returning. If it succeeds, you should call [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate) before the application exits.

Additional calls to this function after successful initialization but before termination will return `t` immediately.

* *Returns*:
  * **success**: `t` if successful, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [GLFW_PLATFORM_ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **macOS**: This function will change the current directory of the application to the `Contents/Resources` subdirectory of the application's bundle, if present. This can be disabled with the [GLFW_COCOA_CHDIR_RESOURCES](https://hectarea1996.github.io/cl-glfw/init-version-error.html#cocoa-chdir-resources) init hint.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Initialization and termination](https://www.glfw.org/docs/latest/intro_guide.html#intro_init), [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate).

### terminate

```
(terminate)
```

This function destroys all remaining windows and cursors, restores any modified gamma ramps and frees any other allocated resources. Once this function is called, you must again call [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init) successfully before you will be able to use most GLFW functions.

If GLFW has been successfully initialized, this function should be called before the application exits. If initialization fails, there is no need to call this function, as it is called by [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init) before it returns failure.

This function has no effect if GLFW is not initialized.

* *Errors*: Possible errors include [GLFW_PLATFORM_ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: This function may be called before [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).

> **Warning:**
> The contexts of any remaining windows must not be current on any other thread when this function is called.
* *Reentrancy*: This function must not be called from a callback.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Initialization and termination](https://www.glfw.org/docs/latest/intro_guide.html#intro_init), [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).

### init-hint

```
(init-hint hint value)
```

This function sets hints for the next initialization of GLFW.

The values you set hints to are never reset by GLFW, but they only take effect during initialization. Once GLFW has been initialized, any values you set will be ignored until the library is terminated and initialized again.

Some hints are platform specific. These may be set on any platform but they will only affect their specific platform. Other platforms will ignore them. Setting these hints requires no platform specific headers or functions.

* *Parameters*:
  * **hint**: The [init hint](https://www.glfw.org/docs/latest/intro_guide.html#init_hints) to set.
  * **value**: The new value of the init hint.
* *Errors*: Possible errors include [GLFW_INVALID_ENUM](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [GLFW_INVALID-VALUE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value).
* *Remarks*: This function may be called before [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Init hints](https://www.glfw.org/docs/latest/intro_guide.html#init_hints), [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).

### get-version

```
(get-version) => major minor rev
```

This function retrieves the major, minor and revision numbers of the GLFW library. It is intended for when you are using GLFW as a shared library and want to ensure that you are using the minimum required version.

* *Returns*:
  * **major**: The major version number.
  * **minor**: The minor version number.
  * **rev**: The revision number.
* *Errors*: None.
* *Remarks*: This function may be called before [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Version management](https://www.glfw.org/docs/latest/intro_guide.html#intro_version), [get-version-string](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-version-string).

### get-version-string

```
(get-version-string) => version
```

This function returns the compile-time generated [version string](https://www.glfw.org/docs/latest/intro_guide.html#intro_version_string) of the GLFW library binary. It describes the version, platform, compiler and any platform-specific compile-time options. It should not be confused with the OpenGL or OpenGL ES version string, queried with `glGetString`.

Do not use the version string to parse the GLFW library version. The [get-version](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-version) function provides the version of the running library binary in numerical format.

* *Returns*:
  * **version**: The ASCII encoded GLFW version string.
* *Errors*: None.
* *Remarks*: This function may be called before [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Version management](https://www.glfw.org/docs/latest/intro_guide.html#intro_version), [get-version](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-version).

### get-error

```
(get-error) => error-code description
```

This function returns and clears the [error code](https://hectarea1996.github.io/cl-glfw/init-version-error.html#error-codes) of the last error that occurred on the calling thread, and optionally a UTF-8 encoded human-readable description of it. If no error has occurred since the last call, it returns [GLFW_NO_ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-error) (zero) and 'nil'.

* *Returns*:
  **error-code**: The last error code for the calling thread, or [GLFW_NO_ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-error) (zero).
  **description**: The error description, or `nil`.
* *Errors*: None.
* *Remarks*: This function may be called before [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Error handling](https://www.glfw.org/docs/latest/intro_guide.html#error_handling), [set-error-callback](https://hectarea1996.github.io/cl-glfw/init-version-error.html#set-error-callback).

### set-error-callback

```
(set-error-callback callback) => old-callback
```

This function sets the error callback, which is called with an error code and a human-readable description each time a GLFW error occurs.

The error code is set before the callback is called. Calling [get-error](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-error) from the error callback will return the same value as the error code argument.

The error callback is called on the thread where the error occurred. If you are using GLFW from multiple threads, your error callback needs to be written accordingly.

Once set, the error callback remains set even after the library has been terminated.

* *Parameters*:
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set.
* *Callback definition*: [def-error-callback](https://hectarea1996.github.io/cl-glfw/init-version-error.html#def-error-callback)
* *Errors*: None.
* *Remarks*: This function may be called before [init](https://hectarea1996.github.io/cl-glfw/init-version-error.html#init).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Error handling](https://www.glfw.org/docs/latest/intro_guide.html#error_handling), [get-error](https://hectarea1996.github.io/cl-glfw/init-version-error.html#get-error).

## Macro documentation

### def-error-callback

```
(def-error-callback name (error-code description) &body body)
```

Defines an error callback. An error callback function has the following signature:

* *Parameters*:
  * **error-code**: An [error code](https://hectarea1996.github.io/cl-glfw/init-version-error.html#error-codes). Future releases may add more error codes.
  * **description**: A UTF-8 encoded string describing the error.
* *See also*: [Error handling](https://www.glfw.org/docs/latest/intro_guide.html#error_handling), [set-error-callback](https://hectarea1996.github.io/cl-glfw/init-version-error.html#set-error-callback).
