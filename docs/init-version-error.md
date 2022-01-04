
# Initialization, version and error reference

## Description

This is the reference documentation for initialization and termination of the library, version management and error handling. 
For more task-oriented information, see the [Introduction to the API](https://www.glfw.org/docs/latest/intro_guide.html).

## Constants

* [+version-major+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+version-major+) 3
* [+version-minor+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+version-minor+) 3
* [+version-revision+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+version-revision+) 6 
* [+true+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+true+) 1
* [+false+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+false+) 0   
* [+joystick-hat-buttons+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+joystick-hat-buttons+) #x00050001
* [+cocoa-chdir-resources+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+cocoa-chdir-resources+) #x00051001    
* [+cocoa-menubar+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#+cocoa-menubar+) #x00051002

### Error codes

## Functions

## Constant documentation

### +version-major+

```
(defconstant +version-major+ 3) 
```

The major version number of the GLFW header. This is incremented when the API is changed in non-compatible ways.

### +version-minor+

```
(defconstant +version-minor+ 3)
```

The minor version number of the GLFW header. This is incremented when features are added to the API but it remains backward-compatible.

### +version-revision+

```
(defconstant +version-revision+ 6)
```

The revision number of the GLFW header. This is incremented when a bug fix release is made that does not contain any API changes.

### +true+

```
(defconstant +true+ 1)
```

This is only semantic sugar for the number 1. You can instead use `1` or `true` or `_True` or `GL_TRUE` or `VK_TRUE` or anything else that is equal to one.

### +false+

```
(defconstant +false+ 0)
```

This is only semantic sugar for the number 0. You can instead use `0` or `false` or `_False` or `GL_FALSE` or VK_FALSE or anything else that is equal to zero.

### +joystick-hat-buttons+

```
(defconstant +joystick-hat-buttons+ #x00050001)
```

Joystick hat buttons [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_JOYSTICK_HAT_BUTTONS).

### +cocoa-chdir-resources+

```
(defconstant +cocoa-chdir-resources+ #x00051001)
```

macOS specific [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_COCOA_CHDIR_RESOURCES_hint).

### +cocoa-menubar+

```
(defconstant +cocoa-menubar+ #x00051002)
```

macOS specific [init hint](https://www.glfw.org/docs/latest/intro_guide.html#GLFW_COCOA_MENUBAR_hint).

## Function documentation 
