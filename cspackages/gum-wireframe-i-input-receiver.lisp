;;; Generated automatically. Do not edit.
;;; Class: Gum.Wireframe.IInputReceiver
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :gum-wireframe-i-input-receiver)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Wireframe.IInputReceiver"))
(cl:defconstant <type-str> "Gum.Wireframe.IInputReceiver")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Gum.Wireframe.IInputReceiver")))

(cl:defun parent-input-receiver (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.IInputReceiver") obj!) "get_ParentInputReceiver"))

(cl:defun do-keyboard-action (obj! keyboard)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.IInputReceiver") obj!) "DoKeyboardAction" keyboard))

(cl:defun on-focus-update (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.IInputReceiver") obj!) "OnFocusUpdate"))

(cl:defun on-focus-update-preview (obj! args)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.IInputReceiver") obj!) "OnFocusUpdatePreview" args))

(cl:defun on-gain-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.IInputReceiver") obj!) "OnGainFocus"))

(cl:defun on-lose-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.IInputReceiver") obj!) "OnLoseFocus"))

