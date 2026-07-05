;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Camera
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :rendering-library-camera)

(cl:defconstant <type> (dotnet:resolve-type "RenderingLibrary.Camera"))
(cl:defconstant <type-str> "RenderingLibrary.Camera")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "RenderingLibrary.Camera")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun absolute-bottom (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_AbsoluteBottom"))

(cl:defun absolute-left (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_AbsoluteLeft"))

(cl:defun (cl:setf absolute-left) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_AbsoluteLeft" new-value))

(cl:defun absolute-right (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_AbsoluteRight"))

(cl:defun absolute-top (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_AbsoluteTop"))

(cl:defun (cl:setf absolute-top) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_AbsoluteTop" new-value))

(cl:defun camera-center-on-screen (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_CameraCenterOnScreen"))

(cl:defun (cl:setf camera-center-on-screen) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_CameraCenterOnScreen" new-value))

(cl:defun client-height (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_ClientHeight"))

(cl:defun (cl:setf client-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_ClientHeight" new-value))

(cl:defun client-left (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_ClientLeft"))

(cl:defun (cl:setf client-left) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_ClientLeft" new-value))

(cl:defun client-top (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_ClientTop"))

(cl:defun (cl:setf client-top) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_ClientTop" new-value))

(cl:defun client-width (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_ClientWidth"))

(cl:defun (cl:setf client-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_ClientWidth" new-value))

(cl:defun rendering-x-offset (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_RenderingXOffset"))

(cl:defun rendering-y-offset (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_RenderingYOffset"))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_X"))

(cl:defun (cl:setf x) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_X" new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_Y"))

(cl:defun (cl:setf y) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_Y" new-value))

(cl:defun zoom (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "get_Zoom"))

(cl:defun (cl:setf zoom) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "set_Zoom" new-value))

(cl:defun position (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "Position"))

(cl:defun (cl:setf position) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "Position") new-value))

(cl:defun pixel-perfect-offset-x ()
  (dotnet:static <type-str> "PixelPerfectOffsetX"))

(cl:defun (cl:setf pixel-perfect-offset-x) (new-value)
  (cl:setf (dotnet:static <type-str> "PixelPerfectOffsetX") new-value))

(cl:defun pixel-perfect-offset-y ()
  (dotnet:static <type-str> "PixelPerfectOffsetY"))

(cl:defun (cl:setf pixel-perfect-offset-y) (new-value)
  (cl:setf (dotnet:static <type-str> "PixelPerfectOffsetY") new-value))

(cl:defun get-transformation-matrix (obj! cl:&key (for-rendering cl:nil supplied-for-rendering))
  "Master wrapper for RenderingLibrary.Camera.GetTransformationMatrix overloads. Dispatches at runtime.

GetTransformationMatrix(Boolean) -> Matrix4x4
"
  (cl:cond
    ((cl:and (cl:typep for-rendering 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Camera") obj!) "GetTransformationMatrix" for-rendering))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "RENDERING-LIBRARY-CAMERA"
                    :class-name <type-str>
                    :method-name "GetTransformationMatrix"
                    :supplied-args (cl:append (cl:when supplied-for-rendering (cl:list :for-rendering for-rendering)))))))

(cl:defun get-transformation-matrix* (x y zoom client-width client-height cl:&key (for-rendering cl:nil supplied-for-rendering))
  "Master wrapper for RenderingLibrary.Camera.GetTransformationMatrix overloads. Dispatches at runtime.

GetTransformationMatrix(Single, Single, Single, Int32, Int32, Boolean) -> Matrix4x4
"
  (cl:cond
    ((cl:and (cl:numberp x) (cl:numberp y) (cl:numberp zoom) (cl:numberp client-width) (cl:numberp client-height) (cl:typep for-rendering 'cl:boolean))
     (dotnet:static <type-str> "GetTransformationMatrix" x y zoom client-width client-height for-rendering))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "RENDERING-LIBRARY-CAMERA"
                    :class-name <type-str>
                    :method-name "GetTransformationMatrix"
                    :supplied-args (cl:append (cl:list :x x) (cl:list :y y) (cl:list :zoom zoom) (cl:list :client-width client-width) (cl:list :client-height client-height) (cl:when supplied-for-rendering (cl:list :for-rendering for-rendering)))))))

;; Note: RenderingLibrary.Camera.GetTransformationMatrix also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   GetTransformationMatrix(Boolean) -> Matrix4x4
;;   GetTransformationMatrix(Single, Single, Single, Int32, Int32, Boolean) -> Matrix4x4

;; The following C# RenderingLibrary.Camera.ScreenToWorld overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   ScreenToWorld(Single, Single, out Single&, out Single&) -> Void

;; The following C# RenderingLibrary.Camera.WorldToScreen overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   WorldToScreen(Single, Single, out Single&, out Single&) -> Void

