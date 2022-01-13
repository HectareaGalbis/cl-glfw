
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Input reference

## Description

This is the reference documentation for input related functions and types. For more task-oriented information, see the [Input guide](https://www.glfw.org/docs/latest/input_guide.html).

* [Constants](https://hectarea1996.github.io/cl-glfw/input.html#constants)
* [Structs](https://hectarea1996.github.io/cl-glfw/input.html#structs)
* [Functions](https://hectarea1996.github.io/cl-glfw/input.html#functions)
* [Macros](https://hectarea1996.github.io/cl-glfw/input.html#macros)

## Constants

* [+release+](https://hectarea1996.github.io/cl-glfw/input.html#release) 0
* [+press+](https://hectarea1996.github.io/cl-glfw/input.html#press) 1
* [+repeat+](https://hectarea1996.github.io/cl-glfw/input.html#repeat) 2

### Gamepad axes

See [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad) for how these are used. 

* **+gamepad-axis-left-x+** 0
* **+gamepad-axis-left-y+** 1
* **+gamepad-axis-right-x+** 2
* **+gamepad-axis-right-y+** 3
* **+gamepad-axis-left-trigger+** 4
* **+gamepad-axis-right-trigger+** 5
* **+gamepad-axis-last+** **+gamepad-axis-right-trigger+**

### Gamepad buttons

See [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad) for how these are used.

* **+gamepad-button-a+** 0
* **+gamepad-button-b+** 1
* **+gamepad-button-x+** 2
* **+gamepad-button-y+** 3
* **+gamepad-button-left-bumper+** 4
* **+gamepad-button-right-bumper+** 5
* **+gamepad-button-back+** 6
* **+gamepad-button-start+** 7
* **+gamepad-button-guide+** 8
* **+gamepad-button-left-thumb+** 9
* **+gamepad-button-right-thumb+** 10
* **+gamepad-button-dpad-up+** 11
* **+gamepad-button-dpad-right+** 12
* **+gamepad-button-dpad-down+** 13
* **+gamepad-button-dpad-left+** 14
* **+gamepad-button-last+** **+gamepad-button-dpad-left+**
* **+gamepad-button-cross+** **+gamepad-button-a+**
* **+gamepad-button-circle+** **+gamepad-button-b+**
* **+gamepad-button-square+** **+gamepad-button-x+**
* **+gamepad-button-triangle+** **+gamepad-button-y+**

### Joystick hat states

See [joystick hat input](https://www.glfw.org/docs/latest/input_guide.html#joystick_hat) for how these are used.

* **+hat-centered+** 0
* **+hat-up+** 1
* **+hat-right+** 2
* **+hat-down+** 4
* **+hat-left+** 8
* **+hat-right-up+** (logior **+hat-right+** **+hat-up+**)
* **+hat-right-down+** (logior **+hat-right+** **+hat-down+**)
* **+hat-left-up+** (logior **+hat-left+** **+hat-up+**)
* **+hat-left-down+** (logior **+hat-left+** **+hat-down+**)

### Joysticks

See [joystick input](https://www.glfw.org/docs/latest/input_guide.html#joystick) for how these are used.

* **+joystick-1+** 0
* **+joystick-2+** 1
* **+joystick-3+** 2
* **+joystick-4+** 3
* **+joystick-5+** 4
* **+joystick-6+** 5
* **+joystick-7+** 6
* **+joystick-8+** 7
* **+joystick-9+** 8
* **+joystick-10+** 9
* **+joystick-11+** 10
* **+joystick-12+** 11
* **+joystick-13+** 12
* **+joystick-14+** 13
* **+joystick-15+** 14
* **+joystick-16+** 15
* **+joystick-last+** **+joystick-16+**

### Keyboard keys

See [key input](https://www.glfw.org/docs/latest/input_guide.html#input_key) for how these are used.

These key codes are inspired by the USB HID Usage Tables v1.12 (p. 53-60), but re-arranged to map to 7-bit ASCII for printable keys (function keys are put in the 256+ range).

The naming of the key codes follow these rules:

* The US keyboard layout is used
Names of printable alpha-numeric characters are used (e.g. "A", "R", "3", etc.)
* For non-alphanumeric characters, Unicode:ish names are used (e.g. "COMMA", "LEFT_SQUARE_BRACKET", etc.). Note that some names do not correspond to the Unicode standard (usually for brevity)
* Keys that lack a clear US mapping are named "WORLD_x"
* For non-printable keys, custom names are used (e.g. "F4", "BACKSPACE", etc.)

* **+key-unknown+** -1
* **+key-space+** 32
* **+key-apostrophe+** 39 /* ' */
* **+key-comma+** 44 /* , */
* **+key-minus+** 45 /* - */
* **+key-period+** 46 /* . */
* **+key-slash+** 47 /* / */
* **+key-0+** 48
* **+key-1+** 49
* **+key-2+** 50
* **+key-3+** 51
* **+key-4+** 52
* **+key-5+** 53
* **+key-6+** 54
* **+key-7+** 55
* **+key-8+** 56
* **+key-9+** 57
* **+key-semicolon+** 59 /* ; */
* **+key-equal+** 61 /* = */
* **+key-a+** 65
* **+key-b+** 66
* **+key-c+** 67
* **+key-d+** 68
* **+key-e+** 69
* **+key-f+** 70
* **+key-g+** 71
* **+key-h+** 72
* **+key-i+** 73
* **+key-j+** 74
* **+key-k+** 75
* **+key-l+** 76
* **+key-m+** 77
* **+key-n+** 78
* **+key-o+** 79
* **+key-p+** 80
* **+key-q+** 81
* **+key-r+** 82
* **+key-s+** 83
* **+key-t+** 84
* **+key-u+** 85
* **+key-v+** 86
* **+key-w+** 87
* **+key-x+** 88
* **+key-y+** 89
* **+key-z+** 90
* **+key-left-bracket+** 91 /* [ */
* **+key-backslash+** 92 /* \ */
* **+key-right-bracket+** 93 /* ] */
* **+key-grave-accent+** 96 /* ` */
* **+key-world-1+** 161 /* non-US #1 */
* **+key-world-2+** 162 /* non-US #2 */
* **+key-escape+** 256
* **+key-enter+** 257
* **+key-tab+** 258
* **+key-backspace+** 259
* **+key-insert+** 260
* **+key-delete+** 261
* **+key-right+** 262
* **+key-left+** 263
* **+key-down+** 264
* **+key-up+** 265
* **+key-page-up+** 266
* **+key-page-down+** 267
* **+key-home+** 268
* **+key-end+** 269
* **+key-caps-lock+** 280
* **+key-scroll-lock+** 281
* **+key-num-lock+** 282
* **+key-print-screen+** 283
* **+key-pause+** 284
* **+key-f1+** 290
* **+key-f2+** 291
* **+key-f3+** 292
* **+key-f4+** 293
* **+key-f5+** 294
* **+key-f6+** 295
* **+key-f7+** 296
* **+key-f8+** 297
* **+key-f9+** 298
* **+key-f10+** 299
* **+key-f11+** 300
* **+key-f12+** 301
* **+key-f13+** 302
* **+key-f14+** 303
* **+key-f15+** 304
* **+key-f16+** 305
* **+key-f17+** 306 
* **+key-f18+** 307
* **+key-f19+** 308
* **+key-f20+** 309
* **+key-f21+** 310
* **+key-f22+** 311
* **+key-f23+** 312
* **+key-f24+** 313
* **+key-f25+** 314
* **+key-kp-0+** 320
* **+key-kp-1+** 321
* **+key-kp-2+** 322
* **+key-kp-3+** 323
* **+key-kp-4+** 324
* **+key-kp-5+** 325
* **+key-kp-6+** 326
* **+key-kp-7+** 327
* **+key-kp-8+** 328
* **+key-kp-9+** 329
* **+key-kp-decimal+** 330
* **+key-kp-divide+** 331
* **+key-kp-multiply+** 332
* **+key-kp-subtract+** 333
* **+key-kp-add+** 334
* **+key-kp-enter+** 335
* **+key-kp-equal+** 336
* **+key-left-shift+** 340
* **+key-left-control+** 341
* **+key-left-alt+** 342
* **+key-left-super+** 343
* **+key-right-shift+** 344
* **+key-right-control+** 345
* **+key-right-alt+** 346
* **+key-right-super+** 347
* **+key-menu+** 348
* **+key-last+** **+key-menu+**

### Modifier key flags

See [key input](https://www.glfw.org/docs/latest/input_guide.html#input_key) for how these are used.

* [+mod-shift+](https://hectarea1996.github.io/cl-glfw/input.html#mod-shift) #x0001
* [+mod-control+](https://hectarea1996.github.io/cl-glfw/input.html#mod-control) #x0002
* [+mod-alt+](https://hectarea1996.github.io/cl-glfw/input.html#mod-alt) #x0004
* [+mod-super+](https://hectarea1996.github.io/cl-glfw/input.html#mod-super) #x0008
* [+mod-caps-lock+](https://hectarea1996.github.io/cl-glfw/input.html#mod-caps-lock) #x0010
* [+mod-num-lock+](https://hectarea1996.github.io/cl-glfw/input.html#mod-num-lock) #x0020

### Mouse buttons

See [mouse button input](https://www.glfw.org/docs/latest/input_guide.html#input_mouse_button) for how these are used.

* **+mouse-button-1+** 0
* **+mouse-button-2+** 1
* **+mouse-button-3+** 2
* **+mouse-button-4+** 3
* **+mouse-button-5+** 4
* **+mouse-button-6+** 5
* **+mouse-button-7+** 6
* **+mouse-button-8+** 7
* **+mouse-button-last+** **+mouse-button-8+**
* **+mouse-button-left+** **+mouse-button-1+**
* **+mouse-button-right+** **+mouse-button-2+**
* **+mouse-button-middle+** **+mouse-button-3+**

### Standard cursor shapes

See [standard cursor creation](https://www.glfw.org/docs/latest/input_guide.html#cursor_standard) for how these are used.

* **+arrow-cursor+** #x00036001
* **+ibeam-cursor+** #x00036002
* **+crosshair-cursor+** #x00036003
* **+hand-cursor+** #x00036004
* **+hresize-cursor+** #x00036005
* **+vresize-cursor+** #x00036006

### Input mode

* **+cursor+** #x00033001
* **+sticky-keys+** #x00033002
* **+sticky-mouse-buttons+** #x00033003
* **+lock-key-mods+** #x00033004
* **+raw-mouse-motion+** #x00033005

### Joystick configuration

* **+connected+** #x00040001
* **+disconnected+** #x00040002

## Structs

* [gamepadstate](https://hectarea1996.github.io/cl-glfw/input.html#gamepadstate): Gamepad input state.

## Functions

* [get-input-mode](https://hectarea1996.github.io/cl-glfw/input.html#get-input-mode): Returns the value of an input option for the specified window.
* [set-input-mode](https://hectarea1996.github.io/cl-glfw/input.html#set-input-mode): Sets an input option for the specified window.
* [raw-mouse-motion-supported](https://hectarea1996.github.io/cl-glfw/input.html#raw-mouse-motion-supported): Returns whether raw mouse motion is supported.
* [get-key-name](https://hectarea1996.github.io/cl-glfw/input.html#get-key-name): Returns the layout-specific name of the specified printable key.
* [get-key-scancode](https://hectarea1996.github.io/cl-glfw/input.html#get-key-scancode): Returns the platform-specific scancode of the specified key.
* [get-key](https://hectarea1996.github.io/cl-glfw/input.html#get-key): Returns the last reported state of a keyboard key for the specified window.
* [get-mouse-button](https://hectarea1996.github.io/cl-glfw/input.html#get-mouse-button): Returns the last reported state of a mouse button for the specified window.
* [get-cursor-pos](https://hectarea1996.github.io/cl-glfw/input.html#get-cursor-pos): Retrieves the position of the cursor relative to the content area of the window.
* [set-cursor-pos](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor-pos): Sets the position of the cursor, relative to the content area of the window.
* [create-cursor](https://hectarea1996.github.io/cl-glfw/input.html#create-cursor): Creates a custom cursor. 
* [create-standard-cursor](https://hectarea1996.github.io/cl-glfw/input.html#create-standard-cursor): Creates a cursor with a standard shape.
* [destroy-cursor](https://hectarea1996.github.io/cl-glfw/input.html#destroy-cursor): Destroys a cursor.
* [set-cursor](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor): Sets the cursor for the window.
* [set-key-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-key-callback): Sets the key callback.
* [set-char-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-char-callback): Sets the Unicode character callback.
* [set-char-mods-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-char-mods-callback): Sets the Unicode character with modifiers callback.
* [set-mouse-button-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-mouse-button-callback): Sets the mouse button callback.
* [set-cursor-pos-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor-pos-callback): Sets the cursor position callback.
* [set-cursor-enter-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor-enter-callback): Sets the cursor enter/leave callback.
* [set-scroll-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-scroll-callback): Sets the scroll callback.
* [set-drop-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-drop-callback): Sets the path drop callback.
* [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present): Returns whether the specified joystick is present.
* [get-joystick-axes](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-axes): Returns the values of all axes of the specified joystick.
* [get-joystick-buttons](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-buttons): Returns the state of all buttons of the specified joystick.
* [get-joystick-hats](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-hats): Returns the state of all hats of the specified joystick.
* [get-joystick-name](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-name): Returns the name of the specified joystick.
* [get-joystick-guid](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-guid): Returns the SDL compatible GUID of the specified joystick. 
* [set-joystick-user-data](https://hectarea1996.github.io/cl-glfw/input.html#set-joystick-user-data): Sets the user data of the specified joystick.
* [get-joystick-user-data](https://hectarea1996.github.io/cl-glfw/input.html#get-input-mode): Returns the user data of the specified joystick.
* [joystick-is-gamepad](https://hectarea1996.github.io/cl-glfw/input.html#joystick-is-gamepad): Returns whether the specified joystick has a gamepad mapping.
* [set-joystick-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-joystick-callback): Sets the joystick configuration callback.
* [update-gamepad-mappings](https://hectarea1996.github.io/cl-glfw/input.html#update-gamepad-mapping): Adds the specified SDL_GameControllerDB gamepad mappings. 
* [get-gamepad-name](https://hectarea1996.github.io/cl-glfw/input.html#get-gamepad-name): Returns the human-readable gamepad name for the specified joystick.
* [get-gamepad-state](https://hectarea1996.github.io/cl-glfw/input.html#get-gamepad-state): Retrieves the state of the specified joystick remapped as a gamepad.
* [set-clipboard-string](https://hectarea1996.github.io/cl-glfw/input.html#set-clipboard-string): Sets the clipboard to the specified string.
* [get-clipboard-string](https://hectarea1996.github.io/cl-glfw/input.html#get-clipboard-string): Returns the contents of the clipboard as a string.
* [get-time](https://hectarea1996.github.io/cl-glfw/input.html#get-time): Returns the GLFW time.
* [set-time](https://hectarea1996.github.io/cl-glfw/input.html#set-time): Sets the GLFW time.
* [get-timer-value](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-value): Returns the current value of the raw timer.
* [get-timer-frequency](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-frequency): Returns the frequency, in Hz, of the raw timer.

## Macros

* [def-key-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-key-callback): Defines a key callback.
* [def-char-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-char-callback): Defines a char callback.
* [def-char-mods-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-char-mods-callback): Defines a char mods callback.
* [def-mouse-button-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-mouse-button-callback): Defines a mouse button callback.
* [def-cursor-pos-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-cursor-pos-callback): Defines a cursor pos callback.
* [def-cursor-enter-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-cursor-enter-callback): Defines a cursor enter callback.
* [def-scroll-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-scroll-callback): Defines a scroll callback.
* [def-drop-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-drop-callback): Defines a drop callback.
* [def-joystick-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-joystick-callback): Defines a joystick callback.

## Constant documentation

### +release+

```
(defconstant +release+ 0)
```

The key or mouse button was released.

### +press+

```
(defconstant +press+ 1)
```

The key or mouse button was pressed.

### +repeat+

```
(defconstant +repeat+ 2)
```

### +mod-shift+

```
(defconstant +mod-shift+ #x0001)
```

If this bit is set one or more Shift keys were held down.

### +mod-control+

```
(defconstant +mod-control+ #x0002)
```

If this bit is set one or more Control keys were held down.

### +mod-alt+

```
(defconstant +mod-alt+ #x0004)
```

If this bit is set one or more Alt keys were held down.

### +mod-super+

```
(defconstant +mod-super+ #x0008)
```

If this bit is set one or more Super keys were held down.

### +mod-caps-lock+

```
(defconstant +mod-caps-lock+ #x0010)
```

If this bit is set the Caps Lock key is enabled and the [+lock-key-mods+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_LOCK_KEY_MODS) input mode is set.

### +mod-num-lock+

```
(defconstant +mod-num-lock+ #x0020)
```

If this bit is set the Num Lock key is enabled and the [+lock-key-mods+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_LOCK_KEY_MODS) input mode is set.


## Struct documentation

### gamepadstate

```
(defstruct gamepadstate
    buttons
    axes)
```

This describes the input state of a gamepad.

* *Fields*:
  * **buttons**: The states of each [gamepad button](https://hectarea1996.github.io/cl-glfw/input.html#gamepad-buttons), `+press+` or `+release+`. This must be an array of 15 elements.
  * **axes**: The states of each [gamepad axis](https://hectarea1996.github.io/cl-glfw/input.html#gamepad-axes), in the range -1.0 to 1.0 inclusive. This must be an array of 6 elements.
* *See also*: [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad), [get-gamepad-state](https://www.glfw.org/docs/latest/input_guide.html#get-gamepad-state).

## Function documentation

### get-input-mode

```
(get-input-mode window mode) => value-mode
```

This function returns the value of an input option for the specified window. The mode must be one of `+cursor+`, `+sticky-keys+`, `+sticky-mouse-buttons+`, `+lock-key-mods+` or `+raw-mouse-motion+`.

* *Parameters*:
  * **window**: The window to query.
  * **mode**: One of [+cursor+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_CURSOR), [+sticky-keys+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_STICKY_KEYS), [+sticky-mouse-buttons+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_STICKY_MOUSE_BUTTONS), [+lock-key-mods+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_LOCK_KEY_MODS) or [+raw-mouse-motion+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_RAW_MOUSE_MOTION).
* *Returns*:
  * **value-mode**: The value of the specified input mode.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [set-input-mode](https://hectarea1996.github.io/cl-glfw/input.html#set-input-mode).

### set-input-mode

```
(set-input-mode window mode value)
```

This function sets an input mode option for the specified window. The mode must be one of [+cursor+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_CURSOR), [+sticky-keys+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_STICKY_KEYS), [+sticky-mouse-buttons+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_STICKY_MOUSE_BUTTONS), [+lock-key-mods+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_LOCK_KEY_MODS) or [+raw-mouse-motion+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_RAW_MOUSE_MOTION).

If the mode is `+cursor+`, the value must be one of the following cursor modes:

* `+cursor-normal+` makes the cursor visible and behaving normally.
* `+cursor-hidden+` makes the cursor invisible when it is over the content area of the window but does not restrict the cursor from leaving.
* `+cursor-disabled+` hides and grabs the cursor, providing virtual and unlimited cursor movement. This is useful for implementing for example 3D camera controls.

If the mode is `+sticky-keys+`, the value must be either `+true+` to enable sticky keys, or `+false+` to disable it. If sticky keys are enabled, a key press will ensure that [get-key](https://hectarea1996.github.io/cl-glfw/input.html#get-key) returns `+press+` the next time it is called even if the key had been released before the call. This is useful when you are only interested in whether keys have been pressed but not when or in which order.

If the mode is `+sticky-mouse-buttons+`, the value must be either `+true+` to enable sticky mouse buttons, or `+false+` to disable it. If sticky mouse buttons are enabled, a mouse button press will ensure that [get-mouse-button](https://hectarea1996.github.io/cl-glfw/input.html#get-mouse-button) returns `+press+` the next time it is called even if the mouse button had been released before the call. This is useful when you are only interested in whether mouse buttons have been pressed but not when or in which order.

If the mode is `+lock-key-mods+`, the value must be either `+true+` to enable lock key modifier bits, or `+false+` to disable them. If enabled, callbacks that receive modifier bits will also have the [+mod-caps-lock+](https://hectarea1996.github.io/cl-glfw/input.html#mod-caps-lock) bit set when the event was generated with Caps Lock on, and the [+mod-num-lock+](https://hectarea1996.github.io/cl-glfw/input.html#mod-num-lock) bit when Num Lock was on.

If the mode is `+raw-mouse-motion+`, the value must be either `+true+` to enable raw (unscaled and unaccelerated) mouse motion when the cursor is disabled, or `+false+` to disable it. If raw motion is not supported, attempting to set this will emit [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error). Call [raw-mouse-motion-supported](https://hectarea1996.github.io/cl-glfw/input.html#raw-mouse-motion-supported) to check for support.

* *Parameters*:
  * **window**: The window whose input mode to set.
  * **mode**: 	One of `+cursor+`, `+sticky-keys+`, `+sticky-mouse-buttons+`, `+lock-key-mods+` or `+raw-mouse-motion+`.
  * **value**: The new value of the specified input mode.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [get-input-mode](https://hectarea1996.github.io/cl-glfw/input.html#get-input-mode).

### raw-mouse-motion-supported

```
(raw-mouse-motion-supported) => supported
```

This function returns whether raw mouse motion is supported on the current system. This status does not change after GLFW has been initialized so you only need to check this once. If you attempt to enable raw motion on a system that does not support it, [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error) will be emitted.

Raw mouse motion is closer to the actual motion of the mouse across a surface. It is not affected by the scaling and acceleration applied to the motion of the desktop cursor. That processing is suitable for a cursor while raw motion is better for controlling for example a 3D camera. Because of this, raw mouse motion is only provided when the cursor is disabled.

* *Returns*: 
  * **supported**: `t` if raw mouse motion is supported on the current machine, or `nil` otherwise.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Raw mouse motion](https://www.glfw.org/docs/latest/input_guide.html#raw_mouse_motion), [set-input-mode](https://hectarea1996.github.io/cl-glfw/init-version-error.html#set-input-mode).

### get-key-name

```
(get-key-name key scancode) => name
```

This function returns the name of the specified printable key, encoded as UTF-8. This is typically the character that key would produce without any modifier keys, intended for displaying key bindings to the user. For dead keys, it is typically the diacritic it would add to a character.

**Do not use this function** for [text input](https://www.glfw.org/docs/latest/input_guide.html#input_char). You will break text input for many languages even if it happens to work for yours.

If the key is `+key-unknown+`, the scancode is used to identify the key, otherwise the scancode is ignored. If you specify a non-printable key, or `+key-unknown+` and a scancode that maps to a non-printable key, this function returns `nil` but does not emit an error.

This behavior allows you to always pass in the arguments in the [key callback](https://www.glfw.org/docs/latest/input_guide.html#input_key) without modification.

The printable keys are:

* `+key-apostrophe+`
* `+key-comma+`
* `+key-minus+`
* `+key-period+`
* `+key-slash+`
* `+key-semicolon+`
* `+key-equal+`
* `+key-left-bracket+`
* `+key-right-bracket+`
* `+key-backslash+`
* `+key-world-1+`
* `+key-world-2+`
* `+key-0+` to `+key-9+`
* `+key-a+` to `+key-z+`
* `+key-kp-0+` to `+key-kp-9+`
* `+key-kp-decimal+`
* `+key-kp-divide+`
* `+key-kp-multiply+`
* `+key-kp-subtract+`
* `+key-kp-add+`
* `+key-kp-equal+`

Names for printable keys depend on keyboard layout, while names for non-printable keys are the same across layouts but depend on the application language and should be localized along with other user interface text.

* *Parameters*:
  * **key**: The key to query, or `+key-unknown+`.
  * **scancode**: The scancode of the key to query.
* *Returns*: 
  * **name**: The UTF-8 encoded, layout-specific name of the key, or `nil`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: The contents of the returned string may change when a keyboard layout change event is received.
* *See also*: [Key names](https://www.glfw.org/docs/latest/input_guide.html#input_key_name).

### get-key-scancode

```
(get-key-scancode key) => scancode
```

This function returns the platform-specific scancode of the specified key.

If the key is `+key-unknown+` or does not exist on the keyboard this method will return `-1`.

* *Parameters*:
  * **key**: Any [named key](https://hectarea1996.github.io/cl-glfw/input.html#keyboard-keys).
* *Returns*: The platform-specific scancode for the key, or `-1` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Key input](https://www.glfw.org/docs/latest/input_guide.html#input_key).

### get-key

```
(get-key window key) => state
```

This function returns the last state reported for the specified key to the specified window. The returned state is one of `+press+` or `+release+`. The higher-level action `+repeat+` is only reported to the key callback.

If the [+sticky-keys+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_STICKY_KEYS) input mode is enabled, this function returns `+press+` the first time you call it for a key that was pressed, even if that key has already been released.

The key functions deal with physical keys, with [key tokens](https://hectarea1996.github.io/cl-glfw/input.html#keyboard-keys) named after their use on the standard US keyboard layout. If you want to input text, use the Unicode character callback instead.

The [modifier key bit masks](https://hectarea1996.github.io/cl-glfw/input.html#modifier-key-flags) are not key tokens and cannot be used with this function.

**Do not use this function** to implement [text input](https://www.glfw.org/docs/latest/input_guide.html#input_char).

* *Parameters*:
  * **window**: The desired window.
  * **key**: The desired [keyboard key](https://hectarea1996.github.io/cl-glfw/input.html#keyboard-keys). `+key-unknown+` is not a valid key for this function.
* *Returns*: 
  * **state**: One of `+press+` or `+release+`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Key input](https://www.glfw.org/docs/latest/input_guide.html#input_key).

### get-mouse-button

```
(get-mouse-button window button) => state
```

This function returns the last state reported for the specified mouse button to the specified window. The returned state is one of `+press+` or `+release+`.

If the [+sticky-mouse-buttons+](https://www.glfw.org/docs/latest/input_guide.html#GLFW_STICKY_MOUSE_BUTTONS) input mode is enabled, this function returns `+press+` the first time you call it for a mouse button that was pressed, even if that mouse button has already been released.

* *Parameters*:
  * **window**: The desired window.
  * **button**: The desired [mouse button](https://hectarea1996.github.io/cl-glfw/input.html#mouse-buttons).
* *Returns*:
  * **state**: One of `+press+` or `+release+`.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Mouse button input](https://www.glfw.org/docs/latest/input_guide.html#input_mouse_button).

### get-cursor-por

```
(get-cursor-pos window) => xpos ypos
```

This function returns the position of the cursor, in screen coordinates, relative to the upper-left corner of the content area of the specified window.

If the cursor is disabled (with `+cursor-disabled+`) then the cursor position is unbounded and limited only by the minimum and maximum values of a `double` (in C).

The coordinate can be converted to their integer equivalents with the `floor` function. Casting directly to an integer type works for positive coordinates, but fails for negative ones.

If an error occurs, all the values returned are zero.

* *Parameters*:
  * **window**: The desired window.
* *Returns*:
  * **xpos**: The cursor x-coordinate, relative to the left edge of the content area.
  * **ypos**: The cursor y-coordinate, relative to the to top edge of the content area.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor position](https://www.glfw.org/docs/latest/input_guide.html#cursor_pos), [set-cursor-pos](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor-pos).

### set-cursor-pos

```
(set-cursor-pos window xpos ypos)
```

This function sets the position, in screen coordinates, of the cursor relative to the upper-left corner of the content area of the specified window. The window must have input focus. If the window does not have input focus when this function is called, it fails silently.

**Do not use this function** to implement things like camera controls. GLFW already provides the `+cursor-disabled+` cursor mode that hides the cursor, transparently re-centers it and provides unconstrained cursor motion. See [set-input-mode](https://hectarea1996.github.io/cl-glfw/input.html#set-input-mode) for more information.

If the cursor mode is `+cursor-disabled+` then the cursor position is unconstrained and limited only by the minimum and maximum values of a `double` (in C).

* *Parameters*:
  * **window**: The desired window.
  * **xpos**: The desired x-coordinate, relative to the left edge of the content area.
  * **ypos**: The desired y-coordinate, relative to the top edge of the content area.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*:
  * **Wayland**: This function will only work when the cursor mode is `+cursor-disabled+`, otherwise it will do nothing.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor position](https://www.glfw.org/docs/latest/input_guide.html#cursor_pos), [get-cursor-pos](https://hectarea1996.github.io/cl-glfw/input.html#get-cursor-pos).

### create-cursor

```
(create-cursor image xhot yhot) => cursor
```

Creates a new custom cursor image that can be set for a window with [set-cursor](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor). The cursor can be destroyed with [destroy-cursor](https://hectarea1996.github.io/cl-glfw/input.html#destroy-cursor). Any remaining cursors are destroyed by [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate).

The pixels are 32-bit, little-endian, non-premultiplied RGBA, i.e. eight bits per channel with the red channel first. They are arranged canonically as packed sequential rows, starting from the top-left corner.

The cursor hotspot is specified in pixels, relative to the upper-left corner of the cursor image. Like all other coordinate systems in GLFW, the X-axis points to the right and the Y-axis points down.

* *Parameters*:
  * **image**: The desired cursor image.
  * **xhot**: The desired x-coordinate, in pixels, of the cursor hotspot.
  * **yhot**: The desired y-coordinate, in pixels, of the cursor hotspot.
* *Returns*:
  * **cursor**: The handle of the created cursor, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor objects](https://www.glfw.org/docs/latest/input_guide.html#cursor_object), [destroy-cursor](https://hectarea1996.github.io/cl-glfw/input.html#destroy-cursor), [create-standard-cursor](https://hectarea1996.github.io/cl-glfw/input.html#create-standard-cursor).

### create-standard-cursor

```
(create-standard-cursor shape) => cursor
```

Returns a cursor with a [standard shape](https://hectarea1996.github.io/cl-glfw/input.html#standard-cursor-shapes), that can be set for a window with [set-cursor](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor).

* *Parameters*:
  * **shape**: One of the [standard shapes](https://hectarea1996.github.io/cl-glfw/input.html#standard-cursor-shapes).
* *Returns*: A new cursor ready to use or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor objects](https://www.glfw.org/docs/latest/input_guide.html#cursor_object), [create-cursor](https://hectarea1996.github.io/cl-glfw/input.html#create-cursor).

### destroy-cursor

```
(destroy-cursor cursor)
```

This function destroys a cursor previously created with [create-cursor](https://hectarea1996.github.io/cl-glfw/input.html#create-cursor). Any remaining cursors will be destroyed by [terminate](https://hectarea1996.github.io/cl-glfw/init-version-error.html#terminate).

If the specified cursor is current for any window, that window will be reverted to the default cursor. This does not affect the cursor mode.

* *Parameters*:
  * **cursor**: The cursor object to destroy.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Reentrancy*: This function must not be called from a callback.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor objects](https://www.glfw.org/docs/latest/input_guide.html#cursor_object), [create-cursor](https://hectarea1996.github.io/cl-glfw/input.html#create-cursor).

### set-cursor

```
(set-cursor window cursor)
```

This function sets the cursor image to be used when the cursor is over the content area of the specified window. The set cursor will only be visible when the [cursor mode](https://www.glfw.org/docs/latest/input_guide.html#cursor_mode) of the window is `+cursor-normal+`.

On some platforms, the set cursor may not be visible unless the window also has input focus.

* *Parameters*:
  * **window**: The window to set the cursor for.
  * **cursor**: The cursor to set, or `nil` to switch back to the default arrow cursor.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor objects](https://www.glfw.org/docs/latest/input_guide.html#cursor_object).

### set-key-callback

```
(set-key-callback window callback) => old-callback
```

This function sets the key callback of the specified window, which is called when a key is pressed, repeated or released.

The key functions deal with physical keys, with layout independent [key tokens](https://hectarea1996.github.io/cl-glfw/input.html#keyboard-keys) named after their values in the standard US keyboard layout. If you want to input text, use the [character callback](https://hectarea1996.github.io/cl-glfw/input.html#set-char-callback) instead.

When a window loses input focus, it will generate synthetic key release events for all pressed keys. You can tell these events from user-generated events by the fact that the synthetic ones are generated after the focus loss event has been processed, i.e. after the [window focus callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-focus-callback) has been called.

The scancode of a key is specific to that platform or sometimes even to that machine. Scancodes are intended to allow users to bind keys that don't have a GLFW key token. Such keys have `key` set to `+key-unknown+`, their state is not saved and so it cannot be queried with [get-key](https://hectarea1996.github.io/cl-glfw/input.html#get-key).

Sometimes GLFW needs to generate synthetic key events, in which case the scancode may be zero.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new key callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Key input](https://www.glfw.org/docs/latest/input_guide.html#input_key), [def-key-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-key-callback).

### set-char-callback

```
(set-char-callback window callback) => old-callback
```

This function sets the character callback of the specified window, which is called when a Unicode character is input.

The character callback is intended for Unicode text input. As it deals with characters, it is keyboard layout dependent, whereas the [key callback](https://hectarea1996.github.io/cl-glfw/input.html#set-key-callback) is not. Characters do not map 1:1 to physical keys, as a key may produce zero, one or more characters. If you want to know whether a specific physical key was pressed or released, see the key callback instead.

The character callback behaves as system text input normally does and will not be called if modifier keys are held down that would prevent normal text input on that platform, for example a Super (Command) key on macOS or Alt key on Windows.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Text input](https://www.glfw.org/docs/latest/input_guide.html#input_char), [def-char-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-char-callback).

### set-char-mods-callback

```
(set-char-mods-callback window callback) => old-callback
```

This function sets the character with modifiers callback of the specified window, which is called when a Unicode character is input regardless of what modifier keys are used.

The character with modifiers callback is intended for implementing custom Unicode character input. For regular Unicode text input, see the [character callback](https://hectarea1996.github.io/cl-glfw/input.html#set-char-callback). Like the character callback, the character with modifiers callback deals with characters and is keyboard layout dependent. Characters do not map 1:1 to physical keys, as a key may produce zero, one or more characters. If you want to know whether a specific physical key was pressed or released, see the [key callback](https://hectarea1996.github.io/cl-glfw/input.html#set-key-callback) instead.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Text input](https://www.glfw.org/docs/latest/input_guide.html#input_char), [def-char-mods-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-char-mods-callback).

> **Deprecated**:
> Scheduled for removal in version 4.0.

### set-mouse-button-callback

```
(set-mouse-button-callback window callback) => old-callback
```

This function sets the mouse button callback of the specified window, which is called when a mouse button is pressed or released.

When a window loses input focus, it will generate synthetic mouse button release events for all pressed mouse buttons. You can tell these events from user-generated events by the fact that the synthetic ones are generated after the focus loss event has been processed, i.e. after the [window focus callback](https://hectarea1996.github.io/cl-glfw/window.html#set-window-focus-callback) has been called.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Mouse button input](https://www.glfw.org/docs/latest/input_guide.html#input_mouse_button), [def-mouse-button-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-mouse-button-callback).

### set-cursor-pos-callback

```
(set-cursor-pos-callback window callback) => old-callback
```

This function sets the cursor position callback of the specified window, which is called when the cursor is moved. The callback is provided with the position, in screen coordinates, relative to the upper-left corner of the content area of the window.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor position](https://www.glfw.org/docs/latest/input_guide.html#cursor_pos), [def-cursor-pos-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-cursor-pos-callback).

### set-cursor-enter-callback

```
(set-cursor-enter-callback window callback) => old-callback
```

This function sets the cursor boundary crossing callback of the specified window, which is called when the cursor enters or leaves the content area of the window.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Cursor enter/leave events](https://www.glfw.org/docs/latest/input_guide.html#cursor_enter), [def-cursor-enter-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-cursor-enter-callback).

### set-scroll-callback

This function sets the scroll callback of the specified window, which is called when a scrolling device is used, such as a mouse wheel or scrolling area of a touchpad.

The scroll callback receives all scrolling input, like that from a mouse wheel or a touchpad scrolling area.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Scroll input](https://www.glfw.org/docs/latest/input_guide.html#scrolling), [def-scroll-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-scroll-callback).

### set-drop-callback

This function sets the path drop callback of the specified window, which is called when one or more dragged paths are dropped on the window.

* *Parameters*:
  * **window**: The window whose callback to set.
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*: 
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Remarks*:
  * **Wayland**: File drop is currently unimplemented.
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Path drop input](https://www.glfw.org/docs/latest/input_guide.html#path_drop), [def-drop-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-drop-callback).

### joystick-present

```
(joystick-present jid) => present
```

This function returns whether the specified joystick is present.

There is no need to call this function before other functions that accept a joystick ID, as they all check for presence before performing any other work.

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **present**: `t` if the joystick is present, or `nil` otherwise.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Joystick input](https://www.glfw.org/docs/latest/input_guide.html#joystick).

### get-joystick-axes

```
(get-joystick-axes jid) => axes
```

This function returns the values of all axes of the specified joystick. Each element in the array is a value between -1.0 and 1.0.

If the specified joystick is not present this function will return `nil` but will not generate an error. This can be used instead of first calling [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present).

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*: 
  * **axes**: An array of axis values, or `nil` if the joystick is not present or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Joystick axis states](https://www.glfw.org/docs/latest/input_guide.html#joystick_axis).

### get-joystick-buttons

```
(get-joystick-buttons jid) => buttons
```

This function returns the state of all buttons of the specified joystick. Each element in the array is either `+press+` or `+release+`.

For backward compatibility with earlier versions that did not have [get-joystick-hats](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-hats), the button array also includes all hats, each represented as four buttons. The hats are in the same order as returned by **get-joystick-hats** and are in the order *up*, *right*, *down* and *left*. To disable these extra buttons, set the [+joystick-hat-buttons+](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_JOYSTICK_HAT_BUTTONS) init hint before initialization.

If the specified joystick is not present this function will return `nil` but will not generate an error. This can be used instead of first calling [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present).

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **buttons**: An array of button states, or `nil` if the joystick is not present or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Joystick button states](https://www.glfw.org/docs/latest/input_guide.html#joystick_button).

### get-joystick-hats

```
(get-joystick-hats jid) => hats
```

This function returns the state of all hats of the specified joystick. Each element in the array is one of the following values:

| Name | Value |
| --- | --- |
| +hat-centered+ | 0 |
| +hat-up+ | 1 |
| +hat-right+ | 2 |
| +hat-down+ | 4 |
| +hat-left+ | 8 |
| +hat-right-up+ | (logior +hat-right+ +hat-up+) |
| +hat-right-down+ | (logior +hat-right+ +hat-down+) |
| +hat-left-up+ | (logior +hat-left+ +hat-up+) |
| +hat-left-down+ | (logior +hat-left+ +hat-down+) |

The diagonal directions are bitwise combinations of the primary (up, right, down and left) directions and you can test for these individually by ANDing it with the corresponding direction.

```
(when (> (logand (aref hats 2) +hat-right+) 0)
  ; State of hat 2 could be right-up, right or right-down
  )
```

If the specified joystick is not present this function will return `nil` but will not generate an error. This can be used instead of first calling [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present).

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **hats**: An array of hat states, or `nil` if the joystick is not present or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Joystick hat states](https://www.glfw.org/docs/latest/input_guide.html#joystick_hat).

### get-joystick-name

```
(get-joystick-name jid) => name
```

This function returns the name, encoded as UTF-8, of the specified joystick. 

If the specified joystick is not present this function will return `nil` but will not generate an error. This can be used instead of first calling [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present).

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **name**: The UTF-8 encoded name of the joystick, or `nil` if the joystick is not present or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Joystick name](https://www.glfw.org/docs/latest/input_guide.html#joystick_name).

### get-joystick-guid

```
(get-joystick-guid jid) => guid
```

This function returns the SDL compatible GUID, as a UTF-8 encoded hexadecimal string, of the specified joystick. The returned string is allocated and freed by GLFW. You should not free it yourself.

The GUID is what connects a joystick to a gamepad mapping. A connected joystick will always have a GUID even if there is no gamepad mapping assigned to it.

If the specified joystick is not present this function will return `nil` but will not generate an error. This can be used instead of first calling [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present).

The GUID uses the format introduced in SDL 2.0.5. This GUID tries to uniquely identify the make and model of a joystick but does not identify a specific unit, e.g. all wired Xbox 360 controllers will have the same GUID on that platform. The GUID for a unit may vary between platforms depending on what hardware information the platform specific APIs provide.

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **guid**: The UTF-8 encoded GUID of the joystick, or `nil` if the joystick is not present or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad).

### set-joystick-user-data

```
(set-joystick-user-data jid data)
```

This function sets the user-defined data of the specified joystick. The current value is retained until the joystick is disconnected. The initial value is `nil`.

This function may be called from the joystick callback, even for a joystick that is being disconnected.

* *Parameters*:
  * **jid**: The joystick whose data to set.
  * **data**: The new value.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [Joystick user pointer](https://www.glfw.org/docs/latest/input_guide.html#joystick_userptr), [get-joystick-user-data](https://hectarea1996.github.io/cl-glfw/input.html#get-joystick-user-data).

### get-joystick-user-data

```
(get-joystick-user-data jid) => data
```

This function returns the current value of the user-defined data of the specified joystick. The initial value is `nill`.

This function may be called from the joystick callback, even for a joystick that is being disconnected.

* *Parameters*:
  * **jid**: The joystick whose data to return.
* *Returns*:
  * **data**: The data of the specified joystick.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Access is not synchronized.
* *See also*: [Joystick user pointer](https://www.glfw.org/docs/latest/input_guide.html#joystick_userptr), [set-joystick-user-data](https://hectarea1996.github.io/cl-glfw/input.html#set-joystick-user-data).

### joystick-is-gamepad

```
(joystick-is-gamepad jid) => is-gamepad
```

This function returns whether the specified joystick is both present and has a gamepad mapping.

If the specified joystick is present but does not have a gamepad mapping this function will return `nil` but will not generate an error. Call [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present) to check if a joystick is present regardless of whether it has a mapping.

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **is-gamepad**: `t` if a joystick is both present and has a gamepad mapping, or `nil` otherwise.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad), [get-gamepad-state](https://hectarea1996.github.io/cl-glfw/input.html#get-gamepad-state).

### set-joystick-callback

```
(set-joystick-callback callback) => old-callback
```

This function sets the joystick configuration callback, or removes the currently set callback. This is called when a joystick is connected to or disconnected from the system.

For joystick connection and disconnection events to be delivered on all platforms, you need to call one of the [event processing](https://www.glfw.org/docs/latest/input_guide.html#events) functions. Joystick disconnection may also be detected and the callback called by joystick functions. The function will then return whatever it returns if the joystick is not present.

* *Parameters*:
  * **callback**: The new callback, or `nil` to remove the currently set callback.
* *Returns*:
  * **old-callback**: The previously set callback, or `nil` if no callback was set or the library had not been [initialized](https://www.glfw.org/docs/latest/intro_guide.html#intro_init).
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Joystick configuration changes](https://www.glfw.org/docs/latest/input_guide.html#joystick_event), [def-joystick-callback](https://hectarea1996.github.io/cl-glfw/input.html#def-joystick-callback).

### update-gamepad-mappings

```
(update-gamepad-mappings string) => success
```

This function parses the specified ASCII encoded string and updates the internal list with any gamepad mappings it finds. This string may contain either a single gamepad mapping or many mappings separated by newlines. The parser supports the full format of the `gamecontrollerdb.txt` source file including empty lines and comments.

See [Gamepad mappings](https://www.glfw.org/docs/latest/input_guide.html#gamepad_mapping) for a description of the format.

If there is already a gamepad mapping for a given GUID in the internal list, it will be replaced by the one passed to this function. If the library is terminated and re-initialized the internal list will revert to the built-in default.

* *Parameters*:
  * **string**: The string containing the gamepad mappings.
* *Returns*:
  * **success**: `t` if successful, or `nil` if an error occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad), [joystick-is-gamepad](https://hectarea1996.github.io/cl-glfw/input.html#joystick-is-gamepad), [get-gamepad-name](https://hectarea1996.github.io/cl-glfw/input.html#get-gamepad-name).

### get-gamepad-name

```
(get-gamepad-name jid) => name
```

This function returns the human-readable name of the gamepad from the gamepad mapping assigned to the specified joystick.

If the specified joystick is not present or does not have a gamepad mapping this function will return `nil` but will not generate an error. Call [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present) to check whether it is present regardless of whether it has a mapping.

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*: 
  * **name**: The UTF-8 encoded name of the gamepad, or `nil` if the joystick is not present, does not have a mapping or an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad), [joystick-is-gamepad](https://hectarea1996.github.io/cl-glfw/input.html#joystick-is-gamepad).

### get-gamepad-state

```
(get-gamepad-state jid) => success state
```

This function retrieves the state of the specified joystick remapped to an Xbox-like gamepad.

If the specified joystick is not present or does not have a gamepad mapping this function will return `nil` but will not generate an error. Call [joystick-present](https://hectarea1996.github.io/cl-glfw/input.html#joystick-present) to check whether it is present regardless of whether it has a mapping.

The Guide button may not be available for input as it is often hooked by the system or the Steam client.

Not all devices have all the buttons or axes provided by [gamepadstate](https://hectarea1996.github.io/cl-glfw/input.html#gamepadstate). Unavailable buttons and axes will always report `+release+` and 0.0 respectively.

* *Parameters*:
  * **jid**: The [joystick](https://hectarea1996.github.io/cl-glfw/input.html#joysticks) to query.
* *Returns*:
  * **success**: `t` if successful, or `nil` if no joystick is connected, it has no gamepad mapping or an error occurred.
  * **state**: The gamepad input state of the joystick.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-enum+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-enum).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Gamepad input](https://www.glfw.org/docs/latest/input_guide.html#gamepad), [update-gamepad-mappings](https://hectarea1996.github.io/cl-glfw/input.html#update-gamepad-mappings), [joystick-is-gamepad](https://hectarea1996.github.io/cl-glfw/input.html#joystick-is-gamepad).

### set-clipboard-string

```
(set-clipboard-string window string)
```

This function sets the system clipboard to the specified, UTF-8 encoded string.

* *Parameters*:
  * **window**: Deprecated. Any valid window or `nil`.
  * **string**: A UTF-8 encoded string.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Clipboard input and output](https://www.glfw.org/docs/latest/input_guide.html#clipboard), [get-clipboard-string](https://hectarea1996.github.io/cl-glfw/input.html#get-clipboard-string).

### get-clipboard-string

```
(get-clipboard-string window) => clipboard
```

This function returns the contents of the system clipboard, if it contains or is convertible to a UTF-8 encoded string. If the clipboard is empty or if its contents cannot be converted, `nil` is returned and a [format-unavailable](https://hectarea1996.github.io/cl-glfw/init-version-error.html#format-unavailable) error is generated.

* *Parameters*:
  * **window**: Deprecated. Any valid window or `nil`.
* *Returns*:
  * **clipboard**: The contents of the clipboard as a UTF-8 encoded string, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [format-unavailable](https://hectarea1996.github.io/cl-glfw/init-version-error.html#format-unavailable) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Thread safety*: This function must only be called from the main thread.
* *See also*: [Clipboard input and output](https://www.glfw.org/docs/latest/input_guide.html#clipboard), [set-clipboard-string](https://hectarea1996.github.io/cl-glfw/input.html#set-clipboard-string).

### get-time

```
(get-time) => time
```

This function returns the current GLFW time, in seconds. Unless the time has been set using [set-time](https://hectarea1996.github.io/cl-glfw/input.html#set-time) it measures time elapsed since GLFW was initialized.

This function and [set-time](https://hectarea1996.github.io/cl-glfw/input.html#set-time) are helper functions on top of [get-timer-frequency](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-frequency) and [get-timer-value](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-value).

The resolution of the timer is system dependent, but is usually on the order of a few micro- or nanoseconds. It uses the highest-resolution monotonic time source on each supported platform.

* *Returns*:
  * **time**: The current time, in seconds, or zero if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread. Reading and writing of the internal base time is not atomic, so it needs to be externally synchronized with calls to [set-time](https://hectarea1996.github.io/cl-glfw/input.html#set-time).
* *See also*: [Time input](https://www.glfw.org/docs/latest/input_guide.html#time).

### set-time

```
(set-time time)
```

This function sets the current GLFW time, in seconds. The value must be a positive finite number less than or equal to 18446744073.0, which is approximately 584.5 years.

This function and [get-time](https://hectarea1996.github.io/cl-glfw/input.html#get-time) are helper functions on top of [get-timer-frequency](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-frequency) and [get-timer-value](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-value).

* *Parameters*:
  * **time**: The new value, in seconds.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value).
* *Remarks*: The upper limit of GLFW time is calculated as floor((2^64 - 1) / 10^9) and is due to implementations storing nanoseconds in 64 bits. The limit may be increased in the future.
* *Thread safety*: This function may be called from any thread. Reading and writing of the internal base time is not atomic, so it needs to be externally synchronized with calls to [get-time](https://hectarea1996.github.io/cl-glfw/input.html#get-time).
* *See also*: [Time input](https://www.glfw.org/docs/latest/input_guide.html#time).

### get-timer-value

```
(get-timer-value) => value
```

This function returns the current value of the raw timer, measured in 1 / frequency seconds. To get the frequency, call [get-timer-frequency](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-frequency).

* *Returns*:
  * **value**: The value of the timer, or zero if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Time input](https://www.glfw.org/docs/latest/input_guide.html#time), [get-timer-frequency](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-frequency).

### get-timer-frequency

```
(get-timer-frequency) => frequency
```

This function returns the frequency, in Hz, of the raw timer.

* *Returns*:
  * **frequency**: The frequency of the timer, in Hz, or zero if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Time input](https://www.glfw.org/docs/latest/input_guide.html#time), [get-timer-value](https://hectarea1996.github.io/cl-glfw/input.html#get-timer-value).

## Macro documentation

### def-key-callback

```
(def-key-callback name (window key scancode action mods) &body body)
```

Defines a key callback. A keyboard key callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **key**: 	The [keyboard key](https://hectarea1996.github.io/cl-glfw/input.html#keyboard-keys) that was pressed or released.
  * **scancode**: The system-specific scancode of the key.
  * **action**: `+press+`, `+release+` or `+repeat+`. Future releases may add more actions.
  * **mods**: 	Bit field describing which [modifier keys](https://hectarea1996.github.io/cl-glfw/input.html#modifier-key-flags) were held down.
* *See also*: [Key input](https://www.glfw.org/docs/latest/input_guide.html#input_key), [set-key-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-key-callback).

### def-char-callback

```
(def-char-callback name (window codepoint) &body body)
```

Defines a Unicode character callback. A Unicode character callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **codepoint**: 	The Unicode code point of the character.
* *See also*: [Text input](https://www.glfw.org/docs/latest/input_guide.html#input_char), [set-char-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-char-callback).

### def-char-mods-callback

```
(def-char-mods-callback name (window codepoint mods) &body body)
```

Defines a Unicode character with modifiers callback. A Unicode character with modifiers callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **codepoint**: 	The Unicode code point of the character.
  * **mods**: Bit field describing which [modifier keys](https://hectarea1996.github.io/cl-glfw/input.html#modifier-key-flags) were held down.
* *See also*: [Text input](https://www.glfw.org/docs/latest/input_guide.html#input_char), [set-char-mods-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-char-mods-callback).

### def-mouse-button-callback

```
(def-mouse-button-callback name (window button action mods) &body body)
```

Defines a mouse button callback. A mouse button callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **button**: The [mouse button](https://hectarea1996.github.io/cl-glfw/input.html#mouse-buttons) that was pressed or released.
  * **action**: One of `+press+` or `+release+`. Future releases may add more actions.
  * **mods**: Bit field describing which [modifier keys](https://hectarea1996.github.io/cl-glfw/input.html#modifier-key-flags) were held down.
* *See also*: [Mouse button input](https://www.glfw.org/docs/latest/input_guide.html#input_mouse_button), [set-mouse-button-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-mouse-button-callback).

### def-cursor-pos-callback

```
(def-cursor-pos-callback name (window xpos ypos) &body body)
```

Defines a cursor pos callback. A cursor pos callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **xpos**: The new cursor x-coordinate, relative to the left edge of the content area.
  * **ypos**: The new cursor y-coordinate, relative to the top edge of the content area.
* *See also*: [Cursor position](https://www.glfw.org/docs/latest/input_guide.html#cursor_pos), [set-cursor-pos-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor-pos-callback).

### def-cursor-enter-callback

```
(def-cursor-enter-callback name (window entered) &body body)
```

Defines a cursor enter/leave callback. A cursor enter/leave callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **entered**: `t` if the cursor entered the window's content area, or `nil` if it left it.
* *See also*: [Cursor enter/leave events](https://www.glfw.org/docs/latest/input_guide.html#cursor_enter), [set-cursor-enter-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-cursor-enter-callback).

### def-scroll-callback

```
(def-scroll-callback name (window xoffset yoffset) &body body)
```

Defines a scroll callback. A scroll callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **xoffset**: The scroll offset along the x-axis.
  * **yoffset**: The scroll offset along the y-axis.
* *See also*: [Scroll input](https://www.glfw.org/docs/latest/input_guide.html#scrolling), [set-scroll-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-scroll-callback).

### def-drop-callback

```
(def-drop-callback name (window paths) &body body)
```

Defines a path drop callback. A path drop callback function has the following signature:

* *Parameters*:
  * **window**: The window that received the event.
  * **paths**: An array with the UTF-8 encoded file and/or directory paths.
* *See also*: [Path drop input](https://www.glfw.org/docs/latest/input_guide.html#path_drop), [set-drop-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-drop-callback).

### def-joystick-callback

```
(def-joystick-callback name (jid event) &body body)
```

Defines a joystick configuration callback. A joystick configuration callback function has the following signature:

* *Parameters*:
  * **jid**: The joystick that was connected or disconnected.
  * **event**: One of `+connected+` or `+disconnected+`. Future releases may add more events.
* *See also*: [Joystick configuration changes](https://www.glfw.org/docs/latest/input_guide.html#joystick_event), [set-joystick-callback](https://hectarea1996.github.io/cl-glfw/input.html#set-joystick-callback).