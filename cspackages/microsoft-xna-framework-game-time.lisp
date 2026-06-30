;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GameTime
;;; Generator Version: 16
;;; Creation Date: 2026-06-30T03:10:43Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-game-time
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-time-span-time-span
   #:new-time-span-time-span-boolean
   #:elapsed-game-time
   #:is-running-slowly
   #:total-game-time
  ))

(cl:in-package :microsoft-xna-framework-game-time)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.GameTime"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.GameTime")
(cl:defconstant <creation> "2026-06-30T03:10:43Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GameTime")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.GameTime. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-time-span-time-span (total-game-time elapsed-game-time)
  "Calls Microsoft.Xna.Framework.GameTime constructor new(TimeSpan, TimeSpan)"
  (dotnet:new <type-str> total-game-time elapsed-game-time))

(cl:defun new-time-span-time-span-boolean (total-real-time elapsed-real-time is-running-slowly)
  "Calls Microsoft.Xna.Framework.GameTime constructor new(TimeSpan, TimeSpan, Boolean)"
  (dotnet:new <type-str> total-real-time elapsed-real-time is-running-slowly))

(cl:defun elapsed-game-time (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "get_ElapsedGameTime"))

(cl:defun (cl:setf elapsed-game-time) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "set_ElapsedGameTime" new-value))

(cl:defun is-running-slowly (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "get_IsRunningSlowly"))

(cl:defun (cl:setf is-running-slowly) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "set_IsRunningSlowly" new-value))

(cl:defun total-game-time (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "get_TotalGameTime"))

(cl:defun (cl:setf total-game-time) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "set_TotalGameTime" new-value))

