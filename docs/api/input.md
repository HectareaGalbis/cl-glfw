<h1 id="header:GLFW:INPUT-REFERENCE-HEADER">Input reference</h1>

<h2 id="header:ADP:HEADERTAG16">Description</h2>

This is the reference documentation for input related functions and types\.

* <a href="/docs/api/input.md#header:GLFW:INPUT-REFERENCE-HEADER">Input reference</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG16">Description</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG17">Constants</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG18">Types</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG19">GLFWgamepadstate</a>
  * <a href="/docs/api/input.md#header:ADP:HEADERTAG20">Functions</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG21">glfwGetInputMode</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG22">glfwSetInputMode</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG23">glfwRawMouseMotionSupported</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG24">glfwGetKeyName</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG25">glfwGetKeyScancode</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG26">glfwGetKey</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG27">glfwGetMouseButton</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG28">glfwGetCursorPos</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG29">glfwSetCursorPos</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG30">glfwCreateCursor</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG31">glfwCreateStandardCursor</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG32">glfwDestroyCursor</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG33">glfwSetCursor</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG34">glfwSetKeyCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG35">glfwSetCharCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG36">glfwSetCharModsCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG37">glfwSetMouseButtonCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG38">glfwSetCursorPosCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG39">glfwSetCursorEnterCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG40">glfwSetScrollCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG41">glfwSetDropCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG42">glfwJoystickPresent</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG43">glfwGetJoystickAxes</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG44">glfwGetJoystickButtons</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG45">glfwGetJoystickHats</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG46">glfwGetJoystickName</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG47">glfwGetJoystickGUID</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG48">glfwSetJoystickUserPointer</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG49">glfwGetJoystickUserPointer</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG50">glfwJoystickIsGamepad</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG51">glfwSetJoystickCallback</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG52">glfwUpdateGamepadMappings</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG53">glfwGetGamepadName</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG54">glfwGetGamepadState</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG55">glfwSetClipboardString</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG56">glfwGetClipboardString</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG57">glfwGetTime</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG58">glfwSetTime</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG59">glfwGetTimerValue</a>
    * <a href="/docs/api/input.md#header:ADP:HEADERTAG60">glfwGetTimerFrequency</a>

<h2 id="header:ADP:HEADERTAG17">Constants</h2>

<h4 id="symbol:GLFW:GLFW_RELEASE">Constant: GLFW_RELEASE</h4>

```Lisp
(defconstant GLFW:GLFW_RELEASE 0)
```

````
The key or mouse button was released.
````

<h4 id="symbol:GLFW:GLFW_PRESS">Constant: GLFW_PRESS</h4>

```Lisp
(defconstant GLFW:GLFW_PRESS 1)
```

````
The key or mouse button was pressed.
````

<h4 id="symbol:GLFW:GLFW_REPEAT">Constant: GLFW_REPEAT</h4>

```Lisp
(defconstant GLFW:GLFW_REPEAT 2)
```

````
The key was held down until it repeated.
````

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIX_LEFT_X">Constant: GLFW_GAMEPAD_AXIX_LEFT_X</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIX_LEFT_X 0)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIS_LEFT_Y">Constant: GLFW_GAMEPAD_AXIS_LEFT_Y</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_LEFT_Y 1)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIS_RIGHT_X">Constant: GLFW_GAMEPAD_AXIS_RIGHT_X</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_RIGHT_X 2)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIS_RIGHT_Y">Constant: GLFW_GAMEPAD_AXIS_RIGHT_Y</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_RIGHT_Y 3)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIS_LEFT_TRIGGER">Constant: GLFW_GAMEPAD_AXIS_LEFT_TRIGGER</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_LEFT_TRIGGER 4)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER">Constant: GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER 5)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_AXIS_LAST">Constant: GLFW_GAMEPAD_AXIS_LAST</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_LAST GLFW:GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_A">Constant: GLFW_GAMEPAD_BUTTON_A</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_A 0)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_B">Constant: GLFW_GAMEPAD_BUTTON_B</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_B 1)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_X">Constant: GLFW_GAMEPAD_BUTTON_X</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_X 2)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_Y">Constant: GLFW_GAMEPAD_BUTTON_Y</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_Y 3)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_LEFT_BUMPER">Constant: GLFW_GAMEPAD_BUTTON_LEFT_BUMPER</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_LEFT_BUMPER 4)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER">Constant: GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER 5)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_BACK">Constant: GLFW_GAMEPAD_BUTTON_BACK</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_BACK 6)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_START">Constant: GLFW_GAMEPAD_BUTTON_START</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_START 7)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_GUIDE">Constant: GLFW_GAMEPAD_BUTTON_GUIDE</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_GUIDE 8)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_LEFT_THUMB">Constant: GLFW_GAMEPAD_BUTTON_LEFT_THUMB</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_LEFT_THUMB 9)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_RIGHT_THUMB">Constant: GLFW_GAMEPAD_BUTTON_RIGHT_THUMB</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_RIGHT_THUMB 10)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_DPAD_UP">Constant: GLFW_GAMEPAD_BUTTON_DPAD_UP</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_UP 11)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_DPAD_RIGHT">Constant: GLFW_GAMEPAD_BUTTON_DPAD_RIGHT</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_RIGHT 12)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_DPAD_DOWN">Constant: GLFW_GAMEPAD_BUTTON_DPAD_DOWN</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_DOWN 13)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_DPAD_LEFT">Constant: GLFW_GAMEPAD_BUTTON_DPAD_LEFT</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_LEFT 14)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_LAST">Constant: GLFW_GAMEPAD_BUTTON_LAST</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_LAST GLFW:GLFW_GAMEPAD_BUTTON_DPAD_LEFT)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_CROSS">Constant: GLFW_GAMEPAD_BUTTON_CROSS</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_CROSS GLFW:GLFW_GAMEPAD_BUTTON_A)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_CIRCLE">Constant: GLFW_GAMEPAD_BUTTON_CIRCLE</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_CIRCLE GLFW:GLFW_GAMEPAD_BUTTON_B)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_SQUARE">Constant: GLFW_GAMEPAD_BUTTON_SQUARE</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_SQUARE GLFW:GLFW_GAMEPAD_BUTTON_X)
```

<h4 id="symbol:GLFW:GLFW_GAMEPAD_BUTTON_TRIANGLE">Constant: GLFW_GAMEPAD_BUTTON_TRIANGLE</h4>

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_TRIANGLE GLFW:GLFW_GAMEPAD_BUTTON_Y)
```

<h4 id="symbol:GLFW:GLFW_HAT_CENTERED">Constant: GLFW_HAT_CENTERED</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_CENTERED 0)
```

<h4 id="symbol:GLFW:GLFW_HAT_UP">Constant: GLFW_HAT_UP</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_UP 1)
```

<h4 id="symbol:GLFW:GLFW_HAT_RIGHT">Constant: GLFW_HAT_RIGHT</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_RIGHT 2)
```

<h4 id="symbol:GLFW:GLFW_HAT_DOWN">Constant: GLFW_HAT_DOWN</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_DOWN 4)
```

<h4 id="symbol:GLFW:GLFW_HAT_LEFT">Constant: GLFW_HAT_LEFT</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_LEFT 8)
```

<h4 id="symbol:GLFW:GLFW_HAT_RIGHT_UP">Constant: GLFW_HAT_RIGHT_UP</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_RIGHT_UP (LOGIOR GLFW:GLFW_HAT_RIGHT
                                            GLFW:GLFW_HAT_UP))
```

<h4 id="symbol:GLFW:GLFW_HAT_RIGHT_DOWN">Constant: GLFW_HAT_RIGHT_DOWN</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_RIGHT_DOWN (LOGIOR GLFW:GLFW_HAT_RIGHT
                                              GLFW:GLFW_HAT_DOWN))
```

<h4 id="symbol:GLFW:GLFW_HAT_LEFT_UP">Constant: GLFW_HAT_LEFT_UP</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_LEFT_UP (LOGIOR GLFW:GLFW_HAT_LEFT GLFW:GLFW_HAT_UP))
```

<h4 id="symbol:GLFW:GLFW_HAT_LEFT_DOWN">Constant: GLFW_HAT_LEFT_DOWN</h4>

```Lisp
(defconstant GLFW:GLFW_HAT_LEFT_DOWN (LOGIOR GLFW:GLFW_HAT_LEFT
                                             GLFW:GLFW_HAT_DOWN))
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_1">Constant: GLFW_JOYSTICK_1</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_1 0)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_2">Constant: GLFW_JOYSTICK_2</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_2 1)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_3">Constant: GLFW_JOYSTICK_3</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_3 2)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_4">Constant: GLFW_JOYSTICK_4</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_4 3)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_5">Constant: GLFW_JOYSTICK_5</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_5 4)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_6">Constant: GLFW_JOYSTICK_6</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_6 5)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_7">Constant: GLFW_JOYSTICK_7</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_7 6)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_8">Constant: GLFW_JOYSTICK_8</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_8 7)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_9">Constant: GLFW_JOYSTICK_9</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_9 8)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_10">Constant: GLFW_JOYSTICK_10</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_10 9)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_11">Constant: GLFW_JOYSTICK_11</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_11 10)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_12">Constant: GLFW_JOYSTICK_12</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_12 11)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_13">Constant: GLFW_JOYSTICK_13</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_13 12)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_14">Constant: GLFW_JOYSTICK_14</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_14 13)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_15">Constant: GLFW_JOYSTICK_15</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_15 14)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_16">Constant: GLFW_JOYSTICK_16</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_16 15)
```

<h4 id="symbol:GLFW:GLFW_JOYSTICK_LAST">Constant: GLFW_JOYSTICK_LAST</h4>

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_LAST GLFW:GLFW_JOYSTICK_16)
```

<h4 id="symbol:GLFW:GLFW_KEY_UNKNOWN">Constant: GLFW_KEY_UNKNOWN</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_UNKNOWN -1)
```

<h4 id="symbol:GLFW:GLFW_KEY_SPACE">Constant: GLFW_KEY_SPACE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_SPACE 32)
```

<h4 id="symbol:GLFW:GLFW_KEY_APOSTROPHE">Constant: GLFW_KEY_APOSTROPHE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_APOSTROPHE 39)
```

````
/* ' */
````

<h4 id="symbol:GLFW:GLFW_KEY_COMMA">Constant: GLFW_KEY_COMMA</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_COMMA 44)
```

````
/* , */
````

<h4 id="symbol:GLFW:GLFW_KEY_MINUS">Constant: GLFW_KEY_MINUS</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_MINUS 45)
```

````
/* _ */
````

<h4 id="symbol:GLFW:GLFW_KEY_PERIOD">Constant: GLFW_KEY_PERIOD</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_PERIOD 46)
```

````
/* . */
````

<h4 id="symbol:GLFW:GLFW_KEY_SLASH">Constant: GLFW_KEY_SLASH</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_SLASH 47)
```

````
/* / */
````

<h4 id="symbol:GLFW:GLFW_KEY_0">Constant: GLFW_KEY_0</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_0 48)
```

<h4 id="symbol:GLFW:GLFW_KEY_1">Constant: GLFW_KEY_1</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_1 49)
```

<h4 id="symbol:GLFW:GLFW_KEY_2">Constant: GLFW_KEY_2</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_2 50)
```

<h4 id="symbol:GLFW:GLFW_KEY_3">Constant: GLFW_KEY_3</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_3 51)
```

<h4 id="symbol:GLFW:GLFW_KEY_4">Constant: GLFW_KEY_4</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_4 52)
```

<h4 id="symbol:GLFW:GLFW_KEY_5">Constant: GLFW_KEY_5</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_5 53)
```

<h4 id="symbol:GLFW:GLFW_KEY_6">Constant: GLFW_KEY_6</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_6 54)
```

<h4 id="symbol:GLFW:GLFW_KEY_7">Constant: GLFW_KEY_7</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_7 55)
```

<h4 id="symbol:GLFW:GLFW_KEY_8">Constant: GLFW_KEY_8</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_8 56)
```

<h4 id="symbol:GLFW:GLFW_KEY_9">Constant: GLFW_KEY_9</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_9 57)
```

<h4 id="symbol:GLFW:GLFW_KEY_SEMICOLON">Constant: GLFW_KEY_SEMICOLON</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_SEMICOLON 59)
```

````
/* ; */
````

<h4 id="symbol:GLFW:GLFW_KEY_EQUAL">Constant: GLFW_KEY_EQUAL</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_EQUAL 61)
```

````
/* = */
````

<h4 id="symbol:GLFW:GLFW_KEY_A">Constant: GLFW_KEY_A</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_A 65)
```

<h4 id="symbol:GLFW:GLFW_KEY_B">Constant: GLFW_KEY_B</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_B 66)
```

<h4 id="symbol:GLFW:GLFW_KEY_C">Constant: GLFW_KEY_C</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_C 67)
```

<h4 id="symbol:GLFW:GLFW_KEY_D">Constant: GLFW_KEY_D</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_D 68)
```

<h4 id="symbol:GLFW:GLFW_KEY_E">Constant: GLFW_KEY_E</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_E 69)
```

<h4 id="symbol:GLFW:GLFW_KEY_F">Constant: GLFW_KEY_F</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F 70)
```

<h4 id="symbol:GLFW:GLFW_KEY_G">Constant: GLFW_KEY_G</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_G 71)
```

<h4 id="symbol:GLFW:GLFW_KEY_H">Constant: GLFW_KEY_H</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_H 72)
```

<h4 id="symbol:GLFW:GLFW_KEY_I">Constant: GLFW_KEY_I</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_I 73)
```

<h4 id="symbol:GLFW:GLFW_KEY_J">Constant: GLFW_KEY_J</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_J 74)
```

<h4 id="symbol:GLFW:GLFW_KEY_K">Constant: GLFW_KEY_K</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_K 75)
```

<h4 id="symbol:GLFW:GLFW_KEY_L">Constant: GLFW_KEY_L</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_L 76)
```

<h4 id="symbol:GLFW:GLFW_KEY_M">Constant: GLFW_KEY_M</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_M 77)
```

<h4 id="symbol:GLFW:GLFW_KEY_N">Constant: GLFW_KEY_N</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_N 78)
```

<h4 id="symbol:GLFW:GLFW_KEY_O">Constant: GLFW_KEY_O</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_O 79)
```

<h4 id="symbol:GLFW:GLFW_KEY_P">Constant: GLFW_KEY_P</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_P 80)
```

<h4 id="symbol:GLFW:GLFW_KEY_Q">Constant: GLFW_KEY_Q</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_Q 81)
```

<h4 id="symbol:GLFW:GLFW_KEY_R">Constant: GLFW_KEY_R</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_R 82)
```

<h4 id="symbol:GLFW:GLFW_KEY_S">Constant: GLFW_KEY_S</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_S 83)
```

<h4 id="symbol:GLFW:GLFW_KEY_T">Constant: GLFW_KEY_T</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_T 84)
```

<h4 id="symbol:GLFW:GLFW_KEY_U">Constant: GLFW_KEY_U</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_U 85)
```

<h4 id="symbol:GLFW:GLFW_KEY_V">Constant: GLFW_KEY_V</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_V 86)
```

<h4 id="symbol:GLFW:GLFW_KEY_W">Constant: GLFW_KEY_W</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_W 87)
```

<h4 id="symbol:GLFW:GLFW_KEY_X">Constant: GLFW_KEY_X</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_X 88)
```

<h4 id="symbol:GLFW:GLFW_KEY_Y">Constant: GLFW_KEY_Y</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_Y 89)
```

<h4 id="symbol:GLFW:GLFW_KEY_Z">Constant: GLFW_KEY_Z</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_Z 90)
```

<h4 id="symbol:GLFW:GLFW_KEY_LEFT_BRACKET">Constant: GLFW_KEY_LEFT_BRACKET</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_BRACKET 91)
```

````
/* [ */
````

<h4 id="symbol:GLFW:GLFW_KEY_BACKSLASH">Constant: GLFW_KEY_BACKSLASH</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_BACKSLASH 92)
```

````
/* \ */
````

<h4 id="symbol:GLFW:GLFW_KEY_RIGHT_BRACKET">Constant: GLFW_KEY_RIGHT_BRACKET</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_BRACKET 93)
```

````
/* ] */
````

<h4 id="symbol:GLFW:GLFW_KEY_GRAVE_ACCENT">Constant: GLFW_KEY_GRAVE_ACCENT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_GRAVE_ACCENT 96)
```

````
/* ` */
````

<h4 id="symbol:GLFW:GLFW_KEY_WORLD1">Constant: GLFW_KEY_WORLD1</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_WORLD1 161)
```

````
/* non_US #1 */
````

<h4 id="symbol:GLFW:GLFW_KEY_WORLD2">Constant: GLFW_KEY_WORLD2</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_WORLD2 162)
```

````
/* non_US #2 */
````

<h4 id="symbol:GLFW:GLFW_KEY_ESCAPE">Constant: GLFW_KEY_ESCAPE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_ESCAPE 256)
```

<h4 id="symbol:GLFW:GLFW_KEY_ENTER">Constant: GLFW_KEY_ENTER</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_ENTER 257)
```

<h4 id="symbol:GLFW:GLFW_KEY_TAB">Constant: GLFW_KEY_TAB</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_TAB 258)
```

<h4 id="symbol:GLFW:GLFW_KEY_BACKSPACE">Constant: GLFW_KEY_BACKSPACE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_BACKSPACE 259)
```

<h4 id="symbol:GLFW:GLFW_KEY_INSERT">Constant: GLFW_KEY_INSERT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_INSERT 260)
```

<h4 id="symbol:GLFW:GLFW_KEY_DELETE">Constant: GLFW_KEY_DELETE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_DELETE 261)
```

<h4 id="symbol:GLFW:GLFW_KEY_RIGHT">Constant: GLFW_KEY_RIGHT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT 262)
```

<h4 id="symbol:GLFW:GLFW_KEY_LEFT">Constant: GLFW_KEY_LEFT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT 263)
```

<h4 id="symbol:GLFW:GLFW_KEY_DOWN">Constant: GLFW_KEY_DOWN</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_DOWN 264)
```

<h4 id="symbol:GLFW:GLFW_KEY_UP">Constant: GLFW_KEY_UP</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_UP 265)
```

<h4 id="symbol:GLFW:GLFW_KEY_PAGE_UP">Constant: GLFW_KEY_PAGE_UP</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_PAGE_UP 266)
```

<h4 id="symbol:GLFW:GLFW_KEY_PAGE_DOWN">Constant: GLFW_KEY_PAGE_DOWN</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_PAGE_DOWN 267)
```

<h4 id="symbol:GLFW:GLFW_KEY_HOME">Constant: GLFW_KEY_HOME</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_HOME 268)
```

<h4 id="symbol:GLFW:GLFW_KEY_END">Constant: GLFW_KEY_END</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_END 269)
```

<h4 id="symbol:GLFW:GLFW_KEY_CAPS_LOCK">Constant: GLFW_KEY_CAPS_LOCK</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_CAPS_LOCK 280)
```

<h4 id="symbol:GLFW:GLFW_KEY_SCROLL_LOCK">Constant: GLFW_KEY_SCROLL_LOCK</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_SCROLL_LOCK 281)
```

<h4 id="symbol:GLFW:GLFW_KEY_NUM_LOCK">Constant: GLFW_KEY_NUM_LOCK</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_NUM_LOCK 282)
```

<h4 id="symbol:GLFW:GLFW_KEY_PRINT_SCREEN">Constant: GLFW_KEY_PRINT_SCREEN</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_PRINT_SCREEN 283)
```

<h4 id="symbol:GLFW:GLFW_KEY_PAUSE">Constant: GLFW_KEY_PAUSE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_PAUSE 284)
```

<h4 id="symbol:GLFW:GLFW_KEY_F1">Constant: GLFW_KEY_F1</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F1 290)
```

<h4 id="symbol:GLFW:GLFW_KEY_F2">Constant: GLFW_KEY_F2</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F2 291)
```

<h4 id="symbol:GLFW:GLFW_KEY_F3">Constant: GLFW_KEY_F3</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F3 292)
```

<h4 id="symbol:GLFW:GLFW_KEY_F4">Constant: GLFW_KEY_F4</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F4 293)
```

<h4 id="symbol:GLFW:GLFW_KEY_F5">Constant: GLFW_KEY_F5</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F5 294)
```

<h4 id="symbol:GLFW:GLFW_KEY_F6">Constant: GLFW_KEY_F6</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F6 295)
```

<h4 id="symbol:GLFW:GLFW_KEY_F7">Constant: GLFW_KEY_F7</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F7 296)
```

<h4 id="symbol:GLFW:GLFW_KEY_F8">Constant: GLFW_KEY_F8</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F8 297)
```

<h4 id="symbol:GLFW:GLFW_KEY_F9">Constant: GLFW_KEY_F9</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F9 298)
```

<h4 id="symbol:GLFW:GLFW_KEY_F10">Constant: GLFW_KEY_F10</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F10 299)
```

<h4 id="symbol:GLFW:GLFW_KEY_F11">Constant: GLFW_KEY_F11</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F11 300)
```

<h4 id="symbol:GLFW:GLFW_KEY_F12">Constant: GLFW_KEY_F12</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F12 301)
```

<h4 id="symbol:GLFW:GLFW_KEY_F13">Constant: GLFW_KEY_F13</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F13 302)
```

<h4 id="symbol:GLFW:GLFW_KEY_F14">Constant: GLFW_KEY_F14</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F14 303)
```

<h4 id="symbol:GLFW:GLFW_KEY_F15">Constant: GLFW_KEY_F15</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F15 304)
```

<h4 id="symbol:GLFW:GLFW_KEY_F16">Constant: GLFW_KEY_F16</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F16 305)
```

<h4 id="symbol:GLFW:GLFW_KEY_F17">Constant: GLFW_KEY_F17</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F17 306)
```

<h4 id="symbol:GLFW:GLFW_KEY_F18">Constant: GLFW_KEY_F18</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F18 307)
```

<h4 id="symbol:GLFW:GLFW_KEY_F19">Constant: GLFW_KEY_F19</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F19 308)
```

<h4 id="symbol:GLFW:GLFW_KEY_F20">Constant: GLFW_KEY_F20</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F20 309)
```

<h4 id="symbol:GLFW:GLFW_KEY_F21">Constant: GLFW_KEY_F21</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F21 310)
```

<h4 id="symbol:GLFW:GLFW_KEY_F22">Constant: GLFW_KEY_F22</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F22 311)
```

<h4 id="symbol:GLFW:GLFW_KEY_F23">Constant: GLFW_KEY_F23</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F23 312)
```

<h4 id="symbol:GLFW:GLFW_KEY_F24">Constant: GLFW_KEY_F24</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F24 313)
```

<h4 id="symbol:GLFW:GLFW_KEY_F25">Constant: GLFW_KEY_F25</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_F25 314)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_0">Constant: GLFW_KEY_KP_0</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_0 320)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_1">Constant: GLFW_KEY_KP_1</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_1 321)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_2">Constant: GLFW_KEY_KP_2</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_2 322)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_3">Constant: GLFW_KEY_KP_3</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_3 323)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_4">Constant: GLFW_KEY_KP_4</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_4 324)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_5">Constant: GLFW_KEY_KP_5</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_5 325)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_6">Constant: GLFW_KEY_KP_6</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_6 326)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_7">Constant: GLFW_KEY_KP_7</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_7 327)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_8">Constant: GLFW_KEY_KP_8</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_8 328)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_9">Constant: GLFW_KEY_KP_9</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_9 329)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_DECIMAL">Constant: GLFW_KEY_KP_DECIMAL</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_DECIMAL 330)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_DIVIDE">Constant: GLFW_KEY_KP_DIVIDE</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_DIVIDE 331)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_MULTIPLY">Constant: GLFW_KEY_KP_MULTIPLY</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_MULTIPLY 332)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_SUBTRACT">Constant: GLFW_KEY_KP_SUBTRACT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_SUBTRACT 333)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_ADD">Constant: GLFW_KEY_KP_ADD</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_ADD 334)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_ENTER">Constant: GLFW_KEY_KP_ENTER</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_ENTER 335)
```

<h4 id="symbol:GLFW:GLFW_KEY_KP_EQUAL">Constant: GLFW_KEY_KP_EQUAL</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_KP_EQUAL 336)
```

<h4 id="symbol:GLFW:GLFW_KEY_LEFT_SHIFT">Constant: GLFW_KEY_LEFT_SHIFT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_SHIFT 340)
```

<h4 id="symbol:GLFW:GLFW_KEY_LEFT_CONTROL">Constant: GLFW_KEY_LEFT_CONTROL</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_CONTROL 341)
```

<h4 id="symbol:GLFW:GLFW_KEY_LEFT_ALT">Constant: GLFW_KEY_LEFT_ALT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_ALT 342)
```

<h4 id="symbol:GLFW:GLFW_KEY_LEFT_SUPER">Constant: GLFW_KEY_LEFT_SUPER</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_SUPER 343)
```

<h4 id="symbol:GLFW:GLFW_KEY_RIGHT_SHIFT">Constant: GLFW_KEY_RIGHT_SHIFT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_SHIFT 344)
```

<h4 id="symbol:GLFW:GLFW_KEY_RIGHT_CONTROL">Constant: GLFW_KEY_RIGHT_CONTROL</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_CONTROL 345)
```

<h4 id="symbol:GLFW:GLFW_KEY_RIGHT_ALT">Constant: GLFW_KEY_RIGHT_ALT</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_ALT 346)
```

<h4 id="symbol:GLFW:GLFW_KEY_RIGHT_SUPER">Constant: GLFW_KEY_RIGHT_SUPER</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_SUPER 347)
```

<h4 id="symbol:GLFW:GLFW_KEY_MENU">Constant: GLFW_KEY_MENU</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_MENU 348)
```

<h4 id="symbol:GLFW:GLFW_KEY_LAST">Constant: GLFW_KEY_LAST</h4>

```Lisp
(defconstant GLFW:GLFW_KEY_LAST GLFW:GLFW_KEY_MENU)
```

<h4 id="symbol:GLFW:GLFW_MOD_SHIFT">Constant: GLFW_MOD_SHIFT</h4>

```Lisp
(defconstant GLFW:GLFW_MOD_SHIFT 1)
```

````
If this bit is set one or more Shift keys were held down.
````

<h4 id="symbol:GLFW:GLFW_MOD_CONTROL">Constant: GLFW_MOD_CONTROL</h4>

```Lisp
(defconstant GLFW:GLFW_MOD_CONTROL 2)
```

````
If this bit is set one or more Control keys were held down.
````

<h4 id="symbol:GLFW:GLFW_MOD_ALT">Constant: GLFW_MOD_ALT</h4>

```Lisp
(defconstant GLFW:GLFW_MOD_ALT 4)
```

````
If this bit is set one or more Alt keys were held down.
````

<h4 id="symbol:GLFW:GLFW_MOD_SUPER">Constant: GLFW_MOD_SUPER</h4>

```Lisp
(defconstant GLFW:GLFW_MOD_SUPER 8)
```

````
If this bit is set one or more Super keys were held down.
````

<h4 id="symbol:GLFW:GLFW_MOD_CAPS_LOCK">Constant: GLFW_MOD_CAPS_LOCK</h4>

```Lisp
(defconstant GLFW:GLFW_MOD_CAPS_LOCK 16)
```

````
If this bit is set the Caps Lock key is enabled.
````

<h4 id="symbol:GLFW:GLFW_MOD_NUM_LOCK">Constant: GLFW_MOD_NUM_LOCK</h4>

```Lisp
(defconstant GLFW:GLFW_MOD_NUM_LOCK 32)
```

````
If this bit is set the Num Lock key is enabled.
````

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_1">Constant: GLFW_MOUSE_BUTTON_1</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_1 0)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_2">Constant: GLFW_MOUSE_BUTTON_2</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_2 1)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_3">Constant: GLFW_MOUSE_BUTTON_3</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_3 2)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_4">Constant: GLFW_MOUSE_BUTTON_4</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_4 3)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_5">Constant: GLFW_MOUSE_BUTTON_5</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_5 4)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_6">Constant: GLFW_MOUSE_BUTTON_6</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_6 5)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_7">Constant: GLFW_MOUSE_BUTTON_7</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_7 6)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_8">Constant: GLFW_MOUSE_BUTTON_8</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_8 7)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_LAST">Constant: GLFW_MOUSE_BUTTON_LAST</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_LAST GLFW:GLFW_MOUSE_BUTTON_8)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_LEFT">Constant: GLFW_MOUSE_BUTTON_LEFT</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_LEFT GLFW:GLFW_MOUSE_BUTTON_1)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_RIGHT">Constant: GLFW_MOUSE_BUTTON_RIGHT</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_RIGHT GLFW:GLFW_MOUSE_BUTTON_2)
```

<h4 id="symbol:GLFW:GLFW_MOUSE_BUTTON_MIDDLE">Constant: GLFW_MOUSE_BUTTON_MIDDLE</h4>

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_MIDDLE GLFW:GLFW_MOUSE_BUTTON_3)
```

<h4 id="symbol:GLFW:GLFW_ARROW_CURSOR">Constant: GLFW_ARROW_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_ARROW_CURSOR 221185)
```

````
The regular arrow cursor shape.
````

<h4 id="symbol:GLFW:GLFW_IBEAM_CURSOR">Constant: GLFW_IBEAM_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_IBEAM_CURSOR 221185)
```

````
The text input I_beam cursor shape.
````

<h4 id="symbol:GLFW:GLFW_CROSSHAIR_CURSOR">Constant: GLFW_CROSSHAIR_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_CROSSHAIR_CURSOR 221185)
```

````
The crosshair shape.
````

<h4 id="symbol:GLFW:GLFW_HAND_CURSOR">Constant: GLFW_HAND_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_HAND_CURSOR 221185)
```

````
The hand shape.
````

<h4 id="symbol:GLFW:GLFW_HRESIZE_CURSOR">Constant: GLFW_HRESIZE_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_HRESIZE_CURSOR 221185)
```

````
The horizontal resize arrow shape.
````

<h4 id="symbol:GLFW:GLFW_VRESIZE_CURSOR">Constant: GLFW_VRESIZE_CURSOR</h4>

```Lisp
(defconstant GLFW:GLFW_VRESIZE_CURSOR 221185)
```

````
The vertical resize arrow shape.
````

<h4 id="symbol:GLFW:GLFW_CURSOR">Constant: GLFW_CURSOR</h4>

```Lisp
(defconstant GLFW_CURSOR 208897)
```

<h4 id="symbol:GLFW:GLFW_STICKY_KEYS">Constant: GLFW_STICKY_KEYS</h4>

```Lisp
(defconstant GLFW:GLFW_STICKY_KEYS 208898)
```

<h4 id="symbol:GLFW:GLFW_STICKY_MOUSE_BUTTONS">Constant: GLFW_STICKY_MOUSE_BUTTONS</h4>

```Lisp
(defconstant GLFW:GLFW_STICKY_MOUSE_BUTTONS 208899)
```

<h4 id="symbol:GLFW:GLFW_LOCK_KEY_MODS">Constant: GLFW_LOCK_KEY_MODS</h4>

```Lisp
(defconstant GLFW:GLFW_LOCK_KEY_MODS 208900)
```

<h4 id="symbol:GLFW:GLFW_RAW_MOUSE_MOTION">Constant: GLFW_RAW_MOUSE_MOTION</h4>

```Lisp
(defconstant GLFW:GLFW_RAW_MOUSE_MOTION 208901)
```

<h4 id="symbol:GLFW:GLFW_CURSOR_NORMAL">Constant: GLFW_CURSOR_NORMAL</h4>

```Lisp
(defconstant GLFW:GLFW_CURSOR_NORMAL 212993)
```

<h4 id="symbol:GLFW:GLFW_CURSOR_HIDDEN">Constant: GLFW_CURSOR_HIDDEN</h4>

```Lisp
(defconstant GLFW:GLFW_CURSOR_HIDDEN 212994)
```

<h4 id="symbol:GLFW:GLFW_CURSOR_DISABLED">Constant: GLFW_CURSOR_DISABLED</h4>

```Lisp
(defconstant GLFW:GLFW_CURSOR_DISABLED 212995)
```

<h4 id="symbol:GLFW:GLFW_CONNECTED">Constant: GLFW_CONNECTED</h4>

```Lisp
(defconstant GLFW:GLFW_CONNECTED 262145)
```

<h4 id="symbol:GLFW:GLFW_DISCONNECTED">Constant: GLFW_DISCONNECTED</h4>

```Lisp
(defconstant GLFW:GLFW_DISCONNECTED 262146)
```

<h2 id="header:ADP:HEADERTAG18">Types</h2>

<h4 id="type:GLFW:CURSOR">Type: CURSOR</h4>

```Lisp
(deftype CURSOR NIL
  ...)
```

````
Opaque cursor object.
````

<h4 id="type:GLFW:MOUSEBUTTONFUN">Type: MOUSEBUTTONFUN</h4>

```Lisp
(deftype MOUSEBUTTONFUN NIL
  ...)
```

````
The function pointer type for mouse button callbacks.
````

<h4 id="type:GLFW:CURSORPOSFUN">Type: CURSORPOSFUN</h4>

```Lisp
(deftype CURSORPOSFUN NIL
  ...)
```

````
The function pointer type for cursor position callbacks.
````

<h4 id="type:GLFW:CURSORENTERFUN">Type: CURSORENTERFUN</h4>

```Lisp
(deftype CURSORENTERFUN NIL
  ...)
```

````
The function pointer type for cursor enter/leave callbacks.
````

<h4 id="type:GLFW:SCROLLFUN">Type: SCROLLFUN</h4>

```Lisp
(deftype SCROLLFUN NIL
  ...)
```

````
The function pointer type for scroll callbacks.
````

<h4 id="type:GLFW:KEYFUN">Type: KEYFUN</h4>

```Lisp
(deftype KEYFUN NIL
  ...)
```

````
The function pointer type for keyboard key callbacks.
````

<h4 id="type:GLFW:CHARFUN">Type: CHARFUN</h4>

```Lisp
(deftype CHARFUN NIL
  ...)
```

````
The function pointer type for Unicode character callbacks.
````

<h4 id="type:GLFW:CHARMODSFUN">Type: CHARMODSFUN</h4>

```Lisp
(deftype CHARMODSFUN NIL
  ...)
```

````
The function pointer type for Unicode character with modifiers callbacks.
````

<h4 id="type:GLFW:DROPFUN">Type: DROPFUN</h4>

```Lisp
(deftype DROPFUN NIL
  ...)
```

````
The function pointer type for path drop callbacks.
````

<h4 id="type:GLFW:JOYSTICKFUN">Type: JOYSTICKFUN</h4>

```Lisp
(deftype JOYSTICKFUN NIL
  ...)
```

````
The function pointer type for joystick configuration callbacks.
````

<h3 id="header:ADP:HEADERTAG19">GLFWgamepadstate</h3>

<h4 id="type:GLFW:GAMEPADSTATE">Type: GAMEPADSTATE</h4>

```Lisp
(deftype GAMEPADSTATE NIL
  ...)
```

<h4 id="function:GLFW:GAMEPADSTATE-BUTTONS">Function: GAMEPADSTATE-BUTTONS</h4>

```Lisp
(defun GLFW:GAMEPADSTATE-BUTTONS (G1742 &OPTIONAL (INDEX NIL))
  ...)
```

<h4 id="function:GLFW:GAMEPADSTATE-AXES">Function: GAMEPADSTATE-AXES</h4>

```Lisp
(defun GLFW:GAMEPADSTATE-AXES (G1743 &OPTIONAL (INDEX NIL))
  ...)
```

<h2 id="header:ADP:HEADERTAG20">Functions</h2>

<h3 id="header:ADP:HEADERTAG21">glfwGetInputMode</h3>

<h4 id="function:GLFW:GET-INPUT-MODE">Function: GET-INPUT-MODE</h4>

```Lisp
(defun GLFW:GET-INPUT-MODE (WINDOW MODE)
  ...)
```

````
Returns the value of an input option for the specified window.
````

<h3 id="header:ADP:HEADERTAG22">glfwSetInputMode</h3>

<h4 id="function:GLFW:SET-INPUT-MODE">Function: SET-INPUT-MODE</h4>

```Lisp
(defun GLFW:SET-INPUT-MODE (WINDOW MODE VALUE)
  ...)
```

````
Sets an input option for the specified window.
````

<h3 id="header:ADP:HEADERTAG23">glfwRawMouseMotionSupported</h3>

<h4 id="function:GLFW:RAW-MOUSE-MOTION-SUPPORTED">Function: RAW-MOUSE-MOTION-SUPPORTED</h4>

```Lisp
(defun GLFW:RAW-MOUSE-MOTION-SUPPORTED NIL
  ...)
```

````
Returns whether raw mouse motion is supported (t or NIL).
````

<h3 id="header:ADP:HEADERTAG24">glfwGetKeyName</h3>

<h4 id="function:GLFW:GET-KEY-NAME">Function: GET-KEY-NAME</h4>

```Lisp
(defun GLFW:GET-KEY-NAME (KEY SCANCODE)
  ...)
```

````
Returns the layout-specific name of the specified printable key.
````

<h3 id="header:ADP:HEADERTAG25">glfwGetKeyScancode</h3>

<h4 id="function:GLFW:GET-KEY-SCANCODE">Function: GET-KEY-SCANCODE</h4>

```Lisp
(defun GLFW:GET-KEY-SCANCODE (KEY)
  ...)
```

````
Returns the platform-specific scancode of the specified key.
````

<h3 id="header:ADP:HEADERTAG26">glfwGetKey</h3>

<h4 id="function:GLFW:GET-KEY">Function: GET-KEY</h4>

```Lisp
(defun GLFW:GET-KEY (WINDOW KEY)
  ...)
```

````
Returns the last reported state of a keyboard key for the specified window.
````

<h3 id="header:ADP:HEADERTAG27">glfwGetMouseButton</h3>

<h4 id="function:GLFW:GET-MOUSE-BUTTON">Function: GET-MOUSE-BUTTON</h4>

```Lisp
(defun GLFW:GET-MOUSE-BUTTON (WINDOW BUTTON)
  ...)
```

````
Returns the last reported state of a mouse button for the specified window.
````

<h3 id="header:ADP:HEADERTAG28">glfwGetCursorPos</h3>

<h4 id="function:GLFW:GET-CURSOR-POS">Function: GET-CURSOR-POS</h4>

```Lisp
(defun GLFW:GET-CURSOR-POS (WINDOW)
  ...)
```

````
Returns the x-position and y-position of the cursor relative to the content area of the window.
````

<h3 id="header:ADP:HEADERTAG29">glfwSetCursorPos</h3>

<h4 id="function:GLFW:SET-CURSOR-POS">Function: SET-CURSOR-POS</h4>

```Lisp
(defun GLFW:SET-CURSOR-POS (WINDOW XPOS YPOS)
  ...)
```

````
Sets the position of the cursor, relative to the content area of the window.
````

<h3 id="header:ADP:HEADERTAG30">glfwCreateCursor</h3>

<h4 id="function:GLFW:CREATE-CURSOR">Function: CREATE-CURSOR</h4>

```Lisp
(defun GLFW:CREATE-CURSOR (IMAGE XHOT YHOT)
  ...)
```

````
Creates a custom cursor.
````

<h3 id="header:ADP:HEADERTAG31">glfwCreateStandardCursor</h3>

<h4 id="function:GLFW:CREATE-STANDARD-CURSOR">Function: CREATE-STANDARD-CURSOR</h4>

```Lisp
(defun GLFW:CREATE-STANDARD-CURSOR (SHAPE)
  ...)
```

````
Creates a cursor with a standard shape.
````

<h3 id="header:ADP:HEADERTAG32">glfwDestroyCursor</h3>

<h4 id="function:GLFW:DESTROY-CURSOR">Function: DESTROY-CURSOR</h4>

```Lisp
(defun GLFW:DESTROY-CURSOR (CURSOR)
  ...)
```

````
Destroys a cursor.
````

<h3 id="header:ADP:HEADERTAG33">glfwSetCursor</h3>

<h4 id="function:GLFW:SET-CURSOR">Function: SET-CURSOR</h4>

```Lisp
(defun GLFW:SET-CURSOR (WINDOW CURSOR)
  ...)
```

````
Sets the cursor for the window.
````

<h3 id="header:ADP:HEADERTAG34">glfwSetKeyCallback</h3>

<h4 id="function:GLFW:DEFINE-KEY-CALLBACK">Macro: DEFINE-KEY-CALLBACK</h4>

```Lisp
(defmacro DEFINE-KEY-CALLBACK (CALLBACK-NAME1759
                               (WINDOW KEY SCANCODE ACTION MODS) &BODY
                               CALLBACK-BODY1760)
  ...)
```

````
Defines a key callback.
````

<h4 id="function:GLFW:SET-KEY-CALLBACK">Function: SET-KEY-CALLBACK</h4>

```Lisp
(defun GLFW:SET-KEY-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the key callback.
````

<h3 id="header:ADP:HEADERTAG35">glfwSetCharCallback</h3>

<h4 id="function:GLFW:DEFINE-CHAR-CALLBACK">Macro: DEFINE-CHAR-CALLBACK</h4>

```Lisp
(defmacro DEFINE-CHAR-CALLBACK (CALLBACK-NAME1769 (WINDOW CODEPOINT) &BODY
                                CALLBACK-BODY1770)
  ...)
```

````
Defines an Unicode character callback.
````

<h4 id="function:GLFW:SET-CHAR-CALLBACK">Function: SET-CHAR-CALLBACK</h4>

```Lisp
(defun GLFW:SET-CHAR-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the Unicode character callback.
````

<h3 id="header:ADP:HEADERTAG36">glfwSetCharModsCallback</h3>

<h4 id="function:GLFW:DEFINE-CHAR-MODS-CALLBACK">Macro: DEFINE-CHAR-MODS-CALLBACK</h4>

```Lisp
(defmacro DEFINE-CHAR-MODS-CALLBACK (CALLBACK-NAME1776 (WINDOW CODEPOINT MODS)
                                     &BODY CALLBACK-BODY1777)
  ...)
```

````
Defines an Unicode character with modifiers callback.
````

<h4 id="function:GLFW:SET-CHAR-MODS-CALLBACK">Function: SET-CHAR-MODS-CALLBACK</h4>

```Lisp
(defun GLFW:SET-CHAR-MODS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the Unicode character with modifiers callback.
````

<h3 id="header:ADP:HEADERTAG37">glfwSetMouseButtonCallback</h3>

<h4 id="function:GLFW:DEFINE-MOUSE-BUTTON-CALLBACK">Macro: DEFINE-MOUSE-BUTTON-CALLBACK</h4>

```Lisp
(defmacro DEFINE-MOUSE-BUTTON-CALLBACK (CALLBACK-NAME1784
                                        (WINDOW BUTTON ACTION MODS) &BODY
                                        CALLBACK-BODY1785)
  ...)
```

````
Defines a mouse button callback.
````

<h4 id="function:GLFW:SET-MOUSE-BUTTON-CALLBACK">Function: SET-MOUSE-BUTTON-CALLBACK</h4>

```Lisp
(defun GLFW:SET-MOUSE-BUTTON-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the mouse button callback.
````

<h3 id="header:ADP:HEADERTAG38">glfwSetCursorPosCallback</h3>

<h4 id="function:GLFW:DEFINE-CURSOR-POS-CALLBACK">Macro: DEFINE-CURSOR-POS-CALLBACK</h4>

```Lisp
(defmacro DEFINE-CURSOR-POS-CALLBACK (CALLBACK-NAME1793 (WINDOW XPOS YPOS)
                                      &BODY CALLBACK-BODY1794)
  ...)
```

````
Defines a cursor position callback.
````

<h4 id="function:GLFW:SET-CURSOR-POS-CALLBACK">Function: SET-CURSOR-POS-CALLBACK</h4>

```Lisp
(defun GLFW:SET-CURSOR-POS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the cursor position callback.
````

<h3 id="header:ADP:HEADERTAG39">glfwSetCursorEnterCallback</h3>

<h4 id="function:GLFW:DEFINE-CURSOR-ENTER-CALLBACK">Macro: DEFINE-CURSOR-ENTER-CALLBACK</h4>

```Lisp
(defmacro DEFINE-CURSOR-ENTER-CALLBACK (CALLBACK-NAME1801 (WINDOW ENTERED)
                                        &BODY CALLBACK-BODY1802)
  ...)
```

````
Defines a cursor enter/leave callback.
````

<h4 id="function:GLFW:SET-CURSOR-ENTER-CALLBACK">Function: SET-CURSOR-ENTER-CALLBACK</h4>

```Lisp
(defun GLFW:SET-CURSOR-ENTER-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the cursor enter/leave callback.
````

<h3 id="header:ADP:HEADERTAG40">glfwSetScrollCallback</h3>

<h4 id="function:GLFW:DEFINE-SCROLL-CALLBACK">Macro: DEFINE-SCROLL-CALLBACK</h4>

```Lisp
(defmacro DEFINE-SCROLL-CALLBACK (CALLBACK-NAME1808 (WINDOW XOFFSET YOFFSET)
                                  &BODY CALLBACK-BODY1809)
  ...)
```

````
Defines a scroll callback.
````

<h4 id="function:GLFW:SET-SCROLL-CALLBACK">Function: SET-SCROLL-CALLBACK</h4>

```Lisp
(defun GLFW:SET-SCROLL-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the scroll callback.
````

<h3 id="header:ADP:HEADERTAG41">glfwSetDropCallback</h3>

<h4 id="function:GLFW:DEFINE-DROP-CALLBACK">Macro: DEFINE-DROP-CALLBACK</h4>

```Lisp
(defmacro DEFINE-DROP-CALLBACK (CALLBACK-NAME1816 (WINDOW PATHS) &BODY
                                CALLBACK-BODY1817)
  ...)
```

````
Defines a path drop callback. The argument PATHS is a vector.
````

<h4 id="function:GLFW:SET-DROP-CALLBACK">Function: SET-DROP-CALLBACK</h4>

```Lisp
(defun GLFW:SET-DROP-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the path drop callback.
````

<h3 id="header:ADP:HEADERTAG42">glfwJoystickPresent</h3>

<h4 id="function:GLFW:JOYSTICK-PRESENT">Function: JOYSTICK-PRESENT</h4>

```Lisp
(defun GLFW:JOYSTICK-PRESENT (JID)
  ...)
```

````
Returns whether the specified joystick is present (t or NIL).
````

<h3 id="header:ADP:HEADERTAG43">glfwGetJoystickAxes</h3>

<h4 id="function:GLFW:GET-JOYSTICK-AXES">Function: GET-JOYSTICK-AXES</h4>

```Lisp
(defun GLFW:GET-JOYSTICK-AXES (JID)
  ...)
```

````
Returns a vector (or NIL) with the values of all axes of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG44">glfwGetJoystickButtons</h3>

<h4 id="function:GLFW:GET-JOYSTICK-BUTTONS">Function: GET-JOYSTICK-BUTTONS</h4>

```Lisp
(defun GLFW:GET-JOYSTICK-BUTTONS (JID)
  ...)
```

````
Returns a vector (or NIL) with the state of all buttons of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG45">glfwGetJoystickHats</h3>

<h4 id="function:GLFW:GET-JOYSTICK-HATS">Function: GET-JOYSTICK-HATS</h4>

```Lisp
(defun GLFW:GET-JOYSTICK-HATS (JID)
  ...)
```

````
Returns a vector (or NIL) with the state of all hats of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG46">glfwGetJoystickName</h3>

<h4 id="function:GLFW:GET-JOYSTICK-NAME">Function: GET-JOYSTICK-NAME</h4>

```Lisp
(defun GLFW:GET-JOYSTICK-NAME (JID)
  ...)
```

````
Returns the name (or NIL) of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG47">glfwGetJoystickGUID</h3>

<h4 id="function:GLFW:GET-JOYSTICK-GUID">Function: GET-JOYSTICK-GUID</h4>

```Lisp
(defun GLFW:GET-JOYSTICK-GUID (JID)
  ...)
```

````
Returns the SDL compatible GUID (or NIL) of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG48">glfwSetJoystickUserPointer</h3>

<h4 id="function:GLFW:SET-JOYSTICK-USER-POINTER">Function: SET-JOYSTICK-USER-POINTER</h4>

```Lisp
(defun GLFW:SET-JOYSTICK-USER-POINTER (JID DATA)
  ...)
```

````
Sets the user pointer of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG49">glfwGetJoystickUserPointer</h3>

<h4 id="function:GLFW:GET-JOYSTICK-USER-POINTER">Function: GET-JOYSTICK-USER-POINTER</h4>

```Lisp
(defun GLFW:GET-JOYSTICK-USER-POINTER (JID)
  ...)
```

````
Returns the user pointer of the specified joystick.
````

<h3 id="header:ADP:HEADERTAG50">glfwJoystickIsGamepad</h3>

<h4 id="function:GLFW:JOYSTICK-IS-GAMEPAD">Function: JOYSTICK-IS-GAMEPAD</h4>

```Lisp
(defun GLFW:JOYSTICK-IS-GAMEPAD (JID)
  ...)
```

````
Returns whether the specified joystick has a gamepad mapping (t or NIL).
````

<h3 id="header:ADP:HEADERTAG51">glfwSetJoystickCallback</h3>

<h4 id="function:GLFW:DEFINE-JOYSTICK-CALLBACK">Macro: DEFINE-JOYSTICK-CALLBACK</h4>

```Lisp
(defmacro DEFINE-JOYSTICK-CALLBACK (CALLBACK-NAME1833 (JID EVENT) &BODY
                                    CALLBACK-BODY1834)
  ...)
```

````
Defines a joystick configuration callback.
````

<h4 id="function:GLFW:SET-JOYSTICK-CALLBACK">Function: SET-JOYSTICK-CALLBACK</h4>

```Lisp
(defun GLFW:SET-JOYSTICK-CALLBACK (CALLBACK)
  ...)
```

````
Sets the joystick configuration callback.
````

<h3 id="header:ADP:HEADERTAG52">glfwUpdateGamepadMappings</h3>

<h4 id="function:GLFW:UPDATE-GAMEPAD-MAPPINGS">Function: UPDATE-GAMEPAD-MAPPINGS</h4>

```Lisp
(defun GLFW:UPDATE-GAMEPAD-MAPPINGS (STRING)
  ...)
```

````
Adds the specified SDL_GameControllerDB gamepad mappings. Returns t or NIL.
````

<h3 id="header:ADP:HEADERTAG53">glfwGetGamepadName</h3>

<h4 id="function:GLFW:GET-GAMEPAD-NAME">Function: GET-GAMEPAD-NAME</h4>

```Lisp
(defun GLFW:GET-GAMEPAD-NAME (JID)
  ...)
```

````
Returns the human-readable gamepad name (or NIL) for the specified joystick.
````

<h3 id="header:ADP:HEADERTAG54">glfwGetGamepadState</h3>

<h4 id="function:GLFW:GET-GAMEPAD-STATE">Function: GET-GAMEPAD-STATE</h4>

```Lisp
(defun GLFW:GET-GAMEPAD-STATE (JID)
  ...)
```

````
Returns the state of the specified joystick remapped as a gamepad (or NIL).
````

<h3 id="header:ADP:HEADERTAG55">glfwSetClipboardString</h3>

<h4 id="function:GLFW:SET-CLIPBOARD-STRING">Function: SET-CLIPBOARD-STRING</h4>

```Lisp
(defun GLFW:SET-CLIPBOARD-STRING (WINDOW STRING)
  ...)
```

````
Sets the clipboard to the specified string.
````

<h3 id="header:ADP:HEADERTAG56">glfwGetClipboardString</h3>

<h4 id="function:GLFW:GET-CLIPBOARD-STRING">Function: GET-CLIPBOARD-STRING</h4>

```Lisp
(defun GLFW:GET-CLIPBOARD-STRING (WINDOW)
  ...)
```

````
Returns the contents of the clipboard as a string.
````

<h3 id="header:ADP:HEADERTAG57">glfwGetTime</h3>

<h4 id="function:GLFW:GET-TIME">Function: GET-TIME</h4>

```Lisp
(defun GLFW:GET-TIME NIL
  ...)
```

````
Returns the GLFW time.
````

<h3 id="header:ADP:HEADERTAG58">glfwSetTime</h3>

<h4 id="function:GLFW:SET-TIME">Function: SET-TIME</h4>

```Lisp
(defun GLFW:SET-TIME (TIME)
  ...)
```

````
Sets the GLFW time.
````

<h3 id="header:ADP:HEADERTAG59">glfwGetTimerValue</h3>

<h4 id="function:GLFW:GET-TIMER-VALUE">Function: GET-TIMER-VALUE</h4>

```Lisp
(defun GLFW:GET-TIMER-VALUE NIL
  ...)
```

````
Returns the current value of the raw timer.
````

<h3 id="header:ADP:HEADERTAG60">glfwGetTimerFrequency</h3>

<h4 id="function:GLFW:GET-TIMER-FREQUENCY">Function: GET-TIMER-FREQUENCY</h4>

```Lisp
(defun GLFW:GET-TIMER-FREQUENCY NIL
  ...)
```

````
Returns the frequency, in Hz, of the raw timer.
````

