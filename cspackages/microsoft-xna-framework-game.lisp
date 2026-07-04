;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Game
;;; Generator Version: 30
;;; Creation Date: 2026-07-04T15:34:33Z

(cl:in-package :microsoft-xna-framework-game)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Game"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Game")
(cl:defconstant <creation> "2026-07-04T15:34:33Z")
(cl:defconstant <version> 30)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Game")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun components (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_Components"))

(cl:defun content (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_Content"))

(cl:defun (cl:setf content) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "set_Content" new-value))

(cl:defun graphics-device (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_GraphicsDevice"))

(cl:defun inactive-sleep-time (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_InactiveSleepTime"))

(cl:defun (cl:setf inactive-sleep-time) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "set_InactiveSleepTime" new-value))

(cl:defun active? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_IsActive"))

(cl:defun fixed-time-step? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_IsFixedTimeStep"))

(cl:defun (cl:setf fixed-time-step?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "set_IsFixedTimeStep" new-value))

(cl:defun mouse-visible? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_IsMouseVisible"))

(cl:defun (cl:setf mouse-visible?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "set_IsMouseVisible" new-value))

(cl:defun launch-parameters (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_LaunchParameters"))

(cl:defun max-elapsed-time (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_MaxElapsedTime"))

(cl:defun (cl:setf max-elapsed-time) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "set_MaxElapsedTime" new-value))

(cl:defun services (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_Services"))

(cl:defun target-elapsed-time (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_TargetElapsedTime"))

(cl:defun (cl:setf target-elapsed-time) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "set_TargetElapsedTime" new-value))

(cl:defun window (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "get_Window"))

(cl:defun begin-draw (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "BeginDraw"))

(cl:defun begin-run (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "BeginRun"))

(cl:defun dispose (obj! cl:&optional (disposing cl:nil supplied-disposing))
  "Master wrapper for Microsoft.Xna.Framework.Game.Dispose overloads. Dispatches at runtime.

Dispose() -> Void

Dispose(Boolean) -> Void
"
  (cl:cond
    ((cl:and supplied-disposing (cl:typep disposing 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Dispose" disposing))
    ((cl:and (cl:not supplied-disposing))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Dispose"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GAME"
                    :class-name <type-str>
                    :method-name "Dispose"
                    :supplied-args (cl:append (cl:when supplied-disposing (cl:list :disposing disposing)))))))

(cl:defun draw (obj! game-time)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Draw" game-time))

(cl:defun end-draw (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "EndDraw"))

(cl:defun end-run (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "EndRun"))

(cl:defun exit (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Exit"))

(cl:defun finalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Finalize"))

(cl:defun initialize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Initialize"))

(cl:defun load-content (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "LoadContent"))

(cl:defun on-activated (obj! sender args)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "OnActivated" sender args))

(cl:defun on-deactivated (obj! sender args)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "OnDeactivated" sender args))

(cl:defun on-exiting (obj! sender args)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "OnExiting" sender args))

(cl:defun reset-elapsed-time (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "ResetElapsedTime"))

(cl:defun run (obj! cl:&optional (run-behavior cl:nil supplied-run-behavior))
  "Master wrapper for Microsoft.Xna.Framework.Game.Run overloads. Dispatches at runtime.

Run() -> Void

Run(GameRunBehavior) -> Void
"
  (cl:cond
    ((cl:and supplied-run-behavior (cl:or (cl:null run-behavior) (dotnet:object-type run-behavior)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Run" run-behavior))
    ((cl:and (cl:not supplied-run-behavior))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Run"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GAME"
                    :class-name <type-str>
                    :method-name "Run"
                    :supplied-args (cl:append (cl:when supplied-run-behavior (cl:list :run-behavior run-behavior)))))))

(cl:defun run-one-frame (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "RunOneFrame"))

(cl:defun suppress-draw (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "SuppressDraw"))

(cl:defun tick (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Tick"))

(cl:defun unload-content (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "UnloadContent"))

(cl:defun update (obj! game-time)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Game") obj!) "Update" game-time))

