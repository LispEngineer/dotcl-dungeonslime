;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Content.ContentLoader
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :rendering-library-content-content-loader)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Content.ContentLoader"))
(cl:defconstant <type-str> "RenderingLibrary.Content.ContentLoader")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun system-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Content.ContentLoader") obj!) "get_SystemManagers"))

(cl:defun (cl:setf system-managers) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Content.ContentLoader") obj!) "set_SystemManagers" new-value))

(cl:defun xna-content-manager (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Content.ContentLoader") obj!) "get_XnaContentManager"))

(cl:defun (cl:setf xna-content-manager) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Content.ContentLoader") obj!) "set_XnaContentManager" new-value))

(cl:defun load-content (type obj! content-name)
  (dotnet:invoke-generic (cl:the (dotnet "RenderingLibrary.Content.ContentLoader") obj!) "LoadContent" (cl:list type) content-name))

(cl:defun standardize-case-sensitive (file-name)
  (dotnet:static <type-str> "StandardizeCaseSensitive" (cl:the (dotnet "System.String") file-name)))

(cl:defun try-load-content (type obj! content-name)
  (dotnet:invoke-generic (cl:the (dotnet "RenderingLibrary.Content.ContentLoader") obj!) "TryLoadContent" (cl:list type) content-name))

