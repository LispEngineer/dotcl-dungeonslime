;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.IRenderable
;;; Generator Version: 47
;;; Creation Date: 2026-07-11T23:07:59Z

(cl:in-package :rendering-library-graphics-i-renderable)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Graphics.IRenderable"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.IRenderable")
(cl:defconstant <creation> "2026-07-11T23:07:59Z")
(cl:defconstant <version> 47)

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

