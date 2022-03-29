
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

* [def-window-pos-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-pos-callback): Defines a window position callback.
* [def-window-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-size-callback): Defines a window size callback.
* [def-window-close-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-close-callback): Defines a window close callback.
* [def-window-refresh-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-refresh-callback): Defines a window refresh callback.
* [def-window-focus-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-focus-callback): Defines a window focus callback.
* [def-window-iconify-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-iconify-callback): Defines a window iconification callback.
* [def-window-maximize-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-maximize-callback): Defines a window maximization callback.
* [def-framebuffer-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-framebuffer-size-callback): Defines a window framebuffer size callback.
* [def-window-content-scale-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-content-scale-callback): Defines a window content scale callback.

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

### iconify-window

```
(iconify-window window)
```

This function iconifies (minimizes) the specified window if it was previously restored. If the window is already iconified, this function does nothing.

If the specified window is a full screen window, the original monitor resolution is restored until the window is restored.

* *Parameters*:
  * **window**: The window to iconify.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: There is no concept of iconification in wl_shell, this function will emit [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error) when using this deprecated protocol.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window iconification](https://www.glfw.org/docs/latest/window_guide.html#window_iconify), [restore-window](https://hectarea1996.github.io/cl-glfw/window.html#restore-window), [maximize-window](https://hectarea1996.github.io/cl-glfw/window.html#maximize-window).

### restore-window

```
(restore-window window)
```

This function restores the specified window if it was previously iconified (minimized) or maximized. If the window is already restored, this function does nothing.

If the specified window is a full screen window, the resolution chosen for the window is restored on the selected monitor.

* *Parameters*:
  * **window**: The window to restore.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window iconification](https://www.glfw.org/docs/latest/window_guide.html#window_iconify), [iconify-window](https://hectarea1996.github.io/cl-glfw/window.html#restore-window), [maximize-window](https://hectarea1996.github.io/cl-glfw/window.html#maximize-window).

### maximize-window

```
(maximize-window window)
```

This function maximizes the specified window if it was previously not maximized. If the window is already maximized, this function does nothing.

If the specified window is a full screen window, this function does nothing.

* *Parameters*:
  * **window**: The window to maximize.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window iconification](https://www.glfw.org/docs/latest/window_guide.html#window_iconify), [iconify-window](https://hectarea1996.github.io/cl-glfw/window.html#restore-window), [restore-window](https://hectarea1996.github.io/cl-glfw/window.html#maximize-window).

### show-window

```
(show-window window)
```

This function makes the specified window visible if it was previously hidden. If the window is already visible or is in full screen mode, this function does nothing.

By default, windowed mode windows are focused when shown Set the [+focus-on-show+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUS_ON_SHOW_hint) window hint to change this behavior for all newly created windows, or change the behavior for an existing window with [set-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#set-window-attrib).

* *Parameters*:
  * **window**: The window to make visible.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window visibility](https://www.glfw.org/docs/latest/window_guide.html#window_hide), [hide-window](https://hectarea1996.github.io/cl-glfw/window.html#hide-window).

### hide-window

```
(hide-window window)
```

This function hides the specified window if it was previously visible. If the window is already hidden or is in full screen mode, this function does nothing.

* *Parameters*:
  * **window**: The window to hide.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window visibility](https://www.glfw.org/docs/latest/window_guide.html#window_hide), [show-window](https://hectarea1996.github.io/cl-glfw/window.html#show-window).

### focus-window

```
(focus-window window)
```

This function brings the specified window to front and sets input focus. The window should already be visible and not iconified.

By default, both windowed and full screen mode windows are focused when initially created. Set the [+focused+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUSED_hint) to disable this behavior.

Also by default, windowed mode windows are focused when shown with [show-window](https://hectarea1996.github.io/cl-glfw/window.html#show-window). Set the [+focus-on-show+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUS_ON_SHOW_hint) to disable this behavior.

**Do not use this function** to steal focus from other applications unless you are certain that is what the user wants. Focus stealing can be extremely disruptive.

For a less disruptive way of getting the user's attention, see [attention requests](https://www.glfw.org/docs/latest/window_guide.html#window_attention).

* *Parameters*:
  * **window**: The window to give input focus.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: 
  * **Wayland**: It is not possible for an application to bring its windows to front, this function will always emit [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).

* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window input focus](https://www.glfw.org/docs/latest/window_guide.html#window_focus), [Window attention request](https://www.glfw.org/docs/latest/window_guide.html#window_attention).

### request-window-attention

This function requests user attention to the specified window. On platforms where this is not supported, attention is requested to the application as a whole.

Once the user has given attention, usually by focusing the window or application, the system will end the request automatically.

* *Parameters*:
  * **window**: The window to request attention to.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: 
  * **macOS**: Attention is requested to the application as a whole, not the specific window.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window attention request](https://www.glfw.org/docs/latest/window_guide.html#window_attention).

### get-window-monitor

```
(get-window-monitor window) => monitor
```

This function returns the handle of the monitor that the specified window is in full screen on.

* *Parameters*:
  * **window**: The window to query.
* *Returns*:
  * **monitor**: The monitor, or `nil` if the window is in windowed mode or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window monitor](https://www.glfw.org/docs/latest/window_guide.html#window_monitor), [set-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#set-window-monitor).

### set-window-monitor

```
(set-window-monitor window monitor xpos ypos width height refreshRate)
```

This function sets the monitor that the window uses for full screen mode or, if the monitor is `nil`, makes it windowed mode.

When setting a monitor, this function updates the width, height and refresh rate of the desired video mode and switches to the video mode closest to it. The window position is ignored when setting a monitor.

When the monitor is `nil`, the position, width and height are used to place the window content area. The refresh rate is ignored when no monitor is specified.

If you only wish to update the resolution of a full screen window or the size of a windowed mode window, see [set-window-size](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size).

When a window transitions from full screen to windowed mode, this function restores any previous window settings such as whether it is decorated, floating, resizable, has size or aspect ratio limits, etc.

* *Parameters*:
  * **window**: The window whose monitor, size or video mode to set.
  * **monitor**: 	The desired monitor, or `nil` to set windowed mode.
  * **xpos**: The desired x-coordinate of the upper-left corner of the content area.
  * **ypos**: The desired y-coordinate of the upper-left corner of the content area.
  * **width**: The desired width, in screen coordinates, of the content area or video mode.
  * **height**: The desired height, in screen coordinates, of the content area or video mode.
  * **refreshRate**: The desired refresh rate, in Hz, of the video mode, or `+dont-care+`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: The OpenGL or OpenGL ES context will not be destroyed or otherwise affected by any resizing or mode switching, although you may need to update your viewport if the framebuffer size has changed.
  * **Wayland**: The desired window position is ignored, as there is no way for an application to set this property.
  * **Wayland**: Setting the window to full screen will not attempt to change the mode, no matter what the requested size or refresh rate.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window monitor](https://www.glfw.org/docs/latest/window_guide.html#window_monitor), [Full screen windows](https://www.glfw.org/docs/latest/window_guide.html#window_full_screen), [get-window-monitor](https://hectarea1996.github.io/cl-glfw/window.html#get-window-monitor), [set-window-size](https://hectarea1996.github.io/cl-glfw/window.html#set-window-size).

### get-window-attrib

```
(get-window-attrib window attrib) => value
```

This function returns the value of an attribute of the specified window or its OpenGL or OpenGL ES context.

* *Parameters*:
  * **window**: The window to query.
  * **attrib**: The [window attribute](https://www.glfw.org/docs/latest/window_guide.html#window_attribs) whose value to return.
* *Returns*:
  * **value**: The value of the attribute, or zero if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: Framebuffer related hints are not window attributes. See [Framebuffer related attributes](https://www.glfw.org/docs/latest/window_guide.html#window_attribs_fb) for more information. Zero is a valid value for many window and context related attributes so you cannot use a return value of zero as an indication of errors. However, this function should not fail as long as it is passed valid arguments and the library has been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window attributes](https://www.glfw.org/docs/latest/window_guide.html#window_attribs), [set-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#set-window-attrib).

### set-window-attrib

```
(set-window-attrib window attrib value)
```

This function sets the value of an attribute of the specified window.

The supported attributes are [+decorated+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_DECORATED_attrib), [+resizable+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_RESIZABLE_attrib), [+floating+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FLOATING_attrib), [+auto-iconify+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_AUTO_ICONIFY_attrib) and [+focus-on-show+](https://www.glfw.org/docs/latest/window_guide.html#GLFW_FOCUS_ON_SHOW_attrib).

Some of these attributes are ignored for full screen windows. The new value will take effect if the window is later made windowed.

Some of these attributes are ignored for windowed mode windows. The new value will take effect if the window is later made full screen.

* *Parameters*:
  * **window**: The window to set the attribute for.
  * **attrib**: A supported window attribute.
  * **value**: `+true+` or `+false+`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum), [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: Calling [get-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#get-window-attrib) will always return the latest value, even if that value is ignored by the current mode of the window.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window attributes](https://www.glfw.org/docs/latest/window_guide.html#window_attribs), [get-window-attrib](https://hectarea1996.github.io/cl-glfw/window.html#get-window-attrib).

### set-window-user-data

```
(set-window-user-data window data)
```

This function sets the user-defined pointer of the specified window. The current value is retained until the window is destroyed. The initial value is `nil`.

* *Parameters*:
  * **window**: The window whose data to set.
  * **data**: The new value.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [User data](https://www.glfw.org/docs/latest/window_guide.html#window_userptr), [get-window-user-data](https://hectarea1996.github.io/cl-glfw/window.html#get-window-user-data).

### get-window-user-data

```
(get-window-user-data window) => data
```

This function returns the current value of the user-defined pointer of the specified window. The initial value is `nil`.

* *Parameters*:
  * **window**: The window whose data to return.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [User data](https://www.glfw.org/docs/latest/window_guide.html#window_userptr), [set-window-user-data](https://hectarea1996.github.io/cl-glfw/window.html#set-window-user-data).

### set-window-pos-callback

```
(set-window-pos-callback window callback) => old-callback
```

This function sets the position callback of the specified window, which is called when the window is moved. The callback is provided with the position, in screen coordinates, of the upper-left corner of the content area of the window.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Remarks*:
  * **Wayland**: This callback will never be called, as there is no way for an application to know its global position.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window position](https://www.glfw.org/docs/latest/window_guide.html#window_pos), [def-window-pos-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-pos-callback).

### set-window-size-callback

```
(set-window-size-callback window callback) => old-callback
```

This function sets the size callback of the specified window, which is called when the window is resized. The callback is provided with the size, in screen coordinates, of the content area of the window.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window size](https://www.glfw.org/docs/latest/window_guide.html#window_size), [def-window-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-size-callback).

### set-window-close-callback

```
(set-window-close-callback window callback) => old-callback
```

This function sets the close callback of the specified window, which is called when the user attempts to close the window, for example by clicking the close widget in the title bar.

The close flag is set before this callback is called, but you can modify it at any time with [set-window-should-close](https://hectarea1996.github.io/cl-glfw/window.html#set-window-should-close).

The close callback is not triggered by [destroy-window](https://hectarea1996.github.io/cl-glfw/window.html#destroy-window).

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Remarks*:
  * **macOS**: Selecting Quit from the application menu will trigger the close callback for all windows.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window closing and close flag](https://www.glfw.org/docs/latest/window_guide.html#window_close), [def-window-close-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-close-callback).

### set-window-refresh-callback

```
(set-window-refresh-callback window callback) => old-callback
```

This function sets the refresh callback of the specified window, which is called when the content area of the window needs to be redrawn, for example if the window has been exposed after having been covered by another window.

On compositing window systems such as Aero, Compiz, Aqua or Wayland, where the window contents are saved off-screen, this callback may be called only very infrequently or never at all.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window damage and refresh](https://www.glfw.org/docs/latest/window_guide.html#window_refresh), [def-window-refresh-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-refresh-callback).

### set-window-focus-callback

```
(set-window-focus-callback window callback) => old-callback
```

This function sets the focus callback of the specified window, which is called when the window gains or loses input focus.

After the focus callback is called for a window that lost input focus, synthetic key and mouse button release events will be generated for all such that had been pressed. For more information, see [set-key-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-key-callback) and [set-mouse-button-callback](https://hectarea1996.github.io/cl-glfw/window.html#set-mouse-button-callback).

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window input focus](https://www.glfw.org/docs/latest/window_guide.html#window_focus), [def-window-focus-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-focus-callback).

### set-window-iconify-callback

```
(set-window-iconify-callback window callback) => old-callback
```

This function sets the iconification callback of the specified window, which is called when the window is iconified or restored.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Remarks*:
  * **Wayland**: The wl_shell protocol has no concept of iconification, this callback will never be called when using this deprecated protocol.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window iconification](https://www.glfw.org/docs/latest/window_guide.html#window_focus), [def-window-iconify-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-iconify-callback).

### set-window-maximize-callback

```
(set-window-maximize-callback window callback) => old-callback
```

This function sets the maximization callback of the specified window, which is called when the window is maximized or restored.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window maximization](https://www.glfw.org/docs/latest/window_guide.html#window_focus), [def-window-maximize-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-maximize-callback).

### set-framebuffer-size-callback

```
(set-framebuffer-size-callback window callback) => old-callback
```

This function sets the framebuffer resize callback of the specified window, which is called when the framebuffer of the specified window is resized.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Framebuffer size](https://www.glfw.org/docs/latest/window_guide.html#window_fbsize), [def-framebuffer-size-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-framebuffer-size-callback).

### set-window-content-scale-callback

```
(set-window-content-scale-callback window callback) => old-callback
```

This function sets the window content scale callback of the specified window, which is called when the content scale of the specified window changes.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Window content scale](https://www.glfw.org/docs/latest/window_guide.html#window_scale), [get-window-conent-scale](https://hectarea1996.github.io/cl-glfw/window.html#get-window-content-scale), [def-window-content-scale-callback](https://hectarea1996.github.io/cl-glfw/window.html#def-window-content-scale-callback).

### poll-events

```
(poll-events)
```

This function processes only those events that are already in the event queue and then returns immediately. Processing events will cause the window and input callbacks associated with those events to be called.

On some platforms, a window move, resize or menu operation will cause event processing to block. This is due to how event processing is designed on those platforms. You can use the [window refresh callback](https://www.glfw.org/docs/latest/window_guide.html#window_refresh) to redraw the contents of your window when necessary during such operations.

Do not assume that callbacks you set will only be called in response to event processing functions like this one. While it is necessary to poll for events, window systems that require GLFW to register callbacks of its own can pass events to GLFW in response to many window system function calls. GLFW will pass those events on to the application callbacks before returning.

Event processing is not required for joystick input to work.

* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Reentrancy*: This function must not be called from a callback.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Event processing](https://www.glfw.org/docs/latest/input_guide.html#events), [wait-events](https://hectarea1996.github.io/cl-glfw/window.html#wait-events), [wait-events-timeout](https://hectarea1996.github.io/cl-glfw/window.html#wait-events-timeout).

### wait-events

```
(wait-events)
```

This function puts the calling thread to sleep until at least one event is available in the event queue. Once one or more events are available, it behaves exactly like [poll-events](https://hectarea1996.github.io/cl-glfw/window.html#poll-events), i.e. the events in the queue are processed and the function then returns immediately. Processing events will cause the window and input callbacks associated with those events to be called.

Since not all events are associated with callbacks, this function may return without a callback having been called even if you are monitoring all callbacks.

On some platforms, a window move, resize or menu operation will cause event processing to block. This is due to how event processing is designed on those platforms. You can use the [window refresh callback](https://www.glfw.org/docs/latest/window_guide.html#window_refresh) to redraw the contents of your window when necessary during such operations.

Do not assume that callbacks you set will only be called in response to event processing functions like this one. While it is necessary to poll for events, window systems that require GLFW to register callbacks of its own can pass events to GLFW in response to many window system function calls. GLFW will pass those events on to the application callbacks before returning.

Event processing is not required for joystick input to work.

* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Reentrancy*: This function must not be called from a callback.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Event processing](https://www.glfw.org/docs/latest/input_guide.html#events), [poll-events](https://hectarea1996.github.io/cl-glfw/window.html#poll-events), [wait-events-timeout](https://hectarea1996.github.io/cl-glfw/window.html#wait-events-timeout).

### wait-events-timeout

```
(wait-events-timeout timeout)
```

This function puts the calling thread to sleep until at least one event is available in the event queue, or until the specified timeout is reached. If one or more events are available, it behaves exactly like [poll-events](https://hectarea1996.github.io/cl-glfw/window.html#poll-events), i.e. the events in the queue are processed and the function then returns immediately. Processing events will cause the window and input callbacks associated with those events to be called.

The timeout value must be a positive finite number.

Since not all events are associated with callbacks, this function may return without a callback having been called even if you are monitoring all callbacks.

On some platforms, a window move, resize or menu operation will cause event processing to block. This is due to how event processing is designed on those platforms. You can use the [window refresh callback](https://www.glfw.org/docs/latest/window_guide.html#window_refresh) to redraw the contents of your window when necessary during such operations.

Do not assume that callbacks you set will only be called in response to event processing functions like this one. While it is necessary to poll for events, window systems that require GLFW to register callbacks of its own can pass events to GLFW in response to many window system function calls. GLFW will pass those events on to the application callbacks before returning.

Event processing is not required for joystick input to work.

* *Parameters*:
  * **timeout**: The maximum amount of time, in seconds, to wait.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Reentrancy*: This function must not be called from a callback.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Event processing](https://www.glfw.org/docs/latest/input_guide.html#events), [poll-events](https://hectarea1996.github.io/cl-glfw/window.html#poll-events), [wait-events](https://hectarea1996.github.io/cl-glfw/window.html#wait-events).

### post-empty-event

```
(post-empty-event)
```

This function posts an empty event from the current thread to the event queue, causing [wait-events](https://hectarea1996.github.io/cl-glfw/window.html#wait-events) or [wait-events-timeout](https://hectarea1996.github.io/cl-glfw/window.html#wait-events-timeout) to return.

* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Event processing](https://www.glfw.org/docs/latest/input_guide.html#events), [wait-events](https://hectarea1996.github.io/cl-glfw/window.html#wait-events), [wait-events-timeout](https://hectarea1996.github.io/cl-glfw/window.html#wait-events-timeout).

### swap-buffers

```
(swap-buffers window)
```

This function swaps the front and back buffers of the specified window when rendering with OpenGL or OpenGL ES. If the swap interval is greater than zero, the GPU driver waits the specified number of screen updates before swapping the buffers.

The specified window must have an OpenGL or OpenGL ES context. Specifying a window without a context will generate a [+no-window-context+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-window-context) error.

This function does not apply to Vulkan. If you are rendering with Vulkan, see `vkQueuePresentKHR` instead.

* *Parameters*:
  * **window**: The window whose buffers to swap.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+no-window-context+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#no-window-context) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: 
  * **EGL**: The context of the specified window must be current on the calling thread.
* *Thread safety*: This function may be called from any thread.
* *See also*: [Buffer swapping](https://www.glfw.org/docs/latest/window_guide.html#buffer_swap), [swap-interval](https://hectarea1996.github.io/cl-glfw/context.html#swap-interval).

## Macro documentation

### def-window-pos-callback

```
(def-window-pos-callback name (window xpos ypos) &body body)
```

Defines a window position callback. A window position callback function has the following signature:

* *Parameters*:
  * **window**: The window that was moved.
  * **xpos**: The new x-coordinate, in screen coordinates, of the upper-left corner of the content area of the window.
  * **ypos**: The new y-coordinate, in screen coordinates, of the upper-left corner of the content area of the window.
* *See also*: [Window position](https://www.glfw.org/docs/latest/window_guide.html#window_pos), [set-window-pos-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-pos-callback).

### def-window-size-callback

```
(def-window-size-callback name (window width height) &body body)
```

Defines a window size callback.  A window size callback function has the following signature:

* *Parameters*:
  * **window**: The window that was resized.
  * **width**: 	The new width, in screen coordinates, of the window.
  * **height**: 	The new height, in screen coordinates, of the window.
* *See also*: [Window size](https://www.glfw.org/docs/latest/window_guide.html#window_size), [set-window-size-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-size-callback).

### def-window-close-callback

```
(def-window-close-callback name (window) &body body)
```

Defines a window close callback. A window close callback function has the following signature:

* *Parameters*:
  * **window**: The window that the user attempted to close.
* *See also*: [Window closing and close flag](https://www.glfw.org/docs/latest/window_guide.html#window_close), [set-window-close-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-close-callback).

### def-window-refresh-callback

```
(def-window-refresh-callback name (window) &body body)
```

Defines a window content refresh callback. A window content refresh callback function has the following signature:

* *Parameters*:
  * **window**: The window whose content needs to be refreshed.
* *See also*: [Window damage and refresh](https://www.glfw.org/docs/latest/window_guide.html#window_refresh), [set-window-refresh-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-refresh-callback).

### def-window-focus-callback

```
(def-window-focus-callback name (window focused) &body body)
```

Defines a window focus callback. A window focus callback function has the following signature:

* *Parameters*:
  * **window**: The window that gained or lost input focus.
  * **focused**: `t` if the window was given input focus, or `nil` if it lost it.
* *See also*: [Window input focus](https://www.glfw.org/docs/latest/window_guide.html#window_focus), [set-window-focus-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-focus-callback).

### def-window-iconify-callback

```
(def-window-iconify-callback name (window iconified) &body body)
```

Defines a window iconify callback. A window iconify callback function has the following signature:

* *Parameters*:
  * **window**: The window that was iconified or restored.
  * **iconified**: `t` if the window was iconified, or `nil` if it was restored.
* *See also*: [Window iconification](https://www.glfw.org/docs/latest/window_guide.html#window_iconify), [set-window-iconify-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-iconify-callback).

### def-window-maximize-callback

```
(def-window-maximize-callback name (window maximized) &body body)
```

Defines a window maximize callback. A window maximize callback function has the following signature:

* *Parameters*:
  * **window**: The window that was maximized or restored.
  * **maximized**: `t` if the window was maximized, or `nil` if it was restored.
* *See also*: [Window maximization](https://www.glfw.org/docs/latest/window_guide.html#window_maximize), [set-window-maximize-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-maximize-callback).

### def-framebuffer-size-callback

```
(def-framebuffer-size-callback name (window width height) &body body)
```

Defines a framebuffer size callback. A framebuffer size callback function has the following signature:

* *Parameters*:
  * **window**: The window whose framebuffer was resized.
  * **width**: The new width, in pixels, of the framebuffer.
  * **height**: The new height, in pixels, of the framebuffer.
* *See also*: [Framebuffers size](https://www.glfw.org/docs/latest/window_guide.html#window_fbsize), [set-framebuffer-size-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-framebuffer-size-callback).

### def-window-content-scale-callback

```
(def-window-content-scale-callback name (window xscale yscale) &body body)
```

Defines a window content scale callback. A window content scale callback function has the following signature:

* *Parameters*:
  * **window**: The window whose content scale changed.
  * **xscale**: The new x-axis content scale of the window.
  * **yscale**: The new y-axis content scale of the window.
* *See also*: [Window content scale](https://www.glfw.org/docs/latest/window_guide.html#window_fbsize), [set-window-content-scale-callback](https://hectarea1996.github.io/cl-glfw/context.html#set-window-content-scale-callback).