;;; Generated automatically. Do not edit.
;;; Class: System.Console
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:12:46Z

(cl:in-package :cl-user)

(cl:defpackage :system-console
  (:use :cl)
  (:shadow
   #:error
   #:read
   #:read-line
   #:write
   #:write-char
   #:write-string
   #:write-line
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
   #:beep
   #:beep-int32-int32
   #:clear
   #:move-buffer-area
   #:move-buffer-area-int32-int32-int32-int32-int32-int32
   #:move-buffer-area-int32-int32-int32-int32-int32-int32-char-console-color-console-color
   #:open-standard-error
   #:open-standard-error-int32
   #:open-standard-input
   #:open-standard-input-int32
   #:open-standard-output
   #:open-standard-output-int32
   #:read
   #:read-key
   #:read-key-boolean
   #:read-line
   #:reset-color
   #:set-buffer-size
   #:set-cursor-position
   #:set-error
   #:set-in
   #:set-out
   #:set-window-position
   #:set-window-size
   #:write
   #:write-boolean
   #:write-char
   #:write-char[]
   #:write-double
   #:write-decimal
   #:write-single
   #:write-int32
   #:write-u-int32
   #:write-int64
   #:write-u-int64
   #:write-object
   #:write-string
   #:write-string-object
   #:write-string-object-object
   #:write-char[]-int32-int32
   #:write-string-object-object-object
   #:write-line
   #:write-line-boolean
   #:write-line-char
   #:write-line-char[]
   #:write-line-decimal
   #:write-line-double
   #:write-line-single
   #:write-line-int32
   #:write-line-u-int32
   #:write-line-int64
   #:write-line-u-int64
   #:write-line-object
   #:write-line-string
   #:write-line-string-object
   #:write-line-char[]-int32-int32
   #:write-line-string-object-object
   #:write-line-string-object-object-object
  ))

(cl:in-package :system-console)

(cl:defconstant <type> (monoutils:get-type "System.Console"))
(cl:defconstant <type-str> "System.Console")
(cl:defconstant <creation> "2026-06-29T01:12:46Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Console")))

(cl:define-symbol-macro caps-lock (dotnet:static <type-str> "CapsLock"))
(cl:setf (cl:documentation (cl:quote caps-lock) (cl:quote cl:variable)) "Gets a value indicating whether the CAPS LOCK keyboard toggle is turned on or turned off.")

(cl:define-symbol-macro error (dotnet:static <type-str> "Error"))
(cl:setf (cl:documentation (cl:quote error) (cl:quote cl:variable)) "Gets the standard error output stream.")

(cl:define-symbol-macro in (dotnet:static <type-str> "In"))
(cl:setf (cl:documentation (cl:quote in) (cl:quote cl:variable)) "Gets the standard input stream.")

(cl:define-symbol-macro is-error-redirected (dotnet:static <type-str> "IsErrorRedirected"))
(cl:setf (cl:documentation (cl:quote is-error-redirected) (cl:quote cl:variable)) "Gets a value that indicates whether the error output stream has been redirected from the standard error stream.")

(cl:define-symbol-macro is-input-redirected (dotnet:static <type-str> "IsInputRedirected"))
(cl:setf (cl:documentation (cl:quote is-input-redirected) (cl:quote cl:variable)) "Gets a value that indicates whether input has been redirected from the standard input stream.")

(cl:define-symbol-macro is-output-redirected (dotnet:static <type-str> "IsOutputRedirected"))
(cl:setf (cl:documentation (cl:quote is-output-redirected) (cl:quote cl:variable)) "Gets a value that indicates whether output has been redirected from the standard output stream.")

(cl:define-symbol-macro key-available (dotnet:static <type-str> "KeyAvailable"))
(cl:setf (cl:documentation (cl:quote key-available) (cl:quote cl:variable)) "Gets a value indicating whether a key press is available in the input stream.")

(cl:define-symbol-macro largest-window-height (dotnet:static <type-str> "LargestWindowHeight"))
(cl:setf (cl:documentation (cl:quote largest-window-height) (cl:quote cl:variable)) "Gets the largest possible number of console window rows, based on the current font and screen resolution.")

(cl:define-symbol-macro largest-window-width (dotnet:static <type-str> "LargestWindowWidth"))
(cl:setf (cl:documentation (cl:quote largest-window-width) (cl:quote cl:variable)) "Gets the largest possible number of console window columns, based on the current font and screen resolution.")

(cl:define-symbol-macro number-lock (dotnet:static <type-str> "NumberLock"))
(cl:setf (cl:documentation (cl:quote number-lock) (cl:quote cl:variable)) "Gets a value indicating whether the NUM LOCK keyboard toggle is turned on or turned off.")

(cl:define-symbol-macro out (dotnet:static <type-str> "Out"))
(cl:setf (cl:documentation (cl:quote out) (cl:quote cl:variable)) "Gets the standard output stream.")

(cl:defun beep (cl:&rest args)
  "Passthrough for System.Console.Beep overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Beep" args))

(cl:defun beep ()
  "Calls System.Console.Beep Beep() -> Void. Summary: Plays the sound of a beep through the console speaker.
"
  (dotnet:static <type-str> "Beep"))

(cl:defun beep-int32-int32 (frequency duration)
  "Calls System.Console.Beep Beep(Int32, Int32) -> Void. Summary: Plays the sound of a beep of a specified frequency and duration through the console speaker.
Parameters:
  - frequency (System.Int32): The frequency of the beep, ranging from 37 to 32767 hertz.
  - duration (System.Int32): The duration of the beep measured in milliseconds.
"
  (dotnet:static <type-str> "Beep" (cl:the (dotnet "System.Int32") frequency) (cl:the (dotnet "System.Int32") duration)))

(cl:defun clear ()
  "Summary: Clears the console buffer and corresponding console window of display information.
"
  (dotnet:static <type-str> "Clear"))

(cl:defun move-buffer-area (cl:&rest args)
  "Passthrough for System.Console.MoveBufferArea overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "MoveBufferArea" args))

(cl:defun move-buffer-area-int32-int32-int32-int32-int32-int32 (source-left source-top source-width source-height target-left target-top)
  "Calls System.Console.MoveBufferArea MoveBufferArea(Int32, Int32, Int32, Int32, Int32, Int32) -> Void. Summary: Copies a specified source area of the screen buffer to a specified destination area.
Parameters:
  - source-left (System.Int32): The leftmost column of the source area.
  - source-top (System.Int32): The topmost row of the source area.
  - source-width (System.Int32): The number of columns in the source area.
  - source-height (System.Int32): The number of rows in the source area.
  - target-left (System.Int32): The leftmost column of the destination area.
  - target-top (System.Int32): The topmost row of the destination area.
"
  (dotnet:static <type-str> "MoveBufferArea" (cl:the (dotnet "System.Int32") source-left) (cl:the (dotnet "System.Int32") source-top) (cl:the (dotnet "System.Int32") source-width) (cl:the (dotnet "System.Int32") source-height) (cl:the (dotnet "System.Int32") target-left) (cl:the (dotnet "System.Int32") target-top)))

(cl:defun move-buffer-area-int32-int32-int32-int32-int32-int32-char-console-color-console-color (source-left source-top source-width source-height target-left target-top source-char source-fore-color source-back-color)
  "Calls System.Console.MoveBufferArea MoveBufferArea(Int32, Int32, Int32, Int32, Int32, Int32, Char, ConsoleColor, ConsoleColor) -> Void. Summary: Copies a specified source area of the screen buffer to a specified destination area.
Parameters:
  - source-left (System.Int32): The leftmost column of the source area.
  - source-top (System.Int32): The topmost row of the source area.
  - source-width (System.Int32): The number of columns in the source area.
  - source-height (System.Int32): The number of rows in the source area.
  - target-left (System.Int32): The leftmost column of the destination area.
  - target-top (System.Int32): The topmost row of the destination area.
  - source-char (System.Char): The character used to fill the source area.
  - source-fore-color (System.ConsoleColor): The foreground color used to fill the source area.
  - source-back-color (System.ConsoleColor): The background color used to fill the source area.
"
  (dotnet:static <type-str> "MoveBufferArea" (cl:the (dotnet "System.Int32") source-left) (cl:the (dotnet "System.Int32") source-top) (cl:the (dotnet "System.Int32") source-width) (cl:the (dotnet "System.Int32") source-height) (cl:the (dotnet "System.Int32") target-left) (cl:the (dotnet "System.Int32") target-top) (cl:the (dotnet "System.Char") source-char) (cl:the (dotnet "System.ConsoleColor") source-fore-color) (cl:the (dotnet "System.ConsoleColor") source-back-color)))

(cl:defun open-standard-error (cl:&rest args)
  "Passthrough for System.Console.OpenStandardError overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "OpenStandardError" args))

(cl:defun open-standard-error ()
  "Calls System.Console.OpenStandardError OpenStandardError() -> Stream. Summary: Acquires the standard error stream.
Returns: The standard error stream.
"
  (dotnet:static <type-str> "OpenStandardError"))

(cl:defun open-standard-error-int32 (buffer-size)
  "Calls System.Console.OpenStandardError OpenStandardError(Int32) -> Stream. Summary: Acquires the standard error stream, which is set to a specified buffer size.
Returns: The standard error stream.
Parameters:
  - buffer-size (System.Int32): This parameter has no effect, but its value must be greater than or equal to zero.
"
  (dotnet:static <type-str> "OpenStandardError" (cl:the (dotnet "System.Int32") buffer-size)))

(cl:defun open-standard-input (cl:&rest args)
  "Passthrough for System.Console.OpenStandardInput overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "OpenStandardInput" args))

(cl:defun open-standard-input ()
  "Calls System.Console.OpenStandardInput OpenStandardInput() -> Stream. Summary: Acquires the standard input stream.
Returns: The standard input stream.
"
  (dotnet:static <type-str> "OpenStandardInput"))

(cl:defun open-standard-input-int32 (buffer-size)
  "Calls System.Console.OpenStandardInput OpenStandardInput(Int32) -> Stream. Summary: Acquires the standard input stream, which is set to a specified buffer size.
Returns: The standard input stream.
Parameters:
  - buffer-size (System.Int32): This parameter has no effect, but its value must be greater than or equal to zero.
"
  (dotnet:static <type-str> "OpenStandardInput" (cl:the (dotnet "System.Int32") buffer-size)))

(cl:defun open-standard-output (cl:&rest args)
  "Passthrough for System.Console.OpenStandardOutput overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "OpenStandardOutput" args))

(cl:defun open-standard-output ()
  "Calls System.Console.OpenStandardOutput OpenStandardOutput() -> Stream. Summary: Acquires the standard output stream.
Returns: The standard output stream.
"
  (dotnet:static <type-str> "OpenStandardOutput"))

(cl:defun open-standard-output-int32 (buffer-size)
  "Calls System.Console.OpenStandardOutput OpenStandardOutput(Int32) -> Stream. Summary: Acquires the standard output stream, which is set to a specified buffer size.
Returns: The standard output stream.
Parameters:
  - buffer-size (System.Int32): This parameter has no effect, but its value must be greater than or equal to zero.
"
  (dotnet:static <type-str> "OpenStandardOutput" (cl:the (dotnet "System.Int32") buffer-size)))

(cl:defun read ()
  "Summary: Reads the next character from the standard input stream.
Returns: The next character from the input stream, or negative one (-1) if there are currently no more characters to be read.
"
  (dotnet:static <type-str> "Read"))

(cl:defun read-key (cl:&rest args)
  "Passthrough for System.Console.ReadKey overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "ReadKey" args))

(cl:defun read-key ()
  "Calls System.Console.ReadKey ReadKey() -> ConsoleKeyInfo. Summary: Obtains the next character or function key pressed by the user. The pressed key is displayed in the console window.
Returns: An object that describes the System.ConsoleKey constant and Unicode character, if any, that correspond to the pressed console key. The System.ConsoleKeyInfo object also describes, in a bitwise combination of System.ConsoleModifiers values, whether one or more Shift, Alt, or Ctrl modifier keys was pressed simultaneously with the console key.
"
  (dotnet:static <type-str> "ReadKey"))

(cl:defun read-key-boolean (intercept)
  "Calls System.Console.ReadKey ReadKey(Boolean) -> ConsoleKeyInfo. Summary: Obtains the next character or function key pressed by the user. The pressed key is optionally displayed in the console window.
Returns: An object that describes the System.ConsoleKey constant and Unicode character, if any, that correspond to the pressed console key. The System.ConsoleKeyInfo object also describes, in a bitwise combination of System.ConsoleModifiers values, whether one or more Shift, Alt, or Ctrl modifier keys was pressed simultaneously with the console key.
Parameters:
  - intercept (System.Boolean): Determines whether to display the pressed key in the console window. to not display the pressed key; otherwise, .
"
  (dotnet:static <type-str> "ReadKey" (cl:the (dotnet "System.Boolean") intercept)))

(cl:defun read-line ()
  "Summary: Reads the next line of characters from the standard input stream.
Returns: The next line of characters from the input stream, or if no more lines are available.
"
  (dotnet:static <type-str> "ReadLine"))

(cl:defun reset-color ()
  "Summary: Sets the foreground and background console colors to their defaults.
"
  (dotnet:static <type-str> "ResetColor"))

(cl:defun set-buffer-size (width height)
  "Summary: Sets the height and width of the screen buffer area to the specified values.
Parameters:
  - width (System.Int32): The width of the buffer area measured in columns.
  - height (System.Int32): The height of the buffer area measured in rows.
"
  (dotnet:static <type-str> "SetBufferSize" (cl:the (dotnet "System.Int32") width) (cl:the (dotnet "System.Int32") height)))

(cl:defun set-cursor-position (left top)
  "Summary: Sets the position of the cursor.
Parameters:
  - left (System.Int32): The column position of the cursor. Columns are numbered from left to right starting at 0.
  - top (System.Int32): The row position of the cursor. Rows are numbered from top to bottom starting at 0.
"
  (dotnet:static <type-str> "SetCursorPosition" (cl:the (dotnet "System.Int32") left) (cl:the (dotnet "System.Int32") top)))

(cl:defun set-error (new-error)
  "Summary: Sets the System.Console.Error property to the specified System.IO.TextWriter object.
Parameters:
  - new-error (System.IO.TextWriter): A stream that is the new standard error output.
"
  (dotnet:static <type-str> "SetError" (cl:the (dotnet "System.IO.TextWriter") new-error)))

(cl:defun set-in (new-in)
  "Summary: Sets the System.Console.In property to the specified System.IO.TextReader object.
Parameters:
  - new-in (System.IO.TextReader): A stream that is the new standard input.
"
  (dotnet:static <type-str> "SetIn" (cl:the (dotnet "System.IO.TextReader") new-in)))

(cl:defun set-out (new-out)
  "Summary: Sets the System.Console.Out property to target the System.IO.TextWriter object.
Parameters:
  - new-out (System.IO.TextWriter): A text writer to be used as the new standard output.
"
  (dotnet:static <type-str> "SetOut" (cl:the (dotnet "System.IO.TextWriter") new-out)))

(cl:defun set-window-position (left top)
  "Summary: Sets the position of the console window relative to the screen buffer.
Parameters:
  - left (System.Int32): The column position of the upper left corner of the console window.
  - top (System.Int32): The row position of the upper left corner of the console window.
"
  (dotnet:static <type-str> "SetWindowPosition" (cl:the (dotnet "System.Int32") left) (cl:the (dotnet "System.Int32") top)))

(cl:defun set-window-size (width height)
  "Summary: Sets the height and width of the console window to the specified values.
Parameters:
  - width (System.Int32): The width of the console window measured in columns.
  - height (System.Int32): The height of the console window measured in rows.
"
  (dotnet:static <type-str> "SetWindowSize" (cl:the (dotnet "System.Int32") width) (cl:the (dotnet "System.Int32") height)))

(cl:defun write (cl:&rest args)
  "Passthrough for System.Console.Write overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Write" args))

(cl:defun write-boolean (value)
  "Calls System.Console.Write Write(Boolean) -> Void. Summary: Writes the text representation of the specified Boolean value to the standard output stream.
Parameters:
  - value (System.Boolean): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Boolean") value)))

(cl:defun write-char (value)
  "Calls System.Console.Write Write(Char) -> Void. Summary: Writes the specified Unicode character value to the standard output stream.
Parameters:
  - value (System.Char): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Char") value)))

(cl:defun write-char[] (buffer)
  "Calls System.Console.Write Write(Char[]) -> Void. Summary: Writes the specified array of Unicode characters to the standard output stream.
Parameters:
  - buffer (System.Char[]): A Unicode character array.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Char[]") buffer)))

(cl:defun write-double (value)
  "Calls System.Console.Write Write(Double) -> Void. Summary: Writes the text representation of the specified double-precision floating-point value to the standard output stream.
Parameters:
  - value (System.Double): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Double") value)))

(cl:defun write-decimal (value)
  "Calls System.Console.Write Write(Decimal) -> Void. Summary: Writes the text representation of the specified System.Decimal value to the standard output stream.
Parameters:
  - value (System.Decimal): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Decimal") value)))

(cl:defun write-single (value)
  "Calls System.Console.Write Write(Single) -> Void. Summary: Writes the text representation of the specified single-precision floating-point value to the standard output stream.
Parameters:
  - value (System.Single): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Single") value)))

(cl:defun write-int32 (value)
  "Calls System.Console.Write Write(Int32) -> Void. Summary: Writes the text representation of the specified 32-bit signed integer value to the standard output stream.
Parameters:
  - value (System.Int32): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Int32") value)))

(cl:defun write-u-int32 (value)
  "Calls System.Console.Write Write(UInt32) -> Void. Summary: Writes the text representation of the specified 32-bit unsigned integer value to the standard output stream.
Parameters:
  - value (System.UInt32): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.UInt32") value)))

(cl:defun write-int64 (value)
  "Calls System.Console.Write Write(Int64) -> Void. Summary: Writes the text representation of the specified 64-bit signed integer value to the standard output stream.
Parameters:
  - value (System.Int64): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Int64") value)))

(cl:defun write-u-int64 (value)
  "Calls System.Console.Write Write(UInt64) -> Void. Summary: Writes the text representation of the specified 64-bit unsigned integer value to the standard output stream.
Parameters:
  - value (System.UInt64): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.UInt64") value)))

(cl:defun write-object (value)
  "Calls System.Console.Write Write(Object) -> Void. Summary: Writes the text representation of the specified object to the standard output stream.
Parameters:
  - value (System.Object): The value to write, or .
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Object") value)))

(cl:defun write-string (value)
  "Calls System.Console.Write Write(String) -> Void. Summary: Writes the specified string value to the standard output stream.
Parameters:
  - value (System.String): The value to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.String") value)))

(cl:defun write-string-object (format arg0)
  "Calls System.Console.Write Write(String, Object) -> Void. Summary: Writes the text representation of the specified object to the standard output stream using the specified format information.
Parameters:
  - format (System.String): A composite format string.
  - arg0 (System.Object): An object to write using format.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.Object") arg0)))

(cl:defun write-string-object-object (format arg0 arg1)
  "Calls System.Console.Write Write(String, Object, Object) -> Void. Summary: Writes the text representation of the specified objects to the standard output stream using the specified format information.
Parameters:
  - format (System.String): A composite format string.
  - arg0 (System.Object): The first object to write using format.
  - arg1 (System.Object): The second object to write using format.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.Object") arg0) (cl:the (dotnet "System.Object") arg1)))

(cl:defun write-char[]-int32-int32 (buffer index count)
  "Calls System.Console.Write Write(Char[], Int32, Int32) -> Void. Summary: Writes the specified subarray of Unicode characters to the standard output stream.
Parameters:
  - buffer (System.Char[]): An array of Unicode characters.
  - index (System.Int32): The starting position in buffer.
  - count (System.Int32): The number of characters to write.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.Char[]") buffer) (cl:the (dotnet "System.Int32") index) (cl:the (dotnet "System.Int32") count)))

(cl:defun write-string-object-object-object (format arg0 arg1 arg2)
  "Calls System.Console.Write Write(String, Object, Object, Object) -> Void. Summary: Writes the text representation of the specified objects to the standard output stream using the specified format information.
Parameters:
  - format (System.String): A composite format string.
  - arg0 (System.Object): The first object to write using format.
  - arg1 (System.Object): The second object to write using format.
  - arg2 (System.Object): The third object to write using format.
"
  (dotnet:static <type-str> "Write" (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.Object") arg0) (cl:the (dotnet "System.Object") arg1) (cl:the (dotnet "System.Object") arg2)))

;; Note: System.Console.Write also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Write(String, params Object[]) -> Void

(cl:defun write-line (cl:&rest args)
  "Passthrough for System.Console.WriteLine overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "WriteLine" args))

(cl:defun write-line ()
  "Calls System.Console.WriteLine WriteLine() -> Void. Summary: Writes the current line terminator to the standard output stream.
"
  (dotnet:static <type-str> "WriteLine"))

(cl:defun write-line-boolean (value)
  "Calls System.Console.WriteLine WriteLine(Boolean) -> Void. Summary: Writes the text representation of the specified Boolean value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Boolean): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Boolean") value)))

(cl:defun write-line-char (value)
  "Calls System.Console.WriteLine WriteLine(Char) -> Void. Summary: Writes the specified Unicode character, followed by the current line terminator, value to the standard output stream.
Parameters:
  - value (System.Char): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Char") value)))

(cl:defun write-line-char[] (buffer)
  "Calls System.Console.WriteLine WriteLine(Char[]) -> Void. Summary: Writes the specified array of Unicode characters, followed by the current line terminator, to the standard output stream.
Parameters:
  - buffer (System.Char[]): A Unicode character array.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Char[]") buffer)))

(cl:defun write-line-decimal (value)
  "Calls System.Console.WriteLine WriteLine(Decimal) -> Void. Summary: Writes the text representation of the specified System.Decimal value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Decimal): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Decimal") value)))

(cl:defun write-line-double (value)
  "Calls System.Console.WriteLine WriteLine(Double) -> Void. Summary: Writes the text representation of the specified double-precision floating-point value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Double): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Double") value)))

(cl:defun write-line-single (value)
  "Calls System.Console.WriteLine WriteLine(Single) -> Void. Summary: Writes the text representation of the specified single-precision floating-point value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Single): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Single") value)))

(cl:defun write-line-int32 (value)
  "Calls System.Console.WriteLine WriteLine(Int32) -> Void. Summary: Writes the text representation of the specified 32-bit signed integer value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Int32): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Int32") value)))

(cl:defun write-line-u-int32 (value)
  "Calls System.Console.WriteLine WriteLine(UInt32) -> Void. Summary: Writes the text representation of the specified 32-bit unsigned integer value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.UInt32): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.UInt32") value)))

(cl:defun write-line-int64 (value)
  "Calls System.Console.WriteLine WriteLine(Int64) -> Void. Summary: Writes the text representation of the specified 64-bit signed integer value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Int64): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Int64") value)))

(cl:defun write-line-u-int64 (value)
  "Calls System.Console.WriteLine WriteLine(UInt64) -> Void. Summary: Writes the text representation of the specified 64-bit unsigned integer value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.UInt64): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.UInt64") value)))

(cl:defun write-line-object (value)
  "Calls System.Console.WriteLine WriteLine(Object) -> Void. Summary: Writes the text representation of the specified object, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.Object): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Object") value)))

(cl:defun write-line-string (value)
  "Calls System.Console.WriteLine WriteLine(String) -> Void. Summary: Writes the specified string value, followed by the current line terminator, to the standard output stream.
Parameters:
  - value (System.String): The value to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.String") value)))

(cl:defun write-line-string-object (format arg0)
  "Calls System.Console.WriteLine WriteLine(String, Object) -> Void. Summary: Writes the text representation of the specified object, followed by the current line terminator, to the standard output stream using the specified format information.
Parameters:
  - format (System.String): A composite format string.
  - arg0 (System.Object): An object to write using format.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.Object") arg0)))

(cl:defun write-line-char[]-int32-int32 (buffer index count)
  "Calls System.Console.WriteLine WriteLine(Char[], Int32, Int32) -> Void. Summary: Writes the specified subarray of Unicode characters, followed by the current line terminator, to the standard output stream.
Parameters:
  - buffer (System.Char[]): An array of Unicode characters.
  - index (System.Int32): The starting position in buffer.
  - count (System.Int32): The number of characters to write.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.Char[]") buffer) (cl:the (dotnet "System.Int32") index) (cl:the (dotnet "System.Int32") count)))

(cl:defun write-line-string-object-object (format arg0 arg1)
  "Calls System.Console.WriteLine WriteLine(String, Object, Object) -> Void. Summary: Writes the text representation of the specified objects, followed by the current line terminator, to the standard output stream using the specified format information.
Parameters:
  - format (System.String): A composite format string.
  - arg0 (System.Object): The first object to write using format.
  - arg1 (System.Object): The second object to write using format.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.Object") arg0) (cl:the (dotnet "System.Object") arg1)))

(cl:defun write-line-string-object-object-object (format arg0 arg1 arg2)
  "Calls System.Console.WriteLine WriteLine(String, Object, Object, Object) -> Void. Summary: Writes the text representation of the specified objects, followed by the current line terminator, to the standard output stream using the specified format information.
Parameters:
  - format (System.String): A composite format string.
  - arg0 (System.Object): The first object to write using format.
  - arg1 (System.Object): The second object to write using format.
  - arg2 (System.Object): The third object to write using format.
"
  (dotnet:static <type-str> "WriteLine" (cl:the (dotnet "System.String") format) (cl:the (dotnet "System.Object") arg0) (cl:the (dotnet "System.Object") arg1) (cl:the (dotnet "System.Object") arg2)))

;; Note: System.Console.WriteLine also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   WriteLine(String, params Object[]) -> Void

