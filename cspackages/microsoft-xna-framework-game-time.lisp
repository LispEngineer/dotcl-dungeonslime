;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.GameTime
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :microsoft-xna-framework-game-time)

(cl:defconstant <type> (dotnet:resolve-type "Microsoft.Xna.Framework.GameTime"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.GameTime")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.GameTime")))

(cl:defun new (cl:&optional (total-game-time cl:nil supplied-total-game-time) (elapsed-game-time cl:nil supplied-elapsed-game-time) (is-running-slowly cl:nil supplied-is-running-slowly))
  "Master wrapper for Microsoft.Xna.Framework.GameTime constructor overloads. Dispatches at runtime.

new()

new(TimeSpan, TimeSpan)

new(TimeSpan, TimeSpan, Boolean)
"
  (cl:cond
    ((cl:and supplied-total-game-time (cl:or (cl:null total-game-time) (dotnet:object-type total-game-time)) supplied-elapsed-game-time (cl:or (cl:null elapsed-game-time) (dotnet:object-type elapsed-game-time)) supplied-is-running-slowly (cl:typep is-running-slowly 'cl:boolean))
     (dotnet:new <type-str> total-game-time elapsed-game-time is-running-slowly))
    ((cl:and supplied-total-game-time (cl:or (cl:null total-game-time) (dotnet:object-type total-game-time)) supplied-elapsed-game-time (cl:or (cl:null elapsed-game-time) (dotnet:object-type elapsed-game-time)) (cl:not supplied-is-running-slowly))
     (dotnet:new <type-str> total-game-time elapsed-game-time))
    ((cl:and (cl:not supplied-total-game-time) (cl:not supplied-elapsed-game-time) (cl:not supplied-is-running-slowly))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GAME-TIME"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-total-game-time (cl:list :total-game-time total-game-time)) (cl:when supplied-elapsed-game-time (cl:list :elapsed-game-time elapsed-game-time)) (cl:when supplied-is-running-slowly (cl:list :is-running-slowly is-running-slowly)))))))

(cl:defun elapsed-game-time (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj!) "get_ElapsedGameTime"))

(cl:defun (cl:setf elapsed-game-time) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj!) "set_ElapsedGameTime" new-value))

(cl:defun running-slowly? (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj!) "get_IsRunningSlowly"))

(cl:defun (cl:setf running-slowly?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj!) "set_IsRunningSlowly" new-value))

(cl:defun total-game-time (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj!) "get_TotalGameTime"))

(cl:defun (cl:setf total-game-time) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.GameTime") obj!) "set_TotalGameTime" new-value))

