;;; Generated automatically. Do not edit.
;;; Class: Gum.Wireframe.GraphicalUiElement
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :gum-wireframe-graphical-ui-element)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Wireframe.GraphicalUiElement"))
(cl:defconstant <type-str> "Gum.Wireframe.GraphicalUiElement")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new (cl:&optional (contained-object cl:nil supplied-contained-object) cl:&key (what-contains-this cl:nil supplied-what-contains-this))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement constructor overloads. Dispatches at runtime.

new()

new(IRenderable, GraphicalUiElement = null)
"
  (cl:cond
    ((cl:and supplied-contained-object (cl:or (cl:null contained-object) (dotnet:is-instance-of contained-object "RenderingLibrary.Graphics.IRenderable")) (cl:or (cl:not supplied-what-contains-this) (cl:or (cl:null what-contains-this) (dotnet:is-instance-of what-contains-this "Gum.Wireframe.GraphicalUiElement"))))
     (dotnet:new <type-str> contained-object (cl:if supplied-what-contains-this what-contains-this cl:nil)))
    ((cl:and (cl:not supplied-contained-object) (cl:not supplied-what-contains-this))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-contained-object (cl:list :contained-object contained-object)) (cl:when supplied-what-contains-this (cl:list :what-contains-this what-contains-this)))))))

(cl:defun are-updates-applied-when-invisible ()
  (dotnet:static <type-str> "AreUpdatesAppliedWhenInvisible"))

(cl:defun (cl:setf are-updates-applied-when-invisible) (new-value)
  (cl:setf (dotnet:static <type-str> "AreUpdatesAppliedWhenInvisible") new-value))

(cl:defun canvas-height ()
  (dotnet:static <type-str> "CanvasHeight"))

(cl:defun (cl:setf canvas-height) (new-value)
  (cl:setf (dotnet:static <type-str> "CanvasHeight") new-value))

(cl:defun canvas-width ()
  (dotnet:static <type-str> "CanvasWidth"))

(cl:defun (cl:setf canvas-width) (new-value)
  (cl:setf (dotnet:static <type-str> "CanvasWidth") new-value))

(cl:defun missing-file-behavior ()
  (dotnet:static <type-str> "MissingFileBehavior"))

(cl:defun (cl:setf missing-file-behavior) (new-value)
  (cl:setf (dotnet:static <type-str> "MissingFileBehavior") new-value))

(cl:defun absolute-bottom (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteBottom"))

(cl:defun absolute-left (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteLeft"))

(cl:defun absolute-right (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteRight"))

(cl:defun absolute-top (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteTop"))

(cl:defun absolute-visible (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteVisible"))

(cl:defun absolute-x (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteX"))

(cl:defun absolute-y (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AbsoluteY"))

(cl:defun animation-controller (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AnimationController"))

(cl:defun animations (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Animations"))

(cl:defun (cl:setf animations) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Animations" new-value))

(cl:defun auto-grid-horizontal-cells (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AutoGridHorizontalCells"))

(cl:defun (cl:setf auto-grid-horizontal-cells) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_AutoGridHorizontalCells" new-value))

(cl:defun auto-grid-vertical-cells (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_AutoGridVerticalCells"))

(cl:defun (cl:setf auto-grid-vertical-cells) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_AutoGridVerticalCells" new-value))

(cl:defun batch-key (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_BatchKey"))

(cl:defun binding-context (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_BindingContext"))

(cl:defun (cl:setf binding-context) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_BindingContext" new-value))

(cl:defun binding-context-binding (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_BindingContextBinding"))

(cl:defun binding-context-binding-property-owner (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_BindingContextBindingPropertyOwner"))

(cl:defun categories (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Categories"))

(cl:defun children (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Children"))

(cl:defun children-layout (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ChildrenLayout"))

(cl:defun (cl:setf children-layout) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_ChildrenLayout" new-value))

(cl:defun clips-children (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ClipsChildren"))

(cl:defun (cl:setf clips-children) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_ClipsChildren" new-value))

(cl:defun component (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Component"))

(cl:defun contained-elements (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ContainedElements"))

(cl:defun effective-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_EffectiveManagers"))

(cl:defun effective-parent-gue (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_EffectiveParentGue"))

(cl:defun element-gue-containing-this (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ElementGueContainingThis"))

(cl:defun (cl:setf element-gue-containing-this) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_ElementGueContainingThis" new-value))

(cl:defun element-save (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ElementSave"))

(cl:defun (cl:setf element-save) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_ElementSave" new-value))

(cl:defun explicit-i-visible-parent (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ExplicitIVisibleParent"))

(cl:defun (cl:setf explicit-i-visible-parent) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_ExplicitIVisibleParent" new-value))

(cl:defun flip-horizontal (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_FlipHorizontal"))

(cl:defun (cl:setf flip-horizontal) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_FlipHorizontal" new-value))

(cl:defun height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Height"))

(cl:defun (cl:setf height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Height" new-value))

(cl:defun height-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_HeightUnits"))

(cl:defun (cl:setf height-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_HeightUnits" new-value))

(cl:defun ignored-by-parent-size (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_IgnoredByParentSize"))

(cl:defun (cl:setf ignored-by-parent-size) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_IgnoredByParentSize" new-value))

(cl:defun font-dirty? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_IsFontDirty"))

(cl:defun (cl:setf font-dirty?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_IsFontDirty" new-value))

(cl:defun fully-created? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_IsFullyCreated"))

(cl:defun layout-suspended? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_IsLayoutSuspended"))

(cl:defun outside-of-bounds-hit-testing-enabled? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_IsOutsideOfBoundsHitTestingEnabled"))

(cl:defun render-target? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_IsRenderTarget"))

(cl:defun layer (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Layer"))

(cl:defun managers (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Managers"))

(cl:defun max-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_MaxHeight"))

(cl:defun (cl:setf max-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_MaxHeight" new-value))

(cl:defun max-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_MaxWidth"))

(cl:defun (cl:setf max-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_MaxWidth" new-value))

(cl:defun min-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_MinHeight"))

(cl:defun (cl:setf min-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_MinHeight" new-value))

(cl:defun min-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_MinWidth"))

(cl:defun (cl:setf min-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_MinWidth" new-value))

(cl:defun name (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Name"))

(cl:defun (cl:setf name) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Name" new-value))

(cl:defun parent (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Parent"))

(cl:defun (cl:setf parent) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Parent" new-value))

(cl:defun parent-gue (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_ParentGue"))

(cl:defun (cl:setf parent-gue) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_ParentGue" new-value))

(cl:defun renderable-component (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_RenderableComponent"))

(cl:defun rotation (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Rotation"))

(cl:defun (cl:setf rotation) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Rotation" new-value))

(cl:defun stacked-row-or-column-dimensions (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_StackedRowOrColumnDimensions"))

(cl:defun stacked-row-or-column-index (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_StackedRowOrColumnIndex"))

(cl:defun (cl:setf stacked-row-or-column-index) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_StackedRowOrColumnIndex" new-value))

(cl:defun stack-spacing (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_StackSpacing"))

(cl:defun (cl:setf stack-spacing) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_StackSpacing" new-value))

(cl:defun states (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_States"))

(cl:defun tag (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Tag"))

(cl:defun (cl:setf tag) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Tag" new-value))

(cl:defun text-overflow-vertical-mode (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextOverflowVerticalMode"))

(cl:defun (cl:setf text-overflow-vertical-mode) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextOverflowVerticalMode" new-value))

(cl:defun texture-address (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureAddress"))

(cl:defun (cl:setf texture-address) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureAddress" new-value))

(cl:defun texture-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureHeight"))

(cl:defun (cl:setf texture-height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureHeight" new-value))

(cl:defun texture-height-scale (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureHeightScale"))

(cl:defun (cl:setf texture-height-scale) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureHeightScale" new-value))

(cl:defun texture-left (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureLeft"))

(cl:defun (cl:setf texture-left) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureLeft" new-value))

(cl:defun texture-top (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureTop"))

(cl:defun (cl:setf texture-top) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureTop" new-value))

(cl:defun texture-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureWidth"))

(cl:defun (cl:setf texture-width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureWidth" new-value))

(cl:defun texture-width-scale (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_TextureWidthScale"))

(cl:defun (cl:setf texture-width-scale) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_TextureWidthScale" new-value))

(cl:defun use-fixed-stack-children-size (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_UseFixedStackChildrenSize"))

(cl:defun (cl:setf use-fixed-stack-children-size) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_UseFixedStackChildrenSize" new-value))

(cl:defun visible (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Visible"))

(cl:defun (cl:setf visible) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Visible" new-value))

(cl:defun what-this-contains (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_WhatThisContains"))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Width"))

(cl:defun (cl:setf width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Width" new-value))

(cl:defun width-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_WidthUnits"))

(cl:defun (cl:setf width-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_WidthUnits" new-value))

(cl:defun wrap (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Wrap"))

(cl:defun (cl:setf wrap) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Wrap" new-value))

(cl:defun wraps-children (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_WrapsChildren"))

(cl:defun (cl:setf wraps-children) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_WrapsChildren" new-value))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_X"))

(cl:defun (cl:setf x) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_X" new-value))

(cl:defun x-origin (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_XOrigin"))

(cl:defun (cl:setf x-origin) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_XOrigin" new-value))

(cl:defun x-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_XUnits"))

(cl:defun (cl:setf x-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_XUnits" new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Y"))

(cl:defun (cl:setf y) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Y" new-value))

(cl:defun y-origin (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_YOrigin"))

(cl:defun (cl:setf y-origin) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_YOrigin" new-value))

(cl:defun y-units (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_YUnits"))

(cl:defun (cl:setf y-units) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_YUnits" new-value))

(cl:defun z (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "get_Z"))

(cl:defun (cl:setf z) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "set_Z" new-value))

(cl:defun add-binding-context-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "BindingContextChanged" handler))

(cl:defun remove-binding-context-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-binding-context-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "BindingContextChanged" handler))

(cl:defun add-inherited-binding-context-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "InheritedBindingContextChanged" handler))

(cl:defun remove-inherited-binding-context-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-inherited-binding-context-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "InheritedBindingContextChanged" handler))

(cl:defun add-parent-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ParentChanged" handler))

(cl:defun remove-parent-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-parent-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ParentChanged" handler))

(cl:defun add-position-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PositionChanged" handler))

(cl:defun remove-position-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-position-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PositionChanged" handler))

(cl:defun add-property-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PropertyChanged" handler))

(cl:defun remove-property-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-property-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PropertyChanged" handler))

(cl:defun add-size-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SizeChanged" handler))

(cl:defun remove-size-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-size-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SizeChanged" handler))

(cl:defun add-visible-changed (obj! handler)
  (dotnet:add-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "VisibleChanged" handler))

(cl:defun remove-visible-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-visible-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "VisibleChanged" handler))

(cl:defun add-renderable-to-managers ()
  (dotnet:static <type-str> "AddRenderableToManagers"))

(cl:defun (cl:setf add-renderable-to-managers) (new-value)
  (cl:setf (dotnet:static <type-str> "AddRenderableToManagers") new-value))

(cl:defun apply-markup ()
  (dotnet:static <type-str> "ApplyMarkup"))

(cl:defun (cl:setf apply-markup) (new-value)
  (cl:setf (dotnet:static <type-str> "ApplyMarkup") new-value))

(cl:defun children-updating-parent-layout-calls ()
  (dotnet:static <type-str> "ChildrenUpdatingParentLayoutCalls"))

(cl:defun (cl:setf children-updating-parent-layout-calls) (new-value)
  (cl:setf (dotnet:static <type-str> "ChildrenUpdatingParentLayoutCalls") new-value))

(cl:defun clone-renderable-function ()
  (dotnet:static <type-str> "CloneRenderableFunction"))

(cl:defun (cl:setf clone-renderable-function) (new-value)
  (cl:setf (dotnet:static <type-str> "CloneRenderableFunction") new-value))

(cl:defun get-type-call-count ()
  (dotnet:static <type-str> "GetTypeCallCount"))

(cl:defun (cl:setf get-type-call-count) (new-value)
  (cl:setf (dotnet:static <type-str> "GetTypeCallCount") new-value))

(cl:defun global-font-scale ()
  (dotnet:static <type-str> "GlobalFontScale"))

(cl:defun (cl:setf global-font-scale) (new-value)
  (cl:setf (dotnet:static <type-str> "GlobalFontScale") new-value))

(cl:defun all-layout-suspended? ()
  (dotnet:static <type-str> "IsAllLayoutSuspended"))

(cl:defun (cl:setf all-layout-suspended?) (new-value)
  (cl:setf (dotnet:static <type-str> "IsAllLayoutSuspended") new-value))

(cl:defun property-unsubscribe-call-count ()
  (dotnet:static <type-str> "PropertyUnsubscribeCallCount"))

(cl:defun (cl:setf property-unsubscribe-call-count) (new-value)
  (cl:setf (dotnet:static <type-str> "PropertyUnsubscribeCallCount") new-value))

(cl:defun remove-renderable-from-managers ()
  (dotnet:static <type-str> "RemoveRenderableFromManagers"))

(cl:defun (cl:setf remove-renderable-from-managers) (new-value)
  (cl:setf (dotnet:static <type-str> "RemoveRenderableFromManagers") new-value))

(cl:defun save-forms-runtime-properties-action ()
  (dotnet:static <type-str> "SaveFormsRuntimePropertiesAction"))

(cl:defun (cl:setf save-forms-runtime-properties-action) (new-value)
  (cl:setf (dotnet:static <type-str> "SaveFormsRuntimePropertiesAction") new-value))

(cl:defun set-property-on-renderable ()
  (dotnet:static <type-str> "SetPropertyOnRenderable"))

(cl:defun (cl:setf set-property-on-renderable) (new-value)
  (cl:setf (dotnet:static <type-str> "SetPropertyOnRenderable") new-value))

(cl:defun show-line-rectangles ()
  (dotnet:static <type-str> "ShowLineRectangles"))

(cl:defun (cl:setf show-line-rectangles) (new-value)
  (cl:setf (dotnet:static <type-str> "ShowLineRectangles") new-value))

(cl:defun throw-exceptions-for-missing-files ()
  (dotnet:static <type-str> "ThrowExceptionsForMissingFiles"))

(cl:defun (cl:setf throw-exceptions-for-missing-files) (new-value)
  (cl:setf (dotnet:static <type-str> "ThrowExceptionsForMissingFiles") new-value))

(cl:defun update-font-from-properties ()
  (dotnet:static <type-str> "UpdateFontFromProperties"))

(cl:defun (cl:setf update-font-from-properties) (new-value)
  (cl:setf (dotnet:static <type-str> "UpdateFontFromProperties") new-value))

(cl:defun update-forms-state-action ()
  (dotnet:static <type-str> "UpdateFormsStateAction"))

(cl:defun (cl:setf update-forms-state-action) (new-value)
  (cl:setf (dotnet:static <type-str> "UpdateFormsStateAction") new-value))

(cl:defun update-layout-call-count ()
  (dotnet:static <type-str> "UpdateLayoutCallCount"))

(cl:defun (cl:setf update-layout-call-count) (new-value)
  (cl:setf (dotnet:static <type-str> "UpdateLayoutCallCount") new-value))

(cl:defun add-category (obj! category)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AddCategory" category))

(cl:defun add-child (obj! child)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AddChild" child))

(cl:defun add-exposed-variable (obj! variable-name underlying-variable)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AddExposedVariable" variable-name underlying-variable))

(cl:defun add-states (obj! list)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AddStates" list))

(cl:defun add-to-managers (obj! cl:&optional (managers cl:nil supplied-managers) cl:&key (layer cl:nil supplied-layer))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.AddToManagers overloads. Dispatches at runtime.

AddToManagers() -> Void

AddToManagers(ISystemManagers, Layer = null) -> Void
"
  (cl:cond
    ((cl:and supplied-managers (cl:or (cl:null managers) (dotnet:is-instance-of managers "RenderingLibrary.ISystemManagers")) (cl:or (cl:not supplied-layer) (cl:or (cl:null layer) (dotnet:is-instance-of layer "RenderingLibrary.Graphics.Layer"))))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AddToManagers" managers (cl:if supplied-layer layer cl:nil)))
    ((cl:and (cl:not supplied-managers) (cl:not supplied-layer))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AddToManagers"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "AddToManagers"
                    :supplied-args (cl:append (cl:when supplied-managers (cl:list :managers managers)) (cl:when supplied-layer (cl:list :layer layer)))))))

(cl:defun after-full-creation (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AfterFullCreation"))

(cl:defun anchor (obj! anchor)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "Anchor" anchor))

(cl:defun animate-self (obj! second-difference)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "AnimateSelf" second-difference))

(cl:defun apply-state (obj! name cl:&optional (state-name cl:nil supplied-state-name))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.ApplyState overloads. Dispatches at runtime.

ApplyState(String) -> Void

ApplyState(StateSave) -> Void

ApplyState(VariableSaveValues]) -> Void

ApplyState(String, String) -> Void
"
  (cl:cond
    ((cl:and (cl:stringp name) supplied-state-name (cl:stringp state-name))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ApplyState" name state-name))
    ((cl:and (cl:stringp name) (cl:not supplied-state-name))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ApplyState" name))
    ((cl:and (cl:or (cl:null name) (dotnet:is-instance-of name "Gum.DataTypes.Variables.StateSave")) (cl:not supplied-state-name))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ApplyState" name))
    ((cl:and (cl:or (cl:null name) (dotnet:is-instance-of name "System.Collections.Generic.List`1[[Gum.DataTypes.Variables.VariableSaveValues, GumCommon, Version=2026.5.8.1, Culture=neutral, PublicKeyToken=null]], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e")) (cl:not supplied-state-name))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ApplyState" name))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "ApplyState"
                    :supplied-args (cl:append (cl:list :name name) (cl:when supplied-state-name (cl:list :state-name state-name)))))))

(cl:defun apply-state-recursive (obj! category-name state-name)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ApplyStateRecursive" category-name state-name))

(cl:defun clear-dirty-layout-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ClearDirtyLayoutState"))

(cl:defun clear-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ClearManagers"))

(cl:defun clone (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "Clone"))

(cl:defun convert-value (value desired-type format)
  (dotnet:static <type-str> "ConvertValue" (cl:the (dotnet "System.Object") value) (cl:the (dotnet "System.Type") desired-type) (cl:the (dotnet "System.String") format)))

(cl:defun create-children-recursively (obj! element-save system-managers)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "CreateChildrenRecursively" element-save system-managers))

(cl:defun dock (obj! dock)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "Dock" dock))

(cl:defun end-batch (obj! system-managers)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "EndBatch" system-managers))

(cl:defun fill-list-with-children-by-type-recursively (type obj! cl:&optional (list-to-fill cl:nil supplied-list-to-fill))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.FillListWithChildrenByTypeRecursively overloads. Dispatches at runtime.

FillListWithChildrenByTypeRecursively() -> List

FillListWithChildrenByTypeRecursively(List) -> Void
"
  (cl:cond
    ((cl:and supplied-list-to-fill (cl:or (cl:null list-to-fill) (dotnet:is-instance-of list-to-fill "System.Collections.Generic.List`1[T]")))
     (dotnet:invoke-generic (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "FillListWithChildrenByTypeRecursively" (cl:list type) list-to-fill))
    ((cl:and (cl:not supplied-list-to-fill))
     (dotnet:invoke-generic (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "FillListWithChildrenByTypeRecursively" (cl:list type)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "FillListWithChildrenByTypeRecursively"
                    :supplied-args (cl:append (cl:when supplied-list-to-fill (cl:list :list-to-fill list-to-fill)))))))

(cl:defun get-absolute-height (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetAbsoluteHeight"))

(cl:defun get-absolute-width (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetAbsoluteWidth"))

(cl:defun get-anchor (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetAnchor"))

(cl:defun get-child-by-name (obj! name)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetChildByName" name))

(cl:defun get-child-by-name-recursively (obj! name)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetChildByNameRecursively" name))

(cl:defun get-child-by-type (obj! type)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetChildByType" type))

(cl:defun get-child-by-type-recursively (obj! type)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetChildByTypeRecursively" type))

(cl:defun get-dock (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetDock"))

(cl:defun get-graphical-ui-element-by-name (obj! name)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetGraphicalUiElementByName" name))

;; Note: Gum.Wireframe.GraphicalUiElement.GetGraphicalUiElementByName also has the following overloads with special
;; parameter types (ref, out, or params) that are not
;; yet supported:
;;   GetGraphicalUiElementByName(params String[]) -> GraphicalUiElement

(cl:defun get-if-dimensions-depend-on-children (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetIfDimensionsDependOnChildren"))

(cl:defun get-parent-by-name-recursively (obj! name)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetParentByNameRecursively" name))

(cl:defun get-parent-by-type-recursively (obj! type)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "GetParentByTypeRecursively" type))

;; The following C# Gum.Wireframe.GraphicalUiElement.GetParentOffsets overloads have special parameter types
;; (ref, out, or params) and are not yet supported:
;;   GetParentOffsets(out Single&, out Single&) -> Void

(cl:defun interpolate-between (obj! first second interpolation-value)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "InterpolateBetween" first second interpolation-value))

(cl:defun exposed-variable? (obj! variable-name)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "IsExposedVariable" variable-name))

(cl:defun point-inside? (obj! x y)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "IsPointInside" x y))

(cl:defun move-to-layer (obj! layer)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "MoveToLayer" layer))

(cl:defun notify-property-changed (obj! cl:&key (property-name cl:nil supplied-property-name))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.NotifyPropertyChanged overloads. Dispatches at runtime.

NotifyPropertyChanged(String = null) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-property-name) (cl:stringp property-name)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "NotifyPropertyChanged" (cl:if supplied-property-name property-name cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "NotifyPropertyChanged"
                    :supplied-args (cl:append (cl:when supplied-property-name (cl:list :property-name property-name)))))))

(cl:defun play-animation (obj! animation)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PlayAnimation" animation))

(cl:defun pre-render (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PreRender"))

(cl:defun push-value-to-view-model (obj! cl:&key (ui-property-name cl:nil supplied-ui-property-name))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.PushValueToViewModel overloads. Dispatches at runtime.

PushValueToViewModel(String = null) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-ui-property-name) (cl:stringp ui-property-name)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "PushValueToViewModel" (cl:if supplied-ui-property-name ui-property-name cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "PushValueToViewModel"
                    :supplied-args (cl:append (cl:when supplied-ui-property-name (cl:list :ui-property-name ui-property-name)))))))

(cl:defun refresh-styles (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "RefreshStyles"))

(cl:defun refresh-text-overflow-vertical-mode (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "RefreshTextOverflowVerticalMode"))

(cl:defun remove-child (obj! child)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "RemoveChild" child))

(cl:defun remove-from-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "RemoveFromManagers"))

(cl:defun render (obj! managers)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "Render" managers))

(cl:defun resume-layout (obj! cl:&key (recursive cl:nil supplied-recursive))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.ResumeLayout overloads. Dispatches at runtime.

ResumeLayout(Boolean = NIL) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-recursive) (cl:typep recursive 'cl:boolean)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ResumeLayout" (cl:if supplied-recursive recursive cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "ResumeLayout"
                    :supplied-args (cl:append (cl:when supplied-recursive (cl:list :recursive recursive)))))))

(cl:defun set-binding (obj! ui-property vm-property cl:&key (to-string-format cl:nil supplied-to-string-format))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.SetBinding overloads. Dispatches at runtime.

SetBinding(String, String, String = null) -> Void
"
  (cl:cond
    ((cl:and (cl:stringp ui-property) (cl:stringp vm-property) (cl:or (cl:not supplied-to-string-format) (cl:stringp to-string-format)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SetBinding" ui-property vm-property (cl:if supplied-to-string-format to-string-format cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "SetBinding"
                    :supplied-args (cl:append (cl:list :ui-property ui-property) (cl:list :vm-property vm-property) (cl:when supplied-to-string-format (cl:list :to-string-format to-string-format)))))))

(cl:defun set-contained-object (obj! contained-object)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SetContainedObject" contained-object))

(cl:defun set-gue-values (obj! rvf)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SetGueValues" rvf))

(cl:defun set-initial-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SetInitialState"))

(cl:defun set-property (obj! property-name value)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SetProperty" property-name value))

(cl:defun set-property-through-reflection (m-contained-object-as-ipso graphical-ui-element property-name value)
  (dotnet:static <type-str> "SetPropertyThroughReflection" (cl:the (dotnet "RenderingLibrary.Graphics.IRenderableIpso") m-contained-object-as-ipso) (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") graphical-ui-element) (cl:the (dotnet "System.String") property-name) (cl:the (dotnet "System.Object") value)))

(cl:defun start-batch (obj! system-managers)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "StartBatch" system-managers))

(cl:defun stop-animation (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "StopAnimation"))

(cl:defun suspend-layout (obj! cl:&key (recursive cl:nil supplied-recursive))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.SuspendLayout overloads. Dispatches at runtime.

SuspendLayout(Boolean = NIL) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:not supplied-recursive) (cl:typep recursive 'cl:boolean)))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "SuspendLayout" (cl:if supplied-recursive recursive cl:nil)))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "SuspendLayout"
                    :supplied-args (cl:append (cl:when supplied-recursive (cl:list :recursive recursive)))))))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "ToString"))

(cl:defun update-font-recursive (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateFontRecursive"))

(cl:defun update-height (obj! parent-height consider-wrapped-stacked)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateHeight" parent-height consider-wrapped-stacked))

(cl:defun update-layout (obj! cl:&optional (update-parent cl:nil supplied-update-parent) (update-children cl:nil supplied-update-children) cl:&key (x-or-y cl:nil supplied-x-or-y))
  "Master wrapper for Gum.Wireframe.GraphicalUiElement.UpdateLayout overloads. Dispatches at runtime.

UpdateLayout() -> Void

UpdateLayout(Boolean, Boolean) -> Void

UpdateLayout(Boolean, Int32, XOrY] = null) -> Void

UpdateLayout(GraphicalUiElement+ParentUpdateType, Int32, XOrY] = null) -> Void
"
  (cl:cond
    ((cl:and supplied-update-parent (cl:typep update-parent 'cl:boolean) supplied-update-children (cl:typep update-children 'cl:boolean) (cl:not supplied-x-or-y))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateLayout" update-parent update-children))
    ((cl:and supplied-update-parent (cl:typep update-parent 'cl:boolean) supplied-update-children (cl:numberp update-children) (cl:or (cl:not supplied-x-or-y) (cl:or (cl:null x-or-y) (dotnet:is-instance-of x-or-y "Gum.Converters.XOrY"))))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateLayout" update-parent update-children (cl:if supplied-x-or-y x-or-y cl:nil)))
    ((cl:and supplied-update-parent (cl:or (cl:null update-parent) (dotnet:is-instance-of update-parent "Gum.Wireframe.GraphicalUiElement+ParentUpdateType")) supplied-update-children (cl:numberp update-children) (cl:or (cl:not supplied-x-or-y) (cl:or (cl:null x-or-y) (dotnet:is-instance-of x-or-y "Gum.Converters.XOrY"))))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateLayout" update-parent update-children (cl:if supplied-x-or-y x-or-y cl:nil)))
    ((cl:and (cl:not supplied-update-parent) (cl:not supplied-update-children) (cl:not supplied-x-or-y))
     (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateLayout"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-WIREFRAME-GRAPHICAL-UI-ELEMENT"
                    :class-name <type-str>
                    :method-name "UpdateLayout"
                    :supplied-args (cl:append (cl:when supplied-update-parent (cl:list :update-parent update-parent)) (cl:when supplied-update-children (cl:list :update-children update-children)) (cl:when supplied-x-or-y (cl:list :x-or-y x-or-y)))))))

(cl:defun update-texture-values-from (obj! as-sprite)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateTextureValuesFrom" as-sprite))

(cl:defun update-to-font-values (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateToFontValues"))

(cl:defun update-width (obj! parent-width consider-wrapped-stacked)
  (dotnet:invoke (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") obj!) "UpdateWidth" parent-width consider-wrapped-stacked))

;; Extension methods (exact match on this == Gum.Wireframe.GraphicalUiElement):
;;   Gum.Forms.GraphicalUiElementFormsExtensions::GetFrameworkElementByName(GraphicalUiElement, String) -> FrameworkElementType -- skipped (generic type arguments/parameters not yet supported)
;;   Gum.Forms.GraphicalUiElementFormsExtensions::TryGetFrameworkElementByName(GraphicalUiElement, String) -> FrameworkElementType -- skipped (generic type arguments/parameters not yet supported)
;;   Gum.Wireframe.GraphicalUiElementExtensions::PlayAnimation(GraphicalUiElement, Int32) -> Void -- skipped (this class already declares its own member of this name)
;;   Gum.Wireframe.GraphicalUiElementExtensions::PlayAnimation(GraphicalUiElement, String) -> Void -- skipped (this class already declares its own member of this name)
;;   MonoGameGum.GraphicalUiElementExtensionMethods::AddChild(GraphicalUiElement, FrameworkElement) -> Void -- skipped (this class already declares its own member of this name)
;;   Gum.Wireframe.GraphicalUiElementExtensions::ApplyAnimation(GraphicalUiElement, Int32, Double) -> Void -- skipped (ambiguous -- more than one extension method maps to Lisp name apply-animation)
;;   Gum.Wireframe.GraphicalUiElementExtensions::ApplyAnimation(GraphicalUiElement, String, Double) -> Void -- skipped (ambiguous -- more than one extension method maps to Lisp name apply-animation)
;;   Gum.Wireframe.GraphicalUiElementExtensions::ApplyAnimation(GraphicalUiElement, AnimationRuntime, Double) -> Void -- skipped (ambiguous -- more than one extension method maps to Lisp name apply-animation)
;;   Gum.Wireframe.GraphicalUiElementExtensions::GetAnimation(GraphicalUiElement, Int32) -> AnimationRuntime -- skipped (ambiguous -- more than one extension method maps to Lisp name get-animation)
;;   Gum.Wireframe.GraphicalUiElementExtensions::GetAnimation(GraphicalUiElement, String) -> AnimationRuntime -- skipped (ambiguous -- more than one extension method maps to Lisp name get-animation)
(cl:defun do-ui-activity-recursively (obj! cursor keyboard current-game-time-in-seconds)
  "Extension method from Gum.Wireframe.GueInteractiveExtensionMethods (assembly GumCommon.dll)."
  (dotnet:static "Gum.Wireframe.GueInteractiveExtensionMethods" "DoUiActivityRecursively" obj! cursor keyboard current-game-time-in-seconds))

(cl:defun add-exposed-variables-recursively (obj! element-save)
  "Extension method from GumRuntime.ElementSaveExtensions (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.ElementSaveExtensions" "AddExposedVariablesRecursively" obj! element-save))

(cl:defun add-states-and-categories-recursively-to-gue (obj! element-save)
  "Extension method from GumRuntime.ElementSaveExtensions (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.ElementSaveExtensions" "AddStatesAndCategoriesRecursivelyToGue" obj! element-save))

(cl:defun apply-variable-references (obj! state-save)
  "Extension method from GumRuntime.ElementSaveExtensions (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.ElementSaveExtensions" "ApplyVariableReferences" obj! state-save))

(cl:defun create-graphical-component (obj! element-save system-managers)
  "Extension method from GumRuntime.ElementSaveExtensions (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.ElementSaveExtensions" "CreateGraphicalComponent" obj! element-save system-managers))

(cl:defun set-states-and-categories-recursively (obj! element-save)
  "Extension method from GumRuntime.ElementSaveExtensions (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.ElementSaveExtensions" "SetStatesAndCategoriesRecursively" obj! element-save))

(cl:defun set-variables-recursively (obj! element-save state-save)
  "Extension method from GumRuntime.ElementSaveExtensions (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.ElementSaveExtensions" "SetVariablesRecursively" obj! element-save state-save))

(cl:defun export-layout-json (obj! file-path)
  "Extension method from GumRuntime.LayoutExporter (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.LayoutExporter" "ExportLayoutJson" obj! file-path))

(cl:defun to-layout-json (obj!)
  "Extension method from GumRuntime.LayoutExporter (assembly GumCommon.dll)."
  (dotnet:static "GumRuntime.LayoutExporter" "ToLayoutJson" obj!))

(cl:defun add-to-root (obj!)
  "Extension method from MonoGameGum.GraphicalUiElementExtensionMethods (assembly MonoGameGum.dll)."
  (dotnet:static "MonoGameGum.GraphicalUiElementExtensionMethods" "AddToRoot" obj!))

(cl:defun remove-from-root (obj!)
  "Extension method from MonoGameGum.GraphicalUiElementExtensionMethods (assembly MonoGameGum.dll)."
  (dotnet:static "MonoGameGum.GraphicalUiElementExtensionMethods" "RemoveFromRoot" obj!))


