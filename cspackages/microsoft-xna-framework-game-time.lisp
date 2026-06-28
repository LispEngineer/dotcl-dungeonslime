;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GameTime
;;; Generator Version: 11
;;; Creation Date: 2026-06-28T01:13:21Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-game-time
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

(in-package :microsoft-xna-framework-game-time)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.GameTime"))
(defconstant <type-str> "Microsoft.Xna.Framework.GameTime")
(defconstant <creation> "2026-06-28T01:13:21Z")
(defconstant <version> 11)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GameTime")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.GameTime. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-time-span-time-span (total-game-time elapsed-game-time)
  "Calls Microsoft.Xna.Framework.GameTime constructor new(TimeSpan, TimeSpan)"
  (dotnet:new <type-str> total-game-time elapsed-game-time))

(defun new-time-span-time-span-boolean (total-real-time elapsed-real-time is-running-slowly)
  "Calls Microsoft.Xna.Framework.GameTime constructor new(TimeSpan, TimeSpan, Boolean)"
  (dotnet:new <type-str> total-real-time elapsed-real-time is-running-slowly))

(defun elapsed-game-time (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "get_ElapsedGameTime"))

(defun (setf elapsed-game-time) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "set_ElapsedGameTime" new-value))

(defun is-running-slowly (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "get_IsRunningSlowly"))

(defun (setf is-running-slowly) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "set_IsRunningSlowly" new-value))

(defun total-game-time (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "get_TotalGameTime"))

(defun (setf total-game-time) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.GameTime") obj) "set_TotalGameTime" new-value))

