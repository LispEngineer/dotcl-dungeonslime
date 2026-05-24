;; Game Constants

(in-package :cl-user)
(require :dotnet-class)

(format *error-output* "[constants.lisp] Loading in package ~S~%" *package*)

(defconstant +esc-key+
  (dotnet:static "Microsoft.Xna.Framework.Input.Keys" "Escape")
  "Cache this enumerated value from C# for quick and easy reuse")

