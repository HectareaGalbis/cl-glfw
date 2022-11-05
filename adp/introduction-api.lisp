
(in-package :glfw)

(adp:write-in-file #P"docs/guides/introduction")

(adp:header "Introduction to the API" introduction-api-header)

(adp:mini-table-of-contents)

(adp:text "This guide introduces the basic concepts of GLFW and describes initialization, error handling and API guarantees and limitations. For a broad but shallow tutorial, see " @h(getting-started-header) " instead. For details on a specific function in this category, see the " @h(initialization-header) ".")

(adp:text "There are also guides for the other areas of GLFW.")

(adp:itemize (:item @h(window-guide-header))
	     (:item @h(context-guide-header))
	     (:item @h(vulkan-guide-header))
	     (:item @h(monitor-guide-header))
	     (:item @h(input-guide-header)))

(adp:header "Initialization and termination")

(adp:text "Before most GLFW functions may be called, the library must be initialized. This initialization checks what features are available on the machine, enumerates monitors and joysticks, initializes the timer and performs any required platform-specific initialization.")

(adp:text "Only the following functions may be called before the library has been successfully initialized, and only from the main thread.")

(adp:itemize (:item @f(get-version))
	     (:item @f(get-version-string))
	     (:item @f(get-error))
	     (:item @f(set-error-callback))
	     (:item @f(init-hint))
	     (:item @f(init))
	     (:item @f(terminate)))

(adp:text "Calling any other function before successful initialization will cause a " @s(GLFW_NOT_INITIALIZED) " error.")

(adp:subheader "Initializing GLFW")

(adp:text "The library is initialized with " @f(init) ", which returns " @c("NIL") " if an error occurred.")

(adp:code-block ()
  (when (not (init))
    (handle-initialization-failure)))

(adp:text "If any part of initialization fails, any parts that succeeded are terminated as if " @f(terminate) " had been called. The library only needs to be initialized once and additional calls to an already initialized library will return " @c("T") " immediately.")

(adp:text "Once the library has been successfully initialized, it should be terminated before the application exits. Modern systems are very good at freeing resources allocated by programs that exit, but GLFW sometimes has to change global system settings and these might not be restored without termination.")


(adp:subheader "Initialization hints")

(adp:text "Initialization hints are set before " @f(init) " and affect how the library behaves until termination. Hints are set with " @f(init-hint) ".")

(adp:code-block ()
  (init-hint GLFW_JOYSTICK_HAT_BUTTONS nil))

(adp:text "The values you set hints to are never reset by GLFW, but they only take effect during initialization. Once GLFW has been initialized, any values you set will be ignored until the library is terminated and initialized again.")

(adp:text "Some hints are platform specific. These may be set on any platform but they will only affect their specific platform. Other platforms will ignore them. Setting these hints requires no platform specific headers or functions.")


(adp:subsubheader "Shared init hints")

(adp:text @b("GLFW_JOYSTICK_HAT_BUTTONS") " specifies whether to also expose joystick hats as buttons, for compatibility with earlier versions of GLFW that did not have " @f(get-joystick-hats) ". Possible values are " @c("T") " and " @c("NIL") ".")


(adp:subsubheader "macOS specific init hints")

(adp:text @b("GLFW_COCOA_CHDIR_RESOURCES") " specifies whether to set the current directory to the application to the " @c("Contents/Resources") " subdirectory of the application's bundle, if present. Set this with " @f(init-hint) ".")

(adp:text @b("GLFW_COCOA_MENUBAR") " specifies whether to create a basic menu bar, either from a nib or manually, when the first window is created, which is when AppKit is initialized. Set this with " @f(init-hint) ".")


(adp:subsubheader "Supported and default values")

(adp:table ((:cell "Initialization hint") (:cell "Default value") (:cell "Supported values"))
	   ((:cell @s(GLFW_JOYSTICK_HAT_BUTTONS)) (:cell @c("T")) (:cell @c("T") " or " @c("NIL")))
	   ((:cell @s(GLFW_COCOA_CHDIR_RESOURCES)) (:cell @c("T")) (:cell @c("T") " or " @c("NIL")))
	   ((:cell @s(GLFW_COCOA_MENUBAR)) (:cell @c("T")) (:cell @c("T") " or " @c("NIL"))))


(adp:subheader "Terminating GLFW")

(adp:text "Before your application exits, you should terminate the GLFW library if it has been initialized. This is done with " @f(terminate) ".")

(adp:code-block ()
  (terminate))

(adp:text "This will destroy any remaining window, monitor and cursor objects, restore any modified gamma ramps, re-enable the screensaver if it had been disabled and free any other resources allocated by GLFW.")

(adp:text "Once the library is terminated, it is as if it had never been initialized and you will need to initialize it again before being able to use GLFW. If the library was not initialized or had already been terminated, it return immediately.")


(adp:header "Error handling")

(adp:text "Some GLFW functions have return values that indicate an error, but this is often not very helpful when trying to figure out what happened or why it occurred. Other functions have no return value reserved for errors, so error notification needs a separate channel. Finally, far from all GLFW functions have return values.")

(adp:text "The last error code for the calling thread can be queried at any time with " @f(get-error) ".")

(adp:code-block ()
  (let ((code (get-error)))
    (when (not (equal code GLFW_NO_ERROR))
      (handle-error code))))

(adp:text "If no error has occurred since the last call, " @s(GLFW_NO_ERROR) " is returned. The error is cleared before the function returns.")

(adp:text "The error code indicates the general category of the error. Some error codes, such as " @s(GLFW_NOT_INITIALIZED) " has only a single meaning, whereas others like " @s(GLFW_PLATFORM_ERROR) " are used for many different errors.")

(adp:text "GLFW often has more information about an error than its general category. You can retrieve a UTF-8 encoded human-readable description along with the error code. If no error has occurred since the last call, the description is set to " @c("NIL") ".")

(adp:code-block ()
  (multiple-value-bind (code description) (get-error)
    (when description
      (display-error-message code description))))

(adp:text "You can also set an error callback, which will be called each time an error occurs. It is set with " @f(set-error-callback) ".")

(adp:code-block ()
  (set-error-callback 'error-callback))

(adp:text "The error callback receives the same error code and human-readable description returned by " @f(get-error) ".")

(adp:code-block ()
  (define-error-callback error-callback (code description)
    (display-error-message code description)))

(adp:text "The error callback is called after the error is stored, so calling " @f(get-error) " from within the error callback returns the same values as the callback argument.")

(adp:text @b("Reported errors are never fatal") ". As long as GLFW was successfully initialized, it will remain initialized and in a safe state until terminated regardless of how many errors occur. If an error occurs during initialization that causes glfwInit to fail, any part of the library that was initialized will be safely terminated.")

(adp:text "Do not rely on a currently invalid call to generate a specific error, as in the future that same call may generate a different error or become valid.")


(adp:header "Coordinate systems")

(adp:text "GLFW has two primary coordinate systems: the " @i("virtual screen") " and the window " @i("content area") " or " @i("content area") ". Both use the same unit: " @i("virtual screen coordinates") ", or just " @i("screen coordinates") ", which don't necessarily correspond to pixels.")

(adp:image #P"docs/guides/images/spaces.svg")

(adp:text "Both the virtual screen and the content area coordinate systems have the X-axis pointing to the right and the Y-axis pointing down.")

(adp:text "Window and monitor positions are specified as the position of the upper-left corners of their content areas relative to the virtual screen, while cursor positions are specified relative to a window's content area.")

(adp:text "Because the origin of the window's content area coordinate system is also the point from which the window position is specified, you can translate content area coordinates to the virtual screen by adding the window position. The window frame, when present, extends out from the content area but does not affect the window position.")

(adp:text "Almost all positions and sizes in GLFW are measured in screen coordinates relative to one of the two origins above. This includes cursor positions, window positions and sizes, window frame sizes, monitor positions and video mode resolutions.")

(adp:text "Two exceptions are the monitor " @h(monitor-physical-size-subheader) ", which is measured in millimetres, and " @(monitor-framebuffer-size-subheader) ", which is measured in pixels.")

(adp:text "Pixels and screen coordinates may map 1:1 on your machine, but they won't on every other machine, for example on a Mac with a Retina display. The ratio between screen coordinates and pixels may also change at run-time depending on which monitor the window is currently considered to be on.")


(adp:header "Guarantees and limitations")

(adp:text "This section describes the conditions under which GLFW can be expected to function, barring bugs in the operating system or drivers. Use of GLFW outside of these limits may work on some platforms, or on some machines, or some of the time, or on some versions of GLFW, but it may break at any time and this will not be considered a bug.")

(adp:subheader "Pointer lifetimes")

(adp:text "Don't worry about this.")


(adp:subheader "Reentrancy")

(adp:text "GLFW event processing and object destruction are not reentrant. This means that the following functions must not be called from any callback function:")

(adp:itemize (:item @f(destroy-window))
	     (:item @f(destroy-cursor))
	     (:item @f(poll-events))
	     (:item @f(wait-events))
	     (:item @f(wait-events-timeout))
	     (:item @f(terminate)))

(adp:text "These functions may be made reentrant in future minor or patch releases, but functions not on this list will not be made non-reentrant.")


(adp:subheader "Thread safety")

(adp:text "Most GLFW functions must only be called from the main thread (the thread that calls main), but some may be called from any thread once the library has been initialized. Before initialization the whole library is thread-unsafe.")

(adp:text "The reference documentation for every GLFW function states whether it is limited to the main thread.")

(adp:text "Initialization, termination, event processing and the creation and destruction of windows, cursors and OpenGL and OpenGL ES contexts are all restricted to the main thread due to limitations of one or several platforms.")

(adp:text "Because event processing must be performed on the main thread, all callbacks except for the error callback will only be called on that thread. The error callback may be called on any thread, as any GLFW function may generate errors.")

(adp:text "The error code and description may be queried from any thread.")

(adp:itemize (:item @f(get-error)))

(adp:text "Empty events may be posted from any thread.")

(adp:itemize (:item @f(post-empty-event)))

(adp:text "The window user pointer and close flag may be read and written from any thread, but this is not synchronized by GLFW.")

(adp:itemize (:item @f(get-window-user-pointer))
	     (:item @f(set-window-user-pointer))
	     (:item @f(window-should-close))
	     (:item @f(set-window-should-close)))

(adp:text "These functions for working with OpenGL and OpenGL ES contexts may be called from any thread, but the window object is not synchronized by GLFW.")

(adp:itemize (:item @f(make-context-current))
	     (:item @f(get-current-context))
	     (:item @f(swap-buffers))
	     (:item @f(swap-interval))
	     (:item @f(extension-supported)))

(adp:text "The raw timer functions may be called from any thread.")

(adp:itemize (:item @f(get-timer-frequency))
	     (:item @f(get-timer-value)))

(adp:text "The regular timer may be used from any thread, but reading and writing the timer offset is not synchronized by GLFW.")

(adp:itemize (:item @f(get-time))
	     (:item @f(set-time)))

(adp:text "Library version information may be queried from any thread.")

(adp:itemize (:item @f(get-version))
	     (:item @f(get-version-string)))

(adp:text "All Vulkan related functions may be called from any thread.")

(adp:itemize (:item @f(vulkan-supported))
	     (:item @f(get-required-instance-extensions))
	     (:item @f(get-physical-device-presentation-support))
	     (:item @f(create-window-surface)))

(adp:text "GLFW uses synchronization objects internally only to manage the per-thread context and error states. Additional synchronization is left to the application.")

(adp:text "Functions that may currently be called from any thread will always remain so, but functions that are currently limited to the main thread may be updated to allow calls from any thread in future releases.")


(adp:subheader "Version compatibility")

(adp:text "GLFW uses " @w("Semantic Versioning" "https://semver.org") ". This guarantees source and binary backward compatibility with earlier minor versions of the API. This means that you can drop in a newer version of the library and existing programs will continue to compile and existing binaries will continue to run.")

(adp:text "Once a function or constant has been added, the signature of that function or value of that constant will remain unchanged until the next major version of GLFW. No compatibility of any kind is guaranteed between major versions.")

(adp:text "Undocumented behavior, i.e. behavior that is not described in the documentation, may change at any time until it is documented.")

(adp:text "If the reference documentation and the implementation differ, the reference documentation will almost always take precedence and the implementation will be fixed in the next release. The reference documentation will also take precedence over anything stated in a guide.")


(adp:subheader "Event order")

(adp:text "The order of arrival of related events is not guaranteed to be consistent across platforms. The exception is synthetic key and mouse button release events, which are always delivered after the window defocus event.")


(adp:header "Version management")

(adp:text "GLFW provides mechanisms for identifying what version of GLFW your application was compiled against as well as what version it is currently running against. If you are loading GLFW dynamically (not just linking dynamically), you can use this to verify that the library binary is compatible with your application.")


(adp:subheader "Compile-time version")

(adp:text "The compile-time version of GLFW is provided by the GLFW header with the " @c("GLFW_VERSION_MAJOR") ", " @c("GLFW_VERSION_MINOR") " and " @c("GLFW_VERSION_REVISION") " macros.")

(adp:code-block ()
  (format t "Compiled against GLFW ~s.~s.~s~%"
	  GLFW_VERSION_MAJOR GLFW_VERSION_MINOR GLFW_VERSION_REVISION))


(adp:subheader "Run-time version")

(adp:text "The run-time version can be retrieved with " @f(get-version) ", a function that may be called regardless of whether GLFW is initialized.")

(adp:code-block ()
  (multiple-value-bind (major minor revision) (get-version)
    (format t "Running agains GLFW ~s.~s.~s~%"
	    major minor revision)))


(adp:subheader "Version string")

(adp:text "GLFW 3 also provides a compile-time generated version string that describes the version, platform, compiler and any platform-specific compile-time options. This is primarily intended for submitting bug reports, to allow developers to see which code paths are enabled in a binary.")

(adp:text "The version string is returned by " @f(get-version-string) ", a function that may be called regardless of whether GLFW is initialized.")

(adp:text @b("Do not use the version string") " to parse the GLFW library version. The " @f(get-version) " function already provides the version of the running library binary.")

(adp:text "The format of the string is as follows:")

(adp:itemize (:item "The version of GLFW")
	     (:item "The name of the window system API")
	     (:item "The name of the context creation API")
	     (:item "Any additional options or APIs"))

(adp:text "For example, when compiling GLFW 3.0 with MinGW using the Win32 and WGL back ends, the version string may look something like this:")

(adp:code-block ()
  "3.0.0 Win32 WGL MinGW")
