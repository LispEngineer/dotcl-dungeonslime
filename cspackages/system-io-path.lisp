;;; Generated automatically. Do not edit.
;;; Class: System.IO.Path
;;; Generator Version: 30
;;; Creation Date: 2026-07-04T15:34:33Z

(cl:in-package :system-io-path)

(cl:defconstant <type> (dotnet:resolve-type "System.IO.Path"))
(cl:defconstant <type-str> "System.IO.Path")
(cl:defconstant <creation> "2026-07-04T15:34:33Z")
(cl:defconstant <version> 30)

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

(cl:defun combine (paths cl:&optional (path2 cl:nil supplied-path2) (path3 cl:nil supplied-path3) (path4 cl:nil supplied-path4))
  "Master wrapper for System.IO.Path.Combine overloads. Dispatches at runtime.

Combine(String]) -> String
  Summary: Combines a span of strings into a path.
  Returns: The combined paths.
  Parameters:
    - paths (System.ReadOnlySpan`1[System.String]): A span of parts of the path.

Combine(String, String) -> String
  Summary: Combines two strings into a path.
  Returns: The combined paths. If one of the specified paths is a zero-length string, this method returns the other path. If path2 contains an absolute path, this method returns path2.
  Parameters:
    - path1 (System.String): The first path to combine.
    - path2 (System.String): The second path to combine.

Combine(String, String, String) -> String
  Summary: Combines three strings into a path.
  Returns: The combined paths.
  Parameters:
    - path1 (System.String): The first path to combine.
    - path2 (System.String): The second path to combine.
    - path3 (System.String): The third path to combine.

Combine(String, String, String, String) -> String
  Summary: Combines four strings into a path.
  Returns: The combined paths.
  Parameters:
    - path1 (System.String): The first path to combine.
    - path2 (System.String): The second path to combine.
    - path3 (System.String): The third path to combine.
    - path4 (System.String): The fourth path to combine.
"
  (cl:cond
    ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) supplied-path4 (cl:stringp path4))
     (dotnet:static <type-str> "Combine" paths path2 path3 path4))
    ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Combine" paths path2 path3))
    ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) (cl:not supplied-path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Combine" paths path2))
    ((cl:and (cl:or (cl:null paths) (dotnet:object-type paths)) (cl:not supplied-path2) (cl:not supplied-path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Combine" paths))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "Combine"
                    :supplied-args (cl:append (cl:list :paths paths) (cl:when supplied-path2 (cl:list :path2 path2)) (cl:when supplied-path3 (cl:list :path3 path3)) (cl:when supplied-path4 (cl:list :path4 path4)))))))

;; Note: System.IO.Path.Combine also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Combine(params String[]) -> String

(cl:defun ends-in-directory-separator (path)
  "Master wrapper for System.IO.Path.EndsInDirectorySeparator overloads. Dispatches at runtime.

EndsInDirectorySeparator(Char]) -> Boolean
  Summary: Returns a value that indicates whether the path, specified as a read-only span, ends in a directory separator.
  Returns: if the path ends in a directory separator; otherwise, .
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): The path to analyze.

EndsInDirectorySeparator(String) -> Boolean
  Summary: Returns a value that indicates whether the specified path ends in a directory separator.
  Returns: if the path ends in a directory separator; otherwise, .
  Parameters:
    - path (System.String): The path to analyze.
"
  (cl:cond
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "EndsInDirectorySeparator" path))
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "EndsInDirectorySeparator" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "EndsInDirectorySeparator"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun exists (path)
  "Summary: Determines whether the specified file or directory exists.
Returns: if the caller has the required permissions and path contains the name of an existing file or directory; otherwise, . This method also returns if path is , an invalid path, or a zero-length string. If the caller does not have sufficient permissions to read the specified path, no exception is thrown and the method returns regardless of the existence of path.
Parameters:
  - path (System.String): The path to check
"
  (dotnet:static <type-str> "Exists" (cl:the (dotnet "System.String") path)))

(cl:defun get-directory-name (path)
  "Master wrapper for System.IO.Path.GetDirectoryName overloads. Dispatches at runtime.

GetDirectoryName(String) -> String
  Summary: Returns the directory information for the specified path.
  Returns: Directory information for path, or if path denotes a root directory or is null. Returns System.String.Empty if path does not contain directory information.
  Parameters:
    - path (System.String): The path of a file or directory.

GetDirectoryName(Char]) -> Char]
  Summary: Returns the directory information for the specified path represented by a character span.
  Returns: Directory information for path, or an empty span if path is , an empty span, or a root (such as \\, C:, or \\\\server\\share).
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): The path to retrieve the directory information from.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "GetDirectoryName" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "GetDirectoryName" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "GetDirectoryName"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun get-extension (path)
  "Master wrapper for System.IO.Path.GetExtension overloads. Dispatches at runtime.

GetExtension(String) -> String
  Summary: Returns the extension (including the period \".\") of the specified path string.
  Returns: The extension of the specified path (including the period \".\"), or , or System.String.Empty. If path is , System.IO.Path.GetExtension(System.String) returns . If path does not have extension information, System.IO.Path.GetExtension(System.String) returns System.String.Empty.
  Parameters:
    - path (System.String): The path string from which to get the extension.

GetExtension(Char]) -> Char]
  Summary: Returns the extension of a file path that is represented by a read-only character span.
  Returns: The extension of the specified path (including the period, \".\"), or System.ReadOnlySpan`1.Empty if path does not have extension information.
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): The file path from which to get the extension.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "GetExtension" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "GetExtension" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "GetExtension"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun get-file-name (path)
  "Master wrapper for System.IO.Path.GetFileName overloads. Dispatches at runtime.

GetFileName(String) -> String
  Summary: Returns the file name and extension of the specified path string.
  Returns: The characters after the last directory separator character in path. If the last character of path is a directory or volume separator character, this method returns System.String.Empty. If path is , this method returns .
  Parameters:
    - path (System.String): The path string from which to obtain the file name and extension.

GetFileName(Char]) -> Char]
  Summary: Returns the file name and extension of a file path that is represented by a read-only character span.
  Returns: The characters after the last directory separator character in path.
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): A read-only span that contains the path from which to obtain the file name and extension.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "GetFileName" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "GetFileName" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "GetFileName"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun get-file-name-without-extension (path)
  "Master wrapper for System.IO.Path.GetFileNameWithoutExtension overloads. Dispatches at runtime.

GetFileNameWithoutExtension(String) -> String
  Summary: Returns the file name of the specified path string without the extension.
  Returns: The string returned by System.IO.Path.GetFileName(System.ReadOnlySpan{System.Char}), minus the last period (.) and all characters following it.
  Parameters:
    - path (System.String): The path of the file.

GetFileNameWithoutExtension(Char]) -> Char]
  Summary: Returns the file name without the extension of a file path that is represented by a read-only character span.
  Returns: The characters in the read-only span returned by System.IO.Path.GetFileName(System.ReadOnlySpan{System.Char}), minus the last period (.) and all characters following it.
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): A read-only span that contains the path from which to obtain the file name without the extension.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "GetFileNameWithoutExtension" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "GetFileNameWithoutExtension" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "GetFileNameWithoutExtension"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun get-full-path (path cl:&optional (base-path cl:nil supplied-base-path))
  "Master wrapper for System.IO.Path.GetFullPath overloads. Dispatches at runtime.

GetFullPath(String) -> String
  Summary: Returns the absolute path for the specified path string.
  Returns: The fully qualified location of path, such as \"C:\\MyFile.txt\".
  Parameters:
    - path (System.String): The file or directory for which to obtain absolute path information.

GetFullPath(String, String) -> String
  Summary: Returns an absolute path from a relative path and a fully qualified base path.
  Returns: The absolute path.
  Parameters:
    - path (System.String): A relative path to concatenate to basePath.
    - base-path (System.String): The beginning of a fully qualified path.
"
  (cl:cond
    ((cl:and (cl:stringp path) supplied-base-path (cl:stringp base-path))
     (dotnet:static <type-str> "GetFullPath" path base-path))
    ((cl:and (cl:stringp path) (cl:not supplied-base-path))
     (dotnet:static <type-str> "GetFullPath" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "GetFullPath"
                    :supplied-args (cl:append (cl:list :path path) (cl:when supplied-base-path (cl:list :base-path base-path)))))))

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
  "Master wrapper for System.IO.Path.GetPathRoot overloads. Dispatches at runtime.

GetPathRoot(String) -> String
  Summary: Gets the root directory information from the path contained in the specified string.
  Returns: The root directory of path if it is rooted. -or- System.String.Empty if path does not contain root directory information. -or- if path is or is effectively empty.
  Parameters:
    - path (System.String): A string containing the path from which to obtain root directory information.

GetPathRoot(Char]) -> Char]
  Summary: Gets the root directory information from the path contained in the specified character span.
  Returns: A read-only span of characters containing the root directory of path.
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): A read-only span of characters containing the path from which to obtain root directory information.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "GetPathRoot" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "GetPathRoot" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "GetPathRoot"
                    :supplied-args (cl:append (cl:list :path path))))))

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
  "Master wrapper for System.IO.Path.HasExtension overloads. Dispatches at runtime.

HasExtension(String) -> Boolean
  Summary: Determines whether a path includes a file name extension.
  Returns: if the characters that follow the last directory separator (\\ or /) or volume separator (:) in the path include a period (.) followed by one or more characters; otherwise, .
  Parameters:
    - path (System.String): The path to search for an extension.

HasExtension(Char]) -> Boolean
  Summary: Determines whether the path represented by the specified character span includes a file name extension.
  Returns: if the characters that follow the last directory separator character or volume separator in the path include a period (\".\") followed by one or more characters; otherwise, .
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): The path to search for an extension.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "HasExtension" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "HasExtension" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "HasExtension"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun path-fully-qualified? (path)
  "Master wrapper for System.IO.Path.IsPathFullyQualified overloads. Dispatches at runtime.

IsPathFullyQualified(String) -> Boolean
  Summary: Returns a value that indicates whether the specified file path is fixed to a specific drive or UNC path.
  Returns: if the path is fixed to a specific drive or UNC path; if the path is relative to the current drive or working directory.
  Parameters:
    - path (System.String): A file path.

IsPathFullyQualified(Char]) -> Boolean
  Summary: Returns a value that indicates whether the file path represented by the specified character span is fixed to a specific drive or UNC path.
  Returns: if the path is fixed to a specific drive or UNC path; if the path is relative to the current drive or working directory.
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): A file path.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "IsPathFullyQualified" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "IsPathFullyQualified" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "IsPathFullyQualified"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun path-rooted? (path)
  "Master wrapper for System.IO.Path.IsPathRooted overloads. Dispatches at runtime.

IsPathRooted(String) -> Boolean
  Summary: Returns a value indicating whether the specified path string contains a root.
  Returns: if path contains a root; otherwise, .
  Parameters:
    - path (System.String): The path to test.

IsPathRooted(Char]) -> Boolean
  Summary: Returns a value that indicates whether the specified character span that represents a file path contains a root.
  Returns: if path contains a root; otherwise, .
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): The path to test.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "IsPathRooted" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "IsPathRooted" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "IsPathRooted"
                    :supplied-args (cl:append (cl:list :path path))))))

(cl:defun join (paths cl:&optional (path2 cl:nil supplied-path2) (path3 cl:nil supplied-path3) (path4 cl:nil supplied-path4))
  "Master wrapper for System.IO.Path.Join overloads. Dispatches at runtime.

Join(String]) -> String
  Summary: Concatenates a span of paths into a single path.
  Returns: The concatenated path.
  Parameters:
    - paths (System.ReadOnlySpan`1[System.String]): A span of paths.

Join(Char], Char]) -> String
  Summary: Concatenates two path components into a single path.
  Returns: The combined paths.
  Parameters:
    - path1 (System.ReadOnlySpan`1[System.Char]): A character span that contains the first path to join.
    - path2 (System.ReadOnlySpan`1[System.Char]): A character span that contains the second path to join.

Join(String, String) -> String
  Summary: Concatenates two paths into a single path.
  Returns: The concatenated path.
  Parameters:
    - path1 (System.String): The first path to join.
    - path2 (System.String): The second path to join.

Join(Char], Char], Char]) -> String
  Summary: Concatenates three path components into a single path.
  Returns: The concatenated path.
  Parameters:
    - path1 (System.ReadOnlySpan`1[System.Char]): A character span that contains the first path to join.
    - path2 (System.ReadOnlySpan`1[System.Char]): A character span that contains the second path to join.
    - path3 (System.ReadOnlySpan`1[System.Char]): A character span that contains the third path to join.

Join(String, String, String) -> String
  Summary: Concatenates three paths into a single path.
  Returns: The concatenated path.
  Parameters:
    - path1 (System.String): The first path to join.
    - path2 (System.String): The second path to join.
    - path3 (System.String): The third path to join.

Join(Char], Char], Char], Char]) -> String
  Summary: Concatenates four path components into a single path.
  Returns: The concatenated path.
  Parameters:
    - path1 (System.ReadOnlySpan`1[System.Char]): A character span that contains the first path to join.
    - path2 (System.ReadOnlySpan`1[System.Char]): A character span that contains the second path to join.
    - path3 (System.ReadOnlySpan`1[System.Char]): A character span that contains the third path to join.
    - path4 (System.ReadOnlySpan`1[System.Char]): A character span that contains the fourth path to join.

Join(String, String, String, String) -> String
  Summary: Concatenates four paths into a single path.
  Returns: The concatenated path.
  Parameters:
    - path1 (System.String): The first path to join.
    - path2 (System.String): The second path to join.
    - path3 (System.String): The third path to join.
    - path4 (System.String): The fourth path to join.
"
  (cl:cond
    ((cl:and (cl:or (cl:null paths) (dotnet:object-type paths)) supplied-path2 (cl:or (cl:null path2) (dotnet:object-type path2)) supplied-path3 (cl:or (cl:null path3) (dotnet:object-type path3)) supplied-path4 (cl:or (cl:null path4) (dotnet:object-type path4)))
     (dotnet:static <type-str> "Join" paths path2 path3 path4))
    ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) supplied-path4 (cl:stringp path4))
     (dotnet:static <type-str> "Join" paths path2 path3 path4))
    ((cl:and (cl:or (cl:null paths) (dotnet:object-type paths)) supplied-path2 (cl:or (cl:null path2) (dotnet:object-type path2)) supplied-path3 (cl:or (cl:null path3) (dotnet:object-type path3)) (cl:not supplied-path4))
     (dotnet:static <type-str> "Join" paths path2 path3))
    ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) supplied-path3 (cl:stringp path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Join" paths path2 path3))
    ((cl:and (cl:or (cl:null paths) (dotnet:object-type paths)) supplied-path2 (cl:or (cl:null path2) (dotnet:object-type path2)) (cl:not supplied-path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Join" paths path2))
    ((cl:and (cl:stringp paths) supplied-path2 (cl:stringp path2) (cl:not supplied-path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Join" paths path2))
    ((cl:and (cl:or (cl:null paths) (dotnet:object-type paths)) (cl:not supplied-path2) (cl:not supplied-path3) (cl:not supplied-path4))
     (dotnet:static <type-str> "Join" paths))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "Join"
                    :supplied-args (cl:append (cl:list :paths paths) (cl:when supplied-path2 (cl:list :path2 path2)) (cl:when supplied-path3 (cl:list :path3 path3)) (cl:when supplied-path4 (cl:list :path4 path4)))))))

;; Note: System.IO.Path.Join also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Join(params String[]) -> String

(cl:defun trim-ending-directory-separator (path)
  "Master wrapper for System.IO.Path.TrimEndingDirectorySeparator overloads. Dispatches at runtime.

TrimEndingDirectorySeparator(String) -> String
  Summary: Trims one trailing directory separator beyond the root of the specified path.
  Returns: The path without any trailing directory separators.
  Parameters:
    - path (System.String): The path to trim.

TrimEndingDirectorySeparator(Char]) -> Char]
  Summary: Trims one trailing directory separator beyond the root of the specified path.
  Returns: The path without any trailing directory separators.
  Parameters:
    - path (System.ReadOnlySpan`1[System.Char]): The path to trim.
"
  (cl:cond
    ((cl:and (cl:stringp path))
     (dotnet:static <type-str> "TrimEndingDirectorySeparator" path))
    ((cl:and (cl:or (cl:null path) (dotnet:object-type path)))
     (dotnet:static <type-str> "TrimEndingDirectorySeparator" path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-IO-PATH"
                    :class-name <type-str>
                    :method-name "TrimEndingDirectorySeparator"
                    :supplied-args (cl:append (cl:list :path path))))))

;; The following C# System.IO.Path.TryJoin overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryJoin(Char], Char], Char], out Int32&) -> Boolean
;;   TryJoin(Char], Char], Char], Char], out Int32&) -> Boolean

