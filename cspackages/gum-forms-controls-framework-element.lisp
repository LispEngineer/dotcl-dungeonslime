;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.FrameworkElement
;;; Generator Version: 48
;;; Creation Date: 2026-07-14T16:32:54Z

(cl:in-package :gum-forms-controls-framework-element)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.Controls.FrameworkElement"))
(cl:defconstant <type-str> "Gum.Forms.Controls.FrameworkElement")
(cl:defconstant <creation> "2026-07-14T16:32:54Z")
(cl:defconstant <version> 48)

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:object-type visual)))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defvar %disabled-focused-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +disabled-focused-state+
  (cl:if (cl:eq %disabled-focused-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %disabled-focused-state-cache% (dotnet:static <type-str> "DisabledFocusedState"))
      %disabled-focused-state-cache%))

(cl:defvar %disabled-focused-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +disabled-focused-state-name+
  (cl:if (cl:eq %disabled-focused-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %disabled-focused-state-name-cache% (dotnet:static <type-str> "DisabledFocusedStateName"))
      %disabled-focused-state-name-cache%))

(cl:defvar %disabled-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +disabled-state+
  (cl:if (cl:eq %disabled-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %disabled-state-cache% (dotnet:static <type-str> "DisabledState"))
      %disabled-state-cache%))

(cl:defvar %disabled-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +disabled-state-name+
  (cl:if (cl:eq %disabled-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %disabled-state-name-cache% (dotnet:static <type-str> "DisabledStateName"))
      %disabled-state-name-cache%))

(cl:defvar %enabled-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +enabled-state+
  (cl:if (cl:eq %enabled-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %enabled-state-cache% (dotnet:static <type-str> "EnabledState"))
      %enabled-state-cache%))

(cl:defvar %enabled-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +enabled-state-name+
  (cl:if (cl:eq %enabled-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %enabled-state-name-cache% (dotnet:static <type-str> "EnabledStateName"))
      %enabled-state-name-cache%))

(cl:defvar %focused-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +focused-state+
  (cl:if (cl:eq %focused-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %focused-state-cache% (dotnet:static <type-str> "FocusedState"))
      %focused-state-cache%))

(cl:defvar %focused-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +focused-state-name+
  (cl:if (cl:eq %focused-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %focused-state-name-cache% (dotnet:static <type-str> "FocusedStateName"))
      %focused-state-name-cache%))

(cl:defvar %highlighted-focused-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +highlighted-focused-state+
  (cl:if (cl:eq %highlighted-focused-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %highlighted-focused-state-cache% (dotnet:static <type-str> "HighlightedFocusedState"))
      %highlighted-focused-state-cache%))

(cl:defvar %highlighted-focused-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +highlighted-focused-state-name+
  (cl:if (cl:eq %highlighted-focused-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %highlighted-focused-state-name-cache% (dotnet:static <type-str> "HighlightedFocusedStateName"))
      %highlighted-focused-state-name-cache%))

(cl:defvar %highlighted-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +highlighted-state+
  (cl:if (cl:eq %highlighted-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %highlighted-state-cache% (dotnet:static <type-str> "HighlightedState"))
      %highlighted-state-cache%))

(cl:defvar %highlighted-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +highlighted-state-name+
  (cl:if (cl:eq %highlighted-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %highlighted-state-name-cache% (dotnet:static <type-str> "HighlightedStateName"))
      %highlighted-state-name-cache%))

(cl:defvar %horizontal-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +horizontal-state-name+
  (cl:if (cl:eq %horizontal-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %horizontal-state-name-cache% (dotnet:static <type-str> "HorizontalStateName"))
      %horizontal-state-name-cache%))

(cl:defvar %pushed-state-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pushed-state+
  (cl:if (cl:eq %pushed-state-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pushed-state-cache% (dotnet:static <type-str> "PushedState"))
      %pushed-state-cache%))

(cl:defvar %pushed-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +pushed-state-name+
  (cl:if (cl:eq %pushed-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %pushed-state-name-cache% (dotnet:static <type-str> "PushedStateName"))
      %pushed-state-name-cache%))

(cl:defvar %selected-highlighted-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +selected-highlighted-state-name+
  (cl:if (cl:eq %selected-highlighted-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %selected-highlighted-state-name-cache% (dotnet:static <type-str> "SelectedHighlightedStateName"))
      %selected-highlighted-state-name-cache%))

(cl:defvar %selected-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +selected-state-name+
  (cl:if (cl:eq %selected-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %selected-state-name-cache% (dotnet:static <type-str> "SelectedStateName"))
      %selected-state-name-cache%))

(cl:defvar %vertical-state-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +vertical-state-name+
  (cl:if (cl:eq %vertical-state-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %vertical-state-name-cache% (dotnet:static <type-str> "VerticalStateName"))
      %vertical-state-name-cache%))

(cl:define-symbol-macro default-forms-components (dotnet:static <type-str> "DefaultFormsComponents"))

(cl:define-symbol-macro default-forms-templates (dotnet:static <type-str> "DefaultFormsTemplates"))

(cl:define-symbol-macro game-pads-for-ui-control (dotnet:static <type-str> "GamePadsForUiControl"))

(cl:define-symbol-macro keyboards-for-ui-control (dotnet:static <type-str> "KeyboardsForUiControl"))

(cl:defun click-combos ()
  (dotnet:static <type-str> "ClickCombos"))

(cl:defun (cl:setf click-combos) (new-value)
  (cl:setf (dotnet:static <type-str> "ClickCombos") new-value))

(cl:defun main-cursor ()
  (dotnet:static <type-str> "MainCursor"))

(cl:defun (cl:setf main-cursor) (new-value)
  (cl:setf (dotnet:static <type-str> "MainCursor") new-value))

(cl:defun main-keyboard ()
  (dotnet:static <type-str> "MainKeyboard"))

(cl:defun (cl:setf main-keyboard) (new-value)
  (cl:setf (dotnet:static <type-str> "MainKeyboard") new-value))

(cl:defun modal-root ()
  (dotnet:static <type-str> "ModalRoot"))

(cl:defun (cl:setf modal-root) (new-value)
  (cl:setf (dotnet:static <type-str> "ModalRoot") new-value))

(cl:defun popup-root ()
  (dotnet:static <type-str> "PopupRoot"))

(cl:defun (cl:setf popup-root) (new-value)
  (cl:setf (dotnet:static <type-str> "PopupRoot") new-value))

(cl:defun tab-key-combos ()
  (dotnet:static <type-str> "TabKeyCombos"))

(cl:defun (cl:setf tab-key-combos) (new-value)
  (cl:setf (dotnet:static <type-str> "TabKeyCombos") new-value))

(cl:defun tab-reverse-key-combos ()
  (dotnet:static <type-str> "TabReverseKeyCombos"))

(cl:defun (cl:setf tab-reverse-key-combos) (new-value)
  (cl:setf (dotnet:static <type-str> "TabReverseKeyCombos") new-value))

(cl:defun absolute-left (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_AbsoluteLeft"))

(cl:defun absolute-top (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_AbsoluteTop"))

(cl:defun actual-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_ActualHeight"))

(cl:defun actual-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_ActualWidth"))

(cl:defun binding-context (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_BindingContext"))

(cl:defun (cl:setf binding-context) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_BindingContext" new-value))

(cl:defun custom-cursor (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_CustomCursor"))

(cl:defun (cl:setf custom-cursor) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_CustomCursor" new-value))

(cl:defun gamepad-tabbing-focus-behavior (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_GamepadTabbingFocusBehavior"))

(cl:defun (cl:setf gamepad-tabbing-focus-behavior) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_GamepadTabbingFocusBehavior" new-value))

(cl:defun height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_Height"))

(cl:defun (cl:setf height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_Height" new-value))

(cl:defun height-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_HeightUnits"))

(cl:defun (cl:setf height-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_HeightUnits" new-value))

(cl:defun enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_IsEnabled"))

(cl:defun (cl:setf enabled?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_IsEnabled" new-value))

(cl:defun focused? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_IsFocused"))

(cl:defun (cl:setf focused?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_IsFocused" new-value))

(cl:defun tab-navigation-enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_IsTabNavigationEnabled"))

(cl:defun using-left-and-right-gamepad-directions-for-navigation? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_IsUsingLeftAndRightGamepadDirectionsForNavigation"))

(cl:defun (cl:setf using-left-and-right-gamepad-directions-for-navigation?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_IsUsingLeftAndRightGamepadDirectionsForNavigation" new-value))

(cl:defun visible? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_IsVisible"))

(cl:defun (cl:setf visible?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_IsVisible" new-value))

(cl:defun max-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_MaxHeight"))

(cl:defun (cl:setf max-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_MaxHeight" new-value))

(cl:defun max-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_MaxWidth"))

(cl:defun (cl:setf max-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_MaxWidth" new-value))

(cl:defun min-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_MinHeight"))

(cl:defun (cl:setf min-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_MinHeight" new-value))

(cl:defun min-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_MinWidth"))

(cl:defun (cl:setf min-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_MinWidth" new-value))

(cl:defun name (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_Name"))

(cl:defun (cl:setf name) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_Name" new-value))

(cl:defun parent-framework-element (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_ParentFrameworkElement"))

(cl:defun tool-tip (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_ToolTip"))

(cl:defun (cl:setf tool-tip) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_ToolTip" new-value))

(cl:defun visual (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_Visual"))

(cl:defun (cl:setf visual) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_Visual" new-value))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_Width"))

(cl:defun (cl:setf width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_Width" new-value))

(cl:defun width-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_WidthUnits"))

(cl:defun (cl:setf width-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_WidthUnits" new-value))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_X"))

(cl:defun (cl:setf x) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_X" new-value))

(cl:defun x-origin (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_XOrigin"))

(cl:defun (cl:setf x-origin) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_XOrigin" new-value))

(cl:defun x-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_XUnits"))

(cl:defun (cl:setf x-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_XUnits" new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_Y"))

(cl:defun (cl:setf y) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_Y" new-value))

(cl:defun y-origin (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_YOrigin"))

(cl:defun (cl:setf y-origin) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_YOrigin" new-value))

(cl:defun y-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "get_YUnits"))

(cl:defun (cl:setf y-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "set_YUnits" new-value))

(cl:defun add-after-refresh-styles (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "AfterRefreshStyles" handler))

(cl:defun remove-after-refresh-styles (obj! handler)
  "Pass the exact same HANDLER object given to add-after-refresh-styles -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "AfterRefreshStyles" handler))

(cl:defun add-before-refresh-styles (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "BeforeRefreshStyles" handler))

(cl:defun remove-before-refresh-styles (obj! handler)
  "Pass the exact same HANDLER object given to add-before-refresh-styles -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "BeforeRefreshStyles" handler))

(cl:defun add-binding-context-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "BindingContextChanged" handler))

(cl:defun remove-binding-context-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-binding-context-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "BindingContextChanged" handler))

(cl:defun add-got-focus (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GotFocus" handler))

(cl:defun remove-got-focus (obj! handler)
  "Pass the exact same HANDLER object given to add-got-focus -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GotFocus" handler))

(cl:defun add-key-down (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "KeyDown" handler))

(cl:defun remove-key-down (obj! handler)
  "Pass the exact same HANDLER object given to add-key-down -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "KeyDown" handler))

(cl:defun add-loaded (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "Loaded" handler))

(cl:defun remove-loaded (obj! handler)
  "Pass the exact same HANDLER object given to add-loaded -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "Loaded" handler))

(cl:defun add-lost-focus (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "LostFocus" handler))

(cl:defun remove-lost-focus (obj! handler)
  "Pass the exact same HANDLER object given to add-lost-focus -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "LostFocus" handler))

(cl:defun add-property-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "PropertyChanged" handler))

(cl:defun remove-property-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-property-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "PropertyChanged" handler))

(cl:defun add-tool-tip-closing (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ToolTipClosing" handler))

(cl:defun remove-tool-tip-closing (obj! handler)
  "Pass the exact same HANDLER object given to add-tool-tip-closing -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ToolTipClosing" handler))

(cl:defun add-tool-tip-opening (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ToolTipOpening" handler))

(cl:defun remove-tool-tip-opening (obj! handler)
  "Pass the exact same HANDLER object given to add-tool-tip-opening -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ToolTipOpening" handler))

(cl:defun add-child (obj! child)
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.AddChild overloads. Dispatches at runtime.

AddChild(FrameworkElement) -> Void

AddChild(GraphicalUiElement) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null child) (dotnet:object-type child)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "AddChild" child))
    ((cl:and (cl:or (cl:null child) (dotnet:object-type child)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "AddChild" child))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "AddChild"
                    :supplied-args (cl:append (cl:list :child child))))))

(cl:defun anchor (obj! anchor)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "Anchor" anchor))

(cl:defun apply-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ApplyRuntimeProperties"))

(cl:defun call-loaded (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "CallLoaded"))

(cl:defun clear-binding (obj! ui-property)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ClearBinding" ui-property))

(cl:defun close (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "Close"))

(cl:defun dock (obj! dock)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "Dock" dock))

(cl:defun get-desired-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetDesiredState"))

(cl:defun get-desired-state-with-checked (obj! is-checked)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetDesiredStateWithChecked" is-checked))

(cl:defun get-graphical-ui-element-for (element)
  (dotnet:static <type-str> "GetGraphicalUiElementFor" (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") element)))

(cl:defun get-graphical-ui-element-for-framework-element (type)
  (dotnet:static <type-str> "GetGraphicalUiElementForFrameworkElement" (cl:the (dotnet "System.Type") type)))

(cl:defun get-if-gamepad-or-keyboard-primary-push-input-is-held (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetIfGamepadOrKeyboardPrimaryPushInputIsHeld"))

(cl:defun get-if-is-on-this-or-child-visual (obj! cursor)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetIfIsOnThisOrChildVisual" cursor))

(cl:defun get-if-push-input-is-held (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetIfPushInputIsHeld"))

(cl:defun get-state (obj! state-name)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetState" state-name))

(cl:defun get-visual (obj! name)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetVisual" name))

(cl:defun get-visual-arity-1 (type obj! cl:&key (name cl:nil supplied-name))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.GetVisual overloads. Dispatches at runtime.

GetVisual(String = null) -> T
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-name) (cl:stringp name)))
     (dotnet:invoke-generic (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "GetVisual" (cl:list type) (cl:if supplied-name name cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "GetVisual"
                    :supplied-args (cl:append (cl:when supplied-name (cl:list :name name)))))))

(cl:defun get-visual<> (types cl:&rest args)
  "Dispatches get-visual<> by the generic type argument(s) in TYPES: pass a
   single .NET type (a type-name string, alias, or System.Type object) to
   select the single-type-argument overload, or a cl:list of types to
   select the overload taking that many type arguments; ARGS are the
   remaining arguments, forwarded unchanged to the resolved overload.
   Passing cl:nil or an empty list calls the non-generic get-visual overload(s)."
  (cl:let* ((type-list (cl:if (cl:listp types) types (cl:list types))))
    (cl:case (cl:length type-list)
      (0 (cl:apply (cl:function get-visual) args))
      (1 (cl:apply (cl:function get-visual-arity-1) (cl:append type-list args)))
      (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                      :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                      :class-name <type-str>
                      :method-name "get-visual<>"
                      :supplied-args (cl:list :type-count (cl:length type-list) :types type-list))))))

(cl:defun handle-gamepad-navigation (obj! gamepad)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "HandleGamepadNavigation" gamepad))

(cl:defun handle-keyboard-focus-update (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "HandleKeyboardFocusUpdate"))

(cl:defun handle-tab (obj! cl:&key (tab-direction (dotnet:enum-or "Gum.Forms.Controls.TabDirection" "Down") supplied-tab-direction) (requesting-element cl:nil supplied-requesting-element) (loop cl:nil supplied-loop))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.HandleTab overloads. Dispatches at runtime.

HandleTab(TabDirection = Down, FrameworkElement = null, Boolean = NIL) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-tab-direction) (cl:or (cl:null tab-direction) (dotnet:object-type tab-direction))) (cl:or (cl:not supplied-requesting-element) (cl:or (cl:null requesting-element) (dotnet:object-type requesting-element))) (cl:or (cl:not supplied-loop) (cl:typep loop 'cl:boolean)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "HandleTab" (cl:if supplied-tab-direction tab-direction (dotnet:enum-or "Gum.Forms.Controls.TabDirection" "Down")) (cl:if supplied-requesting-element requesting-element cl:nil) (cl:if supplied-loop loop cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "HandleTab"
                    :supplied-args (cl:append (cl:when supplied-tab-direction (cl:list :tab-direction tab-direction)) (cl:when supplied-requesting-element (cl:list :requesting-element requesting-element)) (cl:when supplied-loop (cl:list :loop loop)))))))

(cl:defun handle-tab* (tab-direction requesting-visual parent-visual should-ask-parent loop)
  (dotnet:static <type-str> "HandleTab" (cl:the (dotnet "Gum.Forms.Controls.TabDirection") tab-direction) (cl:the (dotnet "Gum.Wireframe.InteractiveGue") requesting-visual) (cl:the (dotnet "Gum.Wireframe.InteractiveGue") parent-visual) (cl:the (dotnet "System.Boolean") should-ask-parent) (cl:the (dotnet "System.Boolean") loop)))

(cl:defun handle-visual-binding-context-changed (obj! sender args)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "HandleVisualBindingContextChanged" sender args))

(cl:defun data-bound? (obj! property-name)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "IsDataBound" property-name))

(cl:defun on-binding-context-changed (obj! sender args)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "OnBindingContextChanged" sender args))

(cl:defun on-property-changed (obj! cl:&key (property-name cl:nil supplied-property-name))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.OnPropertyChanged overloads. Dispatches at runtime.

OnPropertyChanged(String = null) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-property-name) (cl:stringp property-name)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "OnPropertyChanged" (cl:if supplied-property-name property-name cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "OnPropertyChanged"
                    :supplied-args (cl:append (cl:when supplied-property-name (cl:list :property-name property-name)))))))

(cl:defun push-value-to-view-model (obj! cl:&key (ui-property-name cl:nil supplied-ui-property-name))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.PushValueToViewModel overloads. Dispatches at runtime.

PushValueToViewModel(String = null) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-ui-property-name) (cl:stringp ui-property-name)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "PushValueToViewModel" (cl:if supplied-ui-property-name ui-property-name cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "PushValueToViewModel"
                    :supplied-args (cl:append (cl:when supplied-ui-property-name (cl:list :ui-property-name ui-property-name)))))))

(cl:defun raise-key-down (obj! e)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RaiseKeyDown" e))

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ReactToVisualChanged"))

(cl:defun react-to-visual-removed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ReactToVisualRemoved"))

(cl:defun refresh-internal-visual-references (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RefreshInternalVisualReferences"))

(cl:defun register-runtime-property (obj! property-name cl:&optional (property-name2 cl:nil supplied-property-name2))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.RegisterRuntimeProperty overloads. Dispatches at runtime.

RegisterRuntimeProperty(String) -> Void

RegisterRuntimeProperty(Object, String) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null property-name) (dotnet:object-type property-name)) supplied-property-name2 (cl:stringp property-name2))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RegisterRuntimeProperty" property-name property-name2))
    ((cl:and (cl:stringp property-name) (cl:not supplied-property-name2))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RegisterRuntimeProperty" property-name))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "RegisterRuntimeProperty"
                    :supplied-args (cl:append (cl:list :property-name property-name) (cl:when supplied-property-name2 (cl:list :property-name2 property-name2)))))))

(cl:defun register-runtime-property-arity-1 (type obj! getter setter)
  (dotnet:invoke-generic (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RegisterRuntimeProperty" (cl:list type) getter setter))

(cl:defun register-runtime-property<> (types cl:&rest args)
  "Dispatches register-runtime-property<> by the generic type argument(s) in TYPES: pass a
   single .NET type (a type-name string, alias, or System.Type object) to
   select the single-type-argument overload, or a cl:list of types to
   select the overload taking that many type arguments; ARGS are the
   remaining arguments, forwarded unchanged to the resolved overload.
   Passing cl:nil or an empty list calls the non-generic register-runtime-property overload(s)."
  (cl:let* ((type-list (cl:if (cl:listp types) types (cl:list types))))
    (cl:case (cl:length type-list)
      (0 (cl:apply (cl:function register-runtime-property) args))
      (1 (cl:apply (cl:function register-runtime-property-arity-1) (cl:append type-list args)))
      (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                      :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                      :class-name <type-str>
                      :method-name "register-runtime-property<>"
                      :supplied-args (cl:list :type-count (cl:length type-list) :types type-list))))))

(cl:defun remove-child (obj! child)
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.RemoveChild overloads. Dispatches at runtime.

RemoveChild(FrameworkElement) -> Void

RemoveChild(GraphicalUiElement) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null child) (dotnet:object-type child)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RemoveChild" child))
    ((cl:and (cl:or (cl:null child) (dotnet:object-type child)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RemoveChild" child))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "RemoveChild"
                    :supplied-args (cl:append (cl:list :child child))))))

(cl:defun reposition-to-keep-in-screen (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "RepositionToKeepInScreen"))

(cl:defun save-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "SaveRuntimeProperties"))

(cl:defun set-binding (obj! ui-property vm-property)
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.SetBinding overloads. Dispatches at runtime.

SetBinding(String, String) -> Void

SetBinding(String, Binding) -> Void
"
  (cl:cond
    ((cl:and (cl:stringp ui-property) (cl:stringp vm-property))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "SetBinding" ui-property vm-property))
    ((cl:and (cl:stringp ui-property) (cl:or (cl:null vm-property) (dotnet:object-type vm-property)))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "SetBinding" ui-property vm-property))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "SetBinding"
                    :supplied-args (cl:append (cl:list :ui-property ui-property) (cl:list :vm-property vm-property))))))

(cl:defun show (obj! cl:&key (layer cl:nil supplied-layer))
  "Master wrapper for Gum.Forms.Controls.FrameworkElement.Show overloads. Dispatches at runtime.

Show(Layer = null) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-layer) (cl:or (cl:null layer) (dotnet:object-type layer))))
     (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "Show" (cl:if supplied-layer layer cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-FRAMEWORK-ELEMENT"
                    :class-name <type-str>
                    :method-name "Show"
                    :supplied-args (cl:append (cl:when supplied-layer (cl:list :layer layer)))))))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "ToString"))

(cl:defun update-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "UpdateState"))

(cl:defun update-state-recursively (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") obj!) "UpdateStateRecursively"))

;; Extension methods (exact match on this == Gum.Forms.Controls.FrameworkElement):
;;   Gum.Forms.Controls.FrameworkElementExt::GetFrameworkElement(FrameworkElement, String) -> T -- skipped (generic type arguments/parameters not yet supported)
;;   Gum.Forms.Controls.FrameworkElementExt::SetBinding(FrameworkElement, String, Object]]) -> Void -- skipped (generic type arguments/parameters not yet supported)
;;   Gum.Forms.Controls.FrameworkElementExt::SetBinding(FrameworkElement, String, LambdaExpression) -> Void -- skipped (this class already declares its own member of this name)
(cl:defun get-framework-element (obj! name)
  "Extension method from Gum.Forms.Controls.FrameworkElementExt (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.Controls.FrameworkElementExt" "GetFrameworkElement" obj! name))

(cl:defun get-parent-input-receiver (obj!)
  "Extension method from Gum.Forms.Controls.FrameworkElementExt (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.Controls.FrameworkElementExt" "GetParentInputReceiver" obj!))

(cl:defun remove-from-root (obj!)
  "Extension method from Gum.Forms.Controls.FrameworkElementExt (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.Controls.FrameworkElementExt" "RemoveFromRoot" obj!))

(cl:defun add-to-root (obj!)
  "Extension method from MonoGameGum.GraphicalUiElementExtensionMethods (assembly MonoGameGum.dll)."
  (dotnet:static "MonoGameGum.GraphicalUiElementExtensionMethods" "AddToRoot" obj!))


