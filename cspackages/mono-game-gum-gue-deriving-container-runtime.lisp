;;; Generated automatically. Do not edit.
;;; Class: MonoGameGum.GueDeriving.ContainerRuntime
;;; Generator Version: 48
;;; Creation Date: 2026-07-14T16:32:54Z

(cl:in-package :mono-game-gum-gue-deriving-container-runtime)

(cl:define-symbol-macro <type> (dotnet:resolve-type "MonoGameGum.GueDeriving.ContainerRuntime"))
(cl:defconstant <type-str> "MonoGameGum.GueDeriving.ContainerRuntime")
(cl:defconstant <creation> "2026-07-14T16:32:54Z")
(cl:defconstant <version> 48)

(cl:defun new (cl:&key (full-instantiation cl:t supplied-full-instantiation))
  "Master wrapper for MonoGameGum.GueDeriving.ContainerRuntime constructor overloads. Dispatches at runtime.

new()

new(Boolean = T)
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-full-instantiation) (cl:typep full-instantiation 'cl:boolean)))
     (dotnet:new <type-str> (cl:if supplied-full-instantiation full-instantiation cl:t)))
    ((cl:and (cl:not supplied-full-instantiation))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MONO-GAME-GUM-GUE-DERIVING-CONTAINER-RUNTIME"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-full-instantiation (cl:list :full-instantiation full-instantiation)))))))

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

