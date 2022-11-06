
(in-package :glfw)

(adp:write-in-file #P"docs/guides/context")

(adp:header "Context guide")

(adp:mini-table-of-contents)

(adp:text "This guide introduces the OpenGL and OpenGL ES context related functions of GLFW. For details on a specific function in this category, see the " @h(context-reference-header) ". There are also guides for the other areas of the GLFW API.")

(adp:itemize (:item @h(introduction-api-header))
	     (:item @h(window-guide-header))
	     (:item @h(vulkan-guide-header))
	     (:item @h(monitor-guide-header))
	     (:item @h(input-guide-header)))


(adp:header "Context objects")

(adp:text "A window object encapsulates both a top-level window and an OpenGL or OpenGL ES context. It is created with " @f(create-window) " and destroyed with " @f(destroy-window) " or " @f(terminate) ". See " @h(window-creation-subheader) " for more information.")

(adp:text "As the window and context are inseparably linked, the window object also serves as the context handle.")

(adp:text "To test the creation of various kinds of contexts and see their properties, run the glfwinfo test program.")
