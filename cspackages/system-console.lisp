;;; Generated automatically. Do not edit.
;;; Class: System.Console
;;; Generator Version: 8
;;; Creation Date: 2026-06-17T21:35:47Z

(in-package :cl-user)

(defpackage :system-console
  (:use :cl)
  (:shadow
   #:error
   #:read
   #:read-line
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:caps-lock
   #:error
   #:in
   #:is-error-redirected
   #:is-input-redirected
   #:is-output-redirected
   #:key-available
   #:largest-window-height
   #:largest-window-width
   #:number-lock
   #:out
   #:clear
   #:read
   #:read-line
   #:reset-color
   #:set-buffer-size
   #:set-cursor-position
   #:set-error
   #:set-in
   #:set-out
   #:set-window-position
   #:set-window-size
  ))

(in-package :system-console)

(defconstant <type> (monoutils:get-type "System.Console"))
(defconstant <type-str> "System.Console")
(defconstant <creation> "2026-06-17T21:35:47Z")
(defconstant <version> 8)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Console")))

(define-symbol-macro caps-lock (dotnet:static <type-str> "CapsLock"))
(setf (documentation 'caps-lock 'variable) "Gets a value indicating whether the CAPS LOCK keyboard toggle is turned on or turned off.")

(define-symbol-macro error (dotnet:static <type-str> "Error"))
(setf (documentation 'error 'variable) "Gets the standard error output stream.")

(define-symbol-macro in (dotnet:static <type-str> "In"))
(setf (documentation 'in 'variable) "Gets the standard input stream.")

(define-symbol-macro is-error-redirected (dotnet:static <type-str> "IsErrorRedirected"))
(setf (documentation 'is-error-redirected 'variable) "Gets a value that indicates whether the error output stream has been redirected from the standard error stream.")

(define-symbol-macro is-input-redirected (dotnet:static <type-str> "IsInputRedirected"))
(setf (documentation 'is-input-redirected 'variable) "Gets a value that indicates whether input has been redirected from the standard input stream.")

(define-symbol-macro is-output-redirected (dotnet:static <type-str> "IsOutputRedirected"))
(setf (documentation 'is-output-redirected 'variable) "Gets a value that indicates whether output has been redirected from the standard output stream.")

(define-symbol-macro key-available (dotnet:static <type-str> "KeyAvailable"))
(setf (documentation 'key-available 'variable) "Gets a value indicating whether a key press is available in the input stream.")

(define-symbol-macro largest-window-height (dotnet:static <type-str> "LargestWindowHeight"))
(setf (documentation 'largest-window-height 'variable) "Gets the largest possible number of console window rows, based on the current font and screen resolution.")

(define-symbol-macro largest-window-width (dotnet:static <type-str> "LargestWindowWidth"))
(setf (documentation 'largest-window-width 'variable) "Gets the largest possible number of console window columns, based on the current font and screen resolution.")

(define-symbol-macro number-lock (dotnet:static <type-str> "NumberLock"))
(setf (documentation 'number-lock 'variable) "Gets a value indicating whether the NUM LOCK keyboard toggle is turned on or turned off.")

(define-symbol-macro out (dotnet:static <type-str> "Out"))
(setf (documentation 'out 'variable) "Gets the standard output stream.")

(defun clear ()
  "Summary: Clears the console buffer and corresponding console window of display information.
"
  (dotnet:static <type-str> "Clear"))

(defun read ()
  "Summary: Reads the next character from the standard input stream.
Returns: The next character from the input stream, or negative one (-1) if there are currently no more characters to be read.
"
  (dotnet:static <type-str> "Read"))

(defun read-line ()
  "Summary: Reads the next line of characters from the standard input stream.
Returns: The next line of characters from the input stream, or if no more lines are available.
"
  (dotnet:static <type-str> "ReadLine"))

(defun reset-color ()
  "Summary: Sets the foreground and background console colors to their defaults.
"
  (dotnet:static <type-str> "ResetColor"))

(defun set-buffer-size (width height)
  "Summary: Sets the height and width of the screen buffer area to the specified values.
Parameters:
  - width (System.Int32): The width of the buffer area measured in columns.
  - height (System.Int32): The height of the buffer area measured in rows.
"
  (dotnet:static <type-str> "SetBufferSize" width height))

(defun set-cursor-position (left top)
  "Summary: Sets the position of the cursor.
Parameters:
  - left (System.Int32): The column position of the cursor. Columns are numbered from left to right starting at 0.
  - top (System.Int32): The row position of the cursor. Rows are numbered from top to bottom starting at 0.
"
  (dotnet:static <type-str> "SetCursorPosition" left top))

(defun set-error (new-error)
  "Summary: Sets the System.Console.Error property to the specified System.IO.TextWriter object.
Parameters:
  - new-error (System.IO.TextWriter): A stream that is the new standard error output.
"
  (dotnet:static <type-str> "SetError" new-error))

(defun set-in (new-in)
  "Summary: Sets the System.Console.In property to the specified System.IO.TextReader object.
Parameters:
  - new-in (System.IO.TextReader): A stream that is the new standard input.
"
  (dotnet:static <type-str> "SetIn" new-in))

(defun set-out (new-out)
  "Summary: Sets the System.Console.Out property to target the System.IO.TextWriter object.
Parameters:
  - new-out (System.IO.TextWriter): A text writer to be used as the new standard output.
"
  (dotnet:static <type-str> "SetOut" new-out))

(defun set-window-position (left top)
  "Summary: Sets the position of the console window relative to the screen buffer.
Parameters:
  - left (System.Int32): The column position of the upper left corner of the console window.
  - top (System.Int32): The row position of the upper left corner of the console window.
"
  (dotnet:static <type-str> "SetWindowPosition" left top))

(defun set-window-size (width height)
  "Summary: Sets the height and width of the console window to the specified values.
Parameters:
  - width (System.Int32): The width of the console window measured in columns.
  - height (System.Int32): The height of the console window measured in rows.
"
  (dotnet:static <type-str> "SetWindowSize" width height))

