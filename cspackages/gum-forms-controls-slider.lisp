;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.Slider
;;; Generator Version: 34
;;; Creation Date: 2026-07-05T17:29:36Z

(cl:in-package :gum-forms-controls-slider)

(cl:defconstant <type> (dotnet:resolve-type "Gum.Forms.Controls.Slider"))
(cl:defconstant <type-str> "Gum.Forms.Controls.Slider")
(cl:defconstant <creation> "2026-07-05T17:29:36Z")
(cl:defconstant <version> 34)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Gum.Forms.Controls.Slider")))

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.Slider constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:object-type visual)))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-SLIDER"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defconstant +slider-category-name+ (dotnet:static <type-str> "SliderCategoryName"))

(cl:defun ignored-keys (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_IgnoredKeys"))

(cl:defun snap-to-tick-enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_IsSnapToTickEnabled"))

(cl:defun (cl:setf snap-to-tick-enabled?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "set_IsSnapToTickEnabled" new-value))

(cl:defun thumb-grabbed? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_IsThumbGrabbed"))

(cl:defun next-in-tab-sequence (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_NextInTabSequence"))

(cl:defun (cl:setf next-in-tab-sequence) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "set_NextInTabSequence" new-value))

(cl:defun parent-input-receiver (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_ParentInputReceiver"))

(cl:defun taking-input (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_TakingInput"))

(cl:defun ticks-frequency (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "get_TicksFrequency"))

(cl:defun (cl:setf ticks-frequency) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "set_TicksFrequency" new-value))

(cl:defun add-controller-button-pushed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "ControllerButtonPushed" handler))

(cl:defun remove-controller-button-pushed (obj! handler)
  "Pass the exact same HANDLER object given to add-controller-button-pushed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "ControllerButtonPushed" handler))

(cl:defun add-focus-update (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "FocusUpdate" handler))

(cl:defun remove-focus-update (obj! handler)
  "Pass the exact same HANDLER object given to add-focus-update -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "FocusUpdate" handler))

(cl:defun apply-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "ApplyRuntimeProperties"))

(cl:defun do-keyboard-action (obj! keyboard)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "DoKeyboardAction" keyboard))

(cl:defun handle-char-entered (obj! character)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "HandleCharEntered" character))

(cl:defun handle-key-down (obj! key is-shift-down is-alt-down is-ctrl-down)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "HandleKeyDown" key is-shift-down is-alt-down is-ctrl-down))

(cl:defun handle-thumb-push (obj! sender e)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "HandleThumbPush" sender e))

(cl:defun lose-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "LoseFocus"))

(cl:defun on-focus-update (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnFocusUpdate"))

(cl:defun on-focus-update-preview (obj! args)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnFocusUpdatePreview" args))

(cl:defun on-gain-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnGainFocus"))

(cl:defun on-lose-focus (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnLoseFocus"))

(cl:defun on-maximum-changed (obj! old-maximum new-maximum)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnMaximumChanged" old-maximum new-maximum))

(cl:defun on-minimum-changed (obj! old-minimum new-minimum)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnMinimumChanged" old-minimum new-minimum))

(cl:defun on-value-changed (obj! old-value new-value)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "OnValueChanged" old-value new-value))

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "ReactToVisualChanged"))

(cl:defun react-to-visual-removed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "ReactToVisualRemoved"))

(cl:defun receive-input (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "ReceiveInput"))

(cl:defun update-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "UpdateState"))

(cl:defun update-thumb-position-to-cursor-drag (obj! cursor)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Slider") obj!) "UpdateThumbPositionToCursorDrag" cursor))

