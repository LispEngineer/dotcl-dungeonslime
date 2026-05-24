;;; DotCL Type Definitions

(in-package :cl-user)
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

