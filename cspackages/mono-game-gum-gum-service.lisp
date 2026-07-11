;;; Generated automatically. Do not edit.
;;; Class: MonoGameGum.GumService
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :mono-game-gum-gum-service)

(cl:defconstant <type> (dotnet:resolve-type "MonoGameGum.GumService"))
(cl:defconstant <type-str> "MonoGameGum.GumService")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "MonoGameGum.GumService")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:define-symbol-macro default (dotnet:static <type-str> "Default"))

(cl:defun canvas-height (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_CanvasHeight"))

(cl:defun (cl:setf canvas-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "set_CanvasHeight" new-value))

(cl:defun canvas-width (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_CanvasWidth"))

(cl:defun (cl:setf canvas-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "set_CanvasWidth" new-value))

(cl:defun content-loader (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_ContentLoader"))

(cl:defun cursor (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_Cursor"))

(cl:defun deferred-queue (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_DeferredQueue"))

(cl:defun game (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_Game"))

(cl:defun gamepads (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_Gamepads"))

(cl:defun game-time (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_GameTime"))

(cl:defun initialized? (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_IsInitialized"))

(cl:defun keyboard (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_Keyboard"))

(cl:defun last-load-result (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_LastLoadResult"))

(cl:defun localization-service (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_LocalizationService"))

(cl:defun modal-root (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_ModalRoot"))

(cl:defun popup-root (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_PopupRoot"))

(cl:defun renderer (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_Renderer"))

(cl:defun root (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_Root"))

(cl:defun synchronization-context (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_SynchronizationContext"))

(cl:defun system-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "get_SystemManagers"))

(cl:defun add-hot-reload-completed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "MonoGameGum.GumService") obj!) "HotReloadCompleted" handler))

(cl:defun remove-hot-reload-completed (obj! handler)
  "Pass the exact same HANDLER object given to add-hot-reload-completed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "MonoGameGum.GumService") obj!) "HotReloadCompleted" handler))

(cl:defun draw (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Draw"))

(cl:defun enable-hot-reload (obj! absolute-gumx-source-path)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "EnableHotReload" absolute-gumx-source-path))

(cl:defun initialize (obj! game cl:&optional (gum-project-file cl:nil supplied-gum-project-file))
  "Master wrapper for MonoGameGum.GumService.Initialize overloads. Dispatches at runtime.

Initialize(Game, String) -> GumProjectSave

Initialize(Game, DefaultVisualsVersion) -> Void

Initialize(Game, SystemManagers) -> Void

Initialize(GraphicsDevice, String) -> GumProjectSave
"
  (cl:cond
    ((cl:and (cl:or (cl:null game) (dotnet:object-type game)) supplied-gum-project-file (cl:stringp gum-project-file))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Initialize" game gum-project-file))
    ((cl:and (cl:or (cl:null game) (dotnet:object-type game)) supplied-gum-project-file (cl:or (cl:null gum-project-file) (dotnet:object-type gum-project-file)))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Initialize" game gum-project-file))
    ((cl:and (cl:or (cl:null game) (dotnet:object-type game)) supplied-gum-project-file (cl:or (cl:null gum-project-file) (dotnet:object-type gum-project-file)))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Initialize" game gum-project-file))
    ((cl:and (cl:or (cl:null game) (dotnet:object-type game)) supplied-gum-project-file (cl:stringp gum-project-file))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Initialize" game gum-project-file))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MONO-GAME-GUM-GUM-SERVICE"
                    :class-name <type-str>
                    :method-name "Initialize"
                    :supplied-args (cl:append (cl:list :game game) (cl:when supplied-gum-project-file (cl:list :gum-project-file gum-project-file)))))))

;; Note: MonoGameGum.GumService.Initialize also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   Initialize(Game, String) -> GumProjectSave
;;   Initialize(GraphicsDevice, String) -> GumProjectSave

(cl:defun initialize-for-testing (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "InitializeForTesting"))

(cl:defun load-animations (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "LoadAnimations"))

(cl:defun refresh-styles (obj! cl:&optional (target cl:nil supplied-target))
  "Master wrapper for MonoGameGum.GumService.RefreshStyles overloads. Dispatches at runtime.

RefreshStyles() -> Void

RefreshStyles(GraphicalUiElement) -> Void
"
  (cl:cond
    ((cl:and supplied-target (cl:or (cl:null target) (dotnet:object-type target)))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "RefreshStyles" target))
    ((cl:and (cl:not supplied-target))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "RefreshStyles"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MONO-GAME-GUM-GUM-SERVICE"
                    :class-name <type-str>
                    :method-name "RefreshStyles"
                    :supplied-args (cl:append (cl:when supplied-target (cl:list :target target)))))))

(cl:defun uninitialize (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Uninitialize"))

(cl:defun update (obj! game-time cl:&optional (game-time2 cl:nil supplied-game-time2) (root cl:nil supplied-root))
  "Master wrapper for MonoGameGum.GumService.Update overloads. Dispatches at runtime.

Update(GameTime) -> Void

Update(Game, GameTime) -> Void

Update(GameTime, GraphicalUiElement) -> Void

Update(GameTime, GraphicalUiElement]) -> Void

Update(Game, GameTime, FrameworkElement) -> Void

Update(Game, GameTime, GraphicalUiElement) -> Void

Update(Game, GameTime, GraphicalUiElement]) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) supplied-game-time2 (cl:or (cl:null game-time2) (dotnet:object-type game-time2)) supplied-root (cl:or (cl:null root) (dotnet:object-type root)))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time game-time2 root))
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) supplied-game-time2 (cl:or (cl:null game-time2) (dotnet:object-type game-time2)) supplied-root (cl:or (cl:null root) (dotnet:object-type root)))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time game-time2 root))
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) supplied-game-time2 (cl:or (cl:null game-time2) (dotnet:object-type game-time2)) supplied-root (cl:or (cl:null root) (dotnet:object-type root)))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time game-time2 root))
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) supplied-game-time2 (cl:or (cl:null game-time2) (dotnet:object-type game-time2)) (cl:not supplied-root))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time game-time2))
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) supplied-game-time2 (cl:or (cl:null game-time2) (dotnet:object-type game-time2)) (cl:not supplied-root))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time game-time2))
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) supplied-game-time2 (cl:or (cl:null game-time2) (dotnet:object-type game-time2)) (cl:not supplied-root))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time game-time2))
    ((cl:and (cl:or (cl:null game-time) (dotnet:object-type game-time)) (cl:not supplied-game-time2) (cl:not supplied-root))
     (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "Update" game-time))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MONO-GAME-GUM-GUM-SERVICE"
                    :class-name <type-str>
                    :method-name "Update"
                    :supplied-args (cl:append (cl:list :game-time game-time) (cl:when supplied-game-time2 (cl:list :game-time2 game-time2)) (cl:when supplied-root (cl:list :root root)))))))

(cl:defun use-gamepad-defaults (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "UseGamepadDefaults"))

(cl:defun use-keyboard-defaults (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "UseKeyboardDefaults"))

(cl:defun use-single-threaded-async (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GumService") obj!) "UseSingleThreadedAsync"))

