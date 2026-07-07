;;; Generated automatically. Do not edit.
;;; Class: MonoGameGum.GueDeriving.ContainerRuntime
;;; Generator Version: 39
;;; Creation Date: 2026-07-07T00:23:35Z

(cl:in-package :mono-game-gum-gue-deriving-container-runtime)

(cl:defconstant <type> (dotnet:resolve-type "MonoGameGum.GueDeriving.ContainerRuntime"))
(cl:defconstant <type-str> "MonoGameGum.GueDeriving.ContainerRuntime")
(cl:defconstant <creation> "2026-07-07T00:23:35Z")
(cl:defconstant <version> 39)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "MonoGameGum.GueDeriving.ContainerRuntime")))

(cl:defun new ()
  (dotnet:new <type-str>))

;; Note: MonoGameGum.GueDeriving.ContainerRuntime also has the following constructors with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   new(Boolean)

(cl:defun alpha (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "get_Alpha"))

(cl:defun (cl:setf alpha) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "set_Alpha" new-value))

(cl:defun batch-key (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "get_BatchKey"))

(cl:defun blend (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "get_Blend"))

(cl:defun (cl:setf blend) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "set_Blend" new-value))

(cl:defun blend-state (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "get_BlendState"))

(cl:defun (cl:setf blend-state) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "set_BlendState" new-value))

(cl:defun render-target? (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "get_IsRenderTarget"))

(cl:defun (cl:setf render-target?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "set_IsRenderTarget" new-value))

(cl:defun add-to-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.ContainerRuntime") obj!) "AddToManagers"))

