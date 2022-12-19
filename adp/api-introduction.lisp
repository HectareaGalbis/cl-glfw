
(in-package :glfw)

(adp:in-file #P"docs/api-introduction")

(adp:header "The cl-glfw reference" api-reference-header)

(adp:text "Welcome to the cl-glfw reference!")

(adp:text "Here you can see how the GLFW functions look like in Common Lisp. They have a brief description of what they do and maybe some notes about the types of the arguments. Remember that the main documentation source must be " @w("the GLFW official documentation" "https://www.glfw.org/documentation.html") ".")

(adp:itemize (adp:item @h(context-reference-header))
	     (adp:item @h(initialization-reference-header))
	     (adp:item @h(input-reference-header))
	     (adp:item @h(monitor-reference-header))
	     (adp:item @h(vulkan-reference-header))
	     (adp:item @h(window-reference-header)))


(adp:subheader "Function index")

(adp:table-of-functions)

