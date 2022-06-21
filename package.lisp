

(defpackage :glfw
    (:use :cl)
    (:export
    
        ;; Constants

        ;; Initialization, version and error 
        #:GLFW_VERSION_MAJOR                
        #:GLFW_VERSION_MINOR                
        #:GLFW_VERSION_REVISION             
        #:GLFW_TRUE                         
        #:GLFW_FALSE                        
        #:GLFW_JOYSTICK_HAT_BUTTONS         
        #:GLFW_COCOA_CHDIR_RESOURCES        
        #:GLFW_COCOA_MENUBAR  

        ;; Error codes
        #:GLFW_NO_ERROR                                                    
        #:GLFW_NOT_INITIALIZED              
        #:GLFW_NO_CURRENT_CONTEXT           
        #:GLFW_INVALID_ENUM                 
        #:GLFW_INVALID_VALUE                
        #:GLFW_OUT_OF_MEMORY                
        #:GLFW_API_UNAVAILABLE              
        #:GLFW_VERSION_UNAVAILABLE          
        #:GLFW_PLATFORM_ERROR               
        #:GLFW_FORMAT_UNAVAILABLE           
        #:GLFW_NO_WINDOW_CONTEXT            
   
        ;; Input
        #:GLFW_RELEASE                                                    
        #:GLFW_PRESS                                                      
        #:GLFW_REPEAT                                                     
        ;; Gamepad axes
        #:GLFW_GAMEPAD_AXIX_LEFT_X          
        #:GLFW_GAMEPAD_AXIS_LEFT_Y          
        #:GLFW_GAMEPAD_AXIS_RIGHT_X         
        #:GLFW_GAMEPAD_AXIS_RIGHT_Y         
        #:GLFW_GAMEPAD_AXIS_LEFT_TRIGGER    
        #:GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER   
        #:GLFW_GAMEPAD_AXIS_LAST            
        ;; Gamepad buttons
        #:GLFW_GAMEPAD_BUTTON_A             
        #:GLFW_GAMEPAD_BUTTON_B             
        #:GLFW_GAMEPAD_BUTTON_X             
        #:GLFW_GAMEPAD_BUTTON_Y             
        #:GLFW_GAMEPAD_BUTTON_LEFT_BUMPER   
        #:GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER  
        #:GLFW_GAMEPAD_BUTTON_BACK          
        #:GLFW_GAMEPAD_BUTTON_START         
        #:GLFW_GAMEPAD_BUTTON_GUIDE         
        #:GLFW_GAMEPAD_BUTTON_LEFT_THUMB    
        #:GLFW_GAMEPAD_BUTTON_RIGHT_THUMB   
        #:GLFW_GAMEPAD_BUTTON_DPAD_UP       
        #:GLFW_GAMEPAD_BUTTON_DPAD_RIGHT    
        #:GLFW_GAMEPAD_BUTTON_DPAD_DOWN     
        #:GLFW_GAMEPAD_BUTTON_DPAD_LEFT     
        #:GLFW_GAMEPAD_BUTTON_LAST          
        #:GLFW_GAMEPAD_BUTTON_CROSS         
        #:GLFW_GAMEPAD_BUTTON_CIRCLE        
        #:GLFW_GAMEPAD_BUTTON_SQUARE        
        #:GLFW_GAMEPAD_BUTTON_TRIANGLE      
        ;; Joystick hat states
        #:GLFW_HAT_CENTERED                 
        #:GLFW_HAT_UP                       
        #:GLFW_HAT_RIGHT                    
        #:GLFW_HAT_DOWN                     
        #:GLFW_HAT_LEFT                     
        #:GLFW_HAT_RIGHT_UP                 
        #:GLFW_HAT_RIGHT_DOWN               
        #:GLFW_HAT_LEFT_UP                  
        #:GLFW_HAT_LEFT_DOWN                
        ;; Joysticks
        #:GLFW_JOYSTICK_1                   
        #:GLFW_JOYSTICK_2                   
        #:GLFW_JOYSTICK_3                   
        #:GLFW_JOYSTICK_4                   
        #:GLFW_JOYSTICK_5                   
        #:GLFW_JOYSTICK_6                   
        #:GLFW_JOYSTICK_7                   
        #:GLFW_JOYSTICK_8                   
        #:GLFW_JOYSTICK_9                   
        #:GLFW_JOYSTICK_10                  
        #:GLFW_JOYSTICK_11                  
        #:GLFW_JOYSTICK_12                  
        #:GLFW_JOYSTICK_13                  
        #:GLFW_JOYSTICK_14                  
        #:GLFW_JOYSTICK_15                  
        #:GLFW_JOYSTICK_16                  
        #:GLFW_JOYSTICK_LAST                
        ;; Keyboard keys
        #:GLFW_KEY_UNKNOWN                  
        #:GLFW_KEY_SPACE                    
        #:GLFW_KEY_APOSTROPHE               
        #:GLFW_KEY_COMMA                    
        #:GLFW_KEY_MINUS                    
        #:GLFW_KEY_PERIOD                   
        #:GLFW_KEY_SLASH                    
        #:GLFW_KEY_0                        
        #:GLFW_KEY_1                        
        #:GLFW_KEY_2                        
        #:GLFW_KEY_3                        
        #:GLFW_KEY_4                        
        #:GLFW_KEY_5                        
        #:GLFW_KEY_6                        
        #:GLFW_KEY_7                        
        #:GLFW_KEY_8                        
        #:GLFW_KEY_9                        
        #:GLFW_KEY_SEMICOLON                
        #:GLFW_KEY_EQUAL                    
        #:GLFW_KEY_A                        
        #:GLFW_KEY_B                        
        #:GLFW_KEY_C                        
        #:GLFW_KEY_D                        
        #:GLFW_KEY_E                        
        #:GLFW_KEY_F                        
        #:GLFW_KEY_G                        
        #:GLFW_KEY_H                        
        #:GLFW_KEY_I                        
        #:GLFW_KEY_J                        
        #:GLFW_KEY_K                        
        #:GLFW_KEY_L                        
        #:GLFW_KEY_M                        
        #:GLFW_KEY_N                        
        #:GLFW_KEY_O                        
        #:GLFW_KEY_P                        
        #:GLFW_KEY_Q                        
        #:GLFW_KEY_R                        
        #:GLFW_KEY_S                        
        #:GLFW_KEY_T                        
        #:GLFW_KEY_U                        
        #:GLFW_KEY_V                        
        #:GLFW_KEY_W                        
        #:GLFW_KEY_X                        
        #:GLFW_KEY_Y                        
        #:GLFW_KEY_Z                        
        #:GLFW_KEY_LEFT_BRACKET             
        #:GLFW_KEY_BACKSLASH                
        #:GLFW_KEY_RIGHT_BRACKET            
        #:GLFW_KEY_GRAVE_ACCENT             
        #:GLFW_KEY_WORLD1                    
        #:GLFW_KEY_WORLD2                    
        #:GLFW_KEY_ESCAPE                   
        #:GLFW_KEY_ENTER                    
        #:GLFW_KEY_TAB                      
        #:GLFW_KEY_BACKSPACE                
        #:GLFW_KEY_INSERT                   
        #:GLFW_KEY_DELETE                   
        #:GLFW_KEY_RIGHT                    
        #:GLFW_KEY_LEFT                     
        #:GLFW_KEY_DOWN                     
        #:GLFW_KEY_UP                       
        #:GLFW_KEY_PAGE_UP                  
        #:GLFW_KEY_PAGE_DOWN                
        #:GLFW_KEY_HOME                     
        #:GLFW_KEY_END                      
        #:GLFW_KEY_CAPS_LOCK                
        #:GLFW_KEY_SCROLL_LOCK              
        #:GLFW_KEY_NUM_LOCK                 
        #:GLFW_KEY_PRINT_SCREEN             
        #:GLFW_KEY_PAUSE                    
        #:GLFW_KEY_F1                       
        #:GLFW_KEY_F2                       
        #:GLFW_KEY_F3                       
        #:GLFW_KEY_F4                       
        #:GLFW_KEY_F5                       
        #:GLFW_KEY_F6                       
        #:GLFW_KEY_F7                       
        #:GLFW_KEY_F8                       
        #:GLFW_KEY_F9                       
        #:GLFW_KEY_F10                      
        #:GLFW_KEY_F11                      
        #:GLFW_KEY_F12                      
        #:GLFW_KEY_F13                      
        #:GLFW_KEY_F14                      
        #:GLFW_KEY_F15                      
        #:GLFW_KEY_F16                      
        #:GLFW_KEY_F17                      
        #:GLFW_KEY_F18                      
        #:GLFW_KEY_F19                      
        #:GLFW_KEY_F20                      
        #:GLFW_KEY_F21                      
        #:GLFW_KEY_F22                      
        #:GLFW_KEY_F23                      
        #:GLFW_KEY_F24                      
        #:GLFW_KEY_F25                      
        #:GLFW_KEY_KP_0                     
        #:GLFW_KEY_KP_1                     
        #:GLFW_KEY_KP_2                     
        #:GLFW_KEY_KP_3                     
        #:GLFW_KEY_KP_4                     
        #:GLFW_KEY_KP_5                     
        #:GLFW_KEY_KP_6                     
        #:GLFW_KEY_KP_7                     
        #:GLFW_KEY_KP_8                     
        #:GLFW_KEY_KP_9                     
        #:GLFW_KEY_KP_DECIMAL               
        #:GLFW_KEY_KP_DIVIDE                
        #:GLFW_KEY_KP_MULTIPLY              
        #:GLFW_KEY_KP_SUBTRACT              
        #:GLFW_KEY_KP_ADD                   
        #:GLFW_KEY_KP_ENTER                 
        #:GLFW_KEY_KP_EQUAL                 
        #:GLFW_KEY_LEFT_SHIFT               
        #:GLFW_KEY_LEFT_CONTROL             
        #:GLFW_KEY_LEFT_ALT                 
        #:GLFW_KEY_LEFT_SUPER               
        #:GLFW_KEY_RIGHT_SHIFT              
        #:GLFW_KEY_RIGHT_CONTROL            
        #:GLFW_KEY_RIGHT_ALT                
        #:GLFW_KEY_RIGHT_SUPER              
        #:GLFW_KEY_MENU                     
        #:GLFW_KEY_LAST                     
        ;; Modifier key flags
        #:GLFW_MOD_SHIFT                    
        #:GLFW_MOD_CONTROL                  
        #:GLFW_MOD_ALT                      
        #:GLFW_MOD_SUPER                    
        #:GLFW_MOD_CAPS_LOCK                
        #:GLFW_MOD_NUM_LOCK                 
        ;; Mouse buttons
        #:GLFW_MOUSE_BUTTON_1               
        #:GLFW_MOUSE_BUTTON_2               
        #:GLFW_MOUSE_BUTTON_3               
        #:GLFW_MOUSE_BUTTON_4               
        #:GLFW_MOUSE_BUTTON_5               
        #:GLFW_MOUSE_BUTTON_6               
        #:GLFW_MOUSE_BUTTON_7               
        #:GLFW_MOUSE_BUTTON_8               
        #:GLFW_MOUSE_BUTTON_LAST            
        #:GLFW_MOUSE_BUTTON_LEFT            
        #:GLFW_MOUSE_BUTTON_RIGHT           
        #:GLFW_MOUSE_BUTTON_MIDDLE          
        ;; Standard cursor shapes
        #:GLFW_ARROW_CURSOR                 
        #:GLFW_IBEAM_CURSOR                 
        #:GLFW_CROSSHAIR_CURSOR             
        #:GLFW_HAND_CURSOR                  
        #:GLFW_HRESIZE_CURSOR               
        #:GLFW_VRESIZE_CURSOR 
        ;; Input mode
        #:GLFW_ARROW
        #:GLFW_STICKY_KEYS
        #:GLFW_STICKY_MOUSE_BUTTONS
        #:GLFW_LOCK_KEY_MODS
        #:GLFW_RAW_MOUSE_MOTION
        ;; Cursor mode
        #:GLFW_CURSOR_NORMAL
        #:GLFW_CURSOR_HIDDEN
        #:GLFW_CURSOR_DISABLED
        ;; Joystick configuration
        #:GLFW_CONNECTED                  
        #:GLFW_DISCONNECTED         


        ;; Window
        #:GLFW_FOCUSED                      
        #:GLFW_ICONIFIED                    
        #:GLFW_RESIZABLE                    
        #:GLFW_VISIBLE                      
        #:GLFW_DECORATED                    
        #:GLFW_AUTO_ICONIFY                 
        #:GLFW_FLOATING                     
        #:GLFW_MAXIMIZED                    
        #:GLFW_CENTER_CURSOR                
        #:GLFW_TRANSPARENT_FRAMEBUFFER      
        #:GLFW_HOVERED                      
        #:GLFW_FOCUS_ON_SHOW                
        #:GLFW_RED_BITS                     
        #:GLFW_GREEN_BITS                   
        #:GLFW_BLUE_BITS                    
        #:GLFW_ALPHA_BITS                   
        #:GLFW_DEPTH_BITS                   
        #:GLFW_STENCIL_BITS                 
        #:GLFW_ACCUM_RED_BITS               
        #:GLFW_ACCUM_GREEN_BITS             
        #:GLFW_ACCUM_BLUE_BITS              
        #:GLFW_ACCUM_ALPHA_BITS             
        #:GLFW_AUX_BUFFERS                  
        #:GLFW_STEREO                       
        #:GLFW_SAMPLES                      
        #:GLFW_SRGB_CAPABLE                 
        #:GLFW_REFRESH_RATE                 
        #:GLFW_DOUBLEBUFFER                 
        #:GLFW_CLIENT_API                   
        #:GLFW_CONTEXT_VERSION_MAJOR        
        #:GLFW_CONTEXT_VERSION_MINOR        
        #:GLFW_CONTEXT_REVISION             
        #:GLFW_CONTEXT_ROBUSTNESS           
        #:GLFW_OPENGL_FORWARD_COMPAT        
        #:GLFW_OPENGL_DEBUG_CONTEXT         
        #:GLFW_OPENGL_PROFILE               
        #:GLFW_CONTEXT_RELEASE_BEHAVIOR     
        #:GLFW_CONTEXT_NO_ERROR             
        #:GLFW_CONTEXT_CREATION_API         
        #:GLFW_SCALE_TO_MONITOR             
        #:GLFW_COCOA_RETINA_FRAMEBUFFER     
        #:GLFW_COCOA_FRAME_NAME             
        #:GLFW_COCOA_GRAPHICS_SWITCHING     
        #:GLFW_X11_CLASS_NAME               
        #:GLFW_X11_INSTANCE_NAME
        
        ;; Others
        #:GLFW_NO_API                       
        #:GLFW_OPENGL_API                   
        #:GLFW_OPENGL_ES_API                
        #:GLFW_NO_ROBUSTNESS                
        #:GLFW_NO_RESET_NOTIFICATION        
        #:GLFW_LOSE_CONTEXT_ON_RESET        
        #:GLFW_OPENGL_ANY_PROFILE           
        #:GLFW_OPENGL_CORE_PROFILE          
        #:GLFW_OPENGL_COMPAT_PROFILE        
        #:GLFW_ANY_RELEASE_BEHAVIOR         
        #:GLFW_RELEASE_BEHAVIOR_FLUSH       
        #:GLFW_RELEASE_BEHAVIOR_NONE        
        #:GLFW_NATIVE_CONTEXT_API           
        #:GLFW_EGL_CONTEXT_API              
        #:GLFW_OSMESA_CONTEXT_API    
        #:GLFW_DONT_CARE

        ;; Structs

	;; Input
	#:gamepadstate-buttons
	#:gamepadstate-axes

        ; Monitor
        #:vidmode-width
	#:vidmode-height
	#:vidmode-redBits
	#:vidmode-greenBits
	#:vidmode-blueBits
	#:vidmode-refreshRate
        #:create-gammaramp
	#:destroy-gammaramp
	#:with-gammaramp
        #:gammaramp-red
	#:gammaramp-green
	#:gammaramp-blue
	#:gammaramp-size
	
        ; Window
        #:create-image
	#:destroy-image
	#:with-image
	#:image-width
	#:image-height
	#:image-pixels
        

        ;; Functions

        ; Context
        #:make-context-current
        #:get-current-context
        #:swap-interval
        #:extension-supported
        #:get-proc-address

        ; Intitalization, version and error
        #:init
        #:terminate
        #:init-hint
        #:get-version
        #:get-version-string
        #:get-error
        #:set-error-callback

        ; Input
        #:get-input-mode
        #:set-input-mode
        #:raw-mouse-motion-supported
        #:get-key-name
        #:get-key-scancode
        #:get-key
        #:get-mouse-button
        #:get-cursor-pos
        #:set-cursor-pos
        #:create-cursor
        #:create-standard-cursor
        #:destroy-cursor
        #:set-cursor
        #:set-key-callback
        #:set-char-callback
        #:set-char-mods-callback
        #:set-mouse-button-callback
        #:set-cursor-pos-callback
        #:set-cursor-enter-callback
        #:set-scroll-callback
        #:set-drop-callback
        #:joystick-present
        #:get-joystick-axes
        #:get-joystick-buttons
        #:get-joystick-hats
        #:get-joystick-name
        #:get-joystick-guid
        #:set-joystick-user-pointer
        #:get-joystick-user-pointer
        #:joystick-is-gamepad
        #:set-joystick-callback
        #:update-gamepad-mappings
        #:get-gamepad-name
        #:get-gamepad-state
        #:set-clipboard-string
        #:get-clipboard-string
        #:get-time
        #:set-time
        #:get-timer-value
        #:get-timer-frequency

        ; Monitor
        #:get-monitors
        #:get-primary-monitor
        #:get-monitor-pos
        #:get-monitor-workarea
        #:get-monitor-physical-size
        #:get-monitor-content-scale
        #:get-monitor-name
        #:set-monitor-user-pointer
        #:get-monitor-user-pointer
        #:set-monitor-callback
        #:get-video-modes
        #:get-video-mode
        #:set-gamma
        #:get-gamma-ramp
        #:set-gamma-ramp

        ; Vulkan support
        #:vulkan-supported
        #:get-required-instance-extensions
        #:get-instance-proc-address
        #:get-physical-device-presentation-support
        #:create-window-surface

        ; Window
        #:default-window-hints
        #:window-hint
        #:window-hint-string
        #:create-window
        #:destroy-window
        #:window-should-close
        #:set-window-should-close
        #:set-window-title
        #:set-window-icon
        #:get-window-pos
        #:set-window-pos
        #:get-window-size
        #:set-window-size-limits
        #:set-window-aspect-ratio
        #:set-window-size
        #:get-framebuffer-size
        #:get-window-frame-size
        #:get-window-content-scale
        #:get-window-opacity
        #:set-window-opacity
        #:iconify-window
        #:restore-window
        #:maximize-window
        #:show-window
        #:hide-window
        #:focus-window
        #:request-window-attention
        #:get-window-monitor
        #:set-window-monitor
        #:get-window-attrib
        #:set-window-attrib
        #:set-window-user-pointer
        #:get-window-user-pointer
        #:set-window-pos-callback
        #:set-window-size-callback
        #:set-window-close-callback
        #:set-window-refresh-callback
        #:set-window-focus-callback
        #:set-window-iconify-callback
        #:set-window-maximize-callback
        #:set-framebuffer-size-callback
        #:set-window-content-scale-callback
        #:poll-events
        #:wait-events
        #:wait-events-timeout
        #:post-empty-event
        #:swap-buffers
        

        ;; Macros

        ; Intitalization, version and error
        #:def-error-callback

        ; Input
        #:def-key-callback
        #:def-char-callback
        #:def-char-mods-callback
        #:def-mouse-button-callback
        #:def-cursor-pos-callback
        #:def-cursor-enter-callback
        #:def-scroll-callback
        #:def-drop-callback
        #:def-joystick-callback

        ; Monitor
        #:def-monitor-callback

        ; Window
        #:def-window-pos-callback
        #:def-window-size-callback
        #:def-window-close-callback
        #:def-window-refresh-callback
        #:def-window-focus-callback
        #:def-window-iconify-callback
        #:def-window-maximize-callback
        #:def-framebuffer-size-callback
        #:def-window-content-scale-callback))
