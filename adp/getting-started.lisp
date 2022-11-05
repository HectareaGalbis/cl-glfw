
(in-package :glfw)

(adp:write-in-file #P"docs/guides/getting-started")

(adp:header "Getting started" getting-started-header)

(adp:text "This guide takes you through writing a simple application using GLFW 3. The application will create a window and exit when the user closes the window or presses Escape. This guide will introduce a few of the most commonly used functions, but there are many more.")


(adp:subheader "Step by step")


(adp:subsubheader "Depending on cl-glfw")

(adp:text "In your applications' system, you need to add the cl-glfw dependency.")

(adp:code-block ()
  (asdf:defsystem "my-system"
    (adp:code-hide ())
    :depends-on ((adp:code-hide ()) :cl-glfw)
    (adp:code-hide ())))


(adp:subsubheader "Initializing and terminating GLFW")

(adp:text "Before you can use most GLFW functions, the library must be initialized. On successful initialization, " @c("T") " is returned. If an error occurred, " @c("NIL") " is returned.")

(adp:code-block ()
  (when (not (init))
    (adp:code-hide ())
    ))

(adp:text "When you are done using GLFW, typically just before the application exits, you need to terminate GLFW.")

(adp:code-block ()
  (terminate))

(adp:text "This destroys any remaining windows and releases any other resources allocated by GLFW. After this call, you must initialize GLFW again before using any GLFW functions that require it.")


(adp:subsubheader "Setting an error callback")

(adp:text "Most events are reported through callbacks, whether it's a key being pressed, a GLFW window being moved, or an error occurring. Callbacks are functions that are called by GLFW with arguments describing the event.")

(adp:text "In case a GLFW function fails, an error is reported to the GLFW error callback. You can receive these reports with an error callback. This function must have the signature below but may do anything permitted in other callbacks.")

(adp:code-block ()
  (define-error-callback error-callback (error-code description)
      (declare (ignore error-code))
    (error "Error: ~a~%" description)))

(adp:text "Callback functions must be set, so GLFW knows to call them. The function to set the error callback is one of the few GLFW functions that may be called before initialization, which lets you be notified of errors both during and after initialization.")

(adp:code-block ()
  (set-error-callback 'error-callback))


(adp:subsubheader "Creating a window")

(adp:text "A window is created with a single call to " @f(create-window) ", which returns a handle to the created window.")

(adp:code-block ()
  (let ((window (create-window 640 480 "My title" nil nil)))
    (when (not window)
      (error "Window creation failed!"))))

(adp:text "This creates a 640 by 480 windowed mode window. If window creation fails, " @c("NIL") " will be returned. You should always check the return value.")

(adp:text "When a window and context is no longer needed, destroy it.")

(adp:code-block ()
  (destroy-window window))

(adp:text "Once this function is called, no more events will be delivered for that window and its handle becomes invalid.")


(adp:subsubheader "Checking the window close flag")

(adp:text "Each window has a flag indicating whether the window should be closed.")

(adp:text "When the user attempts to close the window, either by pressing the close widget in the title bar or using a key combination like Alt+F4, this flag is set to " @c("T") ". Note that " @b("the window isn't actually closed") ", so you are expected to monitor this flag and either destroy the window or give some kind of feedback to the user.")

(adp:code-block ()
  (loop while (not (window-should-close window))
	do (something)))

(adp:text "You can be notified when the user is attempting to close the window by setting a close callback with " @f(set-window-close-callback) ". The callback will be called immediately after the close flag has been set.")

(adp:text "You can also set it yourself with " @f(set-window-should-close) ". This can be useful if you want to interpret other kinds of input as closing the window, like for example pressing the " @i("Escape") " key.")


(adp:subsubheder "Receiving input events")

(adp:text "Each window has a large number of callbacks that can be set to receive all the various kinds of events. To receive key press and release events, create a key callback function.")

(adp:code-block ()
  (define-key-callback key-callback (window key scancode action mods)
    (declare (ignore scancode mods))
    (if (and (equal key GLFW_KEY_ESCAPE) (equal action GLFW_PRESS))
	(set-window-should-close window t))))

(adp:text "The key callback, like other window related callbacks, are set per-window.")

(adp:code-block ()
  (set-key-callback 'key-callback))

(adp:text "In order for event callbacks to be called when events occur, you need to process events as described below.")


(adp:subsubheader "Reading the timer")

(adp:text "To create smooth animation, a time source is needed. GLFW provides a timer that returns the number of seconds since initialization. The time source used is the most accurate on each platform and generally has micro- or nanosecond resolution.")

(adp:code-block ()
  (let ((time (get-time)))
    (do-something)))


(adp:subsubheader "Swapping buffers")

(adp:text "GLFW windows by default use double buffering. That means that each window has two rendering buffers; a front buffer and a back buffer. The front buffer is the one being displayed and the back buffer the one you render to.")

(adp:text "When the entire frame has been rendered, the buffers need to be swapped with one another, so the back buffer becomes the front buffer and vice versa.")

(adp:code-block ()
  (swap-buffers window))

(adp:text "The swap interval indicates how many frames to wait until swapping the buffers, commonly known as " @i("vsync") ". By default, the swap interval is zero, meaning buffer swapping will occur immediately. On fast machines, many of those frames will never be seen, as the screen is still only updated typically 60-75 times per second, so this wastes a lot of CPU and GPU cycles.")

(adp:text "Also, because the buffers will be swapped in the middle the screen update, leading to screen " @w("tearing" "https://en.wikipedia.org/wiki/Screen_tearing") ".")

(adp:text "For these reasons, applications will typically want to set the swap interval to one. It can be set to higher values, but this is usually not recommended, because of the input latency it leads to.")

(adp:code-block ()
  (swap-interval 1))


(adp:subsubheader "Processing events")

(adp:text "GLFW needs to communicate regularly with the window system both in order to receive events and to show that the application hasn't locked up. Event processing must be done regularly while you have visible windows and is normally done each frame after buffer swapping.")

(adp:text "There are two methods for processing pending events; polling and waiting. This example will use event polling, which processes only those events that have already been received and then returns immediately.")

(adp:code-block ()
  (poll-events))

(adp:text "This is the best choice when rendering continually, like most games do. If instead you only need to update your rendering once you have received new input, " @f(wait-events) " is a better choice. It waits until at least one event has been received, putting the thread to sleep in the meantime, and then processes all received events. This saves a great deal of CPU cycles and is useful for, for example, many kinds of editing tools.")


(adp:subehader "Putting it together")

(adp:text "Now that you know how to initialize GLFW, create a window and poll for keyboard input, it's possible to create a simple program.")

(adp:text "This program creates a 640 by 480 windowed mode window and starts a loop that clears the screen, renders a triangle and processes events until the user either presses " @i("Escape") " or closes the window.")

(adp:code-block ()
  (in-package :my-pkg)

  (define-error-callback error-callback (error-code description)
    (declare (ignore error-code))
    (error "Error: ~a~%" description))

  (define-key-callback key-callback (window key scancode action mods)
    (declare (ignore scancode mods))
    (when (and (equal key GLFW_KEY_ESCAPE) (equal action GLFW_PRESS))
      (set-window-should-close window t)))

  (defun main ()
    (set-error-callback 'error-callback)

    (when (not (init))
      (error "Initialization error!"))

    (let ((window (create-window 640 480 "Simple example" nil nil)))
      (when (not window)
	(terminate)
	(error "Window creation error!"))
      (set-key-callback window 'key-callback)
      (loop while (not (window-should-close window))
	    do (poll-events))
      (destroy-window))

    (terminate)))

(adp:text "This tutorial used only a few of the many functions GLFW provides. There are guides for each of the areas covered by GLFW. Each guide will introduce all the functions for that category.")

(adp:itemize (:item @h(introduction-header))
	     (:item @h(window-guide-header))
	     (:item @h(context-guide-header))
	     (:item @h(monitor-guide-header))
	     (:item @h(input-guide-header)))
