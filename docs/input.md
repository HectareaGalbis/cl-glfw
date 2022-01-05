
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Input reference

## Description

This is the reference documentation for input related functions and types. For more task-oriented information, see the [Input guide](https://www.glfw.org/docs/latest/input_guide.html).

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

