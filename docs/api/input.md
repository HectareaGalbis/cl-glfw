# Input reference

## Description

This is the reference documentation for input related functions and types.

* [Input reference](/docs/api/input.md#input-reference)
  * [Description](/docs/api/input.md#description)
  * [Constants](/docs/api/input.md#constants)
  * [Types](/docs/api/input.md#types)
    * [GLFWgamepadstate](/docs/api/input.md#glfwgamepadstate)
  * [Functions](/docs/api/input.md#functions)
    * [glfwGetInputMode](/docs/api/input.md#glfwgetinputmode)
    * [glfwSetInputMode](/docs/api/input.md#glfwsetinputmode)
    * [glfwRawMouseMotionSupported](/docs/api/input.md#glfwrawmousemotionsupported)
    * [glfwGetKeyName](/docs/api/input.md#glfwgetkeyname)
    * [glfwGetKeyScancode](/docs/api/input.md#glfwgetkeyscancode)
    * [glfwGetKey](/docs/api/input.md#glfwgetkey)
    * [glfwGetMouseButton](/docs/api/input.md#glfwgetmousebutton)
    * [glfwGetCursorPos](/docs/api/input.md#glfwgetcursorpos)
    * [glfwSetCursorPos](/docs/api/input.md#glfwsetcursorpos)
    * [glfwCreateCursor](/docs/api/input.md#glfwcreatecursor)
    * [glfwCreateStandardCursor](/docs/api/input.md#glfwcreatestandardcursor)
    * [glfwDestroyCursor](/docs/api/input.md#glfwdestroycursor)
    * [glfwSetCursor](/docs/api/input.md#glfwsetcursor)
    * [glfwSetKeyCallback](/docs/api/input.md#glfwsetkeycallback)
    * [glfwSetCharCallback](/docs/api/input.md#glfwsetcharcallback)
    * [glfwSetCharModsCallback](/docs/api/input.md#glfwsetcharmodscallback)
    * [glfwSetMouseButtonCallback](/docs/api/input.md#glfwsetmousebuttoncallback)
    * [glfwSetCursorPosCallback](/docs/api/input.md#glfwsetcursorposcallback)
    * [glfwSetCursorEnterCallback](/docs/api/input.md#glfwsetcursorentercallback)
    * [glfwSetScrollCallback](/docs/api/input.md#glfwsetscrollcallback)
    * [glfwSetDropCallback](/docs/api/input.md#glfwsetdropcallback)
    * [glfwJoystickPresent](/docs/api/input.md#glfwjoystickpresent)
    * [glfwGetJoystickAxes](/docs/api/input.md#glfwgetjoystickaxes)
    * [glfwGetJoystickButtons](/docs/api/input.md#glfwgetjoystickbuttons)
    * [glfwGetJoystickHats](/docs/api/input.md#glfwgetjoystickhats)
    * [glfwGetJoystickName](/docs/api/input.md#glfwgetjoystickname)
    * [glfwGetJoystickGUID](/docs/api/input.md#glfwgetjoystickguid)
    * [glfwSetJoystickUserPointer](/docs/api/input.md#glfwsetjoystickuserpointer)
    * [glfwGetJoystickUserPointer](/docs/api/input.md#glfwgetjoystickuserpointer)
    * [glfwJoystickIsGamepad](/docs/api/input.md#glfwjoystickisgamepad)
    * [glfwSetJoystickCallback](/docs/api/input.md#glfwsetjoystickcallback)
    * [glfwUpdateGamepadMappings](/docs/api/input.md#glfwupdategamepadmappings)
    * [glfwGetGamepadName](/docs/api/input.md#glfwgetgamepadname)
    * [glfwGetGamepadState](/docs/api/input.md#glfwgetgamepadstate)
    * [glfwSetClipboardString](/docs/api/input.md#glfwsetclipboardstring)
    * [glfwGetClipboardString](/docs/api/input.md#glfwgetclipboardstring)
    * [glfwGetTime](/docs/api/input.md#glfwgettime)
    * [glfwSetTime](/docs/api/input.md#glfwsettime)
    * [glfwGetTimerValue](/docs/api/input.md#glfwgettimervalue)
    * [glfwGetTimerFrequency](/docs/api/input.md#glfwgettimerfrequency)

## Constants

#### Constant: GLFW\_RELEASE

```Lisp
(defconstant GLFW:GLFW_RELEASE 0)
```

````
The key or mouse button was released.
````

#### Constant: GLFW\_PRESS

```Lisp
(defconstant GLFW:GLFW_PRESS 1)
```

````
The key or mouse button was pressed.
````

#### Constant: GLFW\_REPEAT

```Lisp
(defconstant GLFW:GLFW_REPEAT 2)
```

````
The key was held down until it repeated.
````

#### Constant: GLFW\_GAMEPAD\_AXIX\_LEFT\_X

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIX_LEFT_X 0)
```

#### Constant: GLFW\_GAMEPAD\_AXIS\_LEFT\_Y

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_LEFT_Y 1)
```

#### Constant: GLFW\_GAMEPAD\_AXIS\_RIGHT\_X

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_RIGHT_X 2)
```

#### Constant: GLFW\_GAMEPAD\_AXIS\_RIGHT\_Y

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_RIGHT_Y 3)
```

#### Constant: GLFW\_GAMEPAD\_AXIS\_LEFT\_TRIGGER

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_LEFT_TRIGGER 4)
```

#### Constant: GLFW\_GAMEPAD\_AXIS\_RIGHT\_TRIGGER

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER 5)
```

#### Constant: GLFW\_GAMEPAD\_AXIS\_LAST

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_AXIS_LAST GLFW:GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_A

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_A 0)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_B

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_B 1)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_X

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_X 2)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_Y

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_Y 3)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_LEFT\_BUMPER

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_LEFT_BUMPER 4)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_RIGHT\_BUMPER

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER 5)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_BACK

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_BACK 6)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_START

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_START 7)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_GUIDE

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_GUIDE 8)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_LEFT\_THUMB

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_LEFT_THUMB 9)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_RIGHT\_THUMB

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_RIGHT_THUMB 10)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_DPAD\_UP

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_UP 11)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_DPAD\_RIGHT

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_RIGHT 12)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_DPAD\_DOWN

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_DOWN 13)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_DPAD\_LEFT

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_DPAD_LEFT 14)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_LAST

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_LAST GLFW:GLFW_GAMEPAD_BUTTON_DPAD_LEFT)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_CROSS

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_CROSS GLFW:GLFW_GAMEPAD_BUTTON_A)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_CIRCLE

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_CIRCLE GLFW:GLFW_GAMEPAD_BUTTON_B)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_SQUARE

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_SQUARE GLFW:GLFW_GAMEPAD_BUTTON_X)
```

#### Constant: GLFW\_GAMEPAD\_BUTTON\_TRIANGLE

```Lisp
(defconstant GLFW:GLFW_GAMEPAD_BUTTON_TRIANGLE GLFW:GLFW_GAMEPAD_BUTTON_Y)
```

#### Constant: GLFW\_HAT\_CENTERED

```Lisp
(defconstant GLFW:GLFW_HAT_CENTERED 0)
```

#### Constant: GLFW\_HAT\_UP

```Lisp
(defconstant GLFW:GLFW_HAT_UP 1)
```

#### Constant: GLFW\_HAT\_RIGHT

```Lisp
(defconstant GLFW:GLFW_HAT_RIGHT 2)
```

#### Constant: GLFW\_HAT\_DOWN

```Lisp
(defconstant GLFW:GLFW_HAT_DOWN 4)
```

#### Constant: GLFW\_HAT\_LEFT

```Lisp
(defconstant GLFW:GLFW_HAT_LEFT 8)
```

#### Constant: GLFW\_HAT\_RIGHT\_UP

```Lisp
(defconstant GLFW:GLFW_HAT_RIGHT_UP (LOGIOR GLFW:GLFW_HAT_RIGHT
                                            GLFW:GLFW_HAT_UP))
```

#### Constant: GLFW\_HAT\_RIGHT\_DOWN

```Lisp
(defconstant GLFW:GLFW_HAT_RIGHT_DOWN (LOGIOR GLFW:GLFW_HAT_RIGHT
                                              GLFW:GLFW_HAT_DOWN))
```

#### Constant: GLFW\_HAT\_LEFT\_UP

```Lisp
(defconstant GLFW:GLFW_HAT_LEFT_UP (LOGIOR GLFW:GLFW_HAT_LEFT GLFW:GLFW_HAT_UP))
```

#### Constant: GLFW\_HAT\_LEFT\_DOWN

```Lisp
(defconstant GLFW:GLFW_HAT_LEFT_DOWN (LOGIOR GLFW:GLFW_HAT_LEFT
                                             GLFW:GLFW_HAT_DOWN))
```

#### Constant: GLFW\_JOYSTICK\_1

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_1 0)
```

#### Constant: GLFW\_JOYSTICK\_2

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_2 1)
```

#### Constant: GLFW\_JOYSTICK\_3

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_3 2)
```

#### Constant: GLFW\_JOYSTICK\_4

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_4 3)
```

#### Constant: GLFW\_JOYSTICK\_5

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_5 4)
```

#### Constant: GLFW\_JOYSTICK\_6

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_6 5)
```

#### Constant: GLFW\_JOYSTICK\_7

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_7 6)
```

#### Constant: GLFW\_JOYSTICK\_8

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_8 7)
```

#### Constant: GLFW\_JOYSTICK\_9

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_9 8)
```

#### Constant: GLFW\_JOYSTICK\_10

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_10 9)
```

#### Constant: GLFW\_JOYSTICK\_11

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_11 10)
```

#### Constant: GLFW\_JOYSTICK\_12

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_12 11)
```

#### Constant: GLFW\_JOYSTICK\_13

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_13 12)
```

#### Constant: GLFW\_JOYSTICK\_14

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_14 13)
```

#### Constant: GLFW\_JOYSTICK\_15

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_15 14)
```

#### Constant: GLFW\_JOYSTICK\_16

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_16 15)
```

#### Constant: GLFW\_JOYSTICK\_LAST

```Lisp
(defconstant GLFW:GLFW_JOYSTICK_LAST GLFW:GLFW_JOYSTICK_16)
```

#### Constant: GLFW\_KEY\_UNKNOWN

```Lisp
(defconstant GLFW:GLFW_KEY_UNKNOWN -1)
```

#### Constant: GLFW\_KEY\_SPACE

```Lisp
(defconstant GLFW:GLFW_KEY_SPACE 32)
```

#### Constant: GLFW\_KEY\_APOSTROPHE

```Lisp
(defconstant GLFW:GLFW_KEY_APOSTROPHE 39)
```

````
/* ' */
````

#### Constant: GLFW\_KEY\_COMMA

```Lisp
(defconstant GLFW:GLFW_KEY_COMMA 44)
```

````
/* , */
````

#### Constant: GLFW\_KEY\_MINUS

```Lisp
(defconstant GLFW:GLFW_KEY_MINUS 45)
```

````
/* _ */
````

#### Constant: GLFW\_KEY\_PERIOD

```Lisp
(defconstant GLFW:GLFW_KEY_PERIOD 46)
```

````
/* . */
````

#### Constant: GLFW\_KEY\_SLASH

```Lisp
(defconstant GLFW:GLFW_KEY_SLASH 47)
```

````
/* / */
````

#### Constant: GLFW\_KEY\_0

```Lisp
(defconstant GLFW:GLFW_KEY_0 48)
```

#### Constant: GLFW\_KEY\_1

```Lisp
(defconstant GLFW:GLFW_KEY_1 49)
```

#### Constant: GLFW\_KEY\_2

```Lisp
(defconstant GLFW:GLFW_KEY_2 50)
```

#### Constant: GLFW\_KEY\_3

```Lisp
(defconstant GLFW:GLFW_KEY_3 51)
```

#### Constant: GLFW\_KEY\_4

```Lisp
(defconstant GLFW:GLFW_KEY_4 52)
```

#### Constant: GLFW\_KEY\_5

```Lisp
(defconstant GLFW:GLFW_KEY_5 53)
```

#### Constant: GLFW\_KEY\_6

```Lisp
(defconstant GLFW:GLFW_KEY_6 54)
```

#### Constant: GLFW\_KEY\_7

```Lisp
(defconstant GLFW:GLFW_KEY_7 55)
```

#### Constant: GLFW\_KEY\_8

```Lisp
(defconstant GLFW:GLFW_KEY_8 56)
```

#### Constant: GLFW\_KEY\_9

```Lisp
(defconstant GLFW:GLFW_KEY_9 57)
```

#### Constant: GLFW\_KEY\_SEMICOLON

```Lisp
(defconstant GLFW:GLFW_KEY_SEMICOLON 59)
```

````
/* ; */
````

#### Constant: GLFW\_KEY\_EQUAL

```Lisp
(defconstant GLFW:GLFW_KEY_EQUAL 61)
```

````
/* = */
````

#### Constant: GLFW\_KEY\_A

```Lisp
(defconstant GLFW:GLFW_KEY_A 65)
```

#### Constant: GLFW\_KEY\_B

```Lisp
(defconstant GLFW:GLFW_KEY_B 66)
```

#### Constant: GLFW\_KEY\_C

```Lisp
(defconstant GLFW:GLFW_KEY_C 67)
```

#### Constant: GLFW\_KEY\_D

```Lisp
(defconstant GLFW:GLFW_KEY_D 68)
```

#### Constant: GLFW\_KEY\_E

```Lisp
(defconstant GLFW:GLFW_KEY_E 69)
```

#### Constant: GLFW\_KEY\_F

```Lisp
(defconstant GLFW:GLFW_KEY_F 70)
```

#### Constant: GLFW\_KEY\_G

```Lisp
(defconstant GLFW:GLFW_KEY_G 71)
```

#### Constant: GLFW\_KEY\_H

```Lisp
(defconstant GLFW:GLFW_KEY_H 72)
```

#### Constant: GLFW\_KEY\_I

```Lisp
(defconstant GLFW:GLFW_KEY_I 73)
```

#### Constant: GLFW\_KEY\_J

```Lisp
(defconstant GLFW:GLFW_KEY_J 74)
```

#### Constant: GLFW\_KEY\_K

```Lisp
(defconstant GLFW:GLFW_KEY_K 75)
```

#### Constant: GLFW\_KEY\_L

```Lisp
(defconstant GLFW:GLFW_KEY_L 76)
```

#### Constant: GLFW\_KEY\_M

```Lisp
(defconstant GLFW:GLFW_KEY_M 77)
```

#### Constant: GLFW\_KEY\_N

```Lisp
(defconstant GLFW:GLFW_KEY_N 78)
```

#### Constant: GLFW\_KEY\_O

```Lisp
(defconstant GLFW:GLFW_KEY_O 79)
```

#### Constant: GLFW\_KEY\_P

```Lisp
(defconstant GLFW:GLFW_KEY_P 80)
```

#### Constant: GLFW\_KEY\_Q

```Lisp
(defconstant GLFW:GLFW_KEY_Q 81)
```

#### Constant: GLFW\_KEY\_R

```Lisp
(defconstant GLFW:GLFW_KEY_R 82)
```

#### Constant: GLFW\_KEY\_S

```Lisp
(defconstant GLFW:GLFW_KEY_S 83)
```

#### Constant: GLFW\_KEY\_T

```Lisp
(defconstant GLFW:GLFW_KEY_T 84)
```

#### Constant: GLFW\_KEY\_U

```Lisp
(defconstant GLFW:GLFW_KEY_U 85)
```

#### Constant: GLFW\_KEY\_V

```Lisp
(defconstant GLFW:GLFW_KEY_V 86)
```

#### Constant: GLFW\_KEY\_W

```Lisp
(defconstant GLFW:GLFW_KEY_W 87)
```

#### Constant: GLFW\_KEY\_X

```Lisp
(defconstant GLFW:GLFW_KEY_X 88)
```

#### Constant: GLFW\_KEY\_Y

```Lisp
(defconstant GLFW:GLFW_KEY_Y 89)
```

#### Constant: GLFW\_KEY\_Z

```Lisp
(defconstant GLFW:GLFW_KEY_Z 90)
```

#### Constant: GLFW\_KEY\_LEFT\_BRACKET

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_BRACKET 91)
```

````
/* [ */
````

#### Constant: GLFW\_KEY\_BACKSLASH

```Lisp
(defconstant GLFW:GLFW_KEY_BACKSLASH 92)
```

````
/* \ */
````

#### Constant: GLFW\_KEY\_RIGHT\_BRACKET

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_BRACKET 93)
```

````
/* ] */
````

#### Constant: GLFW\_KEY\_GRAVE\_ACCENT

```Lisp
(defconstant GLFW:GLFW_KEY_GRAVE_ACCENT 96)
```

````
/* ` */
````

#### Constant: GLFW\_KEY\_WORLD1

```Lisp
(defconstant GLFW:GLFW_KEY_WORLD1 161)
```

````
/* non_US #1 */
````

#### Constant: GLFW\_KEY\_WORLD2

```Lisp
(defconstant GLFW:GLFW_KEY_WORLD2 162)
```

````
/* non_US #2 */
````

#### Constant: GLFW\_KEY\_ESCAPE

```Lisp
(defconstant GLFW:GLFW_KEY_ESCAPE 256)
```

#### Constant: GLFW\_KEY\_ENTER

```Lisp
(defconstant GLFW:GLFW_KEY_ENTER 257)
```

#### Constant: GLFW\_KEY\_TAB

```Lisp
(defconstant GLFW:GLFW_KEY_TAB 258)
```

#### Constant: GLFW\_KEY\_BACKSPACE

```Lisp
(defconstant GLFW:GLFW_KEY_BACKSPACE 259)
```

#### Constant: GLFW\_KEY\_INSERT

```Lisp
(defconstant GLFW:GLFW_KEY_INSERT 260)
```

#### Constant: GLFW\_KEY\_DELETE

```Lisp
(defconstant GLFW:GLFW_KEY_DELETE 261)
```

#### Constant: GLFW\_KEY\_RIGHT

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT 262)
```

#### Constant: GLFW\_KEY\_LEFT

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT 263)
```

#### Constant: GLFW\_KEY\_DOWN

```Lisp
(defconstant GLFW:GLFW_KEY_DOWN 264)
```

#### Constant: GLFW\_KEY\_UP

```Lisp
(defconstant GLFW:GLFW_KEY_UP 265)
```

#### Constant: GLFW\_KEY\_PAGE\_UP

```Lisp
(defconstant GLFW:GLFW_KEY_PAGE_UP 266)
```

#### Constant: GLFW\_KEY\_PAGE\_DOWN

```Lisp
(defconstant GLFW:GLFW_KEY_PAGE_DOWN 267)
```

#### Constant: GLFW\_KEY\_HOME

```Lisp
(defconstant GLFW:GLFW_KEY_HOME 268)
```

#### Constant: GLFW\_KEY\_END

```Lisp
(defconstant GLFW:GLFW_KEY_END 269)
```

#### Constant: GLFW\_KEY\_CAPS\_LOCK

```Lisp
(defconstant GLFW:GLFW_KEY_CAPS_LOCK 280)
```

#### Constant: GLFW\_KEY\_SCROLL\_LOCK

```Lisp
(defconstant GLFW:GLFW_KEY_SCROLL_LOCK 281)
```

#### Constant: GLFW\_KEY\_NUM\_LOCK

```Lisp
(defconstant GLFW:GLFW_KEY_NUM_LOCK 282)
```

#### Constant: GLFW\_KEY\_PRINT\_SCREEN

```Lisp
(defconstant GLFW:GLFW_KEY_PRINT_SCREEN 283)
```

#### Constant: GLFW\_KEY\_PAUSE

```Lisp
(defconstant GLFW:GLFW_KEY_PAUSE 284)
```

#### Constant: GLFW\_KEY\_F1

```Lisp
(defconstant GLFW:GLFW_KEY_F1 290)
```

#### Constant: GLFW\_KEY\_F2

```Lisp
(defconstant GLFW:GLFW_KEY_F2 291)
```

#### Constant: GLFW\_KEY\_F3

```Lisp
(defconstant GLFW:GLFW_KEY_F3 292)
```

#### Constant: GLFW\_KEY\_F4

```Lisp
(defconstant GLFW:GLFW_KEY_F4 293)
```

#### Constant: GLFW\_KEY\_F5

```Lisp
(defconstant GLFW:GLFW_KEY_F5 294)
```

#### Constant: GLFW\_KEY\_F6

```Lisp
(defconstant GLFW:GLFW_KEY_F6 295)
```

#### Constant: GLFW\_KEY\_F7

```Lisp
(defconstant GLFW:GLFW_KEY_F7 296)
```

#### Constant: GLFW\_KEY\_F8

```Lisp
(defconstant GLFW:GLFW_KEY_F8 297)
```

#### Constant: GLFW\_KEY\_F9

```Lisp
(defconstant GLFW:GLFW_KEY_F9 298)
```

#### Constant: GLFW\_KEY\_F10

```Lisp
(defconstant GLFW:GLFW_KEY_F10 299)
```

#### Constant: GLFW\_KEY\_F11

```Lisp
(defconstant GLFW:GLFW_KEY_F11 300)
```

#### Constant: GLFW\_KEY\_F12

```Lisp
(defconstant GLFW:GLFW_KEY_F12 301)
```

#### Constant: GLFW\_KEY\_F13

```Lisp
(defconstant GLFW:GLFW_KEY_F13 302)
```

#### Constant: GLFW\_KEY\_F14

```Lisp
(defconstant GLFW:GLFW_KEY_F14 303)
```

#### Constant: GLFW\_KEY\_F15

```Lisp
(defconstant GLFW:GLFW_KEY_F15 304)
```

#### Constant: GLFW\_KEY\_F16

```Lisp
(defconstant GLFW:GLFW_KEY_F16 305)
```

#### Constant: GLFW\_KEY\_F17

```Lisp
(defconstant GLFW:GLFW_KEY_F17 306)
```

#### Constant: GLFW\_KEY\_F18

```Lisp
(defconstant GLFW:GLFW_KEY_F18 307)
```

#### Constant: GLFW\_KEY\_F19

```Lisp
(defconstant GLFW:GLFW_KEY_F19 308)
```

#### Constant: GLFW\_KEY\_F20

```Lisp
(defconstant GLFW:GLFW_KEY_F20 309)
```

#### Constant: GLFW\_KEY\_F21

```Lisp
(defconstant GLFW:GLFW_KEY_F21 310)
```

#### Constant: GLFW\_KEY\_F22

```Lisp
(defconstant GLFW:GLFW_KEY_F22 311)
```

#### Constant: GLFW\_KEY\_F23

```Lisp
(defconstant GLFW:GLFW_KEY_F23 312)
```

#### Constant: GLFW\_KEY\_F24

```Lisp
(defconstant GLFW:GLFW_KEY_F24 313)
```

#### Constant: GLFW\_KEY\_F25

```Lisp
(defconstant GLFW:GLFW_KEY_F25 314)
```

#### Constant: GLFW\_KEY\_KP\_0

```Lisp
(defconstant GLFW:GLFW_KEY_KP_0 320)
```

#### Constant: GLFW\_KEY\_KP\_1

```Lisp
(defconstant GLFW:GLFW_KEY_KP_1 321)
```

#### Constant: GLFW\_KEY\_KP\_2

```Lisp
(defconstant GLFW:GLFW_KEY_KP_2 322)
```

#### Constant: GLFW\_KEY\_KP\_3

```Lisp
(defconstant GLFW:GLFW_KEY_KP_3 323)
```

#### Constant: GLFW\_KEY\_KP\_4

```Lisp
(defconstant GLFW:GLFW_KEY_KP_4 324)
```

#### Constant: GLFW\_KEY\_KP\_5

```Lisp
(defconstant GLFW:GLFW_KEY_KP_5 325)
```

#### Constant: GLFW\_KEY\_KP\_6

```Lisp
(defconstant GLFW:GLFW_KEY_KP_6 326)
```

#### Constant: GLFW\_KEY\_KP\_7

```Lisp
(defconstant GLFW:GLFW_KEY_KP_7 327)
```

#### Constant: GLFW\_KEY\_KP\_8

```Lisp
(defconstant GLFW:GLFW_KEY_KP_8 328)
```

#### Constant: GLFW\_KEY\_KP\_9

```Lisp
(defconstant GLFW:GLFW_KEY_KP_9 329)
```

#### Constant: GLFW\_KEY\_KP\_DECIMAL

```Lisp
(defconstant GLFW:GLFW_KEY_KP_DECIMAL 330)
```

#### Constant: GLFW\_KEY\_KP\_DIVIDE

```Lisp
(defconstant GLFW:GLFW_KEY_KP_DIVIDE 331)
```

#### Constant: GLFW\_KEY\_KP\_MULTIPLY

```Lisp
(defconstant GLFW:GLFW_KEY_KP_MULTIPLY 332)
```

#### Constant: GLFW\_KEY\_KP\_SUBTRACT

```Lisp
(defconstant GLFW:GLFW_KEY_KP_SUBTRACT 333)
```

#### Constant: GLFW\_KEY\_KP\_ADD

```Lisp
(defconstant GLFW:GLFW_KEY_KP_ADD 334)
```

#### Constant: GLFW\_KEY\_KP\_ENTER

```Lisp
(defconstant GLFW:GLFW_KEY_KP_ENTER 335)
```

#### Constant: GLFW\_KEY\_KP\_EQUAL

```Lisp
(defconstant GLFW:GLFW_KEY_KP_EQUAL 336)
```

#### Constant: GLFW\_KEY\_LEFT\_SHIFT

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_SHIFT 340)
```

#### Constant: GLFW\_KEY\_LEFT\_CONTROL

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_CONTROL 341)
```

#### Constant: GLFW\_KEY\_LEFT\_ALT

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_ALT 342)
```

#### Constant: GLFW\_KEY\_LEFT\_SUPER

```Lisp
(defconstant GLFW:GLFW_KEY_LEFT_SUPER 343)
```

#### Constant: GLFW\_KEY\_RIGHT\_SHIFT

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_SHIFT 344)
```

#### Constant: GLFW\_KEY\_RIGHT\_CONTROL

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_CONTROL 345)
```

#### Constant: GLFW\_KEY\_RIGHT\_ALT

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_ALT 346)
```

#### Constant: GLFW\_KEY\_RIGHT\_SUPER

```Lisp
(defconstant GLFW:GLFW_KEY_RIGHT_SUPER 347)
```

#### Constant: GLFW\_KEY\_MENU

```Lisp
(defconstant GLFW:GLFW_KEY_MENU 348)
```

#### Constant: GLFW\_KEY\_LAST

```Lisp
(defconstant GLFW:GLFW_KEY_LAST GLFW:GLFW_KEY_MENU)
```

#### Constant: GLFW\_MOD\_SHIFT

```Lisp
(defconstant GLFW:GLFW_MOD_SHIFT 1)
```

````
If this bit is set one or more Shift keys were held down.
````

#### Constant: GLFW\_MOD\_CONTROL

```Lisp
(defconstant GLFW:GLFW_MOD_CONTROL 2)
```

````
If this bit is set one or more Control keys were held down.
````

#### Constant: GLFW\_MOD\_ALT

```Lisp
(defconstant GLFW:GLFW_MOD_ALT 4)
```

````
If this bit is set one or more Alt keys were held down.
````

#### Constant: GLFW\_MOD\_SUPER

```Lisp
(defconstant GLFW:GLFW_MOD_SUPER 8)
```

````
If this bit is set one or more Super keys were held down.
````

#### Constant: GLFW\_MOD\_CAPS\_LOCK

```Lisp
(defconstant GLFW:GLFW_MOD_CAPS_LOCK 16)
```

````
If this bit is set the Caps Lock key is enabled.
````

#### Constant: GLFW\_MOD\_NUM\_LOCK

```Lisp
(defconstant GLFW:GLFW_MOD_NUM_LOCK 32)
```

````
If this bit is set the Num Lock key is enabled.
````

#### Constant: GLFW\_MOUSE\_BUTTON\_1

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_1 0)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_2

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_2 1)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_3

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_3 2)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_4

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_4 3)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_5

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_5 4)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_6

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_6 5)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_7

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_7 6)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_8

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_8 7)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_LAST

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_LAST GLFW:GLFW_MOUSE_BUTTON_8)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_LEFT

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_LEFT GLFW:GLFW_MOUSE_BUTTON_1)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_RIGHT

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_RIGHT GLFW:GLFW_MOUSE_BUTTON_2)
```

#### Constant: GLFW\_MOUSE\_BUTTON\_MIDDLE

```Lisp
(defconstant GLFW:GLFW_MOUSE_BUTTON_MIDDLE GLFW:GLFW_MOUSE_BUTTON_3)
```

#### Constant: GLFW\_ARROW\_CURSOR

```Lisp
(defconstant GLFW:GLFW_ARROW_CURSOR 221185)
```

````
The regular arrow cursor shape.
````

#### Constant: GLFW\_IBEAM\_CURSOR

```Lisp
(defconstant GLFW:GLFW_IBEAM_CURSOR 221185)
```

````
The text input I_beam cursor shape.
````

#### Constant: GLFW\_CROSSHAIR\_CURSOR

```Lisp
(defconstant GLFW:GLFW_CROSSHAIR_CURSOR 221185)
```

````
The crosshair shape.
````

#### Constant: GLFW\_HAND\_CURSOR

```Lisp
(defconstant GLFW:GLFW_HAND_CURSOR 221185)
```

````
The hand shape.
````

#### Constant: GLFW\_HRESIZE\_CURSOR

```Lisp
(defconstant GLFW:GLFW_HRESIZE_CURSOR 221185)
```

````
The horizontal resize arrow shape.
````

#### Constant: GLFW\_VRESIZE\_CURSOR

```Lisp
(defconstant GLFW:GLFW_VRESIZE_CURSOR 221185)
```

````
The vertical resize arrow shape.
````

#### Constant: GLFW\_CURSOR

```Lisp
(defconstant GLFW_CURSOR 208897)
```

#### Constant: GLFW\_STICKY\_KEYS

```Lisp
(defconstant GLFW:GLFW_STICKY_KEYS 208898)
```

#### Constant: GLFW\_STICKY\_MOUSE\_BUTTONS

```Lisp
(defconstant GLFW:GLFW_STICKY_MOUSE_BUTTONS 208899)
```

#### Constant: GLFW\_LOCK\_KEY\_MODS

```Lisp
(defconstant GLFW:GLFW_LOCK_KEY_MODS 208900)
```

#### Constant: GLFW\_RAW\_MOUSE\_MOTION

```Lisp
(defconstant GLFW:GLFW_RAW_MOUSE_MOTION 208901)
```

#### Constant: GLFW\_CURSOR\_NORMAL

```Lisp
(defconstant GLFW:GLFW_CURSOR_NORMAL 212993)
```

#### Constant: GLFW\_CURSOR\_HIDDEN

```Lisp
(defconstant GLFW:GLFW_CURSOR_HIDDEN 212994)
```

#### Constant: GLFW\_CURSOR\_DISABLED

```Lisp
(defconstant GLFW:GLFW_CURSOR_DISABLED 212995)
```

#### Constant: GLFW\_CONNECTED

```Lisp
(defconstant GLFW:GLFW_CONNECTED 262145)
```

#### Constant: GLFW\_DISCONNECTED

```Lisp
(defconstant GLFW:GLFW_DISCONNECTED 262146)
```

## Types

#### Type: CURSOR

```Lisp
(deftype CURSOR NIL
  ...)
```

````
Opaque cursor object.
````

#### Type: MOUSEBUTTONFUN

```Lisp
(deftype MOUSEBUTTONFUN NIL
  ...)
```

````
The function pointer type for mouse button callbacks.
````

#### Type: CURSORPOSFUN

```Lisp
(deftype CURSORPOSFUN NIL
  ...)
```

````
The function pointer type for cursor position callbacks.
````

#### Type: CURSORENTERFUN

```Lisp
(deftype CURSORENTERFUN NIL
  ...)
```

````
The function pointer type for cursor enter/leave callbacks.
````

#### Type: SCROLLFUN

```Lisp
(deftype SCROLLFUN NIL
  ...)
```

````
The function pointer type for scroll callbacks.
````

#### Type: KEYFUN

```Lisp
(deftype KEYFUN NIL
  ...)
```

````
The function pointer type for keyboard key callbacks.
````

#### Type: CHARFUN

```Lisp
(deftype CHARFUN NIL
  ...)
```

````
The function pointer type for Unicode character callbacks.
````

#### Type: CHARMODSFUN

```Lisp
(deftype CHARMODSFUN NIL
  ...)
```

````
The function pointer type for Unicode character with modifiers callbacks.
````

#### Type: DROPFUN

```Lisp
(deftype DROPFUN NIL
  ...)
```

````
The function pointer type for path drop callbacks.
````

#### Type: JOYSTICKFUN

```Lisp
(deftype JOYSTICKFUN NIL
  ...)
```

````
The function pointer type for joystick configuration callbacks.
````

### GLFWgamepadstate

#### Type: GAMEPADSTATE

```Lisp
(deftype GAMEPADSTATE NIL
  ...)
```

#### Function: GAMEPADSTATE-BUTTONS

```Lisp
(defun GLFW:GAMEPADSTATE-BUTTONS (G258 &OPTIONAL (INDEX NIL))
  ...)
```

#### Function: GAMEPADSTATE-AXES

```Lisp
(defun GLFW:GAMEPADSTATE-AXES (G259 &OPTIONAL (INDEX NIL))
  ...)
```

## Functions

### glfwGetInputMode

#### Function: GET-INPUT-MODE

```Lisp
(defun GLFW:GET-INPUT-MODE (WINDOW MODE)
  ...)
```

````
Returns the value of an input option for the specified window.
````

### glfwSetInputMode

#### Function: SET-INPUT-MODE

```Lisp
(defun GLFW:SET-INPUT-MODE (WINDOW MODE VALUE)
  ...)
```

````
Sets an input option for the specified window.
````

### glfwRawMouseMotionSupported

#### Function: RAW-MOUSE-MOTION-SUPPORTED

```Lisp
(defun GLFW:RAW-MOUSE-MOTION-SUPPORTED NIL
  ...)
```

````
Returns whether raw mouse motion is supported (t or NIL).
````

### glfwGetKeyName

#### Function: GET-KEY-NAME

```Lisp
(defun GLFW:GET-KEY-NAME (KEY SCANCODE)
  ...)
```

````
Returns the layout-specific name of the specified printable key.
````

### glfwGetKeyScancode

#### Function: GET-KEY-SCANCODE

```Lisp
(defun GLFW:GET-KEY-SCANCODE (KEY)
  ...)
```

````
Returns the platform-specific scancode of the specified key.
````

### glfwGetKey

#### Function: GET-KEY

```Lisp
(defun GLFW:GET-KEY (WINDOW KEY)
  ...)
```

````
Returns the last reported state of a keyboard key for the specified window.
````

### glfwGetMouseButton

#### Function: GET-MOUSE-BUTTON

```Lisp
(defun GLFW:GET-MOUSE-BUTTON (WINDOW BUTTON)
  ...)
```

````
Returns the last reported state of a mouse button for the specified window.
````

### glfwGetCursorPos

#### Function: GET-CURSOR-POS

```Lisp
(defun GLFW:GET-CURSOR-POS (WINDOW)
  ...)
```

````
Returns the x-position and y-position of the cursor relative to the content area of the window.
````

### glfwSetCursorPos

#### Function: SET-CURSOR-POS

```Lisp
(defun GLFW:SET-CURSOR-POS (WINDOW XPOS YPOS)
  ...)
```

````
Sets the position of the cursor, relative to the content area of the window.
````

### glfwCreateCursor

#### Function: CREATE-CURSOR

```Lisp
(defun GLFW:CREATE-CURSOR (IMAGE XHOT YHOT)
  ...)
```

````
Creates a custom cursor.
````

### glfwCreateStandardCursor

#### Function: CREATE-STANDARD-CURSOR

```Lisp
(defun GLFW:CREATE-STANDARD-CURSOR (SHAPE)
  ...)
```

````
Creates a cursor with a standard shape.
````

### glfwDestroyCursor

#### Function: DESTROY-CURSOR

```Lisp
(defun GLFW:DESTROY-CURSOR (CURSOR)
  ...)
```

````
Destroys a cursor.
````

### glfwSetCursor

#### Function: SET-CURSOR

```Lisp
(defun GLFW:SET-CURSOR (WINDOW CURSOR)
  ...)
```

````
Sets the cursor for the window.
````

### glfwSetKeyCallback

#### Macro: DEFINE-KEY-CALLBACK

```Lisp
(defmacro DEFINE-KEY-CALLBACK (CALLBACK-NAME275
                               (WINDOW KEY SCANCODE ACTION MODS) &BODY
                               CALLBACK-BODY276)
  ...)
```

````
Defines a key callback.
````

#### Function: SET-KEY-CALLBACK

```Lisp
(defun GLFW:SET-KEY-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the key callback.
````

### glfwSetCharCallback

#### Macro: DEFINE-CHAR-CALLBACK

```Lisp
(defmacro DEFINE-CHAR-CALLBACK (CALLBACK-NAME285 (WINDOW CODEPOINT) &BODY
                                CALLBACK-BODY286)
  ...)
```

````
Defines an Unicode character callback.
````

#### Function: SET-CHAR-CALLBACK

```Lisp
(defun GLFW:SET-CHAR-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the Unicode character callback.
````

### glfwSetCharModsCallback

#### Macro: DEFINE-CHAR-MODS-CALLBACK

```Lisp
(defmacro DEFINE-CHAR-MODS-CALLBACK (CALLBACK-NAME292 (WINDOW CODEPOINT MODS)
                                     &BODY CALLBACK-BODY293)
  ...)
```

````
Defines an Unicode character with modifiers callback.
````

#### Function: SET-CHAR-MODS-CALLBACK

```Lisp
(defun GLFW:SET-CHAR-MODS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the Unicode character with modifiers callback.
````

### glfwSetMouseButtonCallback

#### Macro: DEFINE-MOUSE-BUTTON-CALLBACK

```Lisp
(defmacro DEFINE-MOUSE-BUTTON-CALLBACK (CALLBACK-NAME300
                                        (WINDOW BUTTON ACTION MODS) &BODY
                                        CALLBACK-BODY301)
  ...)
```

````
Defines a mouse button callback.
````

#### Function: SET-MOUSE-BUTTON-CALLBACK

```Lisp
(defun GLFW:SET-MOUSE-BUTTON-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the mouse button callback.
````

### glfwSetCursorPosCallback

#### Macro: DEFINE-CURSOR-POS-CALLBACK

```Lisp
(defmacro DEFINE-CURSOR-POS-CALLBACK (CALLBACK-NAME309 (WINDOW XPOS YPOS) &BODY
                                      CALLBACK-BODY310)
  ...)
```

````
Defines a cursor position callback.
````

#### Function: SET-CURSOR-POS-CALLBACK

```Lisp
(defun GLFW:SET-CURSOR-POS-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the cursor position callback.
````

### glfwSetCursorEnterCallback

#### Macro: DEFINE-CURSOR-ENTER-CALLBACK

```Lisp
(defmacro DEFINE-CURSOR-ENTER-CALLBACK (CALLBACK-NAME317 (WINDOW ENTERED) &BODY
                                        CALLBACK-BODY318)
  ...)
```

````
Defines a cursor enter/leave callback.
````

#### Function: SET-CURSOR-ENTER-CALLBACK

```Lisp
(defun GLFW:SET-CURSOR-ENTER-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the cursor enter/leave callback.
````

### glfwSetScrollCallback

#### Macro: DEFINE-SCROLL-CALLBACK

```Lisp
(defmacro DEFINE-SCROLL-CALLBACK (CALLBACK-NAME324 (WINDOW XOFFSET YOFFSET)
                                  &BODY CALLBACK-BODY325)
  ...)
```

````
Defines a scroll callback.
````

#### Function: SET-SCROLL-CALLBACK

```Lisp
(defun GLFW:SET-SCROLL-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the scroll callback.
````

### glfwSetDropCallback

#### Macro: DEFINE-DROP-CALLBACK

```Lisp
(defmacro DEFINE-DROP-CALLBACK (CALLBACK-NAME332 (WINDOW PATHS) &BODY
                                CALLBACK-BODY333)
  ...)
```

````
Defines a path drop callback. The argument PATHS is a vector.
````

#### Function: SET-DROP-CALLBACK

```Lisp
(defun GLFW:SET-DROP-CALLBACK (WINDOW CALLBACK)
  ...)
```

````
Sets the path drop callback.
````

### glfwJoystickPresent

#### Function: JOYSTICK-PRESENT

```Lisp
(defun GLFW:JOYSTICK-PRESENT (JID)
  ...)
```

````
Returns whether the specified joystick is present (t or NIL).
````

### glfwGetJoystickAxes

#### Function: GET-JOYSTICK-AXES

```Lisp
(defun GLFW:GET-JOYSTICK-AXES (JID)
  ...)
```

````
Returns a vector (or NIL) with the values of all axes of the specified joystick.
````

### glfwGetJoystickButtons

#### Function: GET-JOYSTICK-BUTTONS

```Lisp
(defun GLFW:GET-JOYSTICK-BUTTONS (JID)
  ...)
```

````
Returns a vector (or NIL) with the state of all buttons of the specified joystick.
````

### glfwGetJoystickHats

#### Function: GET-JOYSTICK-HATS

```Lisp
(defun GLFW:GET-JOYSTICK-HATS (JID)
  ...)
```

````
Returns a vector (or NIL) with the state of all hats of the specified joystick.
````

### glfwGetJoystickName

#### Function: GET-JOYSTICK-NAME

```Lisp
(defun GLFW:GET-JOYSTICK-NAME (JID)
  ...)
```

````
Returns the name (or NIL) of the specified joystick.
````

### glfwGetJoystickGUID

#### Function: GET-JOYSTICK-GUID

```Lisp
(defun GLFW:GET-JOYSTICK-GUID (JID)
  ...)
```

````
Returns the SDL compatible GUID (or NIL) of the specified joystick.
````

### glfwSetJoystickUserPointer

#### Function: SET-JOYSTICK-USER-POINTER

```Lisp
(defun GLFW:SET-JOYSTICK-USER-POINTER (JID DATA)
  ...)
```

````
Sets the user pointer of the specified joystick.
````

### glfwGetJoystickUserPointer

#### Function: GET-JOYSTICK-USER-POINTER

```Lisp
(defun GLFW:GET-JOYSTICK-USER-POINTER (JID)
  ...)
```

````
Returns the user pointer of the specified joystick.
````

### glfwJoystickIsGamepad

#### Function: JOYSTICK-IS-GAMEPAD

```Lisp
(defun GLFW:JOYSTICK-IS-GAMEPAD (JID)
  ...)
```

````
Returns whether the specified joystick has a gamepad mapping (t or NIL).
````

### glfwSetJoystickCallback

#### Macro: DEFINE-JOYSTICK-CALLBACK

```Lisp
(defmacro DEFINE-JOYSTICK-CALLBACK (CALLBACK-NAME349 (JID EVENT) &BODY
                                    CALLBACK-BODY350)
  ...)
```

````
Defines a joystick configuration callback.
````

#### Function: SET-JOYSTICK-CALLBACK

```Lisp
(defun GLFW:SET-JOYSTICK-CALLBACK (CALLBACK)
  ...)
```

````
Sets the joystick configuration callback.
````

### glfwUpdateGamepadMappings

#### Function: UPDATE-GAMEPAD-MAPPINGS

```Lisp
(defun GLFW:UPDATE-GAMEPAD-MAPPINGS (STRING)
  ...)
```

````
Adds the specified SDL_GameControllerDB gamepad mappings. Returns t or NIL.
````

### glfwGetGamepadName

#### Function: GET-GAMEPAD-NAME

```Lisp
(defun GLFW:GET-GAMEPAD-NAME (JID)
  ...)
```

````
Returns the human-readable gamepad name (or NIL) for the specified joystick.
````

### glfwGetGamepadState

#### Function: GET-GAMEPAD-STATE

```Lisp
(defun GLFW:GET-GAMEPAD-STATE (JID)
  ...)
```

````
Returns the state of the specified joystick remapped as a gamepad (or NIL).
````

### glfwSetClipboardString

#### Function: SET-CLIPBOARD-STRING

```Lisp
(defun GLFW:SET-CLIPBOARD-STRING (WINDOW STRING)
  ...)
```

````
Sets the clipboard to the specified string.
````

### glfwGetClipboardString

#### Function: GET-CLIPBOARD-STRING

```Lisp
(defun GLFW:GET-CLIPBOARD-STRING (WINDOW)
  ...)
```

````
Returns the contents of the clipboard as a string.
````

### glfwGetTime

#### Function: GET-TIME

```Lisp
(defun GLFW:GET-TIME NIL
  ...)
```

````
Returns the GLFW time.
````

### glfwSetTime

#### Function: SET-TIME

```Lisp
(defun GLFW:SET-TIME (TIME)
  ...)
```

````
Sets the GLFW time.
````

### glfwGetTimerValue

#### Function: GET-TIMER-VALUE

```Lisp
(defun GLFW:GET-TIMER-VALUE NIL
  ...)
```

````
Returns the current value of the raw timer.
````

### glfwGetTimerFrequency

#### Function: GET-TIMER-FREQUENCY

```Lisp
(defun GLFW:GET-TIMER-FREQUENCY NIL
  ...)
```

````
Returns the frequency, in Hz, of the raw timer.
````

