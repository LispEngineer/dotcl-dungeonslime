;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Content.IContentLoader
;;; Generator Version: 30
;;; Creation Date: 2026-07-04T19:23:09Z

(cl:in-package :rendering-library-content-i-content-loader)

(cl:defconstant <type> (dotnet:resolve-type "RenderingLibrary.Content.IContentLoader"))
(cl:defconstant <type-str> "RenderingLibrary.Content.IContentLoader")
(cl:defconstant <creation> "2026-07-04T19:23:09Z")
(cl:defconstant <version> 30)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "RenderingLibrary.Content.IContentLoader")))

(cl:defun load-content (type obj! content-name)
  (dotnet:invoke-generic (cl:the (dotnet "RenderingLibrary.Content.IContentLoader") obj!) "LoadContent" (cl:list type) content-name))

(cl:defun try-load-content (type obj! content-name)
  (dotnet:invoke-generic (cl:the (dotnet "RenderingLibrary.Content.IContentLoader") obj!) "TryLoadContent" (cl:list type) content-name))

