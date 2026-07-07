;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.IRenderable
;;; Generator Version: 39
;;; Creation Date: 2026-07-07T00:23:35Z

(cl:in-package :rendering-library-graphics-i-renderable)

(cl:defconstant <type> (dotnet:resolve-type "RenderingLibrary.Graphics.IRenderable"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.IRenderable")
(cl:defconstant <creation> "2026-07-07T00:23:35Z")
(cl:defconstant <version> 39)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "RenderingLibrary.Graphics.IRenderable")))

(cl:defun batch-key (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "get_BatchKey"))

(cl:defun blend-state (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "get_BlendState"))

(cl:defun wrap (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "get_Wrap"))

(cl:defun end-batch (obj! system-managers)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "EndBatch" system-managers))

(cl:defun pre-render (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "PreRender"))

(cl:defun render (obj! managers)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "Render" managers))

(cl:defun start-batch (obj! system-managers)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.IRenderable") obj!) "StartBatch" system-managers))

