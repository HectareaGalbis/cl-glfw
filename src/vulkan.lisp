
(in-package :glfw)

(adp:in-file #P"docs/api/vulkan")

(adp:header "Vulkan support reference" vulkan-reference-header)

(adp:subheader "Description")

(adp:text "This is the reference documentation for Vulkan related functions and types.")

(adp:mini-table-of-contents)


(adp:subheader "Types")

(adp:deftype non-dispatch-handle ()
  (if (= 8 (cffi:foreign-type-size :pointer))
      'pointer
      '(unsigned-byte 64)))

(adp:deftype VkInstance ()
  'non-dispatch-handle)

(adp:deftype VkPhysicalDevice ()
  'non-dispatch-handle)

(adp:deftype VkAllocationCallbacks ()
  'pointer)


(adp:subheader "Functions")

(adp:subsubheader "glfwVulkanSupported")

(adp:defun vulkan-supported ()
  "Returns (t or NIL) whether the Vulkan loader and an ICD have been found."
  (let ((result (glfwVulkanSupported)))
    (equal result GLFW_TRUE)))

(adp:subsubheader "glfwGetRequiredInstanceExtensions")

(adp:defun get-required-instance-extensions ()
  "Returns a vector with the Vulkan instance extensions required by GLFW."
  (cffi:with-foreign-object (count-ptr :uint32)
    (let* ((result (glfwGetRequiredInstanceExtensions count-ptr))
           (count (cffi:mem-ref count-ptr :uint32)))
      (if (> count 0) 
          (let ((extensions-array (make-array count)))
	    (loop for i from 0 below count
	          do (setf (aref extensions-array i) (cffi:foreign-string-to-lisp (cffi:mem-aref result :pointer i))))
	    (values extensions-array))
          nil))))

(adp:subsubheader "glfwGetPhysicalDevicePresentationSupport")

(adp:defun get-physical-device-presentation-support (instance device queueFamily)
  (declare (type VkInstance instance) (type VkPhysicalDevice device) (type (unsigned-byte 32) queueFamily))
  "Returns (t or NIL) whether the specified queue family can present images."
  (let ((result (glfwGetPhysicalDevicePresentationSupport instance device queueFamily)))
    (equal result GLFW_TRUE)))

(adp:subsubheader "glfwCreateWindowSurface")

(adp:defun create-window-surface (instance window allocator)
  (declare (type VkInstance instance) (type pointer window) (type (or null VkAllocationCallbacks) allocator))
  "Creates a Vulkan surface for the specified window. Returns the surface (or NIL) and the Vulkan result value."
  (let ((allocator-c (or allocator (cffi:null-pointer))))
    (cffi:with-foreign-object (surface 'VKSurfaceKHR)
      (let ((result (glfwCreateWindowSurface instance window allocator-c surface)))
	(values (if (cffi:null-pointer-p surface)
		    nil
		    (cffi:mem-ref surface 'VkSurfaceKHR))
		result)))))
