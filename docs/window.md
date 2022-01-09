
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Window reference

## Description

This is the reference documentation for window related functions and types, including creation, deletion and event polling. For more task-oriented information, see the [Window guide](https://www.glfw.org/docs/latest/window_guide.html).

* [Constants](https://hectarea1996.github.io/cl-glfw/window.html#constants)
* [Structs](https://hectarea1996.github.io/cl-glfw/window.html#structs)
* [Functions](https://hectarea1996.github.io/cl-glfw/window.html#functions)
* [Macros](https://hectarea1996.github.io/cl-glfw/window.html#macros)

## Constants

* [+focused+](https://hectarea1996.github.io/cl-glfw/window.html#focused) #x00020001
* [+iconified+](https://hectarea1996.github.io/cl-glfw/window.html#iconified) #x00020002
* [+resizable+](https://hectarea1996.github.io/cl-glfw/window.html#resizable) #x00020003
* [+visible+](https://hectarea1996.github.io/cl-glfw/window.html#visible) #x00020004
* [+decorated+](https://hectarea1996.github.io/cl-glfw/window.html#decorated) #x00020005
* [+auto-iconify+](https://hectarea1996.github.io/cl-glfw/window.html#iconify) #x00020006
* [+floating+](https://hectarea1996.github.io/cl-glfw/window.html#floating) #x00020007
* [+maximized+](https://hectarea1996.github.io/cl-glfw/window.html#maximized) #x00020008
* [+center-cursor+](https://hectarea1996.github.io/cl-glfw/window.html#center-cursor) #x00020009
* [+transparent-framebuffer+](https://hectarea1996.github.io/cl-glfw/window.html#transparent-framebuffer) #x0002000A
* [+hovered+](https://hectarea1996.github.io/cl-glfw/window.html#hovered) #x0002000B
* [+focus-on-show+](https://hectarea1996.github.io/cl-glfw/window.html#focus-on-show) #x0002000C
* [+red-bits+](https://hectarea1996.github.io/cl-glfw/window.html#red-bits) #x00021001
* [+green-bits+](https://hectarea1996.github.io/cl-glfw/window.html#green-bits) #x00021002
* [+blue-bits+](https://hectarea1996.github.io/cl-glfw/window.html#blue-bits) #x00021003
* [+alpha-bits+](https://hectarea1996.github.io/cl-glfw/window.html#alpha-bits) #x00021004
* [+depth-bits+](https://hectarea1996.github.io/cl-glfw/window.html#depth-bits) #x00021005
* [+stencil-bits+](https://hectarea1996.github.io/cl-glfw/window.html#stencil-bits) #x00021006
* [+accum-red-bits+](https://hectarea1996.github.io/cl-glfw/window.html#accum-red-bits) #x00021007
* [+accum-green-bits+](https://hectarea1996.github.io/cl-glfw/window.html#accum-green-bits) #x00021008
* [+accum-blue-bits+](https://hectarea1996.github.io/cl-glfw/window.html#accum-blue-bits) #x00021009
* [+accum-alpha-bits+](https://hectarea1996.github.io/cl-glfw/window.html#accum-alpha-bits) #x0002100A
* [+aux-buffers+](https://hectarea1996.github.io/cl-glfw/window.html#aux-buffers) #x0002100B
* [+stereo+](https://hectarea1996.github.io/cl-glfw/window.html#stereo) #x0002100C
* [+samples+](https://hectarea1996.github.io/cl-glfw/window.html#samples) #x0002100D
* [+srgb-capable+](https://hectarea1996.github.io/cl-glfw/window.html#srgb-capable) #x0002100E
* [+refresh-rate+](https://hectarea1996.github.io/cl-glfw/window.html#refresh-rate) #x0002100F
* [+doublebuffer+](https://hectarea1996.github.io/cl-glfw/window.html#doublebuffer) #x00021010
* [+client-api+](https://hectarea1996.github.io/cl-glfw/window.html#client-api) #x00022001
* [+context-version-major+](https://hectarea1996.github.io/cl-glfw/window.html#context-version-major) #x00022002
* [+context-version-minor+](https://hectarea1996.github.io/cl-glfw/window.html#context-version-minor) #x00022003
* [+context-revision+](https://hectarea1996.github.io/cl-glfw/window.html#revision) #x00022004
* [+context-robustness+](https://hectarea1996.github.io/cl-glfw/window.html#context-robustness) #x00022005
* [+opengl-forward-compat+](https://hectarea1996.github.io/cl-glfw/window.html#opengl-forward-compat) #x00022006
* [+opengl-debug-context+](https://hectarea1996.github.io/cl-glfw/window.html#opengl-debug-context) #x00022007
* [+opengl-profile+](https://hectarea1996.github.io/cl-glfw/window.html#opengl-profile) #x00022008
* [+context-release-behavior+](https://hectarea1996.github.io/cl-glfw/window.html#context-release-behavior) #x00022009
* [+context-no-error+](https://hectarea1996.github.io/cl-glfw/window.html#context-no-error) #x0002200A
* [+context-creation-api+](https://hectarea1996.github.io/cl-glfw/window.html#context-creation-api) #x0002200B
* **+scale-to-monitor+** #x0002200C
* **+cocoa-retina-framebuffer+** #x00023001
* **+cocoa-frame-name+** #x00023002
* **+cocoa-graphics-switching+** #x00023003
* **+x11-class-name+** #x00024001
* **+x11-instance-name+** #x00024002

## Structs

* [image](https://hectarea1996.github.io/cl-glfw/window.html#image): Image data.

## Functions

* [default-window-hints](https://hectarea1996.github.io/cl-glfw/window.html#default-window-hints): Resets all window hints to their default values.
* [window-hint](https://hectarea1996.github.io/cl-glfw/window.html#window-hint): Sets the specified window hint to the desired value.
* [window-hint-string](https://hectarea1996.github.io/cl-glfw/window.html#window-hint-string): Sets the specified window hint to the desired value.
* [create-window](https://hectarea1996.github.io/cl-glfw/window.html#create-window): Creates a window and its associated context.
* [destroy-window](https://hectarea1996.github.io/cl-glfw/window.html#destroy-window): Destroys the specified window and its context.
* [window-should-close](https://hectarea1996.github.io/cl-glfw/window.html#window-should-close): Checks the close flag of the specified window.
* [set-window-should-close](https://hectarea1996.github.io/cl-glfw/window.html#set-window-should-close): Sets the close flag of the specified window.
* [set-window-title](https://hectarea1996.github.io/cl-glfw/window.html#set-window-title): Sets the title of the specified window.
* [set-window-icon](https://hectarea1996.github.io/cl-glfw/window.html#set-window-icon): Sets the icon for the specified window.
* [get-window-pos](https://hectarea1996.github.io/cl-glfw/window.html#get-window-pos): Retrieves the position of the content area of the specified window.
* [set-window-pos](https://hectarea1996.github.io/cl-glfw/window.html#set-window-pos): Sets the position of the content area of the specified window.
* [get-window-size](https://hectarea1996.github.io/cl-glfw/window.html#get-window-size): Retrieves the size of the content area of the specified window.
* [set-window-size-limits](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size-limits): Sets the size limits of the specified window.
* [set-window-aspect-ratio](https://hectarea1996.github.io/cl-glfw/window.html#set-window-aspect-ratio): Sets the aspect ratio of the specified window.
* [set-window-size](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size): Sets the size of the content area of the specified window.
* [get-framebuffer-size](https://hectarea1996.github.io/cl-glfw/window.html#get-framebuffer-size): Retrieves the size of the framebuffer of the specified window.
* [get-window-frame-size](https://hectarea1996.github.io/cl-glfw/window.html#get-window-frame-size): Retrieves the size of the frame of the window.
* [get-window-content-scale](https://hectarea1996.github.io/cl-glfw/window.html#get-window-content-scale): Retrieves the content scale for the specified window.
* [get-window-opacity](https://hectarea1996.github.io/cl-glfw/window.html#get-window-opacity): Returns the opacity of the whole window.
* [set-window-opacity](https://hectarea1996.github.io/cl-glfw/window.html#set-window-opacity): Sets the opacity of the whole window.
* [iconify-window](https://hectarea1996.github.io/cl-glfw/window.html#iconify-window): Iconifies the specified window.
* [restore-window](https://hectarea1996.github.io/cl-glfw/window.html#restore-window): Restores the specified window.
* [maximize-window](https://hectarea1996.github.io/cl-glfw/window.html#maximize-window): Maximizes the specified window.
* [show-window](https://hectarea1996.github.io/cl-glfw/window.html#show-window): Makes the specified window visible.
* [hide-window](https://hectarea1996.github.io/cl-glfw/window.html#hide-window): Hides the specified window.
* [focus-window](https://hectarea1996.github.io/cl-glfw/window.html#focus-window): Brings the specified window to front and sets input focus.
* [request-window-attention](https://hectarea1996.github.io/cl-glfw/window.html#request-window-attention): Requests user attention to the specified window.
* [get-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#get-window-monitor): Returns the monitor that the window uses for full screen mode. 
* [set-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#set-window-monitor): Sets the mode, monitor, video mode and placement of a window.
* [get-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#get-window-attrib): Returns an attribute of the specified window.
* [set-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#set-window-attrib): Sets an attribute of the specified window.
* [set-window-user-data](https://hectarea1996.github.io/cl-glfw/window.html#set-window-user-data): Sets the user pointer of the specified window.
* [get-window-user-data](https://hectarea1996.github.io/cl-glfw/window.html#get-window-user-data): Returns the user pointer of the specified window.
* [set-window-pos-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-pos-callback): Sets the position callback for the specified window.
* [set-window-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size-callback): Sets the size callback for the specified window. 
* [set-window-close-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-close-callback): Sets the close callback for the specified window.
* [set-window-refresh-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-refresh-callback): Sets the refresh callback for the specified window.
* [set-window-focus-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-focus-callback): Sets the focus callback for the specified window.
* [set-window-iconify-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-iconify-callback): Sets the iconify callback for the specified window.
* [set-window-maximize-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-maximize-callback): Sets the maximize callback for the specified window. 
* [set-framebuffer-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-framebuffer-size-callback): Sets the framebuffer resize callback for the specified window. 
* [set-window-content-scale-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-content-scale-callback): Sets the window content scale callback for the specified window.
* [poll-events](https://hectarea1996.github.io/cl-glfw/window.html#poll-events): Processes all pending events. 
* [wait-events](https://hectarea1996.github.io/cl-glfw/window.html#wait-events): Waits until events are queued and processes them.
* [wait-events-timeout](https://hectarea1996.github.io/cl-glfw/window.html#wait-events-timeout): Waits with timeout until events are queued and processes them.
* [post-empty-event](https://hectarea1996.github.io/cl-glfw/window.html#post-empty-event): Posts an empty event to the event queue.
* [swap-buffers](https://hectarea1996.github.io/cl-glfw/window.html#swap-buffers): Swaps the front and back buffers of the specified window. 

## Macros

## Constant documentation

### +focused+

```
(defconstant +focused+ #x00020001)
```

Input focus [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) or [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +iconified+

```
(defconstant +iconified+ #x00020002)
```

Window iconification [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +resizable+

```
(defconstant +resizable+ #x00020003)
```

Window resize-ability [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +visible+

```
(defconstant +visible+ #x00020004)
```

Window visibily [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +decorated+

```
(defconstant +decorated+ #x00020005)
```

Window decoration [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +auto-iconify+

```
(defconstant +auto-iconify+ #x00020006)
```

Window auto-iconification [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +floating+

```
(defconstant +floating+ #x00020007)
```

Window decoration [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +maximized+

```
(defconstant +maximized+ #x00020008)
```

Window maximization [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +center-cursor+

```
(defconstant +center-cursor+ #x00020009)
```

Cursor centering [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint).

### +transparent-framebuffer+

```
(defconstant +transparent-framebuffer+ #x0002000A)
```

Window framebuffer transparency [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) and [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +hovered+

```
(defconstant +hovered+ #x0002000B)
```

Mouse cursor hover [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +focus-on-show+

```
(defconstant +focus-on-show+ #x0002000C)
```

Input focus [window hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) or [window attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_attrib).

### +red-bits+

```
(defconstant +red-bits+ #x00021001)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_RED_BITS).

### +green-bits+

```
(defconstant +green-bits+ #x00021002)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_GREEN_BITS).

### +blue-bits+

```
(defconstant +blue-bits+ #x00021003)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_BLUE_BITS).

### +alpha-bits+

```
(defconstant +alpha-bits+ #x00021004)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_ALPHA_BITS).

### +depth-bits+

```
(defconstant +depth-bits+ #x00021005)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_DEPTH_BITS).

### +stencil-bits+

```
(defconstant +stencil-bits+ #x00021006)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_STENCIL_BITS).

### +accum-red-bits+

```
(defconstant +accum-red-bits+ #x00021007)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_ACCUM_RED_BITS).

### +accum-green-bits+

```
(defconstant +accum-green-bits+ #x00021008)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_ACCUM_GREEN_BITS).

### +accum-blue-bits+

```
(defconstant +accum-blue-bits+ #x00021009)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_ACCUM_BLUE_BITS).

### +accum-alpha-bits+

```
(defconstant +accum-alpha-bits+ #x0002100A)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_ACCUM_ALPHA_BITS).

### +aux-buffers+

```
(defconstant +aux-buffers+ #x0002100B)
```

Framebuffer auxiliary buffer [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_AUX_BUFFERS).

### +stereo+

```
(defconstant +stereo+ #x0002100C)
```

OpenGL stereoscopic rendering [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_STEREO).

### +samples+

```
(defconstant +samples+ #x0002100D)
```

Framebuffer MSAA samples [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_SAMPLES).

### +srgb-capable+

```
(defconstant +srgb-capable+ #x0002100E)
```

Framebuffer sRGB [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_SRGB_CAPABLE).

### +refresh-rate+

```
(defconstant +refresh-rate+ #x0002100F)
```

Framebuffer bit depth [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_REFRESH_RATE).

### +doublebuffer+

```
(defconstant +doublebuffer+ #x00021010)
```

Framebuffer double buffering [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_DOUBLEBUFFER).

### +client-api+

```
(defconstant +client-api+ #x00022001)
```

Context client API [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CLIENT_API_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CLIENT_API_attrib).

### +context-version-major+

```
(defconstant +context-version-major+ #x00022002)
```

Context client API major version [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_VERSION_MAJOR_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_VERSION_MAJOR_attrib).

### +context-version-minor+

```
(defconstant +context-version-minor+ #x00022003)
```

Context client API minor version [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_VERSION_MINOR_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_VERSION_MINOR_attrib).

### +context-revision+

```
(defconstant +context-revision+ #x00022004)
```

Context client API revision number [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_REVISION_attrib).

### +context-robustness+

```
(defconstant +context-robustness+ #x00022005)
```

Context client API revision number [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_ROBUSTNESS_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_ROBUSTNESS_attrib).

### +opengl-forward-compat+

```
(defconstant +opengl-forward-compat+ #x00022006)
```

OpenGL forward-compatibility [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_FORWARD_COMPAT_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_FORWARD_COMPAT_attrib).

### +opengl-debug-context+

```
(defconstant +opengl-debug-context+ #x00022007)
```

Debug mode context [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_DEBUG_CONTEXT_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_DEBUG_CONTEXT_attrib).

### +opengl-profile+

```
(defconstant +opengl-profile+ #x00022008)
```

OpenGL profile [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_PROFILE_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_PROFILE_attrib).

### +context-release-behavior+

```
(defconstant +context-release-behavior+ #x00022009)
```

Context flush-on-release [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_RELEASE_BEHAVIOR_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_RELEASE_BEHAVIOR_attrib).

### +context-no-error+

```
(defconstant +context-no-error+ #x0002200A)
```

Context error suppression [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_NO_ERROR_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_NO_ERROR_attrib).

### +context-creation-api+

```
(defconstant +context-creation-api+ #x0002200B)
```

Context creation API [hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_CREATION_API_hint) and [attribute](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CONTEXT_CREATION_API_attrib).

## Struct documentation

### image

```
(defstruct image
    width
    height
    pixels)
```

This describes a single 2D image. See the documentation for each related function what the expected pixel format is.

* *Fields*:
  * **width**: The width, in pixels, of this image.
  * **height**: The height, in pixels, of this image.
  * **pixels**: The pixel data of this image, arranged left-to-right, top-to-bottom.
* *See also*: [Custom cursor creation](https://www.glfw.org/docs/latest/input_guide.html#cursor_custom), [Window icon](https://www.glfw.org/docs/latest/window_guide.html#window_icon).

## Function documentation

### default-window-hints

```
(default-window-hints)
```

This function resets all window hints to their [default values](https://www.glfw.org/docs/latest/window_guide.html#window_hints_values).

* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window creation hints](https://www.glfw.org/docs/latest/window_guide.html#window_hints), [window-hint](https://hectarea1996.github.io/cl-glfw/window.html#window-hint), [window-hint-string](https://hectarea1996.github.io/cl-glfw/window.html#window-hint-string).

### window-hint

```
(window-hint hint value)
```

This function sets hints for the next call to [create-window](https://hectarea1996.github.io/cl-glfw/window.html#create-window). The hints, once set, retain their values until changed by a call to this function or [default-window-hints](https://hectarea1996.github.io/cl-glfw/window.html#default-window-hints), or until the library is terminated.

Only integer value hints can be set with this function. String value hints are set with [window-hint-string](https://hectarea1996.github.io/cl-glfw/window.html#window-hint-string).

This function does not check whether the specified hint values are valid. If you set hints to invalid values this will instead be reported by the next call to [create-window](https://hectarea1996.github.io/cl-glfw/window.html#create-window).

Some hints are platform specific. These may be set on any platform but they will only affect their specific platform. Other platforms will ignore them. Setting these hints requires no platform specific headers or functions.

* *Parameters*:
  * **hint**: The [window hint](https://www.glfw.org/docs/latest/window_guide.html#window_hints) to set.
  * **value**: The new value of the window hint.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), and [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window creation hints](https://www.glfw.org/docs/latest/window_guide.html#window_hints), [window-hint-string](https://hectarea1996.github.io/cl-glfw/window.html#window-hint-string), [default-window-hints](https://hectarea1996.github.io/cl-glfw/window.html#default-window-hints).

### window-hint-string

This function sets hints for the next call to [create-window](https://hectarea1996.github.io/cl-glfw/window.html#create-window). The hints, once set, retain their values until changed by a call to this function or [default-window-hints](https://hectarea1996.github.io/cl-glfw/window.html#default-window-hints), or until the library is terminated.

Only string type hints can be set with this function. Integer value hints are set with [window-hint](https://hectarea1996.github.io/cl-glfw/window.html#window-hint).

This function does not check whether the specified hint values are valid. If you set hints to invalid values this will instead be reported by the next call to [create-window](https://hectarea1996.github.io/cl-glfw/window.html#create-window).

Some hints are platform specific. These may be set on any platform but they will only affect their specific platform. Other platforms will ignore them. Setting these hints requires no platform specific headers or functions.

* *Parameters*:
  * **hint**: The [window hint](https://www.glfw.org/docs/latest/window_guide.html#window_hints) to set.
  * **value**: The new value of the window hint.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), and [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window creation hints](https://www.glfw.org/docs/latest/window_guide.html#window_hints), [window-hint](https://hectarea1996.github.io/cl-glfw/window.html#window-hint), [default-window-hints](https://hectarea1996.github.io/cl-glfw/window.html#default-window-hints).

### create-window

```
(create-window width height title monitor share) => window
```

This function creates a window and its associated OpenGL or OpenGL ES context. Most of the options controlling how the window and its context should be created are specified with [window hints](https://www.glfw.org/docs/latest/window_guide.html#window_hints).

Successful creation does not change which context is current. Before you can use the newly created context, you need to [make it current](https://www.glfw.org/docs/latest/context_guide.html#context_current). For information about the `share` parameter, see [Context object sharing](https://www.glfw.org/docs/latest/context_guide.html#context_sharing).

The created window, framebuffer and context may differ from what you requested, as not all parameters and hints are [hard constraints](https://www.glfw.org/docs/latest/window_guide.html#window_hints_hard). This includes the size of the window, especially for full screen windows. To query the actual attributes of the created window, framebuffer and context, see [get-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#get-window-attrib), [get-window-size](https://hectarea1996.github.io/cl-glfw/window.html#get-window-size) and [get-framebuffer-size](https://hectarea1996.github.io/cl-glfw/window.html#get-framebuffer-size).

To create a full screen window, you need to specify the monitor the window will cover. If no monitor is specified, the window will be windowed mode. Unless you have a way for the user to choose a specific monitor, it is recommended that you pick the primary monitor. For more information on how to query connected monitors, see [Retrieving monitors](https://www.glfw.org/docs/latest/monitor_guide.html#monitor_monitors).

For full screen windows, the specified size becomes the resolution of the window's *desired video mode*. As long as a full screen window is not iconified, the supported video mode most closely matching the desired video mode is set for the specified monitor. For more information about full screen windows, including the creation of so called *windowed full screen* or *borderless full screen* windows, see ["Windowed full screen" windows](https://www.glfw.org/docs/latest/window_guide.html#window_windowed_full_screen).

Once you have created the window, you can switch it between windowed and full screen mode with [set-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#set-window-monitor). This will not affect its OpenGL or OpenGL ES context.

By default, newly created windows use the placement recommended by the window system. To create the window at a specific position, make it initially invisible using the `+visible+` window hint, set its [position](https://www.glfw.org/docs/latest/window_guide.html#window_pos) and then [show](https://www.glfw.org/docs/latest/window_guide.html#window_hide) it.

As long as at least one full screen window is not iconified, the screensaver is prohibited from starting.

Window systems put limits on window sizes. Very large or very small window dimensions may be overridden by the window system on creation. Check the actual [size](https://www.glfw.org/docs/latest/window_guide.html#window_size) after creation.

The [swap interval](https://www.glfw.org/docs/latest/window_guide.html#buffer_swap) is not set during window creation and the initial value may vary depending on driver settings and defaults.

* *Parameters*:
  * **width**: The desired width, in screen coordinates, of the window. This must be greater than zero.
  * **height**: The desired height, in screen coordinates, of the window. This must be greater than zero.
  * **title**: The initial, UTF-8 encoded window title.
  * **monitor**: The monitor to use for full screen mode, or `nil` for windowed mode.
  * **share**: 	The window whose context to share resources with, or `nil` to not share resources.
* *Returns*:
  * **window**: The handle of the created window, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum), [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value), [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) and [+version-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#version-unavailable).
* *Remarks*:
  * **Windows**: Window creation will fail if the Microsoft GDI software OpenGL implementation is the only one available.
  * **Windows**: If the executable has an icon resource named `GLFW_ICON`, it will be set as the initial icon for the window. If no such icon is present, the `IDI_APPLICATION` icon will be used instead. To set a different icon, see [set-window-icon](https://hectarea1996.github.io/cl-glfw/window.html#set-window-icon).
  * **Windows**: The context to share resources with must not be current on any other thread.
  * **macOS**: The OS only supports forward-compatible core profile contexts for OpenGL versions 3.2 and later. Before creating an OpenGL context of version 3.2 or later you must set the [+opengl-forward-compat+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_FORWARD_COMPAT_hint) and [+opengl-profile+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_OPENGL_PROFILE_hint) hints accordingly. OpenGL 3.0 and 3.1 contexts are not supported at all on macOS.
  * **macOS**: The GLFW window has no icon, as it is not a document window, but the dock icon will be the same as the application bundle's icon. For more information on bundles, see the [Bundle Programming Guide](https://developer.apple.com/library/mac/documentation/CoreFoundation/Conceptual/CFBundles/) in the Mac Developer Library.
  * **macOS**: The first time a window is created the menu bar is created. If GLFW finds a MainMenu.nib it is loaded and assumed to contain a menu bar. Otherwise a minimal menu bar is created manually with common commands like Hide, Quit and About. The About entry opens a minimal about dialog with information from the application's bundle. Menu bar creation can be disabled entirely with the [+cocoa-menubar+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#cocoa-menubar) init hint.
  * **macOS**: On OS X 10.10 and later the window frame will not be rendered at full resolution on Retina displays unless the [+cocoa-retina-framebuffer+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_COCOA_RETINA_FRAMEBUFFER_hint) hint is `+true+` and the `NSHighResolutionCapable` key is enabled in the application bundle's `Info.plist`. For more information, see [High Resolution Guidelines for OS X](https://developer.apple.com/library/mac/documentation/GraphicsAnimation/Conceptual/HighResolutionOSX/Explained/Explained.html) in the Mac Developer Library. The GLFW test and example programs use a custom `Info.plist` template for this, which can be found as `CMake/MacOSXBundleInfo.plist.in` in the source tree.
  * **macOS**: When activating frame autosaving with [+cocoa-frame-name+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_COCOA_FRAME_NAME_hint), the specified window size and position may be overridden by previously saved values.
  * **X11**: Some window managers will not respect the placement of initially hidden windows.
  * **X11**: Due to the asynchronous nature of X11, it may take a moment for a window to reach its requested state. This means you may not be able to query the final size, position or other attributes directly after window creation.
  * **X11**: The class part of the `WM_CLASS` window property will by default be set to the window title passed to this function. The instance part will use the contents of the `RESOURCE_NAME` environment variable, if present and not empty, or fall back to the window title. Set the [+x11-class-name+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_X11_CLASS_NAME_hint) and [+x11-instance-name+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_X11_INSTANCE_NAME_hint) window hints to override this.
  * **Wayland**: Compositors should implement the xdg-decoration protocol for GLFW to decorate the window properly. If this protocol isn't supported, or if the compositor prefers client-side decorations, a very simple fallback frame will be drawn using the wp_viewporter protocol. A compositor can still emit close, maximize or fullscreen events, using for instance a keybind mechanism. If neither of these protocols is supported, the window won't be decorated.
  * **Wayland**: A full screen window will not attempt to change the mode, no matter what the requested size or refresh rate.
  * **Wayland**: Screensaver inhibition requires the idle-inhibit protocol to be implemented in the user's compositor.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window creation](https://www.glfw.org/docs/latest/window_guide.html#window_creation), [destroy-window](https://hectarea1996.github.io/cl-glfw/window.html#destroy-window).

### destroy-window

```
(destroy-window window)
```

This function destroys the specified window and its context. On calling this function, no further callbacks will be called for that window.

If the context of the specified window is current on the main thread, it is detached before being destroyed.

* *Parameters*:
  * **window**: The window to destroy.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).

> **Note**: The context of the specified window must not be current on any other thread when this function is called.

* *Reentrancy*: This function must not be called from a callback.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window creation](https://www.glfw.org/docs/latest/window_guide.html#window_creation), [create-window](https://hectarea1996.github.io/cl-glfw/window.html#create-window).

### window-should-close

```
(window-should-close window) => should-close
```

This function returns the value of the close flag of the specified window.

* *Parameters*:
  * **window**: The window to query.
* *Returns*: 
  * **should-close**: The value of the close flag.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [Window closing and close flag](https://www.glfw.org/docs/latest/window_guide.html#window_close).

### set-window-should-close

```
(set-window-should-close window value)
```

This function sets the value of the close flag of the specified window. This can be used to override the user's attempt to close the window, or to signal that it should be closed.

* *Parameters*:
  * **window**: The window whose flag to change.
  * **value**: The new value.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [Window closing and close flag](https://www.glfw.org/docs/latest/window_guide.html#window_close).

### set-window-title

```
(set-window-title window title)
```

This function sets the window title, encoded as UTF-8, of the specified window.

* *Parameters*:
  * **window**: The window whose title to change.
  * **title**: The UTF-8 encoded window title.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **macOS**: The window title will not be updated until the next time you process events.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window title](https://www.glfw.org/docs/latest/window_guide.html#window_title).

### set-window-icon

```
(set-window-icon window images)
```

This function sets the icon of the specified window. If passed an array of candidate images, those of or closest to the sizes desired by the system are selected. If no images are specified, the window reverts to its default icon.

The pixels are 32-bit, little-endian, non-premultiplied RGBA, i.e. eight bits per channel with the red channel first. They are arranged canonically as packed sequential rows, starting from the top-left corner.

The desired image sizes varies depending on platform and system settings. The selected images will be rescaled as needed. Good sizes include 16x16, 32x32 and 48x48.

* *Parameters*:
  * **window**: The window whose icon to set.
  * **images**: The array of images to create the icon from. This is ignored if length of the array is zero.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **macOS**: The GLFW window has no icon, as it is not a document window, so this function does nothing. The dock icon will be the same as the application bundle's icon. For more information on bundles, see the [Bundle Programming Guide](https://developer.apple.com/library/mac/documentation/CoreFoundation/Conceptual/CFBundles/) in the Mac Developer Library.
  * **Wayland**: There is no existing protocol to change an icon, the window will thus inherit the one defined in the application's desktop file. This function always emits [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *See also*: [Window icon](https://www.glfw.org/docs/latest/window_guide.html#window_icon).

### get-window-pos

```
(get-window-pos window) => xpos ypos
```

This function retrieves the position, in screen coordinates, of the upper-left corner of the content area of the specified window.

If an error occurs, all returned values will be zero.

* *Parameters*:
  * **window**: The window to query.
* *Returns*:
  * **xpos**: The x-coordinate of the upper-left corner of the content area.
  * **ypos**: The y-coordinate of the upper-left corner of the content area.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: There is no way for an application to retrieve the global position of its windows, this function will always emit [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window position](https://www.glfw.org/docs/latest/window_guide.html#window_pos), [set-window-pos](https://hectarea1996.github.io/cl-glfw/window.html#set-window-pos).

### set-window-pos

```
(set-window-pos window xpos ypos)
```

This function sets the position, in screen coordinates, of the upper-left corner of the content area of the specified windowed mode window. If the window is a full screen window, this function does nothing.

**Do not use this function** to move an already visible window unless you have very good reasons for doing so, as it will confuse and annoy the user.

The window manager may put limits on what positions are allowed. GLFW cannot and should not override these limits.

* *Parameters*:
  * **window**: The window to query.
  * **xpos**: The x-coordinate of the upper-left corner of the content area.
  * **ypos**: The y-coordinate of the upper-left corner of the content area.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: There is no way for an application to set the global position of its windows, this function will always emit [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window position](https://www.glfw.org/docs/latest/window_guide.html#window_pos), [get-window-pos](https://hectarea1996.github.io/cl-glfw/window.html#get-window-pos).

### get-window-size

```
(get-window-size window) => width height
```

This function retrieves the size, in screen coordinates, of the content area of the specified window. If you wish to retrieve the size of the framebuffer of the window in pixels, see [get-framebuffer-size](https://hectarea1996.github.io/cl-glfw/window.html#get-framebuffer-size).

If an error occurs, all returned values will be zero.

* *Parameters*:
  * **window**: The window whose size to retrieve.
* *Returns*:
  * **windth**: The width, in screen coordinates, of the content area.
  * **height**: The height, in screen coordinates, of the content area.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window size](https://www.glfw.org/docs/latest/window_guide.html#window_size), [set-window-size](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size).

### set-window-size-limits

```
(set-window-size-limits window minwidth minheight maxwidth maxheight)
```

This function sets the size limits of the content area of the specified window. If the window is full screen, the size limits only take effect once it is made windowed. If the window is not resizable, this function does nothing.

The size limits are applied immediately to a windowed mode window and may cause it to be resized.

The maximum dimensions must be greater than or equal to the minimum dimensions and all must be greater than or equal to zero.

* *Parameters*:
  * **window**: The window to set limits for.
  * **minwidth**: The minimum width, in screen coordinates, of the content area, or `+dont-care+`.
  * **minheight**: The minimum height, in screen coordinates, of the content area, or `+dont-care+`.
  * **maxwidth**: The maximum width, in screen coordinates, of the content area, or `+dont-care+`.
  * **maxheight**: The maximum height, in screen coordinates, of the content area, or `+dont-care+`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: If you set size limits and an aspect ratio that conflict, the results are undefined.
  * **Wayland**: The size limits will not be applied until the window is actually resized, either by the user or by the compositor.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window size limits](https://www.glfw.org/docs/latest/window_guide.html#window_sizelimits), [set-window-aspect-ratio](https://hectarea1996.github.io/cl-glfw/window.html#set-window-aspect-ratio).

### set-window-aspect-ratio

```
(set-window-aspect-ratio window numer denom)
```

This function sets the required aspect ratio of the content area of the specified window. If the window is full screen, the aspect ratio only takes effect once it is made windowed. If the window is not resizable, this function does nothing.

The aspect ratio is specified as a numerator and a denominator and both values must be greater than zero. For example, the common 16:9 aspect ratio is specified as 16 and 9, respectively.

If the numerator and denominator is set to GLFW_DONT_CARE then the aspect ratio limit is disabled.

The aspect ratio is applied immediately to a windowed mode window and may cause it to be resized.

* *Parameters*:
  * **window**: The window to set limits for.
  * **numer**: The numerator of the desired aspect ratio, or `+dont-care+`.
  * **denom**: The denominator of the desired aspect ratio, or `+dont-care+`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: If you set size limits and an aspect ratio that conflict, the results are undefined.
  * **Wayland**: The aspect ratio will not be applied until the window is actually resized, either by the user or by the compositor.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window size limits](https://www.glfw.org/docs/latest/window_guide.html#window_sizelimits), [set-window-size-limits](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size-limits).

### set-window-size

```
(set-window-size window width height)
```

This function sets the size, in screen coordinates, of the content area of the specified window.

For full screen windows, this function updates the resolution of its desired video mode and switches to the video mode closest to it, without affecting the window's context. As the context is unaffected, the bit depths of the framebuffer remain unchanged.

If you wish to update the refresh rate of the desired video mode in addition to its resolution, see [set-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#set-window-monitor).

The window manager may put limits on what sizes are allowed. GLFW cannot and should not override these limits.

* *Parameters*:
  * **window**: The window to resize.
  * **width**: The desired width, in screen coordinates, of the window content area.
  * **height**: The desired height, in screen coordinates, of the window content area.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: A full screen window will not attempt to change the mode, no matter what the requested size.
* *See also*: [Window size](https://www.glfw.org/docs/latest/window_guide.html#window_size), [get-window-size](https://hectarea1996.github.io/cl-glfw/window.html#get-window-size), [set-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#set-window-monitor).

### get-framebuffer-size

```
(get-framebuffer-size window) => width height
```

This function retrieves the size, in pixels, of the framebuffer of the specified window. If you wish to retrieve the size of the window in screen coordinates, see [get-window-size](https://hectarea1996.github.io/cl-glfw/window.html#get-window-size).

If an error occurs, all returned values will be zero.

* *Parameters*:
  * **window**: The window whose framebuffer to query.
* *Returns*:
  * **width**: The width, in pixels, of the framebuffer.
  * **height**: The height, in pixels, of the framebuffer.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Framebuffer size](https://www.glfw.org/docs/latest/window_guide.html#window_fbsize), [set-framebuffer-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-framebuffer-size-callback).

### get-window-frame-size

```
(get-window-frame-size window) => left top right bottom
```

This function retrieves the size, in screen coordinates, of each edge of the frame of the specified window. This size includes the title bar, if the window has one. The size of the frame may vary depending on the [window-related hints](https://www.glfw.org/docs/latest/window_guide.html#window_hints_wnd) used to create it.

Because this function retrieves the size of each window frame edge and not the offset along a particular coordinate axis, the retrieved values will always be zero or positive.

If an error occurs, all returned values will be zero.

* *Parameters*:
  * **window**: The window whose frame size to query.
* *Returns*:
  * **left**: The size, in screen coordinates, of the left edge of the window frame.
  * **top**: The size, in screen coordinates, of the top edge of the window frame.
  * **right**: The size, in screen coordinates, of the fight edge of the window frame.
  * **bottom**: The size, in screen coordinates, of the bottom edge of the window frame.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window size](https://www.glfw.org/docs/latest/window_guide.html#window_size).

### get-window-content-scale

```
(get-window-content-scale window) => xscale yscale
```

This function retrieves the content scale for the specified window. The content scale is the ratio between the current DPI and the platform's default DPI. This is especially important for text and any UI elements. If the pixel dimensions of your UI scaled by this look appropriate on your machine then it should appear at a reasonable size on other machines regardless of their DPI and scaling settings. This relies on the system DPI and scaling settings being somewhat correct.

On systems where each monitors can have its own content scale, the window content scale will depend on which monitor the system considers the window to be on.

* *Parameters*:
  * **window**: The window to query.
* *Returns*:
  * **xscale**: The x-axis content scale.
  * **yscale**: The y-axis content scale.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window content scale](https://www.glfw.org/docs/latest/window_guide.html#window_scale), [set-window-content-scale-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-content-scale-callback), [get-monitor-content-scale](https://hectarea1996.github.io/cl-glfw/window.html#get-monitor-content-scale).

### get-window-opacity

```
(get-window-opacity window) => opacity
```

This function returns the opacity of the window, including any decorations.

The opacity (or alpha) value is a positive finite number between zero and one, where zero is fully transparent and one is fully opaque. If the system does not support whole window transparency, this function always returns one.

The initial opacity value for newly created windows is one.

* *Parameters*:
  * **window**: The window to query.
* *Returns*: The opacity value of the specified window.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window transparency](https://www.glfw.org/docs/latest/window_guide.html#window_transparency), [set-window-opacity](https://hectarea1996.github.io/cl-glfw/window.html#set-window-opacity).

### set-window-opacity

```
(set-window-opacity window opacity)
```

This function sets the opacity of the window, including any decorations.

The opacity (or alpha) value is a positive finite number between zero and one, where zero is fully transparent and one is fully opaque.

The initial opacity value for newly created windows is one.

A window created with framebuffer transparency may not use whole window transparency. The results of doing this are undefined.

* *Parameters*:
  * **window**: The window to set the opacity for.
  * **opacity**: The desired opacity of the specified window.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window transparency](https://www.glfw.org/docs/latest/window_guide.html#window_transparency), [get-window-opacity](https://hectarea1996.github.io/cl-glfw/window.html#get-window-opacity).



## Macro documentation