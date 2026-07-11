;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.IPositionedSizedObject
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :rendering-library-i-positioned-sized-object)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.IPositionedSizedObject"))
(cl:defconstant <type-str> "RenderingLibrary.IPositionedSizedObject")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

(cl:defun flip-horizontal (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_FlipHorizontal"))

(cl:defun (cl:setf flip-horizontal) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_FlipHorizontal" new-value))

(cl:defun height (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Height"))

(cl:defun (cl:setf height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Height" new-value))

(cl:defun name (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Name"))

(cl:defun (cl:setf name) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Name" new-value))

(cl:defun rotation (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Rotation"))

(cl:defun (cl:setf rotation) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Rotation" new-value))

(cl:defun tag (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Tag"))

(cl:defun (cl:setf tag) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Tag" new-value))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Width"))

(cl:defun (cl:setf width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Width" new-value))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_X"))

(cl:defun (cl:setf x) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_X" new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Y"))

(cl:defun (cl:setf y) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Y" new-value))

(cl:defun z (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "get_Z"))

(cl:defun (cl:setf z) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.IPositionedSizedObject") obj!) "set_Z" new-value))

;; Extension methods (exact match on this == RenderingLibrary.IPositionedSizedObject):
(cl:defun get-position (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetPosition" obj!))

(cl:defun set-position (obj! new-position)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "SetPosition" obj! new-position))


