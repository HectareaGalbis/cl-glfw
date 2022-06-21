
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Monitor reference

## Description

This is the reference documentation for monitor related functions and types. For more task-oriented information, see the [Monitor guide](https://www.glfw.org/docs/latest/monitor_guide.html).

* [Structs](https://hectarea1996.github.io/cl-glfw/monitor.html#structs)
* [Functions](https://hectarea1996.github.io/cl-glfw/monitor.html#functions)
* [Macros](https://hectarea1996.github.io/cl-glfw/monitor.html#macros)

## Structs

* [vidmode](https://hectarea1996.github.io/cl-glfw/monitor.html#vidmode): Video mode type.
* [gammaramp](https://hectarea1996.github.io/cl-glfw/monitor.html#gammaramp): Gamma ramp.

## Functions

* [get-monitors](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitors): Returns the currently connected monitors.
* [get-primary-monitor](https://hectarea1996.github.io/cl-glfw/monitor.html#get-primary-monitor): Returns the primary monitor.
* [get-monitor-pos](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-pos): Returns the position of the monitor's viewport on the virtual screen.
* [get-monitor-workarea](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-workarea): Retrieves the work area of the monitor.
* [get-monitor-physical-size](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-physical-size): Returns the physical size of the monitor.
* [get-monitor-content-scale](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-content-scale): Retrieves the content scale for the specified monitor.
* [get-monitor-name](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-name): Returns the name of the specified monitor.
* [set-monitor-user-data](https://hectarea1996.github.io/cl-glfw/monitor.html#set-monitor-user-data): Sets the user pointer of the specified monitor.
* [get-monitor-user-data](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-user-data): Returns the user pointer of the specified monitor.
* [set-monitor-callback](https://hectarea1996.github.io/cl-glfw/monitor.html#set-monitor-callback): Sets the monitor configuration callback.
* [get-video-modes](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-modes): Returns the available video modes for the specified monitor. 
* [get-video-mode](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-mode): Returns the current mode of the specified monitor.
* [set-gamma](https://hectarea1996.github.io/cl-glfw/monitor.html#set-gamma): Generates a gamma ramp and sets it for the specified monitor.
* [get-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#get-gamma-ramp): Returns the current gamma ramp for the specified monitor.
* [set-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#set-gamma-ramp): Sets the current gamma ramp for the specified monitor.

## Macros

* [def-monitor-callback](https://hectarea1996.github.io/cl-glfw/monitor.html#def-monitor-callback): Defines a monitor callback.

## Struct documentation

### vidmode

```
(defstruct vidmode
  width
  height
  redBits
  greenBits
  blueBits
  refreshRate)
    
(vidmode-width obj)
(vidmode-height obj)
(vidmode-redbits obj)
(vidmode-greenBits obj)
(vidmode-blueBits obj)
(vidmode-refreshRate obj)
```

This describes a single video mode.

* *Fields*:
  * **width**: The width, in screen coordinates, of the video mode.
  * **height**: The height, in screen coordinates, of the video mode.
  * **redBits**: The bit depth of the red channel of the video mode.
  * **greenBits**: The bit depth of the green channel of the video mode.
  * **blueBits**: The bit depth of the blue channel of the video mode.
  * **refreshRate**: The refresh rate, in Hz, of the video mode.

* *Accessors*:
  * **vidmode-width**: Returns the `width` member.
  * **vidmode-height**: Returns the `height` member.
  * **vidmode-redBits**: Returns the `redBits` member.
  * **vidmode-greenBits**: Returns the `greenBits` member.
  * **vidmode-blueBits**: Returns the `blueBits` member.
  * **vidmode-refreshRate**: Returns the `refreshRate` member.

* *See also*: [Video modes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_modes), [get-video-mode](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-mode), [get-video-modes](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-modes).

### gammaramp

```
(defstruct gammaramp
    red
    green
    blue
    size)
    
(create-gammaramp &key (red nil) (green nil) (blue nil) (size 0))
(destroy-gammaramp obj)
(with-gammaramp var (&key (red nil) (green nil) (blue nil) (size 0))
  &body body)
(gammaramp-red obj &optional index)
(gammaramp-green obj &optional index)
(gammaramp-blue obj &optional index)
(gammaramp-size obj)
```

This describes the gamma ramp for a monitor.

* *Fields*:
  * **red**: A list of values describing the response of the red channel.
  * **green**: A list of values describing the response of the green channel.
  * **blue**: A list of values describing the response of the blue channel.
  * **size**: The number of elements in each list.
 
* *Constructor and destructor*:
  * **create-gammaramp**: Creates a gammaramp structure. `red`, `green` and `blue` arguments must be lists of size `size`.
  * **destroy-gammaramp**: Destroys a gammaramp structure.
  * **with-gammaramp**: Wraps the body expressions with the creation and destruction of a gammaramp structure. The new gammaramp structure is bound to `var`. The arguments are passed to the constructor `create-gammaramp`.

* *Accessors*:
  * **gammaramp-red**: Returns the `red` member. If `index` is supplied, it returns the element at `index` position. This function is setf-able.
  * **gammaramp-green**: Returns the `green` member. If `index` is supplied, it returns the element at `index` position. This function is setf-able.
  * **gammaramp-red**: Returns the `blue` member. If `index` is supplied, it returns the element at `index` position. This function is setf-able.
  * **gammaramp-red**: Returns the `size` member. This function is setf-able.

* *See also*: [Gamma ramp](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_gamma), [get-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#get-gamma-ramp), [set-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#set-gamma-ramp).

## Function documentation

### get-monitors

```
(get-monitors) => monitors
```

This function returns an array of handles for all currently connected monitors. The primary monitor is always first in the returned array. If no monitors were found, this function returns `nil`.

* *Returns*:
  * **monitors**: An array of monitor handles, or `nil` if no monitors were found or if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Retrieving monitors](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_monitors), [Monitor configuration changes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_event), [get-primary-monitor](https://hectarea1996.github.io/cl-glfw/monitor.html#get-primary-monitor).

### get-primary-monitor

```
(get-primary-monitor) => monitor
```

This function returns the primary monitor. This is usually the monitor where elements like the task bar or global menu bar are located.

* *Returns*:
  * **monitor**: The primary monitor, or `nil` if no monitors were found or if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *Remarks*: The primary monitor is always first in the array returned by [get-monitors](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitors).
* *See also*: [Retrieving monitors](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_monitors), [get-monitors](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitors).

### get-monitor-pos

```
(get-monitor-pos monitor) => xpos ypos
```

This function returns the position, in screen coordinates, of the upper-left corner of the specified monitor.

If an error occurs, all the returned values will be zero.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **xpos**: The monitor x-coordinate.
  * **ypos**: The monitor y-coordinate.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Monitor properties](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_properties).

### get-monitor-workarea

```
(get-monitor-workarea monitor) => xpos ypos width height
```

This function returns the position, in screen coordinates, of the upper-left corner of the work area of the specified monitor along with the work area size in screen coordinates. The work area is defined as the area of the monitor not occluded by the operating system task bar where present. If no task bar exists then the work area is the monitor resolution in screen coordinates.

If an error occurs, all returned values will be zero.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **xpos**: The monitor x-coordinate.
  * **ypos**: The monitor y-coordinate.
  * **width**: The monitor width.
  * **height**: The monitor height.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Work area](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_workarea).

### get-monitor-physical-size

```
(get-monitor-physical-size monitor) => widthMM heightMM
```

This function returns the size, in millimetres, of the display area of the specified monitor.

Some systems do not provide accurate monitor size information, either because the monitor [EDID](https://en.wikipedia.org/wiki/Extended_display_identification_data) data is incorrect or because the driver does not report it accurately.

If an error occurs, all returned values will be zero.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **widthMM**: The width, in millimetres, of the monitor's display area.
  * **heightMM**: The height, in millimetres, of the monitor's display area.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Remarks*:
  * **Windows**: On Windows 8 and earlier the physical size is calculated from the current resolution and system DPI instead of querying the monitor EDID data.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Monitor properties](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_properties).

### get-monitor-content-scale

```
(get-monitor-content-scale monitor) => xscale yscale
```

This function retrieves the content scale for the specified monitor. The content scale is the ratio between the current DPI and the platform's default DPI. This is especially important for text and any UI elements. If the pixel dimensions of your UI scaled by this look appropriate on your machine then it should appear at a reasonable size on other machines regardless of their DPI and scaling settings. This relies on the system DPI and scaling settings being somewhat correct.

The content scale may depend on both the monitor resolution and pixel density and on user settings. It may be very different from the raw DPI calculated from the physical size and current resolution.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **xscale**: The x-axis content scale.
  * **yscale**: The y-axis content scale.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Content scale](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_scale), [get-window-content-scale](https://hectarea1996.github.io/cl-glfw/monitor.html#get-window-content-scale).

### get-monitor-name

```
(get-monitor-name monitor) => name
```

This function returns a human-readable name, encoded as UTF-8, of the specified monitor. The name typically reflects the make and model of the monitor and is not guaranteed to be unique among the connected monitors.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **name**: The UTF-8 encoded name of the monitor, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Monitor properties](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_properties).

### set-monitor-user-data

```
(set-monitor-user-data monitor data)
```

This function sets the user-defined data of the specified monitor. The current value is retained until the monitor is disconnected. The initial value is `nil`.

This function may be called from the monitor callback, even for a monitor that is being disconnected.

* *Parameters*:
  * **monitor**: The monitor whose data to set.
  * **data**: The new value.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [User data](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_userptr), [get-monitor-user-data](https://hectarea1996.github.io/cl-glfw/monitor.html#get-monitor-user-data).

### get-monitor-user-data

```
(get-monitor-user-data monitor)
```

This function returns the current value of the user-defined pointer of the specified monitor. The initial value is `nil`.

This function may be called from the monitor callback, even for a monitor that is being disconnected.

* *Parameters*:
  * **monitor**: The monitor whose data to return.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [User data](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_userptr), [set-monitor-user-data](https://hectarea1996.github.io/cl-glfw/monitor.html#set-monitor-user-data).

### set-monitor-callback

```
(set-monitor-callback callback) => old-callback
```

This function sets the monitor configuration callback, or removes the currently set callback. This is called when a monitor is connected to or disconnected from the system.

* *Parameters*:
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Monitor configuration changes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_event), [def-monitor-callback](https://hectarea1996.github.io/cl-glfw/monitor.html#def-monitor-callback).

### get-video-modes

```
(get-video-modes monitor) => video-modes
```

This function returns an array of all video modes supported by the specified monitor. The returned array is sorted in ascending order, first by color bit depth (the sum of all channel depths), then by resolution area (the product of width and height), then resolution width and finally by refresh rate.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **video-modes**: An array of video modes, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Video modes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_modes), [get-video-mode](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-mode).

### get-video-mode

```
(get-video-mode monitor) => video-mode
```

This function returns the current video mode of the specified monitor. If you have created a full screen window for that monitor, the return value will depend on whether that window is iconified.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **video-mode**: The current mode of the monitor, or `nil` if an error occurred.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Video modes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_modes), [get-video-modes](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-modes).

### set-gamma

```
(set-gamma monitor gamma)
```

This function generates an appropriately sized gamma ramp from the specified exponent and then calls [set-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#set-gamma-ramp) with it. The value must be a finite number greater than zero.

The software controlled gamma ramp is applied *in addition* to the hardware gamma correction, which today is usually an approximation of sRGB gamma. This means that setting a perfectly linear ramp, or gamma 1.0, will produce the default (usually sRGB-like) behavior.

For gamma correct rendering with OpenGL or OpenGL ES, see the [GLFW_SRGB-CAPABLE](https://www.glfw.org/docs/latest/window_guide.html#GLFW_SRGB_CAPABLE) hint.

* *Parameters*:
  * **monitor**: The monitor whose gamma ramp to set.
  * **gamma**: The desired exponent.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_INVALID-VALUE](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: Gamma handling is a privileged protocol, this function will thus never be implemented and emits [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamma ramp](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_gamma).

### get-gamma-ramp

```
(get-gamma-ramp monitor) => gamma-ramp
```

This function returns the current gamma ramp of the specified monitor.

* *Parameters*:
  * **monitor**: The monitor to query.
* *Returns*:
  * **gamma-ramp**: The current gamma ramp, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: Gamma handling is a privileged protocol, this function will thus never be implemented and emits [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamma ramp](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_gamma).

### set-gamma-ramp

```
(set-gamma-ramp monitor ramp)
```

This function sets the current gamma ramp for the specified monitor. The original gamma ramp for that monitor is saved by GLFW the first time this function is called and is restored by [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate).

The software controlled gamma ramp is applied *in addition* to the hardware gamma correction, which today is usually an approximation of sRGB gamma. This means that setting a perfectly linear ramp, or gamma 1.0, will produce the default (usually sRGB-like) behavior.

For gamma correct rendering with OpenGL or OpenGL ES, see the [GLFW_SRGB-CAPABLE](https://www.glfw.org/docs/latest/window_guide.html#GLFW_SRGB_CAPABLE) hint.

* *Parameters*:
  * **monitor**: The monitor whose gamma ramp to set.
  * **ramp**: The gamma ramp to use.
* *Errors*: Possible errors include [GLFW_NOT-INITIALIZED](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: The size of the specified gamma ramp should match the size of the current ramp for that monitor.
  * **Windows**: The gamma ramp size must be 256.
  * **Wayland**: Gamma handling is a privileged protocol, this function will thus never be implemented and emits [GLFW_PLATFORM-ERROR](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamma ramp](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_gamma).

## Macro documentation

### def-monitor-callback

```
(def-monitor-callback name (monitor event) &body body)
```

Defines a monitor callback. A monitor callback function has the following signature:

* *Parameters*:
  * **monitor**: The monitor that was connected or disconnected.
  * **event**: One of `GLFW_CONNECTED` or `GLFW_DISCONNECTED`. Future releases may add more events.
* *See also*: [Monitor configuration changes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_event), [set-monitor-callback](https://hectarea1996.github.io/cl-glfw/monitor.html#set-monitor-callback).
