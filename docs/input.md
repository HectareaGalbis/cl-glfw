
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

### Keyboards keys

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


