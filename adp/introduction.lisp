
(in-package :glfw)

(adp:write-in-file #P"docs/guides/introduction")

(adp:header "Introduction")

(adp:text "GLFW is a free, Open Source, multi-platform library for OpenGL, OpenGL ES and Vulkan application development. It provides a simple, platform-independent API for creating windows, contexts and surfaces, reading input, handling events, etc.")

(adp:text @h(getting-started-header) " is a guide for users new to GLFW. It takes you through how to write a small but complete program.")

(adp:text "There are guides for each section of the API:")

(adp:itemize (:item @h(introduction-api-header) " - initialization, error handling and high-level design")
	     (:item @h(window-guide-header) " - creating and working with windows and framebuffers")
	     (:item @h(context-guide-header) " - working with OpenGL and OpenGL ES contexts")
	     (:item @h(vulkan-guide-heade) " - working with Vulkan objects and extensions")
	     (:item @h(monitor-guide-header) " - enumerating and working with monitors and video modes")
	     (:item @h(input-guide-header) " - receiving events, polling and processing input"))

(adp:text "This documentation is based on the " @w("GLFW official documentation" "https://www.glfw.org/docs/latest/index.html") " .")

(adp:text "This documentation was generated with " @w("ADP" "https://github.com/Hectarea1996/adp") ".")
