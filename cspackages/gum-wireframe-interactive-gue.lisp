;;; Generated automatically. Do not edit.
;;; Class: Gum.Wireframe.InteractiveGue
;;; Generator Version: 45
;;; Creation Date: 2026-07-11T18:42:16Z

(cl:in-package :gum-wireframe-interactive-gue)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Wireframe.InteractiveGue"))
(cl:defconstant <type-str> "Gum.Wireframe.InteractiveGue")
(cl:defconstant <creation> "2026-07-11T18:42:16Z")
(cl:defconstant <version> 45)

(cl:defun new (cl:&optional (renderable cl:nil supplied-renderable))
  "Master wrapper for Gum.Wireframe.InteractiveGue constructor overloads. Dispatches at runtime.

new()

new(IRenderable)
"
  (cl:cond
    ((cl:and supplied-renderable (cl:or (cl:null renderable) (dotnet:object-type renderable)))
     (dotnet:new <type-str> renderable))
    ((cl:and (cl:not supplied-renderable))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-INTERACTIVE-GUE"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-renderable (cl:list :renderable renderable)))))))

(cl:define-symbol-macro current-game-time (dotnet:static <type-str> "CurrentGameTime"))

(cl:defun current-input-receiver ()
  (dotnet:static <type-str> "CurrentInputReceiver"))

(cl:defun (cl:setf current-input-receiver) (new-value)
  (cl:setf (dotnet:static <type-str> "CurrentInputReceiver") new-value))

(cl:defun last-visual-pushed ()
  (dotnet:static <type-str> "LastVisualPushed"))

(cl:defun (cl:setf last-visual-pushed) (new-value)
  (cl:setf (dotnet:static <type-str> "LastVisualPushed") new-value))

(cl:defun expose-children-events (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_ExposeChildrenEvents"))

(cl:defun (cl:setf expose-children-events) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "set_ExposeChildrenEvents" new-value))

(cl:defun forms-control-as-object (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_FormsControlAsObject"))

(cl:defun (cl:setf forms-control-as-object) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "set_FormsControlAsObject" new-value))

(cl:defun has-events (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_HasEvents"))

(cl:defun (cl:setf has-events) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "set_HasEvents" new-value))

(cl:defun enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_IsEnabled"))

(cl:defun (cl:setf enabled?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "set_IsEnabled" new-value))

(cl:defun enabled-recursively? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_IsEnabledRecursively"))

(cl:defun outside-of-bounds-hit-testing-enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_IsOutsideOfBoundsHitTestingEnabled"))

(cl:defun raise-children-events-outside-of-bounds (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "get_RaiseChildrenEventsOutsideOfBounds"))

(cl:defun (cl:setf raise-children-events-outside-of-bounds) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "set_RaiseChildrenEventsOutsideOfBounds" new-value))

(cl:defun add-click (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "Click" handler))

(cl:defun remove-click (obj! handler)
  "Pass the exact same HANDLER object given to add-click -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "Click" handler))

(cl:defun add-click-preview (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "ClickPreview" handler))

(cl:defun remove-click-preview (obj! handler)
  "Pass the exact same HANDLER object given to add-click-preview -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "ClickPreview" handler))

(cl:defun add-double-click (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "DoubleClick" handler))

(cl:defun remove-double-click (obj! handler)
  "Pass the exact same HANDLER object given to add-double-click -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "DoubleClick" handler))

(cl:defun add-dragging (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "Dragging" handler))

(cl:defun remove-dragging (obj! handler)
  "Pass the exact same HANDLER object given to add-dragging -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "Dragging" handler))

(cl:defun add-enabled-change (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "EnabledChange" handler))

(cl:defun remove-enabled-change (obj! handler)
  "Pass the exact same HANDLER object given to add-enabled-change -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "EnabledChange" handler))

(cl:defun add-hover-over (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "HoverOver" handler))

(cl:defun remove-hover-over (obj! handler)
  "Pass the exact same HANDLER object given to add-hover-over -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "HoverOver" handler))

(cl:defun add-lose-push (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "LosePush" handler))

(cl:defun remove-lose-push (obj! handler)
  "Pass the exact same HANDLER object given to add-lose-push -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "LosePush" handler))

(cl:defun add-mouse-wheel-scroll (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "MouseWheelScroll" handler))

(cl:defun remove-mouse-wheel-scroll (obj! handler)
  "Pass the exact same HANDLER object given to add-mouse-wheel-scroll -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "MouseWheelScroll" handler))

(cl:defun add-push (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "Push" handler))

(cl:defun remove-push (obj! handler)
  "Pass the exact same HANDLER object given to add-push -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "Push" handler))

(cl:defun add-push-preview (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "PushPreview" handler))

(cl:defun remove-push-preview (obj! handler)
  "Pass the exact same HANDLER object given to add-push-preview -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "PushPreview" handler))

(cl:defun add-removed-as-pushed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RemovedAsPushed" handler))

(cl:defun remove-removed-as-pushed (obj! handler)
  "Pass the exact same HANDLER object given to add-removed-as-pushed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RemovedAsPushed" handler))

(cl:defun add-right-click (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RightClick" handler))

(cl:defun remove-right-click (obj! handler)
  "Pass the exact same HANDLER object given to add-right-click -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RightClick" handler))

(cl:defun add-roll-off (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOff" handler))

(cl:defun remove-roll-off (obj! handler)
  "Pass the exact same HANDLER object given to add-roll-off -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOff" handler))

(cl:defun add-roll-on (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOn" handler))

(cl:defun remove-roll-on (obj! handler)
  "Pass the exact same HANDLER object given to add-roll-on -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOn" handler))

(cl:defun add-roll-over (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOver" handler))

(cl:defun remove-roll-over (obj! handler)
  "Pass the exact same HANDLER object given to add-roll-over -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOver" handler))

(cl:defun add-roll-over-bubbling (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOverBubbling" handler))

(cl:defun remove-roll-over-bubbling (obj! handler)
  "Pass the exact same HANDLER object given to add-roll-over-bubbling -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RollOverBubbling" handler))

(cl:defun add-next-click-action (action)
  (dotnet:static <type-str> "AddNextClickAction" (cl:the (dotnet "System.Action") action)))

(cl:defun add-next-push-action (action)
  (dotnet:static <type-str> "AddNextPushAction" (cl:the (dotnet "System.Action") action)))

(cl:defun call-click (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "CallClick"))

(cl:defun call-right-click (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "CallRightClick"))

(cl:defun clear-next-click-actions ()
  (dotnet:static <type-str> "ClearNextClickActions"))

(cl:defun has-cursor-over (obj! cursor cl:&key (layer cl:nil supplied-layer))
  "Master wrapper for Gum.Wireframe.InteractiveGue.HasCursorOver overloads. Dispatches at runtime.

HasCursorOver(ICursor, Layer) -> Boolean
"
  (cl:cond
    ((cl:and (cl:or (cl:null cursor) (dotnet:object-type cursor)) (cl:or (cl:null layer) (dotnet:object-type layer)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "HasCursorOver" cursor layer))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-INTERACTIVE-GUE"
                    :class-name <type-str>
                    :method-name "HasCursorOver"
                    :supplied-args (cl:append (cl:list :cursor cursor) (cl:when supplied-layer (cl:list :layer layer)))))))

;; Note: Gum.Wireframe.InteractiveGue.HasCursorOver also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   HasCursorOver(ICursor, Layer) -> Boolean

(cl:defun in-parent-chain? (obj! possible-parent)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "IsInParentChain" possible-parent))

(cl:defun over-children? (this-instance cursor layer)
  (dotnet:static <type-str> "IsOverChildren" (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") this-instance) (cl:the (dotnet "Gum.Wireframe.ICursor") cursor) (cl:the (dotnet "RenderingLibrary.Graphics.Layer") layer)))

(cl:defun remove-from-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "RemoveFromManagers"))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "ToString"))

(cl:defun try-call-dragging (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallDragging"))

(cl:defun try-call-hover-over (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallHoverOver"))

(cl:defun try-call-push (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallPush"))

(cl:defun try-call-remove-as-pushed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallRemoveAsPushed"))

(cl:defun try-call-roll-off (obj! cl:&key (cursor cl:nil supplied-cursor))
  "Master wrapper for Gum.Wireframe.InteractiveGue.TryCallRollOff overloads. Dispatches at runtime.

TryCallRollOff(ICursor) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null cursor) (dotnet:object-type cursor)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallRollOff" cursor))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-INTERACTIVE-GUE"
                    :class-name <type-str>
                    :method-name "TryCallRollOff"
                    :supplied-args (cl:append (cl:when supplied-cursor (cl:list :cursor cursor)))))))

;; Note: Gum.Wireframe.InteractiveGue.TryCallRollOff also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   TryCallRollOff(ICursor) -> Void

(cl:defun try-call-roll-on (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallRollOn"))

(cl:defun try-call-roll-over (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.InteractiveGue") obj!) "TryCallRollOver"))

