;;; Generated automatically. Do not edit.
;;; Class: System.IO.Path
;;; Generator Version: 16
;;; Creation Date: 2026-06-30T03:10:11Z

(cl:in-package :cl-user)

(cl:defpackage :system-io-path
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:alt-directory-separator-char
   #:directory-separator-char
   #:invalid-path-chars
   #:path-separator
   #:volume-separator-char
   #:change-extension
   #:combine
   #:combine-string-string
   #:combine-string-string-string
   #:combine-string-string-string-string
   #:ends-in-directory-separator
   #:exists
   #:get-directory-name
   #:get-extension
   #:get-file-name
   #:get-file-name-without-extension
   #:get-full-path
   #:get-full-path-string
   #:get-full-path-string-string
   #:get-invalid-file-name-chars
   #:get-invalid-path-chars
   #:get-path-root
   #:get-random-file-name
   #:get-relative-path
   #:get-temp-file-name
   #:get-temp-path
   #:has-extension
   #:is-path-fully-qualified
   #:is-path-rooted
   #:join
   #:join-string-string
   #:join-string-string-string
   #:join-string-string-string-string
   #:trim-ending-directory-separator
  ))

(cl:in-package :system-io-path)

(cl:defconstant <type> (monoutils:get-type "System.IO.Path"))
(cl:defconstant <type-str> "System.IO.Path")
(cl:defconstant <creation> "2026-06-30T03:10:11Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.IO.Path")))

(cl:define-symbol-macro alt-directory-separator-char (dotnet:static <type-str> "AltDirectorySeparatorChar"))
(cl:setf (cl:documentation (cl:quote alt-directory-separator-char) (cl:quote cl:variable)) "Provides a platform-specific alternate character used to separate directory levels in a path string that reflects a hierarchical file system organization.")

(cl:define-symbol-macro directory-separator-char (dotnet:static <type-str> "DirectorySeparatorChar"))
(cl:setf (cl:documentation (cl:quote directory-separator-char) (cl:quote cl:variable)) "Provides a platform-specific character used to separate directory levels in a path string that reflects a hierarchical file system organization.")

(cl:define-symbol-macro invalid-path-chars (dotnet:static <type-str> "InvalidPathChars"))
(cl:setf (cl:documentation (cl:quote invalid-path-chars) (cl:quote cl:variable)) "Provides a platform-specific array of characters that cannot be specified in path string arguments passed to members of the System.IO.Path class.")

(cl:define-symbol-macro path-separator (dotnet:static <type-str> "PathSeparator"))
(cl:setf (cl:documentation (cl:quote path-separator) (cl:quote cl:variable)) "A platform-specific separator character used to separate path strings in environment variables.")

(cl:define-symbol-macro volume-separator-char (dotnet:static <type-str> "VolumeSeparatorChar"))
(cl:setf (cl:documentation (cl:quote volume-separator-char) (cl:quote cl:variable)) "Provides a platform-specific volume separator character.")

(cl:defun change-extension (path extension)
  "Summary: Changes the extension of a path string.
Returns: The modified path information. On Windows-based desktop platforms, if path is or an empty string (\"\"), the path information is returned unmodified. If extension is , the returned string contains the specified path with its extension removed. If path has no extension, and extension is not , the returned path string contains extension appended to the end of path.
Parameters:
  - path (System.String): The path information to modify.
  - extension (System.String): The new extension (with or without a leading period). Specify to remove an existing extension from path.
"
  (dotnet:static <type-str> "ChangeExtension" (cl:the (dotnet "System.String") path) (cl:the (dotnet "System.String") extension)))

(cl:defun combine (cl:&rest args)
  "Passthrough for System.IO.Path.Combine overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Combine" args))

(cl:defun combine-string-string (path1 path2)
  "Calls System.IO.Path.Combine Combine(String, String) -> String. Summary: Combines two strings into a path.
Returns: The combined paths. If one of the specified paths is a zero-length string, this method returns the other path. If path2 contains an absolute path, this method returns path2.
Parameters:
  - path1 (System.String): The first path to combine.
  - path2 (System.String): The second path to combine.
"
  (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2)))

(cl:defun combine-string-string-string (path1 path2 path3)
  "Calls System.IO.Path.Combine Combine(String, String, String) -> String. Summary: Combines three strings into a path.
Returns: The combined paths.
Parameters:
  - path1 (System.String): The first path to combine.
  - path2 (System.String): The second path to combine.
  - path3 (System.String): The third path to combine.
"
  (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3)))

(cl:defun combine-string-string-string-string (path1 path2 path3 path4)
  "Calls System.IO.Path.Combine Combine(String, String, String, String) -> String. Summary: Combines four strings into a path.
Returns: The combined paths.
Parameters:
  - path1 (System.String): The first path to combine.
  - path2 (System.String): The second path to combine.
  - path3 (System.String): The third path to combine.
  - path4 (System.String): The fourth path to combine.
"
  (dotnet:static <type-str> "Combine" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3) (cl:the (dotnet "System.String") path4)))

;; Note: System.IO.Path.Combine also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Combine(params String[]) -> String

(cl:defun ends-in-directory-separator (path)
  "Summary: Returns a value that indicates whether the specified path ends in a directory separator.
Returns: if the path ends in a directory separator; otherwise, .
Parameters:
  - path (System.String): The path to analyze.
"
  (dotnet:static <type-str> "EndsInDirectorySeparator" (cl:the (dotnet "System.String") path)))

(cl:defun exists (path)
  "Summary: Determines whether the specified file or directory exists.
Returns: if the caller has the required permissions and path contains the name of an existing file or directory; otherwise, . This method also returns if path is , an invalid path, or a zero-length string. If the caller does not have sufficient permissions to read the specified path, no exception is thrown and the method returns regardless of the existence of path.
Parameters:
  - path (System.String): The path to check
"
  (dotnet:static <type-str> "Exists" (cl:the (dotnet "System.String") path)))

(cl:defun get-directory-name (path)
  "Summary: Returns the directory information for the specified path.
Returns: Directory information for path, or if path denotes a root directory or is null. Returns System.String.Empty if path does not contain directory information.
Parameters:
  - path (System.String): The path of a file or directory.
"
  (dotnet:static <type-str> "GetDirectoryName" (cl:the (dotnet "System.String") path)))

(cl:defun get-extension (path)
  "Summary: Returns the extension (including the period \".\") of the specified path string.
Returns: The extension of the specified path (including the period \".\"), or , or System.String.Empty. If path is , System.IO.Path.GetExtension(System.String) returns . If path does not have extension information, System.IO.Path.GetExtension(System.String) returns System.String.Empty.
Parameters:
  - path (System.String): The path string from which to get the extension.
"
  (dotnet:static <type-str> "GetExtension" (cl:the (dotnet "System.String") path)))

(cl:defun get-file-name (path)
  "Summary: Returns the file name and extension of the specified path string.
Returns: The characters after the last directory separator character in path. If the last character of path is a directory or volume separator character, this method returns System.String.Empty. If path is , this method returns .
Parameters:
  - path (System.String): The path string from which to obtain the file name and extension.
"
  (dotnet:static <type-str> "GetFileName" (cl:the (dotnet "System.String") path)))

(cl:defun get-file-name-without-extension (path)
  "Summary: Returns the file name of the specified path string without the extension.
Returns: The string returned by System.IO.Path.GetFileName(System.ReadOnlySpan{System.Char}), minus the last period (.) and all characters following it.
Parameters:
  - path (System.String): The path of the file.
"
  (dotnet:static <type-str> "GetFileNameWithoutExtension" (cl:the (dotnet "System.String") path)))

(cl:defun get-full-path (cl:&rest args)
  "Passthrough for System.IO.Path.GetFullPath overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "GetFullPath" args))

(cl:defun get-full-path-string (path)
  "Calls System.IO.Path.GetFullPath GetFullPath(String) -> String. Summary: Returns the absolute path for the specified path string.
Returns: The fully qualified location of path, such as \"C:\\MyFile.txt\".
Parameters:
  - path (System.String): The file or directory for which to obtain absolute path information.
"
  (dotnet:static <type-str> "GetFullPath" (cl:the (dotnet "System.String") path)))

(cl:defun get-full-path-string-string (path base-path)
  "Calls System.IO.Path.GetFullPath GetFullPath(String, String) -> String. Summary: Returns an absolute path from a relative path and a fully qualified base path.
Returns: The absolute path.
Parameters:
  - path (System.String): A relative path to concatenate to basePath.
  - base-path (System.String): The beginning of a fully qualified path.
"
  (dotnet:static <type-str> "GetFullPath" (cl:the (dotnet "System.String") path) (cl:the (dotnet "System.String") base-path)))

(cl:defun get-invalid-file-name-chars ()
  "Summary: Gets an array containing the characters that are not allowed in file names.
Returns: An array containing the characters that are not allowed in file names.
"
  (dotnet:static <type-str> "GetInvalidFileNameChars"))

(cl:defun get-invalid-path-chars ()
  "Summary: Gets an array containing the characters that are not allowed in path names.
Returns: An array containing the characters that are not allowed in path names.
"
  (dotnet:static <type-str> "GetInvalidPathChars"))

(cl:defun get-path-root (path)
  "Summary: Gets the root directory information from the path contained in the specified string.
Returns: The root directory of path if it is rooted. -or- System.String.Empty if path does not contain root directory information. -or- if path is or is effectively empty.
Parameters:
  - path (System.String): A string containing the path from which to obtain root directory information.
"
  (dotnet:static <type-str> "GetPathRoot" (cl:the (dotnet "System.String") path)))

(cl:defun get-random-file-name ()
  "Summary: Returns a random folder name or file name.
Returns: A random folder name or file name.
"
  (dotnet:static <type-str> "GetRandomFileName"))

(cl:defun get-relative-path (relative-to path)
  "Summary: Returns a relative path from one path to another.
Returns: The relative path, or path if the paths don't share the same root.
Parameters:
  - relative-to (System.String): The source path the result should be relative to. This path is always considered to be a directory.
  - path (System.String): The destination path.
"
  (dotnet:static <type-str> "GetRelativePath" (cl:the (dotnet "System.String") relative-to) (cl:the (dotnet "System.String") path)))

(cl:defun get-temp-file-name ()
  "Summary: Creates a uniquely named, zero-byte temporary file on disk and returns the full path of that file.
Returns: The full path of the temporary file.
"
  (dotnet:static <type-str> "GetTempFileName"))

(cl:defun get-temp-path ()
  "Summary: Returns the path of the current user's temporary folder.
Returns: The path to the temporary folder, ending with a System.IO.Path.DirectorySeparatorChar.
"
  (dotnet:static <type-str> "GetTempPath"))

(cl:defun has-extension (path)
  "Summary: Determines whether a path includes a file name extension.
Returns: if the characters that follow the last directory separator (\\ or /) or volume separator (:) in the path include a period (.) followed by one or more characters; otherwise, .
Parameters:
  - path (System.String): The path to search for an extension.
"
  (dotnet:static <type-str> "HasExtension" (cl:the (dotnet "System.String") path)))

(cl:defun is-path-fully-qualified (path)
  "Summary: Returns a value that indicates whether the specified file path is fixed to a specific drive or UNC path.
Returns: if the path is fixed to a specific drive or UNC path; if the path is relative to the current drive or working directory.
Parameters:
  - path (System.String): A file path.
"
  (dotnet:static <type-str> "IsPathFullyQualified" (cl:the (dotnet "System.String") path)))

(cl:defun is-path-rooted (path)
  "Summary: Returns a value indicating whether the specified path string contains a root.
Returns: if path contains a root; otherwise, .
Parameters:
  - path (System.String): The path to test.
"
  (dotnet:static <type-str> "IsPathRooted" (cl:the (dotnet "System.String") path)))

(cl:defun join (cl:&rest args)
  "Passthrough for System.IO.Path.Join overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:static) <type-str> "Join" args))

(cl:defun join-string-string (path1 path2)
  "Calls System.IO.Path.Join Join(String, String) -> String. Summary: Concatenates two paths into a single path.
Returns: The concatenated path.
Parameters:
  - path1 (System.String): The first path to join.
  - path2 (System.String): The second path to join.
"
  (dotnet:static <type-str> "Join" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2)))

(cl:defun join-string-string-string (path1 path2 path3)
  "Calls System.IO.Path.Join Join(String, String, String) -> String. Summary: Concatenates three paths into a single path.
Returns: The concatenated path.
Parameters:
  - path1 (System.String): The first path to join.
  - path2 (System.String): The second path to join.
  - path3 (System.String): The third path to join.
"
  (dotnet:static <type-str> "Join" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3)))

(cl:defun join-string-string-string-string (path1 path2 path3 path4)
  "Calls System.IO.Path.Join Join(String, String, String, String) -> String. Summary: Concatenates four paths into a single path.
Returns: The concatenated path.
Parameters:
  - path1 (System.String): The first path to join.
  - path2 (System.String): The second path to join.
  - path3 (System.String): The third path to join.
  - path4 (System.String): The fourth path to join.
"
  (dotnet:static <type-str> "Join" (cl:the (dotnet "System.String") path1) (cl:the (dotnet "System.String") path2) (cl:the (dotnet "System.String") path3) (cl:the (dotnet "System.String") path4)))

;; Note: System.IO.Path.Join also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Join(params String[]) -> String

(cl:defun trim-ending-directory-separator (path)
  "Summary: Trims one trailing directory separator beyond the root of the specified path.
Returns: The path without any trailing directory separators.
Parameters:
  - path (System.String): The path to trim.
"
  (dotnet:static <type-str> "TrimEndingDirectorySeparator" (cl:the (dotnet "System.String") path)))

