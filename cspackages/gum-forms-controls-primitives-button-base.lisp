;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.Primitives.ButtonBase
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :gum-forms-controls-primitives-button-base)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.Controls.Primitives.ButtonBase"))
(cl:defconstant <type-str> "Gum.Forms.Controls.Primitives.ButtonBase")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Gum.Forms.Controls.Primitives.ButtonBase")))

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.Primitives.ButtonBase constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:object-type visual)))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-PRIMITIVES-BUTTON-BASE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defun click-gamepad-button (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "get_ClickGamepadButton"))

(cl:defun (cl:setf click-gamepad-button) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "set_ClickGamepadButton" new-value))

(cl:defun ignored-keys (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "get_IgnoredKeys"))

(cl:defun focused? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "get_IsFocused"))

(cl:defun (cl:setf focused?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "set_IsFocused" new-value))

(cl:defun next-in-tab-sequence (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "get_NextInTabSequence"))

(cl:defun (cl:setf next-in-tab-sequence) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "set_NextInTabSequence" new-value))

(cl:defun parent-input-receiver (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "get_ParentInputReceiver"))

(cl:defun taking-input (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "get_TakingInput"))

(cl:defun add-click (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "Click" handler))

(cl:defun remove-click (obj! handler)
  "Pass the exact same HANDLER object given to add-click -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "Click" handler))

(cl:defun add-controller-button-pushed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "ControllerButtonPushed" handler))

(cl:defun remove-controller-button-pushed (obj! handler)
  "Pass the exact same HANDLER object given to add-controller-button-pushed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "ControllerButtonPushed" handler))

(cl:defun add-focus-update (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "FocusUpdate" handler))

(cl:defun remove-focus-update (obj! handler)
  "Pass the exact same HANDLER object given to add-focus-update -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "FocusUpdate" handler))

(cl:defun add-push (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "Push" handler))

(cl:defun remove-push (obj! handler)
  "Pass the exact same HANDLER object given to add-push -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "Push" handler))

(cl:defun do-keyboard-action (obj! keyboard)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "DoKeyboardAction" keyboard))

(cl:defun get-if-push-input-is-held (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "GetIfPushInputIsHeld"))

(cl:defun handle-char-entered (obj! character)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "HandleCharEntered" character))

(cl:defun handle-key-down (obj! key is-shift-down is-alt-down is-ctrl-down)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "HandleKeyDown" key is-shift-down is-alt-down is-ctrl-down))

(cl:defun lose-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "LoseFocus"))

(cl:defun on-click (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "OnClick"))

(cl:defun on-focus-update (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "OnFocusUpdate"))

(cl:defun on-focus-update-preview (obj! args)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "OnFocusUpdatePreview" args))

(cl:defun on-gain-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "OnGainFocus"))

(cl:defun on-lose-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "OnLoseFocus"))

(cl:defun perform-click (obj! cl:&key (input-device cl:nil supplied-input-device))
  "Master wrapper for Gum.Forms.Controls.Primitives.ButtonBase.PerformClick overloads. Dispatches at runtime.

PerformClick(Object) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null input-device) (dotnet:object-type input-device)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "PerformClick" input-device))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-PRIMITIVES-BUTTON-BASE"
                    :class-name <type-str>
                    :method-name "PerformClick"
                    :supplied-args (cl:append (cl:when supplied-input-device (cl:list :input-device input-device)))))))

;; Note: Gum.Forms.Controls.Primitives.ButtonBase.PerformClick also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   PerformClick(Object) -> Void

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "ReactToVisualChanged"))

(cl:defun receive-input (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.ButtonBase") obj!) "ReceiveInput"))

