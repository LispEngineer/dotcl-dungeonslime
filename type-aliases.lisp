;;; DotCL Type Definitions & Aliases
;;;
;;; Also ensures all the classes we're using for dispatch
;;; are registered with the DotCL C# class dispatch mechanism

(in-package :dungeon-slime)
(require :dotnet-class)

(format *error-output* "[type-aliases.lisp] Loading in package ~S~%" *package*)

;; Type aliases visible at compile-time too: dotnet:define-class resolves
;; short names while macroexpanding, so eval-when keeps the registration
;; effective in both compile and load phases.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf (gethash "GAME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Game")
  (setf (gethash "GAMETIME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GameTime")
  (setf (gethash "GRAPHICSDEVICEMANAGER" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GraphicsDeviceManager")
  (setf (gethash "TEXTURE2D" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Graphics.Texture2D")
  ;; Create an alias for the functions returned from DynamicBaseCaller
  ;; (This does not seem to work.)
  (setf (gethash "BASEFUNC" dotnet::*type-aliases*)
        "System.Func`3[[System.Object],[System.Object[]],[System.Object]]"))

;; Try to figure out where things are at various times
(eval-when (:compile-toplevel)
  (format *error-output* "[type-aliases.lisp] Compile time: AppContext.BaseDirectory: ~S~%"
     (dotnet:static "System.AppContext" "BaseDirectory"))
  (format *error-output* "[type-aliases.lisp] Compile time: AppDomain.CurrentDomain.BaseDirectory: ~S~%"
     (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))

(eval-when (:load-toplevel)
  (format *error-output* "[type-aliases.lisp] Load time: AppContext.BaseDirectory: ~S~%"
     (dotnet:static "System.AppContext" "BaseDirectory"))
  (format *error-output* "[type-aliases.lisp] Load time: AppDomain.CurrentDomain.BaseDirectory: ~S~%"
     (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))

(eval-when (:execute)
  (format *error-output* "[type-aliases.lisp] Execute time: AppContext.BaseDirectory: ~S~%"
     (dotnet:static "System.AppContext" "BaseDirectory"))
  (format *error-output* "[type-aliases.lisp] Execute time: AppDomain.CurrentDomain.BaseDirectory: ~S~%"
     (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))

;; Compile time will generally show something we don't care about.
;;     [type-aliases.lisp] Compile time: AppContext.BaseDirectory:              "/home/dfields/src/cl/dotcl/runtime/bin/Debug/net10.0/"
;;     [type-aliases.lisp] Compile time: AppDomain.CurrentDomain.BaseDirectory: "/home/dfields/src/cl/dotcl/runtime/bin/Debug/net10.0/"

(eval-when (:compile-toplevel)
  (let* ((out-path 
          (uiop:run-program '("dotnet" "build" "DungeonSlime.csproj" "-getProperty:OutputPath")
                            :output :string
                            :ignore-error-status t))
         ;; Trim trailing newlines and whitespace
         (bin-dir (string-trim '(#\Space #\Tab #\Newline) out-path))
         ;; Parse and merge the absolute path to the DLL
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    (format *error-output* "[type-aliases.lisp] Compile time info:~%  out-path: ~S~%  bin-dir: ~S~%  dll-path: ~S~%")))


