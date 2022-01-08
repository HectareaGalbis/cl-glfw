
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

## Struct documentation

### vidmode

```
(defstruct vidmode
    width
    height
    red-bits
    green-bits
    blue-bits
    refresh-rate)
```

This describes a single video mode.

* *Fields*:
  * **width**: The width, in screen coordinates, of the video mode.
  * **height**: The height, in screen coordinates, of the video mode.
  * **red-bits**: The bit depth of the red channel of the video mode.
  * **green-bits**: The bit depth of the green channel of the video mode.
  * **blue-bits**: The bit depth of the blue channel of the video mode.
  * **refresh-rate**: The refresh rate, in Hz, of the video mode.
* *See also*: [Video modes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_modes), [get-video-mode](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-mode), [get-video-modes](https://hectarea1996.github.io/cl-glfw/monitor.html#get-video-modes).

### gammaramp

```
(defstruct gammaramp
    red
    green
    blue)
```

This describes the gamma ramp for a monitor.

* *Fields*:
  * **red**: An array of values describing the response of the red channel.
  * **green**: An array of values describing the response of the green channel.
  * **blue**: An array of values describing the response of the blue channel.
* *See also*: [Gamma ramp](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_gamma), [get-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#get-gamma-ramp), [set-gamma-ramp](https://hectarea1996.github.io/cl-glfw/monitor.html#set-gamma-ramp).

## Function documentation

### get-monitors

```
(get-monitors) => monitors
```

This function returns an array of handles for all currently connected monitors. The primary monitor is always first in the returned array. If no monitors were found, this function returns `nil`.

* *Returns*:
  * **monitors**: An array of monitor handles, or `nil` if no monitors were found or if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Retrieving monitors](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_monitors), [Monitor configuration changes](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_event), [get-primary-monitor](https://hectarea1996.github.io/cl-glfw/monitor.html#get-primary-monitor).

### get-primary-monitor

```
(get-primary-monitor) => monitor
```

This function returns the primary monitor. This is usually the monitor where elements like the task bar or global menu bar are located.

* *Returns*:
  * **monitor**: The primary monitor, or `nil` if no monitors were found or if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
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
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
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
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
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
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
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
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
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
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Monitor properties](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_properties).

## Macro documentation