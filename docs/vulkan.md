
* [Main page](https://hectarea1996.github.io/cl-glfw/)
* [Reference](https://hectarea1996.github.io/cl-glfw/reference.html)

# Vulkan support reference

## Description

This is the reference documentation for Vulkan related functions and types. For more task-oriented information, see the [Vulkan guide](https://www.glfw.org/docs/latest/vulkan_guide.html).

* [Functions](https://hectarea1996.github.io/cl-glfw/vulkan.html#functions)

## Functions

* [vulkan-supported](https://hectarea1996.github.io/cl-glfw/vulkan.html#vulkan-supported): Returns whether the Vulkan loader and an ICD have been found.
* [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions): Returns the Vulkan instance extensions required by GLFW.
* [get-instance-proc-address](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-instance-proc-address): Returns the address of the specified Vulkan instance function. 
* [get-physical-device-presentation-support](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-physical-device-presentation-support): Returns whether the specified queue family can present images.
* [create-window-surface](https://hectarea1996.github.io/cl-glfw/vulkan.html#create-window-surface): Creates a Vulkan surface for the specified window.

## Function documentation

### vulkan-supported

```
(vulkan-supported) => supported
```

This function returns whether the Vulkan loader and any minimally functional ICD have been found.

The availability of a Vulkan loader and even an ICD does not by itself guarantee that surface creation or even instance creation is possible. Call [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions) to check whether the extensions necessary for Vulkan surface creation are available and [get-physical-device-presentation-support](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-physical-device-presentation-support) to check whether a queue family of a physical device supports image presentation.

* *Returns*:
  * **supported**: `t` if Vulkan is minimally available, or `nil` otherwise.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Querying for Vulkan support](https://www.glfw.org/docs/latest/vulkan_guide.html#vulkan_support).

### get-required-instance-extensions

```
(get-required-instance-extensions) => extensions
```

This function returns an array of names of Vulkan instance extensions required by GLFW for creating Vulkan surfaces for GLFW windows. If successful, the list will always contain `VK_KHR_surface`, so if you don't require any additional extensions you can pass this list directly to the `VkInstanceCreateInfo` struct.

If Vulkan is not available on the machine, this function returns `nil` and generates a [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) error. Call [vulkan-supported](https://hectarea1996.github.io/cl-glfw/vulkan.html#vulkan-supported) to check whether Vulkan is at least minimally available.

If Vulkan is available but no set of extensions allowing window surface creation was found, this function returns `nil`. You may still use Vulkan for off-screen rendering and compute work.

* *Returns*:
  * **extensions**: An array of ASCII encoded extension names, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable).
* *Remarks*: Additional extensions may be required by future versions of GLFW. You should check if any extensions you wish to enable are already in the returned array, as it is an error to specify an extension more than once in the `VkInstanceCreateInfo` struct.
  * **macOS**: GLFW currently supports both the `VK_MVK_macos_surface` and the newer `VK_EXT_metal_surface` extensions.
* *Thread safety*: This function may be called from any thread.
* *See also*: [Querying required Vulkan extensions](https://www.glfw.org/docs/latest/vulkan_guide.html#vulkan_ext), [create-window-surface](https://hectarea1996.github.io/cl-glfw/vulkan.html#create-window-surface).

### get-instance-proc-address

> This function is not lispified

```
(get-instance-proc-address instance procname) => function
```

This function returns the address of the specified Vulkan core or extension function for the specified instance. If instance is set to `nil` it can return any function exported from the Vulkan loader, including at least the following functions:

* `vkEnumerateInstanceExtensionProperties`
* `vkEnumerateInstanceLayerProperties`
* `vkCreateInstance`
* `vkGetInstanceProcAddr`

If Vulkan is not available on the machine, this function returns `nil` and generates a [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) error. Call [vulkan-supported](https://hectarea1996.github.io/cl-glfw/vulkan.html#vulkan-supported) to check whether Vulkan is at least minimally available.

This function is equivalent to calling `vkGetInstanceProcAddr` with a platform-specific query of the Vulkan loader as a fallback.

* *Parameters*:
  * **instance**: The Vulkan instance to query, or `nil` to retrieve functions related to instance creation.
  * **procname**: he ASCII encoded name of the function.
* *Returns*: 
  * **function**: The address of the function, or `nil` if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized) and [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable).
* *Thread safety*: This function may be called from any thread.
* *See also*: [Querying Vulkan function pointers](https://www.glfw.org/docs/latest/vulkan_guide.html#vulkan_proc).

### get-physical-device-presentation-support

```
(get-physical-device-presentation-support instance device queuefamily) => supported
```

This function returns whether the specified queue family of the specified physical device supports presentation to the platform GLFW was built for.

If Vulkan or the required window surface creation instance extensions are not available on the machine, or if the specified instance was not created with the required extensions, this function returns `nil` and generates a [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) error. Call [vulkan-supported](https://hectarea1996.github.io/cl-glfw/vulkan.html#vulkan-supported) to check whether Vulkan is at least minimally available and [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions) to check what instance extensions are required.

* *Parameters*:
  * **instance**: The instance that the physical device belongs to.
  * **device**: The physical device that the queue family belongs to.
  * **queuefamily**: The index of the queue family to query.
* *Returns*: 
  * **supported**: `t` if the queue family supports presentation, or `nil` otherwise.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) and [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error).
* *Remarks*: 
  * **macOS**: This function currently always returns `t`, as the `VK_MVK_macos_surface` and `VK_EXT_metal_surface` extensions do not provide a `vkGetPhysicalDevice*PresentationSupport` type function.
* *Thread safety*: This function may be called from any thread. For synchronization details of Vulkan objects, see the Vulkan specification.
* *See also*: [Querying for Vulkan presentation support](https://www.glfw.org/docs/latest/vulkan_guide.html#vulkan_present).

### create-window-surface

> This function is not lispified.

```
(create-window-surface instance window allocator surface) => result
```

This function creates a Vulkan surface for the specified window.

If the Vulkan loader or at least one minimally functional ICD were not found, this function returns `VK_ERROR_INITIALIZATION_FAILED` and generates a [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) error. Call [vulkan-supported](https://hectarea1996.github.io/cl-glfw/vulkan.html#vulkan-supported) to check whether Vulkan is at least minimally available.

If the required window surface creation instance extensions are not available or if the specified instance was not created with these extensions enabled, this function returns `VK_ERROR_EXTENSION_NOT_PRESENT` and generates a [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable) error. Call [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions) to check what instance extensions are required.

The window surface cannot be shared with another API so the window must have been created with the [client api hint](https://www.glfw.org/docs/latest/window_guide.html#GLFW_CLIENT_API_attrib) set to `+no-api+` otherwise it generates a [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value) error and returns `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`.

The window surface must be destroyed before the specified Vulkan instance. It is the responsibility of the caller to destroy the window surface. GLFW does not destroy it for you. Call `vkDestroySurfaceKHR` to destroy the surface.

* *Parameters*:
  * **instance**: The Vulkan instance to create the surface in.
  * **window**: The window to create the surface for.
  * **allocator**: The allocator to use, or `nil` to use the default allocator.
  * **surface**: Where to store the handle of the surface. This is set to `VK_NULL_HANDLE` if an error occurred.
* *Returns*:
  * **result**: `VK_SUCCESS` if successful, or a Vulkan error code if an [error](https://www.glfw.org/docs/latest/intro_guide.html#error_handling) occurred.
* *Errors*: Possible errors include [+not-initialized+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#not-initialized), [+api-unavailable+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#api-unavailable), [+platform-error+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#platform-error) and [+invalid-value+](https://hectarea1996.github.io/cl-glfw/init-version-error.html#invalid-value).
* *Remarks*: If an error occurs before the creation call is made, GLFW returns the Vulkan error code most appropriate for the error. Appropriate use of [vulkan-supported](https://hectarea1996.github.io/cl-glfw/vulkan.html#vulkan-supported) and [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions) should eliminate almost all occurrences of these errors.
  * **macOS**: This function currently only supports the `VK_MVK_macos_surface` extension from MoltenVK.
  * **macOS**: This function creates and sets a `CAMetalLayer` instance for the window content view, which is required for MoltenVK to function.
* *Thread safety*: This function may be called from any thread. For synchronization details of Vulkan objects, see the Vulkan specification.
* *See also*: [Creating a Vulkan window surface](https://www.glfw.org/docs/latest/vulkan_guide.html#vulkan_surface), [get-required-instance-extensions](https://hectarea1996.github.io/cl-glfw/vulkan.html#get-required-instance-extensions).