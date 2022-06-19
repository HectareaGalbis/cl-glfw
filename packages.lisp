

(defpackage :glfw
    (:use :cl)
    (:export
    
        ;; Constants

        ; Initialization, version and error                                                                                                                                                
        :+version-major+                
        :+version-minor+                
        :+version-revision+             
        :+true+                         
        :+false+                        
        :+joystick-hat-buttons+         
        :+cocoa-chdir-resources+        
        :+cocoa-menubar+  

        ; Error codes
        :+no-error+                                                    
        :+not-initialized+              
        :+no-current-context+           
        :+invalid-enum+                 
        :+invalid-value+                
        :+out-of-memory+                
        :+api-unavailable+              
        :+version-unavailable+          
        :+platform-error+               
        :+format-unavailable+           
        :+no-window-context+            
   
        ; Input
        :+release+                                                    
        :+press+                                                      
        :+repeat+                                                     
        ; Gamepad axes
        :+gamepad-axix-left-x+          
        :+gamepad-axis-left-y+          
        :+gamepad-axis-right-x+         
        :+gamepad-axis-right-y+         
        :+gamepad-axis-left-trigger+    
        :+gamepad-axis-right-trigger+   
        :+gamepad-axis-last+            
        ; Gamepad buttons
        :+gamepad-button-a+             
        :+gamepad-button-b+             
        :+gamepad-button-x+             
        :+gamepad-button-y+             
        :+gamepad-button-left-bumper+   
        :+gamepad-button-right-bumper+  
        :+gamepad-button-back+          
        :+gamepad-button-start+         
        :+gamepad-button-guide+         
        :+gamepad-button-left-thumb+    
        :+gamepad-button-right-thumb+   
        :+gamepad-button-dpad-up+       
        :+gamepad-button-dpad-right+    
        :+gamepad-button-dpad-down+     
        :+gamepad-button-dpad-left+     
        :+gamepad-button-last+          
        :+gamepad-button-cross+         
        :+gamepad-button-circle+        
        :+gamepad-button-square+        
        :+gamepad-button-triangle+      
        ; Joystick hat states
        :+hat-centered+                 
        :+hat-up+                       
        :+hat-right+                    
        :+hat-down+                     
        :+hat-left+                     
        :+hat-right-up+                 
        :+hat-right-down+               
        :+hat-left-up+                  
        :+hat-left-down+                
        ; Joysticks
        :+joystick-1+                   
        :+joystick-2+                   
        :+joystick-3+                   
        :+joystick-4+                   
        :+joystick-5+                   
        :+joystick-6+                   
        :+joystick-7+                   
        :+joystick-8+                   
        :+joystick-9+                   
        :+joystick-10+                  
        :+joystick-11+                  
        :+joystick-12+                  
        :+joystick-13+                  
        :+joystick-14+                  
        :+joystick-15+                  
        :+joystick-16+                  
        :+joystick-last+                
        ; Keyboard keys
        :+key-unknown+                  
        :+key-space+                    
        :+key-apostrophe+               
        :+key-comma+                    
        :+key-minus+                    
        :+key-period+                   
        :+key-slash+                    
        :+key-0+                        
        :+key-1+                        
        :+key-2+                        
        :+key-3+                        
        :+key-4+                        
        :+key-5+                        
        :+key-6+                        
        :+key-7+                        
        :+key-8+                        
        :+key-9+                        
        :+key-semicolon+                
        :+key-equal+                    
        :+key-a+                        
        :+key-b+                        
        :+key-c+                        
        :+key-d+                        
        :+key-e+                        
        :+key-f+                        
        :+key-g+                        
        :+key-h+                        
        :+key-i+                        
        :+key-j+                        
        :+key-k+                        
        :+key-l+                        
        :+key-m+                        
        :+key-n+                        
        :+key-o+                        
        :+key-p+                        
        :+key-q+                        
        :+key-r+                        
        :+key-s+                        
        :+key-t+                        
        :+key-u+                        
        :+key-v+                        
        :+key-w+                        
        :+key-x+                        
        :+key-y+                        
        :+key-z+                        
        :+key-left-bracket+             
        :+key-backslash+                
        :+key-right-bracket+            
        :+key-grave-accent+             
        :+key-world1+                    
        :+key-world2+                    
        :+key-escape+                   
        :+key-enter+                    
        :+key-tab+                      
        :+key-backspace+                
        :+key-insert+                   
        :+key-delete+                   
        :+key-right+                    
        :+key-left+                     
        :+key-down+                     
        :+key-up+                       
        :+key-page-up+                  
        :+key-page-down+                
        :+key-home+                     
        :+key-end+                      
        :+key-caps-lock+                
        :+key-scroll-lock+              
        :+key-num-lock+                 
        :+key-print-screen+             
        :+key-pause+                    
        :+key-f1+                       
        :+key-f2+                       
        :+key-f3+                       
        :+key-f4+                       
        :+key-f5+                       
        :+key-f6+                       
        :+key-f7+                       
        :+key-f8+                       
        :+key-f9+                       
        :+key-f10+                      
        :+key-f11+                      
        :+key-f12+                      
        :+key-f13+                      
        :+key-f14+                      
        :+key-f15+                      
        :+key-f16+                      
        :+key-f17+                      
        :+key-f18+                      
        :+key-f19+                      
        :+key-f20+                      
        :+key-f21+                      
        :+key-f22+                      
        :+key-f23+                      
        :+key-f24+                      
        :+key-f25+                      
        :+key-kp-0+                     
        :+key-kp-1+                     
        :+key-kp-2+                     
        :+key-kp-3+                     
        :+key-kp-4+                     
        :+key-kp-5+                     
        :+key-kp-6+                     
        :+key-kp-7+                     
        :+key-kp-8+                     
        :+key-kp-9+                     
        :+key-kp-decimal+               
        :+key-kp-divide+                
        :+key-kp-multiply+              
        :+key-kp-subtract+              
        :+key-kp-add+                   
        :+key-kp-enter+                 
        :+key-kp-equal+                 
        :+key-left-shift+               
        :+key-left-control+             
        :+key-left-alt+                 
        :+key-left-super+               
        :+key-right-shift+              
        :+key-right-control+            
        :+key-right-alt+                
        :+key-right-super+              
        :+key-menu+                     
        :+key-last+                     
        ; Modifier key flags
        :+mod-shift+                    
        :+mod-control+                  
        :+mod-alt+                      
        :+mod-super+                    
        :+mod-caps-lock+                
        :+mod-num-lock+                 
        ; Mouse buttons
        :+mouse-button-1+               
        :+mouse-button-2+               
        :+mouse-button-3+               
        :+mouse-button-4+               
        :+mouse-button-5+               
        :+mouse-button-6+               
        :+mouse-button-7+               
        :+mouse-button-8+               
        :+mouse-button-last+            
        :+mouse-button-left+            
        :+mouse-button-right+           
        :+mouse-button-middle+          
        ; Standard cursor shapes
        :+arrow-cursor+                 
        :+ibeam-cursor+                 
        :+crosshair-cursor+             
        :+hand-cursor+                  
        :+hresize-cursor+               
        :+vresize-cursor+ 
        ; Input mode
        :+arrow+
        :+sticky-keys+
        :+sticky-mouse-buttons+
        :+lock-key-mods+
        :+raw-mouse-motion+
        ; Cursor mode
        :+cursor-normal+
        :+cursor-hidden+
        :+cursor-disabled+
        ; Joystick configuration
        :+connected+                  
        :+disconnected+         


        ; Window
        :+focused+                      
        :+iconified+                    
        :+resizable+                    
        :+visible+                      
        :+decorated+                    
        :+auto-iconify+                 
        :+floating+                     
        :+maximized+                    
        :+center-cursor+                
        :+transparent-framebuffer+      
        :+hovered+                      
        :+focus-on-show+                
        :+red-bits+                     
        :+green-bits+                   
        :+blue-bits+                    
        :+alpha-bits+                   
        :+depth-bits+                   
        :+stencil-bits+                 
        :+accum-red-bits+               
        :+accum-green-bits+             
        :+accum-blue-bits+              
        :+accum-alpha-bits+             
        :+aux-buffers+                  
        :+stereo+                       
        :+samples+                      
        :+srgb-capable+                 
        :+refresh-rate+                 
        :+doublebuffer+                 
        :+client-api+                   
        :+context-version-major+        
        :+context-version-minor+        
        :+context-revision+             
        :+context-robustness+           
        :+opengl-forward-compat+        
        :+opengl-debug-context+         
        :+opengl-profile+               
        :+context-release-behavior+     
        :+context-no-error+             
        :+context-creation-api+         
        :+scale-to-monitor+             
        :+cocoa-retina-framebuffer+     
        :+cocoa-frame-name+             
        :+cocoa-graphics-switching+     
        :+x11-class-name+               
        :+x11-instance-name+
        
        ; Others
        :+no-api+                       
        :+opengl-api+                   
        :+opengl-es-api+                
        :+no-robustness+                
        :+no-reset-notification+        
        :+lose-context-on-reset+        
        :+opengl-any-profile+           
        :+opengl-core-profile+          
        :+opengl-compat-profile+        
        :+any-release-behavior+         
        :+release-behavior-flush+       
        :+release-behavior-none+        
        :+native-context-api+           
        :+egl-context-api+              
        :+osmesa-context-api+    
        :+dont-care+

        ;; Structs

        ; Input
        :gamepadstate

        ; Monitor
        :vidmode
        :gammaramp

        ; Window
        :image
        

        ;; Functions

        ; Context
        :make-context-current
        :get-current-context
        :swap-interval
        :extension-supported
        :get-proc-address

        ; Intitalization, version and error
        :init
        :terminate
        :init-hint
        :get-version
        :get-version-string
        :get-error
        :set-error-callback

        ; Input
        :get-input-mode
        :set-input-mode
        :raw-mouse-motion-supported
        :get-key-name
        :get-key-scancode
        :get-key
        :get-mouse-button
        :get-cursor-pos
        :set-cursor-pos
        :create-cursor
        :create-standard-cursor
        :destroy-cursor
        :set-cursor
        :set-key-callback
        :set-char-callback
        :set-char-mods-callback
        :set-mouse-button-callback
        :set-cursor-pos-callback
        :set-cursor-enter-callback
        :set-scroll-callback
        :set-drop-callback
        :joystick-present
        :get-joystick-axes
        :get-joystick-buttons
        :get-joystick-hats
        :get-joystick-name
        :get-joystick-guid
        :set-joystick-user-data
        :get-joystick-user-data
        :joystick-is-gamepad
        :set-joystick-callback
        :update-gamepad-mappings
        :get-gamepad-name
        :get-gamepad-state
        :set-clipboard-string
        :get-clipboard-string
        :get-time
        :set-time
        :get-timer-value
        :get-timer-frequency

        ; Monitor
        :get-monitors
        :get-primary-monitor
        :get-monitor-pos
        :get-monitor-workarea
        :get-monitor-physical-size
        :get-monitor-content-scale
        :get-monitor-name
        :set-monitor-user-data
        :get-monitor-user-data
        :set-monitor-callback
        :get-video-modes
        :get-video-mode
        :set-gamma
        :get-gamma-ramp
        :set-gamma-ramp

        ; Vulkan support
        :vulkan-supported
        :get-required-instance-extensions
        :get-instance-proc-address
        :get-physical-device-presentation-support
        :create-window-surface

        ; Window
        :default-window-hints
        :window-hint
        :window-hint-string
        :create-window
        :destroy-window
        :window-should-close
        :set-window-should-close
        :set-window-title
        :set-window-icon
        :get-window-pos
        :set-window-pos
        :get-window-size
        :set-window-size-limits
        :set-window-aspect-ratio
        :set-window-size
        :get-framebuffer-size
        :get-window-frame-size
        :get-window-content-scale
        :get-window-opacity
        :set-window-opacity
        :iconify-window
        :restore-window
        :maximize-window
        :show-window
        :hide-window
        :focus-window
        :request-window-attention
        :get-window-monitor
        :set-window-monitor
        :get-window-attrib
        :set-window-attrib
        :set-window-user-data
        :get-window-user-data
        :set-window-pos-callback
        :set-window-size-callback
        :set-window-close-callback
        :set-window-refresh-callback
        :set-window-focus-callback
        :set-window-iconify-callback
        :set-window-maximize-callback
        :set-framebuffer-size-callback
        :set-window-content-scale-callback
        :poll-events
        :wait-events
        :wait-events-timeout
        :post-empty-event
        :swap-buffers
        

        ;; Macros

        ; Intitalization, version and error
        :def-error-callback

        ; Input
        :def-key-callback
        :def-char-callback
        :def-char-mods-callback
        :def-mouse-button-callback
        :def-cursor-pos-callback
        :def-cursor-enter-callback
        :def-scroll-callback
        :def-drop-callback
        :def-joystick-callback

        ; Monitor
        :def-monitor-callback

        ; Window
        :def-window-pos-callback
        :def-window-size-callback
        :def-window-close-callback
        :def-window-refresh-callback
        :def-window-focus-callback
        :def-window-iconify-callback
        :def-window-maximize-callback
        :def-framebuffer-size-callback
        :def-window-content-scale-callback))
