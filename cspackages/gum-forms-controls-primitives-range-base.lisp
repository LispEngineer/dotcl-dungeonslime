;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.Primitives.RangeBase
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :gum-forms-controls-primitives-range-base)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.Controls.Primitives.RangeBase"))
(cl:defconstant <type-str> "Gum.Forms.Controls.Primitives.RangeBase")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.Primitives.RangeBase constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:is-instance-of visual "Gum.Wireframe.InteractiveGue")))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-PRIMITIVES-RANGE-BASE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defun enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_IsEnabled"))

(cl:defun (cl:setf enabled?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_IsEnabled" new-value))

(cl:defun move-to-point-enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_IsMoveToPointEnabled"))

(cl:defun (cl:setf move-to-point-enabled?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_IsMoveToPointEnabled" new-value))

(cl:defun large-change (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_LargeChange"))

(cl:defun (cl:setf large-change) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_LargeChange" new-value))

(cl:defun maximum (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_Maximum"))

(cl:defun (cl:setf maximum) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_Maximum" new-value))

(cl:defun minimum (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_Minimum"))

(cl:defun (cl:setf minimum) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_Minimum" new-value))

(cl:defun orientation (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_Orientation"))

(cl:defun (cl:setf orientation) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_Orientation" new-value))

(cl:defun small-change (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_SmallChange"))

(cl:defun (cl:setf small-change) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_SmallChange" new-value))

(cl:defun track (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_Track"))

(cl:defun value (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "get_Value"))

(cl:defun (cl:setf value) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "set_Value" new-value))

(cl:defun add-orientation-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "OrientationChanged" handler))

(cl:defun remove-orientation-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-orientation-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "OrientationChanged" handler))

(cl:defun add-value-change-completed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ValueChangeCompleted" handler))

(cl:defun remove-value-change-completed (obj! handler)
  "Pass the exact same HANDLER object given to add-value-change-completed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ValueChangeCompleted" handler))

(cl:defun add-value-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ValueChanged" handler))

(cl:defun remove-value-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-value-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ValueChanged" handler))

(cl:defun add-value-changed-by-ui (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ValueChangedByUi" handler))

(cl:defun remove-value-changed-by-ui (obj! handler)
  "Pass the exact same HANDLER object given to add-value-changed-by-ui -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ValueChangedByUi" handler))

(cl:defun apply-value-considering-snapping (obj! new-value)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ApplyValueConsideringSnapping" new-value))

(cl:defun get-current-sign-relative-to-value (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "GetCurrentSignRelativeToValue"))

(cl:defun handle-thumb-push (obj! sender e)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "HandleThumbPush" sender e))

(cl:defun on-maximum-changed (obj! old-maximum new-maximum)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "OnMaximumChanged" old-maximum new-maximum))

(cl:defun on-minimum-changed (obj! old-minimum new-minimum)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "OnMinimumChanged" old-minimum new-minimum))

(cl:defun on-value-changed (obj! old-value new-value)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "OnValueChanged" old-value new-value))

(cl:defun raise-value-change-completed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "RaiseValueChangeCompleted"))

(cl:defun raise-value-changed-by-ui (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "RaiseValueChangedByUi"))

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ReactToVisualChanged"))

(cl:defun react-to-visual-removed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "ReactToVisualRemoved"))

(cl:defun refresh-internal-visual-references (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "RefreshInternalVisualReferences"))

(cl:defun update-thumb-position-to-cursor-drag (obj! cursor)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Primitives.RangeBase") obj!) "UpdateThumbPositionToCursorDrag" cursor))

