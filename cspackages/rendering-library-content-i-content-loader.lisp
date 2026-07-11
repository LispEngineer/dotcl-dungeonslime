;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Content.IContentLoader
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :rendering-library-content-i-content-loader)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Content.IContentLoader"))
(cl:defconstant <type-str> "RenderingLibrary.Content.IContentLoader")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

(cl:defun load-content (type obj! content-name)
  (dotnet:invoke-generic (cl:the (dotnet "RenderingLibrary.Content.IContentLoader") obj!) "LoadContent" (cl:list type) content-name))

(cl:defun try-load-content (type obj! content-name)
  (dotnet:invoke-generic (cl:the (dotnet "RenderingLibrary.Content.IContentLoader") obj!) "TryLoadContent" (cl:list type) content-name))

