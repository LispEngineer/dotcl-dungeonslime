;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.IVisible
;;; Generator Version: 40
;;; Creation Date: 2026-07-07T01:03:12Z

(cl:in-package :rendering-library-graphics-i-visible)

(cl:defconstant <type> (dotnet:resolve-type "RenderingLibrary.Graphics.IVisible"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.IVisible")
(cl:defconstant <creation> "2026-07-07T01:03:12Z")
(cl:defconstant <version> 40)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "RenderingLibrary.Graphics.IVisible")))

(cl:defun absolute-visible (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IVisible") obj!) "get_AbsoluteVisible"))

(cl:defun parent (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IVisible") obj!) "get_Parent"))

(cl:defun visible (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IVisible") obj!) "get_Visible"))

(cl:defun (cl:setf visible) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IVisible") obj!) "set_Visible" new-value))

(cl:defun get-absolute-visible (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IVisible") obj!) "GetAbsoluteVisible"))

