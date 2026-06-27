;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Game
;;; Generator Version: 11
;;; Creation Date: 2026-06-27T13:31:39Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-game
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:components
   #:content
   #:graphics-device
   #:inactive-sleep-time
   #:is-active
   #:is-fixed-time-step
   #:is-mouse-visible
   #:launch-parameters
   #:max-elapsed-time
   #:services
   #:target-elapsed-time
   #:window
   #:begin-draw
   #:begin-run
   #:dispose
   #:dispose-boolean
   #:draw
   #:end-draw
   #:end-run
   #:exit
   #:finalize
   #:initialize
   #:load-content
   #:on-activated
   #:on-deactivated
   #:on-exiting
   #:reset-elapsed-time
   #:run
   #:run-game-run-behavior
   #:run-one-frame
   #:suppress-draw
   #:tick
   #:unload-content
   #:update
  ))

(in-package :microsoft-xna-framework-game)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Game"))
(defconstant <type-str> "Microsoft.Xna.Framework.Game")
(defconstant <creation> "2026-06-27T13:31:39Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Game")))

(defun new ()
  (dotnet:new <type-str>))

(defun components (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_Components"))

(defun content (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_Content"))

(defun (setf content) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "set_Content" new-value))

(defun graphics-device (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_GraphicsDevice"))

(defun inactive-sleep-time (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_InactiveSleepTime"))

(defun (setf inactive-sleep-time) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "set_InactiveSleepTime" new-value))

(defun is-active (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_IsActive"))

(defun is-fixed-time-step (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_IsFixedTimeStep"))

(defun (setf is-fixed-time-step) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "set_IsFixedTimeStep" new-value))

(defun is-mouse-visible (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_IsMouseVisible"))

(defun (setf is-mouse-visible) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "set_IsMouseVisible" new-value))

(defun launch-parameters (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_LaunchParameters"))

(defun max-elapsed-time (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_MaxElapsedTime"))

(defun (setf max-elapsed-time) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "set_MaxElapsedTime" new-value))

(defun services (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_Services"))

(defun target-elapsed-time (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_TargetElapsedTime"))

(defun (setf target-elapsed-time) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "set_TargetElapsedTime" new-value))

(defun window (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "get_Window"))

(defun begin-draw (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "BeginDraw"))

(defun begin-run (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "BeginRun"))

(defun dispose (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Game.Dispose overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Dispose" args))

(defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Game.Dispose Dispose() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Dispose"))

(defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Game.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Dispose" disposing))

(defun draw (obj game-time)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Draw" game-time))

(defun end-draw (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "EndDraw"))

(defun end-run (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "EndRun"))

(defun exit (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Exit"))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Finalize"))

(defun initialize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Initialize"))

(defun load-content (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "LoadContent"))

(defun on-activated (obj sender args)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "OnActivated" sender args))

(defun on-deactivated (obj sender args)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "OnDeactivated" sender args))

(defun on-exiting (obj sender args)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "OnExiting" sender args))

(defun reset-elapsed-time (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "ResetElapsedTime"))

(defun run (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Game.Run overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Run" args))

(defun run (obj)
  "Calls Microsoft.Xna.Framework.Game.Run Run() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Run"))

(defun run-game-run-behavior (obj run-behavior)
  "Calls Microsoft.Xna.Framework.Game.Run Run(GameRunBehavior) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Run" run-behavior))

(defun run-one-frame (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "RunOneFrame"))

(defun suppress-draw (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "SuppressDraw"))

(defun tick (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Tick"))

(defun unload-content (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "UnloadContent"))

(defun update (obj game-time)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Game") obj) "Update" game-time))

