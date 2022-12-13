
(in-package :glfw)

(adp:in-file #P"docs/api/other")

(adp:header "Other constants")

(adp:subheader "Constants")

(defconstants

  ;; Others
  (GLFW_NO_API                       0)
  (GLFW_OPENGL_API                   #x00030001)
  (GLFW_OPENGL_ES_API                #x00030002)
  (GLFW_NO_ROBUSTNESS                0)
  (GLFW_NO_RESET_NOTIFICATION        #x00031001)
  (GLFW_LOSE_CONTEXT_ON_RESET        #x00031002)
  (GLFW_OPENGL_ANY_PROFILE           0)
  (GLFW_OPENGL_CORE_PROFILE          #x00032001)
  (GLFW_OPENGL_COMPAT_PROFILE        #x00032002)
  (GLFW_ANY_RELEASE_BEHAVIOR         0)
  (GLFW_RELEASE_BEHAVIOR_FLUSH       #x00035001)
  (GLFW_RELEASE_BEHAVIOR_NONE        #x00035002)
  (GLFW_NATIVE_CONTEXT_API           #x00036001)
  (GLFW_EGL_CONTEXT_API              #x00036002)
  (GLFW_OSMESA_CONTEXT_API           #x00036003)
  (GLFW_DONT_CARE                    -1))
