;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.IVisible
;;; Generator Version: 48
;;; Creation Date: 2026-07-14T16:32:54Z

(cl:in-package :rendering-library-graphics-i-visible)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Graphics.IVisible"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.IVisible")
(cl:defconstant <creation> "2026-07-14T16:32:54Z")
(cl:defconstant <version> 48)

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

