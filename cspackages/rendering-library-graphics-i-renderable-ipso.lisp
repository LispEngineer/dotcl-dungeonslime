;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.IRenderableIpso
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :rendering-library-graphics-i-renderable-ipso)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Graphics.IRenderableIpso"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.IRenderableIpso")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun alpha (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "get_Alpha"))

(cl:defun children (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "get_Children"))

(cl:defun clips-children (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "get_ClipsChildren"))

(cl:defun color-operation (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "get_ColorOperation"))

(cl:defun render-target? (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "get_IsRenderTarget"))

(cl:defun parent (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "get_Parent"))

(cl:defun (cl:setf parent) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "set_Parent" new-value))

(cl:defun set-parent-direct (obj! new-parent)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") obj!) "SetParentDirect" new-parent))

;; Extension methods (exact match on this == RenderingLibrary.Graphics.IRenderableIpso):
;;   RenderingLibrary.IPositionedSizedObjectExtensionMethods::GetAbsoluteRotation(IRenderableIpso, Boolean = NIL) -> Single -- skipped (special parameter types (ref/out/params/default) not yet supported)
(cl:defun in-render-target-recursively? (obj!)
  "Extension method from RenderingLibrary.Graphics.IRenderableIpsoExtensions (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.Graphics.IRenderableIpsoExtensions" "IsInRenderTargetRecursively" obj!))

(cl:defun get-absolute-bottom (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteBottom" obj!))

(cl:defun get-absolute-center-x (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteCenterX" obj!))

(cl:defun get-absolute-center-y (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteCenterY" obj!))

(cl:defun get-absolute-flip-horizontal (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteFlipHorizontal" obj!))

(cl:defun get-absolute-left (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteLeft" obj!))

(cl:defun get-absolute-right (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteRight" obj!))

(cl:defun get-absolute-rotation-matrix (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteRotationMatrix" obj!))

(cl:defun get-absolute-top (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteTop" obj!))

(cl:defun get-absolute-x (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteX" obj!))

(cl:defun get-absolute-y (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetAbsoluteY" obj!))

(cl:defun get-rotation-matrix (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetRotationMatrix" obj!))

(cl:defun get-top-parent (obj!)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "GetTopParent" obj!))

(cl:defun has-cursor-over (obj! x y)
  "Extension method from RenderingLibrary.IPositionedSizedObjectExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "RenderingLibrary.IPositionedSizedObjectExtensionMethods" "HasCursorOver" obj! x y))


