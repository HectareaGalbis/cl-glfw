
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Input reference

## Description

This is the reference documentation for input related functions and types. For more task-oriented information, see the [Input guide](https://www.glfw.org/docs/latest/input_guide.html).

* [Constants](https://hectarea1996.github.io/cl-glfw/input.html#constants)
* [Structs](https://hectarea1996.github.io/cl-glfw/input.html#structs)
* [Functions](https://hectarea1996.github.io/cl-glfw/input.html#functions)

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
* *See also*: [Text input](https://www.glfw.org/docs/latest/input_guide.html#input_char).

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
* *See also*: [Text input](https://www.glfw.org/docs/latest/input_guide.html#input_char).

> **Deprecated**:
> Scheduled for removal in version 4.0.