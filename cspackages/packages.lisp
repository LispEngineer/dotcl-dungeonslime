;;; Generated automatically. Do not edit.
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z

(cl:in-package :cl-user)

;;; Source File: csharp-assembly-utils.lisp
;;; Purpose: shared runtime support for generated packages
;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;; Copyright 2026 Douglas P. Fields, Jr.
;;;
;;; Package definition for the CSHARP-ASSEMBLY-UTILS package: shared runtime
;;; support that every batch of dotcl-packagegen-generated C# class packages
;;; depends on. Copied verbatim (see GENERATE-BATCH-PACKAGES-FILE in
;;; assembly-package-generator.lisp) into every generated packages.lisp,
;;; ahead of the per-class defpackage forms. Standalone-loadable on its own.

(cl:defpackage :csharp-assembly-utils
  (:use :cl)
  (:export #:csharp-overload-not-found
           #:csharp-overload-package-name
           #:csharp-overload-class-name
           #:csharp-overload-method-name
           #:csharp-overload-supplied-args
           #:+unbound-marker+))

;;; Source File: csharp-generics.lisp
;;; Purpose: unified CLOS generic functions dispatching on C# runtime
;;; type, across every --defgeneric-opted-in class in this batch
;;; (see doc/make-everything-defgeneric.md)
(cl:defpackage :csharp-generics
  (:use :cl)
  (:shadow
   #:load
   #:get-properties
   #:count
   #:remove
   #:ceiling
   #:floor
   #:length
   #:round
   #:position
   #:character
   #:close
   #:find
   #:reverse
   #:sort
  )
  (:export
   #:add-collection-changed
   #:remove-collection-changed
   #:add-property-changed
   #:remove-property-changed
   #:block-reentrancy
   #:check-reentrancy
   #:clear-items
   #:insert-item
   #:move
   #:move-item
   #:on-collection-changed
   #:on-property-changed
   #:remove-item
   #:set-item
   #:days
   #:hours
   #:microseconds
   #:milliseconds
   #:minutes
   #:nanoseconds
   #:seconds
   #:ticks
   #:total-days
   #:total-hours
   #:total-microseconds
   #:total-milliseconds
   #:total-minutes
   #:total-nanoseconds
   #:total-seconds
   #:add
   #:compare-to
   #:divide
   #:duration
   #:equals
   #:get-hash-code
   #:multiply
   #:negate
   #:subtract
   #:to-string
   #:value__
   #:absolute-path
   #:absolute-uri
   #:authority
   #:dns-safe-host
   #:fragment
   #:host
   #:host-name-type
   #:idn-host
   #:absolute-uri?
   #:default-port?
   #:file?
   #:loopback?
   #:unc?
   #:local-path
   #:original-string
   #:path-and-query
   #:port
   #:query
   #:scheme
   #:segments
   #:user-escaped
   #:user-info
   #:canonicalize
   #:check-security
   #:escape
   #:get-components
   #:get-left-part
   #:get-object-data
   #:bad-file-system-character?
   #:base-of?
   #:reserved-character?
   #:well-formed-original-string?
   #:make-relative
   #:make-relative-uri
   #:parse
   #:unescape
   #:base-directory
   #:dynamic-directory
   #:friendly-name
   #:id
   #:fully-trusted?
   #:homogenous?
   #:monitoring-survived-memory-size
   #:monitoring-total-allocated-memory-size
   #:monitoring-total-processor-time
   #:permission-set
   #:relative-search-path
   #:setup-information
   #:shadow-copy-files
   #:append-private-path
   #:apply-policy
   #:clear-private-path
   #:clear-shadow-copy-path
   #:create-instance
   #:create-instance-and-unwrap
   #:create-instance-from
   #:create-instance-from-and-unwrap
   #:execute-assembly
   #:execute-assembly-by-name
   #:get-assemblies
   #:get-data
   #:compatibility-switch-set?
   #:default-app-domain?
   #:finalizing-for-unload?
   #:load
   #:reflection-only-get-assemblies
   #:set-cache-path
   #:set-data
   #:set-dynamic-base
   #:set-principal-policy
   #:set-shadow-copy-files
   #:set-shadow-copy-path
   #:set-thread-principal
   #:add-assembly-load
   #:remove-assembly-load
   #:add-assembly-resolve
   #:remove-assembly-resolve
   #:add-domain-unload
   #:remove-domain-unload
   #:add-first-chance-exception
   #:remove-first-chance-exception
   #:add-process-exit
   #:remove-process-exit
   #:add-reflection-only-assembly-resolve
   #:remove-reflection-only-assembly-resolve
   #:add-resource-resolve
   #:remove-resource-resolve
   #:add-type-resolve
   #:remove-type-resolve
   #:add-unhandled-exception
   #:remove-unhandled-exception
   #:get-type-code
   #:assembly
   #:assembly-qualified-name
   #:attributes
   #:base-type
   #:contains-generic-parameters
   #:declaring-method
   #:declaring-type
   #:full-name
   #:generic-parameter-attributes
   #:generic-parameter-position
   #:generic-type-arguments
   #:guid
   #:has-element-type
   #:abstract?
   #:ansi-class?
   #:array?
   #:auto-class?
   #:auto-layout?
   #:by-ref?
   #:by-ref-like?
   #:class?
   #:com-object?
   #:constructed-generic-type?
   #:contextful?
   #:enum?
   #:explicit-layout?
   #:function-pointer?
   #:generic-method-parameter?
   #:generic-parameter?
   #:generic-type?
   #:generic-type-definition?
   #:generic-type-parameter?
   #:import?
   #:interface?
   #:layout-sequential?
   #:marshal-by-ref?
   #:nested?
   #:nested-assembly?
   #:nested-fam-and-assem?
   #:nested-family?
   #:nested-fam-or-assem?
   #:nested-private?
   #:nested-public?
   #:not-public?
   #:pointer?
   #:primitive?
   #:public?
   #:sealed?
   #:security-critical?
   #:security-safe-critical?
   #:security-transparent?
   #:serializable?
   #:signature-type?
   #:special-name?
   #:sz-array?
   #:type-definition?
   #:unicode-class?
   #:unmanaged-function-pointer?
   #:value-type?
   #:variable-bound-array?
   #:visible?
   #:member-type
   #:module
   #:namespace
   #:reflected-type
   #:struct-layout-attribute
   #:type-handle
   #:type-initializer
   #:underlying-system-type
   #:find-interfaces
   #:find-members
   #:get-array-rank
   #:get-attribute-flags-impl
   #:get-constructor
   #:get-constructor-impl
   #:get-constructors
   #:get-default-members
   #:get-element-type
   #:get-enum-name
   #:get-enum-names
   #:get-enum-underlying-type
   #:get-enum-values
   #:get-enum-values-as-underlying-type
   #:get-event
   #:get-events
   #:get-field
   #:get-fields
   #:get-function-pointer-calling-conventions
   #:get-function-pointer-parameter-types
   #:get-function-pointer-return-type
   #:get-generic-arguments
   #:get-generic-parameter-constraints
   #:get-generic-type-definition
   #:get-interface
   #:get-interface-map
   #:get-interfaces
   #:get-member
   #:get-members
   #:get-member-with-same-metadata-definition-as
   #:get-method
   #:get-method-impl
   #:get-methods
   #:get-nested-type
   #:get-nested-types
   #:get-optional-custom-modifiers
   #:get-properties
   #:get-property
   #:get-property-impl
   #:get-required-custom-modifiers
   #:get-type
   #:get-type-code-impl
   #:has-element-type-impl
   #:invoke-member
   #:array-impl?
   #:assignable-from?
   #:assignable-to?
   #:by-ref-impl?
   #:com-object-impl?
   #:contextful-impl?
   #:enum-defined?
   #:equivalent-to?
   #:instance-of-type?
   #:marshal-by-ref-impl?
   #:pointer-impl?
   #:primitive-impl?
   #:subclass-of?
   #:value-type-impl?
   #:make-array-type
   #:make-by-ref-type
   #:make-pointer-type
   #:get-type-info
   #:get-runtime-event
   #:get-runtime-events
   #:get-runtime-field
   #:get-runtime-fields
   #:get-runtime-method
   #:get-runtime-methods
   #:get-runtime-properties
   #:get-runtime-property
   #:finalize
   #:memberwise-clone
   #:custom-attributes
   #:collectible?
   #:metadata-token
   #:name
   #:get-custom-attributes
   #:get-custom-attributes-data
   #:has-same-metadata-definition-as
   #:defined?
   #:count
   #:read-only?
   #:clear
   #:contains
   #:copy-to
   #:remove
   #:get-enumerator
   #:item
   #:index-of
   #:insert
   #:remove-at
   #:synchronized?
   #:sync-root
   #:fixed-size?
   #:items
   #:x
   #:y
   #:ceiling
   #:floor
   #:length
   #:length-squared
   #:normalize
   #:rotate
   #:rotate-around
   #:round
   #:to-numerics
   #:to-point
   #:to-system-numerics
   #:height
   #:width
   #:bottom
   #:center
   #:empty?
   #:left
   #:location
   #:right
   #:size
   #:top
   #:inflate
   #:intersects
   #:offset
   #:to-system-drawing
   #:to-vector2
   #:elapsed-game-time
   #:running-slowly?
   #:total-game-time
   #:components
   #:content
   #:graphics-device
   #:inactive-sleep-time
   #:active?
   #:fixed-time-step?
   #:mouse-visible?
   #:launch-parameters
   #:max-elapsed-time
   #:services
   #:target-elapsed-time
   #:window
   #:begin-draw
   #:begin-run
   #:dispose
   #:draw
   #:end-draw
   #:end-run
   #:exit
   #:initialize
   #:load-content
   #:on-activated
   #:on-deactivated
   #:on-exiting
   #:reset-elapsed-time
   #:run
   #:run-one-frame
   #:suppress-draw
   #:tick
   #:unload-content
   #:update
   #:add-activated
   #:remove-activated
   #:add-deactivated
   #:remove-deactivated
   #:add-disposed
   #:remove-disposed
   #:add-exiting
   #:remove-exiting
   #:allow-alt-f4
   #:allow-user-resizing
   #:client-bounds
   #:current-orientation
   #:handle
   #:borderless?
   #:position
   #:screen-device-name
   #:title
   #:begin-screen-device-change
   #:end-screen-device-change
   #:on-orientation-changed
   #:on-paint
   #:on-screen-device-name-changed
   #:set-supported-orientations
   #:set-title
   #:add-client-size-changed
   #:remove-client-size-changed
   #:add-file-drop
   #:remove-file-drop
   #:add-key-down
   #:remove-key-down
   #:add-key-up
   #:remove-key-up
   #:add-orientation-changed
   #:remove-orientation-changed
   #:add-screen-device-name-changed
   #:remove-screen-device-name-changed
   #:add-text-input
   #:remove-text-input
   #:caps-lock
   #:num-lock
   #:get-pressed-key-count
   #:get-pressed-keys
   #:key-down?
   #:key-up?
   #:horizontal-scroll-wheel-value
   #:left-button
   #:middle-button
   #:right-button
   #:scroll-wheel-value
   #:x-button1
   #:x-button2
   #:buttons
   #:d-pad
   #:connected?
   #:packet-number
   #:thumb-sticks
   #:triggers
   #:button-down?
   #:button-up?
   #:down
   #:up
   #:pressure
   #:state
   #:high-frequency-event?
   #:delta
   #:delta2
   #:gesture-type
   #:position2
   #:timestamp
   #:a
   #:b
   #:g
   #:packed-value
   #:r
   #:to-vector3
   #:to-vector4
   #:adjust
   #:to-grayscale
   #:loaded-assets
   #:root-directory
   #:service-provider
   #:open-stream
   #:reload-graphics-assets
   #:unload
   #:unload-asset
   #:unload-assets
   #:graphics-profile
   #:hardware-mode-switch
   #:full-screen?
   #:prefer-half-pixel-offset
   #:prefer-multi-sampling
   #:preferred-back-buffer-format
   #:preferred-back-buffer-height
   #:preferred-back-buffer-width
   #:preferred-depth-stencil-format
   #:supported-orientations
   #:synchronize-with-vertical-retrace
   #:apply-changes
   #:on-device-created
   #:on-device-disposing
   #:on-device-reset
   #:on-device-resetting
   #:toggle-full-screen
   #:add-device-created
   #:remove-device-created
   #:add-device-disposing
   #:remove-device-disposing
   #:add-device-reset
   #:remove-device-reset
   #:add-device-resetting
   #:remove-device-resetting
   #:add-preparing-device-settings
   #:remove-preparing-device-settings
   #:address-u
   #:address-v
   #:address-w
   #:border-color
   #:comparison-function
   #:filter
   #:filter-mode
   #:max-anisotropy
   #:max-mip-level
   #:mip-map-level-of-detail-bias
   #:adapter
   #:blend-factor
   #:blend-state
   #:depth-stencil-state
   #:display-mode
   #:graphics-debug
   #:graphics-device-status
   #:indices
   #:content-lost?
   #:disposed?
   #:metrics
   #:presentation-parameters
   #:rasterizer-state
   #:render-target-count
   #:resources-lost
   #:sampler-states
   #:scissor-rectangle
   #:textures
   #:use-half-pixel-offset
   #:vertex-sampler-states
   #:vertex-textures
   #:viewport
   #:draw-indexed-primitives
   #:draw-instanced-primitives
   #:draw-primitives
   #:get-render-targets
   #:present
   #:reset
   #:set-render-target
   #:set-vertex-buffer
   #:add-device-lost
   #:remove-device-lost
   #:add-disposing
   #:remove-disposing
   #:add-resource-created
   #:remove-resource-created
   #:add-resource-destroyed
   #:remove-resource-destroyed
   #:begin
   #:draw-string
   #:end
   #:bounds
   #:reload
   #:save-as-jpeg
   #:save-as-png
   #:aspect-ratio
   #:max-depth
   #:min-depth
   #:title-safe-area
   #:project
   #:unproject
   #:characters
   #:default-character
   #:glyphs
   #:line-spacing
   #:spacing
   #:texture
   #:get-glyphs
   #:measure-string
   #:bounds-in-texture
   #:character
   #:cropping
   #:left-side-bearing
   #:right-side-bearing
   #:width-including-bearings
   #:back-buffer-format
   #:back-buffer-height
   #:back-buffer-width
   #:depth-stencil-format
   #:device-window-handle
   #:display-orientation
   #:multi-sample-count
   #:presentation-interval
   #:render-target-usage
   #:clone
   #:play
   #:looped?
   #:pan
   #:pitch
   #:volume
   #:apply3-d
   #:pause
   #:resume
   #:stop
   #:album
   #:artist
   #:genre
   #:protected?
   #:rated?
   #:play-count
   #:rating
   #:track-number
   #:absolute-bottom
   #:absolute-left
   #:absolute-right
   #:absolute-top
   #:camera-center-on-screen
   #:client-height
   #:client-left
   #:client-top
   #:client-width
   #:rendering-x-offset
   #:rendering-y-offset
   #:zoom
   #:get-transformation-matrix
   #:get-scissor-rectangle-for
   #:parent-input-receiver
   #:do-keyboard-action
   #:on-focus-update
   #:on-focus-update-preview
   #:on-gain-focus
   #:on-lose-focus
   #:expose-children-events
   #:forms-control-as-object
   #:has-events
   #:enabled?
   #:enabled-recursively?
   #:outside-of-bounds-hit-testing-enabled?
   #:raise-children-events-outside-of-bounds
   #:call-click
   #:call-right-click
   #:has-cursor-over
   #:in-parent-chain?
   #:remove-from-managers
   #:try-call-dragging
   #:try-call-hover-over
   #:try-call-push
   #:try-call-remove-as-pushed
   #:try-call-roll-off
   #:try-call-roll-on
   #:try-call-roll-over
   #:add-click
   #:remove-click
   #:add-click-preview
   #:remove-click-preview
   #:add-double-click
   #:remove-double-click
   #:add-dragging
   #:remove-dragging
   #:add-enabled-change
   #:remove-enabled-change
   #:add-hover-over
   #:remove-hover-over
   #:add-lose-push
   #:remove-lose-push
   #:add-mouse-wheel-scroll
   #:remove-mouse-wheel-scroll
   #:add-push
   #:remove-push
   #:add-push-preview
   #:remove-push-preview
   #:add-removed-as-pushed
   #:remove-removed-as-pushed
   #:add-right-click
   #:remove-right-click
   #:add-roll-off
   #:remove-roll-off
   #:add-roll-on
   #:remove-roll-on
   #:add-roll-over
   #:remove-roll-over
   #:add-roll-over-bubbling
   #:remove-roll-over-bubbling
   #:batch-key
   #:wrap
   #:end-batch
   #:pre-render
   #:render
   #:start-batch
   #:alpha
   #:children
   #:clips-children
   #:color-operation
   #:render-target?
   #:parent
   #:set-parent-direct
   #:in-render-target-recursively?
   #:get-absolute-bottom
   #:get-absolute-center-x
   #:get-absolute-center-y
   #:get-absolute-flip-horizontal
   #:get-absolute-left
   #:get-absolute-right
   #:get-absolute-rotation-matrix
   #:get-absolute-top
   #:get-absolute-x
   #:get-absolute-y
   #:get-rotation-matrix
   #:get-top-parent
   #:absolute-visible
   #:visible
   #:get-absolute-visible
   #:flip-horizontal
   #:rotation
   #:tag
   #:z
   #:get-position
   #:set-position
   #:absolute-x
   #:absolute-y
   #:animation-controller
   #:animations
   #:auto-grid-horizontal-cells
   #:auto-grid-vertical-cells
   #:binding-context
   #:binding-context-binding
   #:binding-context-binding-property-owner
   #:categories
   #:children-layout
   #:component
   #:contained-elements
   #:effective-managers
   #:effective-parent-gue
   #:element-gue-containing-this
   #:element-save
   #:explicit-i-visible-parent
   #:height-units
   #:ignored-by-parent-size
   #:font-dirty?
   #:fully-created?
   #:layout-suspended?
   #:layer
   #:managers
   #:max-height
   #:max-width
   #:min-height
   #:min-width
   #:parent-gue
   #:renderable-component
   #:stacked-row-or-column-dimensions
   #:stacked-row-or-column-index
   #:stack-spacing
   #:states
   #:text-overflow-vertical-mode
   #:texture-address
   #:texture-height
   #:texture-height-scale
   #:texture-left
   #:texture-top
   #:texture-width
   #:texture-width-scale
   #:use-fixed-stack-children-size
   #:what-this-contains
   #:width-units
   #:wraps-children
   #:x-origin
   #:x-units
   #:y-origin
   #:y-units
   #:add-category
   #:add-child
   #:add-exposed-variable
   #:add-states
   #:add-to-managers
   #:after-full-creation
   #:anchor
   #:animate-self
   #:apply-state
   #:apply-state-recursive
   #:clear-dirty-layout-state
   #:clear-managers
   #:create-children-recursively
   #:dock
   #:get-absolute-height
   #:get-absolute-width
   #:get-anchor
   #:get-child-by-name
   #:get-child-by-name-recursively
   #:get-child-by-type
   #:get-child-by-type-recursively
   #:get-dock
   #:get-graphical-ui-element-by-name
   #:get-if-dimensions-depend-on-children
   #:get-parent-by-name-recursively
   #:get-parent-by-type-recursively
   #:interpolate-between
   #:exposed-variable?
   #:point-inside?
   #:move-to-layer
   #:notify-property-changed
   #:play-animation
   #:push-value-to-view-model
   #:refresh-styles
   #:refresh-text-overflow-vertical-mode
   #:remove-child
   #:resume-layout
   #:set-binding
   #:set-contained-object
   #:set-gue-values
   #:set-initial-state
   #:set-property
   #:stop-animation
   #:suspend-layout
   #:update-font-recursive
   #:update-height
   #:update-layout
   #:update-texture-values-from
   #:update-to-font-values
   #:update-width
   #:add-binding-context-changed
   #:remove-binding-context-changed
   #:add-inherited-binding-context-changed
   #:remove-inherited-binding-context-changed
   #:add-parent-changed
   #:remove-parent-changed
   #:add-position-changed
   #:remove-position-changed
   #:add-size-changed
   #:remove-size-changed
   #:add-visible-changed
   #:remove-visible-changed
   #:do-ui-activity-recursively
   #:add-exposed-variables-recursively
   #:add-states-and-categories-recursively-to-gue
   #:apply-variable-references
   #:create-graphical-component
   #:set-states-and-categories-recursively
   #:set-variables-recursively
   #:export-layout-json
   #:to-layout-json
   #:add-to-root
   #:remove-from-root
   #:canvas-height
   #:canvas-width
   #:content-loader
   #:cursor
   #:deferred-queue
   #:game
   #:gamepads
   #:game-time
   #:initialized?
   #:keyboard
   #:last-load-result
   #:localization-service
   #:modal-root
   #:popup-root
   #:renderer
   #:root
   #:synchronization-context
   #:system-managers
   #:enable-hot-reload
   #:initialize-for-testing
   #:load-animations
   #:uninitialize
   #:use-gamepad-defaults
   #:use-keyboard-defaults
   #:use-single-threaded-async
   #:add-hot-reload-completed
   #:remove-hot-reload-completed
   #:actual-height
   #:actual-width
   #:custom-cursor
   #:gamepad-tabbing-focus-behavior
   #:focused?
   #:tab-navigation-enabled?
   #:using-left-and-right-gamepad-directions-for-navigation?
   #:parent-framework-element
   #:tool-tip
   #:visual
   #:apply-runtime-properties
   #:call-loaded
   #:clear-binding
   #:close
   #:get-desired-state
   #:get-desired-state-with-checked
   #:get-if-gamepad-or-keyboard-primary-push-input-is-held
   #:get-if-is-on-this-or-child-visual
   #:get-if-push-input-is-held
   #:get-state
   #:get-visual
   #:handle-gamepad-navigation
   #:handle-keyboard-focus-update
   #:handle-tab
   #:handle-visual-binding-context-changed
   #:data-bound?
   #:on-binding-context-changed
   #:raise-key-down
   #:react-to-visual-changed
   #:react-to-visual-removed
   #:refresh-internal-visual-references
   #:register-runtime-property
   #:reposition-to-keep-in-screen
   #:save-runtime-properties
   #:show
   #:update-state
   #:update-state-recursively
   #:add-after-refresh-styles
   #:remove-after-refresh-styles
   #:add-before-refresh-styles
   #:remove-before-refresh-styles
   #:add-got-focus
   #:remove-got-focus
   #:add-loaded
   #:remove-loaded
   #:add-lost-focus
   #:remove-lost-focus
   #:add-tool-tip-closing
   #:remove-tool-tip-closing
   #:add-tool-tip-opening
   #:remove-tool-tip-opening
   #:get-framework-element
   #:get-parent-input-receiver
   #:text
   #:set-text-no-translate
   #:click-gamepad-button
   #:ignored-keys
   #:next-in-tab-sequence
   #:taking-input
   #:handle-char-entered
   #:handle-key-down
   #:lose-focus
   #:on-click
   #:perform-click
   #:receive-input
   #:add-controller-button-pushed
   #:remove-controller-button-pushed
   #:add-focus-update
   #:remove-focus-update
   #:default-height
   #:default-height-units
   #:default-width
   #:default-width-units
   #:bitmap-font
   #:blend
   #:blue
   #:color
   #:custom-font-file
   #:font
   #:font-family
   #:font-scale
   #:font-size
   #:green
   #:horizontal-alignment
   #:bold?
   #:italic?
   #:line-height-multiplier
   #:max-letters-to-show
   #:max-number-of-lines
   #:outline-thickness
   #:overlap-direction
   #:red
   #:text-overflow-horizontal-mode
   #:text-rendering-position-mode
   #:use-custom-font
   #:use-font-smoothing
   #:vertical-alignment
   #:wrapped-text
   #:get-character-index-at-position
   #:text-component
   #:snap-to-tick-enabled?
   #:thumb-grabbed?
   #:ticks-frequency
   #:handle-thumb-push
   #:on-maximum-changed
   #:on-minimum-changed
   #:on-value-changed
   #:update-thumb-position-to-cursor-drag
   #:xna-content-manager
   #:held-key
   #:triggered-on-repeat?
   #:pushed-key
   #:combo-down?
   #:combo-pushed?
   #:combo-released?
   #:single-pixel-source-rectangle
   #:camera
   #:dotted-line-texture
   #:using-premultiplied-alpha?
   #:layers
   #:main-layer
   #:single-pixel-texture
   #:sprite-renderer
   #:add-layer
   #:clear-performance-recording-variables
   #:force-end
   #:insert-layer
   #:remove-layer
   #:remove-renderable
   #:try-get-single-pixel-texture
   #:move-to-point-enabled?
   #:large-change
   #:maximum
   #:minimum
   #:orientation
   #:small-change
   #:track
   #:value
   #:apply-value-considering-snapping
   #:get-current-sign-relative-to-value
   #:raise-value-change-completed
   #:raise-value-changed-by-ui
   #:add-value-change-completed
   #:remove-value-change-completed
   #:add-value-changed
   #:remove-value-changed
   #:add-value-changed-by-ui
   #:remove-value-changed-by-ui
   #:capacity
   #:add-range
   #:as-read-only
   #:binary-search
   #:ensure-capacity
   #:exists
   #:find
   #:find-all
   #:find-index
   #:find-last
   #:find-last-index
   #:for-each
   #:get-range
   #:insert-range
   #:last-index-of
   #:remove-all
   #:remove-range
   #:reverse
   #:slice
   #:sort
   #:to-array
   #:trim-excess
   #:true-for-all
  ))

;;; Source File: system-collections-specialized-i-notify-collection-changed.lisp
;;; C# Class: System.Collections.Specialized.INotifyCollectionChanged
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-specialized-i-notify-collection-changed
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:add-collection-changed
   #:remove-collection-changed
  ))

;;; Source File: system-component-model-i-notify-property-changed.lisp
;;; C# Class: System.ComponentModel.INotifyPropertyChanged
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-component-model-i-notify-property-changed
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:add-property-changed
   #:remove-property-changed
  ))

;;; Source File: system-collections-object-model-observable-collection-1.lisp
;;; C# Class: System.Collections.ObjectModel.ObservableCollection`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-object-model-observable-collection-1
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:block-reentrancy
   #:check-reentrancy
   #:clear-items
   #:insert-item
   #:move
   #:move-item
   #:on-collection-changed
   #:on-property-changed
   #:remove-item
   #:set-item
   #:add-collection-changed
   #:remove-collection-changed
   #:add-property-changed
   #:remove-property-changed
  ))

;;; Source File: system-console.lisp
;;; C# Class: System.Console
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-console
  (:use :cl)
  (:shadow
   #:error
   #:read
   #:read-line
   #:write
   #:write-line
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:caps-lock
   #:error
   #:in
   #:error-redirected?
   #:input-redirected?
   #:output-redirected?
   #:key-available
   #:largest-window-height
   #:largest-window-width
   #:number-lock
   #:out
   #:background-color
   #:buffer-height
   #:buffer-width
   #:cursor-left
   #:cursor-size
   #:cursor-top
   #:cursor-visible
   #:foreground-color
   #:input-encoding
   #:output-encoding
   #:title
   #:treat-control-c-as-input
   #:window-height
   #:window-left
   #:window-top
   #:window-width
   #:beep
   #:clear
   #:get-cursor-position
   #:move-buffer-area
   #:open-standard-error
   #:open-standard-input
   #:open-standard-output
   #:read
   #:read-key
   #:read-line
   #:reset-color
   #:set-buffer-size
   #:set-cursor-position
   #:set-error
   #:set-in
   #:set-out
   #:set-window-position
   #:set-window-size
   #:write
   #:write-line
  ))

;;; Source File: system-time-span.lisp
;;; C# Class: System.TimeSpan
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-time-span
  (:use :cl)
  (:shadow
   #:-
   #:*
   #:/
   #:+
   #:<
   #:<=
   #:=
   #:>
   #:>=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+hours-per-day+
   #:+microseconds-per-day+
   #:+microseconds-per-hour+
   #:+microseconds-per-millisecond+
   #:+microseconds-per-minute+
   #:+microseconds-per-second+
   #:+milliseconds-per-day+
   #:+milliseconds-per-hour+
   #:+milliseconds-per-minute+
   #:+milliseconds-per-second+
   #:+minutes-per-day+
   #:+minutes-per-hour+
   #:+nanoseconds-per-tick+
   #:+seconds-per-day+
   #:+seconds-per-hour+
   #:+seconds-per-minute+
   #:+ticks-per-day+
   #:+ticks-per-hour+
   #:+ticks-per-microsecond+
   #:+ticks-per-millisecond+
   #:+ticks-per-minute+
   #:+ticks-per-second+
   #:+max-value+
   #:+min-value+
   #:+zero+
   #:days
   #:hours
   #:microseconds
   #:milliseconds
   #:minutes
   #:nanoseconds
   #:seconds
   #:ticks
   #:total-days
   #:total-hours
   #:total-microseconds
   #:total-milliseconds
   #:total-minutes
   #:total-nanoseconds
   #:total-seconds
   #:-
   #:*
   #:/
   #:+
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:add
   #:compare
   #:compare-to
   #:divide
   #:duration
   #:equals
   #:equals*
   #:from-days
   #:from-hours
   #:from-microseconds
   #:from-milliseconds
   #:from-minutes
   #:from-seconds
   #:from-ticks
   #:get-hash-code
   #:multiply
   #:negate
   #:not=
   #:parse
   #:parse-exact
   #:subtract
   #:to-string
   #:try-format
   #:try-parse
   #:try-parse-exact
  ))

;;; Source File: system-uri-kind.lisp
;;; C# Class: System.UriKind
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-uri-kind
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+absolute+
   #:+relative+
   #:+relative-or-absolute+
   #:value__
  ))

;;; Source File: system-uri.lisp
;;; C# Class: System.Uri
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-uri
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+scheme-delimiter+
   #:+uri-scheme-file+
   #:+uri-scheme-ftp+
   #:+uri-scheme-ftps+
   #:+uri-scheme-gopher+
   #:+uri-scheme-http+
   #:+uri-scheme-https+
   #:+uri-scheme-mailto+
   #:+uri-scheme-net-pipe+
   #:+uri-scheme-net-tcp+
   #:+uri-scheme-news+
   #:+uri-scheme-nntp+
   #:+uri-scheme-sftp+
   #:+uri-scheme-ssh+
   #:+uri-scheme-telnet+
   #:+uri-scheme-ws+
   #:+uri-scheme-wss+
   #:absolute-path
   #:absolute-uri
   #:authority
   #:dns-safe-host
   #:fragment
   #:host
   #:host-name-type
   #:idn-host
   #:absolute-uri?
   #:default-port?
   #:file?
   #:loopback?
   #:unc?
   #:local-path
   #:original-string
   #:path-and-query
   #:port
   #:query
   #:scheme
   #:segments
   #:user-escaped
   #:user-info
   #:=
   #:canonicalize
   #:check-host-name
   #:check-scheme-name
   #:check-security
   #:compare
   #:equals
   #:escape
   #:escape-data-string
   #:escape-string
   #:escape-uri-string
   #:from-hex
   #:get-components
   #:get-hash-code
   #:get-left-part
   #:get-object-data
   #:hex-escape
   #:bad-file-system-character?
   #:base-of?
   #:excluded-character?
   #:hex-digit?
   #:hex-encoding?
   #:reserved-character?
   #:well-formed-original-string?
   #:well-formed-uri-string?
   #:make-relative
   #:make-relative-uri
   #:not=
   #:parse
   #:to-string
   #:unescape
   #:unescape-data-string
   #:try-create
   #:try-escape-data-string
   #:try-format
   #:try-unescape-data-string
  ))

;;; Source File: system-convert.lisp
;;; C# Class: System.Convert
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-convert
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:db-null
   #:change-type
   #:from-base64-char-array
   #:from-base64-string
   #:from-hex-string
   #:get-type-code
   #:db-null?
   #:to-base64-char-array
   #:to-base64-string
   #:to-boolean
   #:to-byte
   #:to-char
   #:to-date-time
   #:to-decimal
   #:to-double
   #:to-hex-string
   #:to-hex-string-lower
   #:to-int16
   #:to-int32
   #:to-int64
   #:to-s-byte
   #:to-single
   #:to-string
   #:to-u-int16
   #:to-u-int32
   #:to-u-int64
   #:from-hex-string/out
   #:try-from-base64-chars
   #:try-from-base64-string
   #:try-to-base64-chars
   #:try-to-hex-string
   #:try-to-hex-string-lower
  ))

;;; Source File: system-app-domain.lisp
;;; C# Class: System.AppDomain
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-app-domain
  (:use :cl)
  (:shadow
   #:load
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:current-domain
   #:monitoring-survived-process-memory-size
   #:monitoring-is-enabled
   #:base-directory
   #:dynamic-directory
   #:friendly-name
   #:id
   #:fully-trusted?
   #:homogenous?
   #:monitoring-survived-memory-size
   #:monitoring-total-allocated-memory-size
   #:monitoring-total-processor-time
   #:permission-set
   #:relative-search-path
   #:setup-information
   #:shadow-copy-files
   #:append-private-path
   #:apply-policy
   #:clear-private-path
   #:clear-shadow-copy-path
   #:create-domain
   #:create-instance
   #:create-instance-and-unwrap
   #:create-instance-from
   #:create-instance-from-and-unwrap
   #:execute-assembly
   #:execute-assembly-by-name
   #:get-assemblies
   #:get-current-thread-id
   #:get-data
   #:compatibility-switch-set?
   #:default-app-domain?
   #:finalizing-for-unload?
   #:load
   #:reflection-only-get-assemblies
   #:set-cache-path
   #:set-data
   #:set-dynamic-base
   #:set-principal-policy
   #:set-shadow-copy-files
   #:set-shadow-copy-path
   #:set-thread-principal
   #:to-string
   #:unload
   #:add-assembly-load
   #:remove-assembly-load
   #:add-assembly-resolve
   #:remove-assembly-resolve
   #:add-domain-unload
   #:remove-domain-unload
   #:add-first-chance-exception
   #:remove-first-chance-exception
   #:add-process-exit
   #:remove-process-exit
   #:add-reflection-only-assembly-resolve
   #:remove-reflection-only-assembly-resolve
   #:add-resource-resolve
   #:remove-resource-resolve
   #:add-type-resolve
   #:remove-type-resolve
   #:add-unhandled-exception
   #:remove-unhandled-exception
  ))

;;; Source File: system-io-path.lisp
;;; C# Class: System.IO.Path
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-io-path
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:alt-directory-separator-char
   #:directory-separator-char
   #:invalid-path-chars
   #:path-separator
   #:volume-separator-char
   #:change-extension
   #:combine
   #:ends-in-directory-separator
   #:exists
   #:get-directory-name
   #:get-extension
   #:get-file-name
   #:get-file-name-without-extension
   #:get-full-path
   #:get-invalid-file-name-chars
   #:get-invalid-path-chars
   #:get-path-root
   #:get-random-file-name
   #:get-relative-path
   #:get-temp-file-name
   #:get-temp-path
   #:has-extension
   #:path-fully-qualified?
   #:path-rooted?
   #:join
   #:trim-ending-directory-separator
   #:try-join
  ))

;;; Source File: system-boolean.lisp
;;; C# Class: System.Boolean
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-boolean
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:false-string
   #:true-string
   #:compare-to
   #:equals
   #:get-hash-code
   #:get-type-code
   #:parse
   #:to-string
   #:try-format
   #:try-parse
  ))

;;; Source File: system-type.lisp
;;; C# Class: System.Type
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-type
  (:use :cl)
  (:shadow
   #:=
   #:get-properties
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:delimiter
   #:empty-types
   #:filter-attribute
   #:filter-name
   #:filter-name-ignore-case
   #:missing
   #:default-binder
   #:assembly
   #:assembly-qualified-name
   #:attributes
   #:base-type
   #:contains-generic-parameters
   #:declaring-method
   #:declaring-type
   #:full-name
   #:generic-parameter-attributes
   #:generic-parameter-position
   #:generic-type-arguments
   #:guid
   #:has-element-type
   #:abstract?
   #:ansi-class?
   #:array?
   #:auto-class?
   #:auto-layout?
   #:by-ref?
   #:by-ref-like?
   #:class?
   #:com-object?
   #:constructed-generic-type?
   #:contextful?
   #:enum?
   #:explicit-layout?
   #:function-pointer?
   #:generic-method-parameter?
   #:generic-parameter?
   #:generic-type?
   #:generic-type-definition?
   #:generic-type-parameter?
   #:import?
   #:interface?
   #:layout-sequential?
   #:marshal-by-ref?
   #:nested?
   #:nested-assembly?
   #:nested-fam-and-assem?
   #:nested-family?
   #:nested-fam-or-assem?
   #:nested-private?
   #:nested-public?
   #:not-public?
   #:pointer?
   #:primitive?
   #:public?
   #:sealed?
   #:security-critical?
   #:security-safe-critical?
   #:security-transparent?
   #:serializable?
   #:signature-type?
   #:special-name?
   #:sz-array?
   #:type-definition?
   #:unicode-class?
   #:unmanaged-function-pointer?
   #:value-type?
   #:variable-bound-array?
   #:visible?
   #:member-type
   #:module
   #:namespace
   #:reflected-type
   #:struct-layout-attribute
   #:type-handle
   #:type-initializer
   #:underlying-system-type
   #:=
   #:equals
   #:find-interfaces
   #:find-members
   #:get-array-rank
   #:get-attribute-flags-impl
   #:get-constructor
   #:get-constructor-impl
   #:get-constructors
   #:get-default-members
   #:get-element-type
   #:get-enum-name
   #:get-enum-names
   #:get-enum-underlying-type
   #:get-enum-values
   #:get-enum-values-as-underlying-type
   #:get-event
   #:get-events
   #:get-field
   #:get-fields
   #:get-function-pointer-calling-conventions
   #:get-function-pointer-parameter-types
   #:get-function-pointer-return-type
   #:get-generic-arguments
   #:get-generic-parameter-constraints
   #:get-generic-type-definition
   #:get-hash-code
   #:get-interface
   #:get-interface-map
   #:get-interfaces
   #:get-member
   #:get-members
   #:get-member-with-same-metadata-definition-as
   #:get-method
   #:get-method-impl
   #:get-methods
   #:get-nested-type
   #:get-nested-types
   #:get-optional-custom-modifiers
   #:get-properties
   #:get-property
   #:get-property-impl
   #:get-required-custom-modifiers
   #:get-type
   #:get-type*
   #:get-type-array
   #:get-type-code
   #:get-type-code-impl
   #:get-type-from-clsid
   #:get-type-from-handle
   #:get-type-from-prog-id
   #:get-type-handle
   #:has-element-type-impl
   #:invoke-member
   #:array-impl?
   #:assignable-from?
   #:assignable-to?
   #:by-ref-impl?
   #:com-object-impl?
   #:contextful-impl?
   #:enum-defined?
   #:equivalent-to?
   #:instance-of-type?
   #:marshal-by-ref-impl?
   #:pointer-impl?
   #:primitive-impl?
   #:subclass-of?
   #:value-type-impl?
   #:make-array-type
   #:make-by-ref-type
   #:make-generic-method-parameter
   #:make-pointer-type
   #:not=
   #:reflection-only-get-type
   #:to-string
   #:get-type-info
   #:get-runtime-event
   #:get-runtime-events
   #:get-runtime-field
   #:get-runtime-fields
   #:get-runtime-method
   #:get-runtime-methods
   #:get-runtime-properties
   #:get-runtime-property
  ))

;;; Source File: system-object.lisp
;;; C# Class: System.Object
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-object
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:equals
   #:equals*
   #:finalize
   #:get-hash-code
   #:get-type
   #:memberwise-clone
   #:reference-equals
   #:to-string
  ))

;;; Source File: system-single.lisp
;;; C# Class: System.Single
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-single
  (:use :cl)
  (:shadow
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:abs
   #:acos
   #:acosh
   #:asin
   #:asinh
   #:atan
   #:atanh
   #:ceiling
   #:cos
   #:cosh
   #:exp
   #:floor
   #:log
   #:max
   #:min
   #:round
   #:sin
   #:sinh
   #:sqrt
   #:tan
   #:tanh
   #:truncate
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+e+
   #:+epsilon+
   #:+max-value+
   #:+min-value+
   #:+nan+
   #:+negative-infinity+
   #:+negative-zero+
   #:+pi+
   #:+positive-infinity+
   #:+tau+
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:abs
   #:acos
   #:acosh
   #:acos-pi
   #:asin
   #:asinh
   #:asin-pi
   #:atan
   #:atan2
   #:atan2-pi
   #:atanh
   #:atan-pi
   #:bit-decrement
   #:bit-increment
   #:cbrt
   #:ceiling
   #:clamp
   #:clamp-native
   #:compare-to
   #:convert-to-integer
   #:convert-to-integer-native
   #:copy-sign
   #:cos
   #:cosh
   #:cos-pi
   #:create-checked
   #:create-saturating
   #:create-truncating
   #:degrees-to-radians
   #:equals
   #:exp
   #:exp10
   #:exp10-m1
   #:exp2
   #:exp2-m1
   #:exp-m1
   #:floor
   #:fused-multiply-add
   #:get-hash-code
   #:get-type-code
   #:hypot
   #:ieee754-remainder
   #:i-log-b
   #:even-integer?
   #:finite?
   #:infinity?
   #:integer?
   #:nan?
   #:negative?
   #:negative-infinity?
   #:normal?
   #:odd-integer?
   #:positive?
   #:positive-infinity?
   #:pow2?
   #:real-number?
   #:subnormal?
   #:lerp
   #:log
   #:log10
   #:log10-p1
   #:log2
   #:log2-p1
   #:log-p1
   #:max
   #:max-magnitude
   #:max-magnitude-number
   #:max-native
   #:max-number
   #:min
   #:min-magnitude
   #:min-magnitude-number
   #:min-native
   #:min-number
   #:multiply-add-estimate
   #:not=
   #:parse
   #:pow
   #:radians-to-degrees
   #:reciprocal-estimate
   #:reciprocal-sqrt-estimate
   #:root-n
   #:round
   #:scale-b
   #:sign
   #:sin
   #:sin-cos
   #:sin-cos-pi
   #:sinh
   #:sin-pi
   #:sqrt
   #:tan
   #:tanh
   #:tan-pi
   #:to-string
   #:truncate
   #:try-format
   #:try-parse
  ))

;;; Source File: system-double.lisp
;;; C# Class: System.Double
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-double
  (:use :cl)
  (:shadow
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:abs
   #:acos
   #:acosh
   #:asin
   #:asinh
   #:atan
   #:atanh
   #:ceiling
   #:cos
   #:cosh
   #:exp
   #:floor
   #:log
   #:max
   #:min
   #:round
   #:sin
   #:sinh
   #:sqrt
   #:tan
   #:tanh
   #:truncate
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+e+
   #:+epsilon+
   #:+max-value+
   #:+min-value+
   #:+nan+
   #:+negative-infinity+
   #:+negative-zero+
   #:+pi+
   #:+positive-infinity+
   #:+tau+
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:abs
   #:acos
   #:acosh
   #:acos-pi
   #:asin
   #:asinh
   #:asin-pi
   #:atan
   #:atan2
   #:atan2-pi
   #:atanh
   #:atan-pi
   #:bit-decrement
   #:bit-increment
   #:cbrt
   #:ceiling
   #:clamp
   #:clamp-native
   #:compare-to
   #:convert-to-integer
   #:convert-to-integer-native
   #:copy-sign
   #:cos
   #:cosh
   #:cos-pi
   #:create-checked
   #:create-saturating
   #:create-truncating
   #:degrees-to-radians
   #:equals
   #:exp
   #:exp10
   #:exp10-m1
   #:exp2
   #:exp2-m1
   #:exp-m1
   #:floor
   #:fused-multiply-add
   #:get-hash-code
   #:get-type-code
   #:hypot
   #:ieee754-remainder
   #:i-log-b
   #:even-integer?
   #:finite?
   #:infinity?
   #:integer?
   #:nan?
   #:negative?
   #:negative-infinity?
   #:normal?
   #:odd-integer?
   #:positive?
   #:positive-infinity?
   #:pow2?
   #:real-number?
   #:subnormal?
   #:lerp
   #:log
   #:log10
   #:log10-p1
   #:log2
   #:log2-p1
   #:log-p1
   #:max
   #:max-magnitude
   #:max-magnitude-number
   #:max-native
   #:max-number
   #:min
   #:min-magnitude
   #:min-magnitude-number
   #:min-native
   #:min-number
   #:multiply-add-estimate
   #:not=
   #:parse
   #:pow
   #:radians-to-degrees
   #:reciprocal-estimate
   #:reciprocal-sqrt-estimate
   #:root-n
   #:round
   #:scale-b
   #:sign
   #:sin
   #:sin-cos
   #:sin-cos-pi
   #:sinh
   #:sin-pi
   #:sqrt
   #:tan
   #:tanh
   #:tan-pi
   #:to-string
   #:truncate
   #:try-format
   #:try-parse
  ))

;;; Source File: system-reflection-member-info.lisp
;;; C# Class: System.Reflection.MemberInfo
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-reflection-member-info
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:custom-attributes
   #:declaring-type
   #:collectible?
   #:member-type
   #:metadata-token
   #:module
   #:name
   #:reflected-type
   #:=
   #:equals
   #:get-custom-attributes
   #:get-custom-attributes-data
   #:get-hash-code
   #:has-same-metadata-definition-as
   #:defined?
   #:not=
  ))

;;; Source File: system-collections-generic-i-collection-1.lisp
;;; C# Class: System.Collections.Generic.ICollection`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-generic-i-collection-1
  (:use :cl)
  (:shadow
   #:count
   #:remove
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:count
   #:read-only?
   #:add
   #:clear
   #:contains
   #:copy-to
   #:remove
  ))

;;; Source File: system-collections-generic-i-enumerable-1.lisp
;;; C# Class: System.Collections.Generic.IEnumerable`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-generic-i-enumerable-1
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-enumerator
  ))

;;; Source File: system-collections-generic-i-list-1.lisp
;;; C# Class: System.Collections.Generic.IList`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-generic-i-list-1
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:item
   #:index-of
   #:insert
   #:remove-at
  ))

;;; Source File: system-collections-generic-i-read-only-collection-1.lisp
;;; C# Class: System.Collections.Generic.IReadOnlyCollection`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-generic-i-read-only-collection-1
  (:use :cl)
  (:shadow
   #:count
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:count
  ))

;;; Source File: system-collections-generic-i-read-only-list-1.lisp
;;; C# Class: System.Collections.Generic.IReadOnlyList`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-generic-i-read-only-list-1
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:item
  ))

;;; Source File: system-collections-i-collection.lisp
;;; C# Class: System.Collections.ICollection
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-i-collection
  (:use :cl)
  (:shadow
   #:count
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:count
   #:synchronized?
   #:sync-root
   #:copy-to
  ))

;;; Source File: system-collections-i-enumerable.lisp
;;; C# Class: System.Collections.IEnumerable
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-i-enumerable
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-enumerator
  ))

;;; Source File: system-collections-i-list.lisp
;;; C# Class: System.Collections.IList
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-i-list
  (:use :cl)
  (:shadow
   #:remove
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:fixed-size?
   #:read-only?
   #:item
   #:add
   #:clear
   #:contains
   #:index-of
   #:insert
   #:remove
   #:remove-at
  ))

;;; Source File: system-collections-object-model-collection-1.lisp
;;; C# Class: System.Collections.ObjectModel.Collection`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Collections.GraphicalUiElementCollection
(cl:defpackage :system-collections-object-model-collection-1
  (:use :cl)
  (:shadow
   #:count
   #:remove
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:count
   #:item
   #:items
   #:add
   #:clear
   #:clear-items
   #:contains
   #:copy-to
   #:get-enumerator
   #:index-of
   #:insert
   #:insert-item
   #:remove
   #:remove-at
   #:remove-item
   #:set-item
  ))

;;; Source File: microsoft-xna-framework-vector2.lisp
;;; C# Class: Microsoft.Xna.Framework.Vector2
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-vector2
  (:use :cl)
  (:shadow
   #:-
   #:*
   #:/
   #:+
   #:=
   #:ceiling
   #:floor
   #:length
   #:max
   #:min
   #:round
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:x
   #:y
   #:+one+
   #:+unit-x+
   #:+unit-y+
   #:+zero+
   #:-
   #:*
   #:/
   #:+
   #:=
   #:add
   #:barycentric
   #:catmull-rom
   #:ceiling
   #:ceiling*
   #:clamp
   #:distance
   #:distance-squared
   #:divide
   #:dot
   #:equals
   #:floor
   #:floor*
   #:get-hash-code
   #:hermite
   #:implicit-cast
   #:length
   #:length-squared
   #:lerp
   #:lerp-precise
   #:max
   #:min
   #:multiply
   #:negate
   #:normalize
   #:normalize*
   #:not=
   #:reflect
   #:rotate
   #:rotate*
   #:rotate-around
   #:rotate-around*
   #:round
   #:round*
   #:smooth-step
   #:subtract
   #:to-numerics
   #:to-point
   #:to-string
   #:transform
   #:transform-normal
   #:deconstruct
   #:to-system-numerics
  ))

;;; Source File: microsoft-xna-framework-rectangle.lisp
;;; C# Class: Microsoft.Xna.Framework.Rectangle
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-rectangle
  (:use :cl)
  (:shadow
   #:=
   #:union
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:height
   #:width
   #:x
   #:y
   #:+empty+
   #:bottom
   #:center
   #:empty?
   #:left
   #:location
   #:right
   #:size
   #:top
   #:=
   #:contains
   #:equals
   #:get-hash-code
   #:inflate
   #:intersect
   #:intersects
   #:not=
   #:offset
   #:to-string
   #:union
   #:deconstruct
   #:to-system-drawing
  ))

;;; Source File: microsoft-xna-framework-point.lisp
;;; C# Class: Microsoft.Xna.Framework.Point
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-point
  (:use :cl)
  (:shadow
   #:-
   #:*
   #:/
   #:+
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:x
   #:y
   #:+zero+
   #:-
   #:*
   #:/
   #:+
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
   #:to-vector2
   #:deconstruct
  ))

;;; Source File: microsoft-xna-framework-game-time.lisp
;;; C# Class: Microsoft.Xna.Framework.GameTime
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-game-time
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:elapsed-game-time
   #:running-slowly?
   #:total-game-time
  ))

;;; Source File: microsoft-xna-framework-game.lisp
;;; C# Class: Microsoft.Xna.Framework.Game
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-game
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:components
   #:content
   #:graphics-device
   #:inactive-sleep-time
   #:active?
   #:fixed-time-step?
   #:mouse-visible?
   #:launch-parameters
   #:max-elapsed-time
   #:services
   #:target-elapsed-time
   #:window
   #:begin-draw
   #:begin-run
   #:dispose
   #:draw
   #:end-draw
   #:end-run
   #:exit
   #:finalize
   #:initialize
   #:load-content
   #:on-activated
   #:on-deactivated
   #:on-exiting
   #:reset-elapsed-time
   #:run
   #:run-one-frame
   #:suppress-draw
   #:tick
   #:unload-content
   #:update
   #:add-activated
   #:remove-activated
   #:add-deactivated
   #:remove-deactivated
   #:add-disposed
   #:remove-disposed
   #:add-exiting
   #:remove-exiting
  ))

;;; Source File: microsoft-xna-framework-game-window.lisp
;;; C# Class: Microsoft.Xna.Framework.GameWindow
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-game-window
  (:use :cl)
  (:shadow
   #:position
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:allow-alt-f4
   #:allow-user-resizing
   #:client-bounds
   #:current-orientation
   #:handle
   #:borderless?
   #:position
   #:screen-device-name
   #:title
   #:begin-screen-device-change
   #:end-screen-device-change
   #:on-activated
   #:on-deactivated
   #:on-orientation-changed
   #:on-paint
   #:on-screen-device-name-changed
   #:set-supported-orientations
   #:set-title
   #:add-client-size-changed
   #:remove-client-size-changed
   #:add-file-drop
   #:remove-file-drop
   #:add-key-down
   #:remove-key-down
   #:add-key-up
   #:remove-key-up
   #:add-orientation-changed
   #:remove-orientation-changed
   #:add-screen-device-name-changed
   #:remove-screen-device-name-changed
   #:add-text-input
   #:remove-text-input
  ))

;;; Source File: microsoft-xna-framework-input-keyboard.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-keyboard
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-state
  ))

;;; Source File: microsoft-xna-framework-input-keyboard-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.KeyboardState
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-keyboard-state
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:caps-lock
   #:item
   #:num-lock
   #:=
   #:equals
   #:get-hash-code
   #:get-pressed-key-count
   #:get-pressed-keys
   #:key-down?
   #:key-up?
   #:not=
  ))

;;; Source File: microsoft-xna-framework-input-keys.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Keys
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-keys
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+a+
   #:+add+
   #:+apps+
   #:+attn+
   #:+b+
   #:+back+
   #:+browser-back+
   #:+browser-favorites+
   #:+browser-forward+
   #:+browser-home+
   #:+browser-refresh+
   #:+browser-search+
   #:+browser-stop+
   #:+c+
   #:+caps-lock+
   #:+chat-pad-green+
   #:+chat-pad-orange+
   #:+crsel+
   #:+d+
   #:+d0+
   #:+d1+
   #:+d2+
   #:+d3+
   #:+d4+
   #:+d5+
   #:+d6+
   #:+d7+
   #:+d8+
   #:+d9+
   #:+decimal+
   #:+delete+
   #:+divide+
   #:+down+
   #:+e+
   #:+end+
   #:+enter+
   #:+erase-eof+
   #:+escape+
   #:+execute+
   #:+exsel+
   #:+f+
   #:+f1+
   #:+f10+
   #:+f11+
   #:+f12+
   #:+f13+
   #:+f14+
   #:+f15+
   #:+f16+
   #:+f17+
   #:+f18+
   #:+f19+
   #:+f2+
   #:+f20+
   #:+f21+
   #:+f22+
   #:+f23+
   #:+f24+
   #:+f3+
   #:+f4+
   #:+f5+
   #:+f6+
   #:+f7+
   #:+f8+
   #:+f9+
   #:+g+
   #:+h+
   #:+help+
   #:+home+
   #:+i+
   #:+ime-convert+
   #:+ime-no-convert+
   #:+insert+
   #:+j+
   #:+k+
   #:+kana+
   #:+kanji+
   #:+l+
   #:+launch-application1+
   #:+launch-application2+
   #:+launch-mail+
   #:+left+
   #:+left-alt+
   #:+left-control+
   #:+left-shift+
   #:+left-windows+
   #:+m+
   #:+media-next-track+
   #:+media-play-pause+
   #:+media-previous-track+
   #:+media-stop+
   #:+multiply+
   #:+n+
   #:+none+
   #:+num-lock+
   #:+num-pad0+
   #:+num-pad1+
   #:+num-pad2+
   #:+num-pad3+
   #:+num-pad4+
   #:+num-pad5+
   #:+num-pad6+
   #:+num-pad7+
   #:+num-pad8+
   #:+num-pad9+
   #:+o+
   #:+oem8+
   #:+oem-auto+
   #:+oem-backslash+
   #:+oem-clear+
   #:+oem-close-brackets+
   #:+oem-comma+
   #:+oem-copy+
   #:+oem-enl-w+
   #:+oem-minus+
   #:+oem-open-brackets+
   #:+oem-period+
   #:+oem-pipe+
   #:+oem-plus+
   #:+oem-question+
   #:+oem-quotes+
   #:+oem-semicolon+
   #:+oem-tilde+
   #:+p+
   #:+pa1+
   #:+page-down+
   #:+page-up+
   #:+pause+
   #:+play+
   #:+print+
   #:+print-screen+
   #:+process-key+
   #:+q+
   #:+r+
   #:+right+
   #:+right-alt+
   #:+right-control+
   #:+right-shift+
   #:+right-windows+
   #:+s+
   #:+scroll+
   #:+select+
   #:+select-media+
   #:+separator+
   #:+sleep+
   #:+space+
   #:+subtract+
   #:+t+
   #:+tab+
   #:+u+
   #:+up+
   #:+v+
   #:+volume-down+
   #:+volume-mute+
   #:+volume-up+
   #:+w+
   #:+x+
   #:+y+
   #:+z+
   #:+zoom+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-input-mouse.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Mouse
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-mouse
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:window-handle
   #:get-state
   #:set-cursor
   #:set-position
  ))

;;; Source File: microsoft-xna-framework-input-mouse-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.MouseState
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-mouse-state
  (:use :cl)
  (:shadow
   #:position
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:horizontal-scroll-wheel-value
   #:left-button
   #:middle-button
   #:position
   #:right-button
   #:scroll-wheel-value
   #:x
   #:x-button1
   #:x-button2
   #:y
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

;;; Source File: microsoft-xna-framework-input-button-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.ButtonState
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-button-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+pressed+
   #:+released+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-input-game-pad.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.GamePad
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-game-pad
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:maximum-game-pad-count
   #:get-capabilities
   #:get-state
   #:set-vibration
  ))

;;; Source File: microsoft-xna-framework-input-game-pad-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.GamePadState
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-game-pad-state
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:default
   #:buttons
   #:d-pad
   #:connected?
   #:packet-number
   #:thumb-sticks
   #:triggers
   #:=
   #:equals
   #:get-hash-code
   #:button-down?
   #:button-up?
   #:not=
   #:to-string
  ))

;;; Source File: microsoft-xna-framework-input-game-pad-d-pad.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.GamePadDPad
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-game-pad-d-pad
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:down
   #:left
   #:right
   #:up
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

;;; Source File: microsoft-xna-framework-input-game-pad-thumb-sticks.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.GamePadThumbSticks
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-game-pad-thumb-sticks
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:left
   #:right
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

;;; Source File: microsoft-xna-framework-input-game-pad-triggers.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.GamePadTriggers
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-game-pad-triggers
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:left
   #:right
   #:=
   #:equals
   #:get-hash-code
   #:not=
   #:to-string
  ))

;;; Source File: microsoft-xna-framework-input-buttons.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Buttons
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-buttons
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+a+
   #:+b+
   #:+back+
   #:+big-button+
   #:+d-pad-down+
   #:+d-pad-left+
   #:+d-pad-right+
   #:+d-pad-up+
   #:+left-shoulder+
   #:+left-stick+
   #:+left-thumbstick-down+
   #:+left-thumbstick-left+
   #:+left-thumbstick-right+
   #:+left-thumbstick-up+
   #:+left-trigger+
   #:+none+
   #:+right-shoulder+
   #:+right-stick+
   #:+right-thumbstick-down+
   #:+right-thumbstick-left+
   #:+right-thumbstick-right+
   #:+right-thumbstick-up+
   #:+right-trigger+
   #:+start+
   #:+x+
   #:+y+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-input-touch-touch-panel.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.TouchPanel
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-touch-touch-panel
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:gesture-available?
   #:display-height
   #:display-orientation
   #:display-width
   #:enabled-gestures
   #:enable-high-frequency-touch
   #:enable-mouse-gestures
   #:enable-mouse-touch-point
   #:window-handle
   #:get-capabilities
   #:get-state
   #:read-gesture
  ))

;;; Source File: microsoft-xna-framework-input-touch-touch-collection.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.TouchCollection
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-touch-touch-collection
  (:use :cl)
  (:shadow
   #:count
   #:remove
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:count
   #:connected?
   #:read-only?
   #:item
   #:add
   #:clear
   #:contains
   #:copy-to
   #:get-enumerator
   #:index-of
   #:insert
   #:remove
   #:remove-at
   #:find-by-id
  ))

;;; Source File: microsoft-xna-framework-input-touch-touch-location.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.TouchLocation
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-touch-touch-location
  (:use :cl)
  (:shadow
   #:position
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:id
   #:position
   #:pressure
   #:state
   #:=
   #:equals
   #:get-hash-code
   #:high-frequency-event?
   #:not=
   #:to-string
   #:try-get-previous-location
  ))

;;; Source File: microsoft-xna-framework-input-touch-gesture-sample.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.GestureSample
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-input-touch-gesture-sample
  (:use :cl)
  (:shadow
   #:position
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:delta
   #:delta2
   #:gesture-type
   #:position
   #:position2
   #:timestamp
  ))

;;; Source File: microsoft-xna-framework-color.lisp
;;; C# Class: Microsoft.Xna.Framework.Color
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-color
  (:use :cl)
  (:shadow
   #:*
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+alice-blue+
   #:+antique-white+
   #:+aqua+
   #:+aquamarine+
   #:+azure+
   #:+beige+
   #:+bisque+
   #:+black+
   #:+blanched-almond+
   #:+blue+
   #:+blue-violet+
   #:+brown+
   #:+burly-wood+
   #:+cadet-blue+
   #:+chartreuse+
   #:+chocolate+
   #:+coral+
   #:+cornflower-blue+
   #:+cornsilk+
   #:+crimson+
   #:+cyan+
   #:+dark-blue+
   #:+dark-cyan+
   #:+dark-goldenrod+
   #:+dark-gray+
   #:+dark-green+
   #:+dark-khaki+
   #:+dark-magenta+
   #:+dark-olive-green+
   #:+dark-orange+
   #:+dark-orchid+
   #:+dark-red+
   #:+dark-salmon+
   #:+dark-sea-green+
   #:+dark-slate-blue+
   #:+dark-slate-gray+
   #:+dark-turquoise+
   #:+dark-violet+
   #:+deep-pink+
   #:+deep-sky-blue+
   #:+dim-gray+
   #:+dodger-blue+
   #:+firebrick+
   #:+floral-white+
   #:+forest-green+
   #:+fuchsia+
   #:+gainsboro+
   #:+ghost-white+
   #:+gold+
   #:+goldenrod+
   #:+gray+
   #:+green+
   #:+green-yellow+
   #:+honeydew+
   #:+hot-pink+
   #:+indian-red+
   #:+indigo+
   #:+ivory+
   #:+khaki+
   #:+lavender+
   #:+lavender-blush+
   #:+lawn-green+
   #:+lemon-chiffon+
   #:+light-blue+
   #:+light-coral+
   #:+light-cyan+
   #:+light-goldenrod-yellow+
   #:+light-gray+
   #:+light-green+
   #:+light-pink+
   #:+light-salmon+
   #:+light-sea-green+
   #:+light-sky-blue+
   #:+light-slate-gray+
   #:+light-steel-blue+
   #:+light-yellow+
   #:+lime+
   #:+lime-green+
   #:+linen+
   #:+magenta+
   #:+maroon+
   #:+medium-aquamarine+
   #:+medium-blue+
   #:+medium-orchid+
   #:+medium-purple+
   #:+medium-sea-green+
   #:+medium-slate-blue+
   #:+medium-spring-green+
   #:+medium-turquoise+
   #:+medium-violet-red+
   #:+midnight-blue+
   #:+mint-cream+
   #:+misty-rose+
   #:+moccasin+
   #:+mono-game-orange+
   #:+navajo-white+
   #:+navy+
   #:+old-lace+
   #:+olive+
   #:+olive-drab+
   #:+orange+
   #:+orange-red+
   #:+orchid+
   #:+pale-goldenrod+
   #:+pale-green+
   #:+pale-turquoise+
   #:+pale-violet-red+
   #:+papaya-whip+
   #:+peach-puff+
   #:+peru+
   #:+pink+
   #:+plum+
   #:+powder-blue+
   #:+purple+
   #:+red+
   #:+rosy-brown+
   #:+royal-blue+
   #:+saddle-brown+
   #:+salmon+
   #:+sandy-brown+
   #:+sea-green+
   #:+sea-shell+
   #:+sienna+
   #:+silver+
   #:+sky-blue+
   #:+slate-blue+
   #:+slate-gray+
   #:+snow+
   #:+spring-green+
   #:+steel-blue+
   #:+tan+
   #:+teal+
   #:+thistle+
   #:+tomato+
   #:+transparent+
   #:+turquoise+
   #:+violet+
   #:+wheat+
   #:+white+
   #:+white-smoke+
   #:+yellow+
   #:+yellow-green+
   #:a
   #:b
   #:g
   #:packed-value
   #:r
   #:*
   #:=
   #:equals
   #:from-hsl
   #:from-hsv
   #:from-non-premultiplied
   #:get-hash-code
   #:implicit-cast
   #:lerp
   #:lerp-precise
   #:multiply
   #:multiply-alpha
   #:not=
   #:to-string
   #:to-vector3
   #:to-vector4
   #:deconstruct
   #:to-hsl
   #:to-hsv
   #:adjust
   #:to-grayscale
   #:to-system-drawing
  ))

;;; Source File: microsoft-xna-framework-content-content-manager.lisp
;;; C# Class: Microsoft.Xna.Framework.Content.ContentManager
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-content-content-manager
  (:use :cl)
  (:shadow
   #:load
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:loaded-assets
   #:root-directory
   #:service-provider
   #:dispose
   #:finalize
   #:load
   #:load-localized
   #:open-stream
   #:read-asset
   #:reload-asset
   #:reload-graphics-assets
   #:unload
   #:unload-asset
   #:unload-assets
  ))

;;; Source File: microsoft-xna-framework-graphics-device-manager.lisp
;;; C# Class: Microsoft.Xna.Framework.GraphicsDeviceManager
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-device-manager
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:default-back-buffer-height
   #:default-back-buffer-width
   #:graphics-device
   #:graphics-profile
   #:hardware-mode-switch
   #:full-screen?
   #:prefer-half-pixel-offset
   #:prefer-multi-sampling
   #:preferred-back-buffer-format
   #:preferred-back-buffer-height
   #:preferred-back-buffer-width
   #:preferred-depth-stencil-format
   #:supported-orientations
   #:synchronize-with-vertical-retrace
   #:apply-changes
   #:begin-draw
   #:dispose
   #:end-draw
   #:finalize
   #:on-device-created
   #:on-device-disposing
   #:on-device-reset
   #:on-device-resetting
   #:toggle-full-screen
   #:add-device-created
   #:remove-device-created
   #:add-device-disposing
   #:remove-device-disposing
   #:add-device-reset
   #:remove-device-reset
   #:add-device-resetting
   #:remove-device-resetting
   #:add-disposed
   #:remove-disposed
   #:add-preparing-device-settings
   #:remove-preparing-device-settings
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-effects.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteEffects
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-sprite-effects
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+flip-horizontally+
   #:+flip-vertically+
   #:+none+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-sort-mode.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteSortMode
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-sprite-sort-mode
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+back-to-front+
   #:+deferred+
   #:+front-to-back+
   #:+immediate+
   #:+texture+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-graphics-sampler-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SamplerState
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-sampler-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+anisotropic-clamp+
   #:+anisotropic-wrap+
   #:+linear-clamp+
   #:+linear-wrap+
   #:+point-clamp+
   #:+point-wrap+
   #:address-u
   #:address-v
   #:address-w
   #:border-color
   #:comparison-function
   #:filter
   #:filter-mode
   #:max-anisotropy
   #:max-mip-level
   #:mip-map-level-of-detail-bias
   #:dispose
  ))

;;; Source File: microsoft-xna-framework-graphics-graphics-device.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.GraphicsDevice
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-graphics-device
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:discard-color
   #:adapter
   #:blend-factor
   #:blend-state
   #:depth-stencil-state
   #:display-mode
   #:graphics-debug
   #:graphics-device-status
   #:graphics-profile
   #:indices
   #:content-lost?
   #:disposed?
   #:metrics
   #:presentation-parameters
   #:rasterizer-state
   #:render-target-count
   #:resources-lost
   #:sampler-states
   #:scissor-rectangle
   #:textures
   #:use-half-pixel-offset
   #:vertex-sampler-states
   #:vertex-textures
   #:viewport
   #:clear
   #:dispose
   #:draw-indexed-primitives
   #:draw-instanced-primitives
   #:draw-primitives
   #:draw-user-indexed-primitives
   #:draw-user-primitives
   #:finalize
   #:get-back-buffer-data
   #:get-render-targets
   #:present
   #:reset
   #:set-render-target
   #:set-vertex-buffer
   #:add-device-lost
   #:remove-device-lost
   #:add-device-reset
   #:remove-device-reset
   #:add-device-resetting
   #:remove-device-resetting
   #:add-disposing
   #:remove-disposing
   #:add-resource-created
   #:remove-resource-created
   #:add-resource-destroyed
   #:remove-resource-destroyed
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-batch.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteBatch
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-sprite-batch
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:begin
   #:dispose
   #:draw
   #:draw-string
   #:end
  ))

;;; Source File: microsoft-xna-framework-graphics-texture2-d.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.Texture2D
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-texture2-d
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:bounds
   #:height
   #:width
   #:from-file
   #:from-stream
   #:get-data
   #:reload
   #:save-as-jpeg
   #:save-as-png
   #:set-data
  ))

;;; Source File: microsoft-xna-framework-graphics-viewport.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.Viewport
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-viewport
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:aspect-ratio
   #:bounds
   #:height
   #:max-depth
   #:min-depth
   #:title-safe-area
   #:width
   #:x
   #:y
   #:project
   #:to-string
   #:unproject
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-font.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteFont
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-sprite-font
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:characters
   #:default-character
   #:glyphs
   #:line-spacing
   #:spacing
   #:texture
   #:get-glyphs
   #:measure-string
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-font-glyph.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-sprite-font-glyph
  (:use :cl)
  (:shadow
   #:character
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:empty
   #:bounds-in-texture
   #:character
   #:cropping
   #:left-side-bearing
   #:right-side-bearing
   #:width
   #:width-including-bearings
   #:to-string
  ))

;;; Source File: microsoft-xna-framework-graphics-presentation-parameters.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.PresentationParameters
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-graphics-presentation-parameters
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+default-present-rate+
   #:back-buffer-format
   #:back-buffer-height
   #:back-buffer-width
   #:bounds
   #:depth-stencil-format
   #:device-window-handle
   #:display-orientation
   #:hardware-mode-switch
   #:full-screen?
   #:multi-sample-count
   #:presentation-interval
   #:render-target-usage
   #:clear
   #:clone
  ))

;;; Source File: microsoft-xna-framework-player-index.lisp
;;; C# Class: Microsoft.Xna.Framework.PlayerIndex
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-player-index
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+eight+
   #:+five+
   #:+four+
   #:+one+
   #:+seven+
   #:+six+
   #:+three+
   #:+two+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-audio-sound-effect.lisp
;;; C# Class: Microsoft.Xna.Framework.Audio.SoundEffect
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-audio-sound-effect
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:distance-scale
   #:doppler-scale
   #:master-volume
   #:speed-of-sound
   #:duration
   #:disposed?
   #:name
   #:create-instance
   #:dispose
   #:finalize
   #:from-file
   #:from-stream
   #:get-sample-duration
   #:get-sample-size-in-bytes
   #:initialize
   #:play
  ))

;;; Source File: microsoft-xna-framework-audio-sound-effect-instance.lisp
;;; C# Class: Microsoft.Xna.Framework.Audio.SoundEffectInstance
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-audio-sound-effect-instance
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:disposed?
   #:looped?
   #:pan
   #:pitch
   #:state
   #:volume
   #:apply3-d
   #:dispose
   #:finalize
   #:pause
   #:play
   #:resume
   #:stop
  ))

;;; Source File: microsoft-xna-framework-audio-sound-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Audio.SoundState
;;; Constant Properties: *
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-audio-sound-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+paused+
   #:+playing+
   #:+stopped+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-media-song.lisp
;;; C# Class: Microsoft.Xna.Framework.Media.Song
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-media-song
  (:use :cl)
  (:shadow
   #:position
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:album
   #:artist
   #:duration
   #:genre
   #:disposed?
   #:protected?
   #:rated?
   #:name
   #:play-count
   #:position
   #:rating
   #:track-number
   #:=
   #:dispose
   #:equals
   #:finalize
   #:from-uri
   #:get-hash-code
   #:not=
  ))

;;; Source File: microsoft-xna-framework-media-media-player.lisp
;;; C# Class: Microsoft.Xna.Framework.Media.MediaPlayer
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-media-media-player
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:game-has-control
   #:visualization-enabled?
   #:play-position
   #:queue
   #:state
   #:muted?
   #:repeating?
   #:shuffled?
   #:volume
   #:move-next
   #:move-previous
   #:pause
   #:play
   #:resume
   #:stop
  ))

;;; Source File: microsoft-xna-framework-media-media-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Media.MediaState
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :microsoft-xna-framework-media-media-state
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+paused+
   #:+playing+
   #:+stopped+
   #:value__
  ))

;;; Source File: gum-wireframe-anchor.lisp
;;; C# Class: Gum.Wireframe.Anchor
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :gum-wireframe-anchor
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+bottom+
   #:+bottom-left+
   #:+bottom-right+
   #:+center+
   #:+center-horizontally+
   #:+center-vertically+
   #:+left+
   #:+right+
   #:+top+
   #:+top-left+
   #:+top-right+
   #:value__
  ))

;;; Source File: gum-wireframe-dock.lisp
;;; C# Class: Gum.Wireframe.Dock
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :gum-wireframe-dock
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+bottom+
   #:+fill+
   #:+fill-horizontally+
   #:+fill-vertically+
   #:+left+
   #:+right+
   #:+size-to-children+
   #:+top+
   #:value__
  ))

;;; Source File: rendering-library-content-i-content-loader.lisp
;;; C# Class: RenderingLibrary.Content.IContentLoader
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :rendering-library-content-i-content-loader
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:load-content
   #:try-load-content
  ))

;;; Source File: rendering-library-camera.lisp
;;; C# Class: RenderingLibrary.Camera
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :rendering-library-camera
  (:use :cl)
  (:shadow
   #:position
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:position
   #:pixel-perfect-offset-x
   #:pixel-perfect-offset-y
   #:absolute-bottom
   #:absolute-left
   #:absolute-right
   #:absolute-top
   #:camera-center-on-screen
   #:client-height
   #:client-left
   #:client-top
   #:client-width
   #:rendering-x-offset
   #:rendering-y-offset
   #:x
   #:y
   #:zoom
   #:get-transformation-matrix
   #:get-transformation-matrix*
   #:screen-to-world
   #:world-to-screen
   #:get-scissor-rectangle-for
  ))

;;; Source File: gum-collections-graphical-ui-element-collection.lisp
;;; C# Class: Gum.Collections.GraphicalUiElementCollection
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
(cl:defpackage :gum-collections-graphical-ui-element-collection
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:empty
   #:read-only?
   #:clear-items
   #:insert-item
   #:move-item
   #:remove-item
   #:set-item
  ))

;;; Source File: rendering-library-graphics-observable-collection-no-reset-1.lisp
;;; C# Class: RenderingLibrary.Graphics.ObservableCollectionNoReset`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :rendering-library-graphics-observable-collection-no-reset-1
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:clear-items
   #:on-collection-changed
  ))

;;; Source File: gum-wireframe-i-input-receiver.lisp
;;; C# Class: Gum.Wireframe.IInputReceiver
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Forms.Controls.Button
(cl:defpackage :gum-wireframe-i-input-receiver
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:parent-input-receiver
   #:do-keyboard-action
   #:on-focus-update
   #:on-focus-update-preview
   #:on-gain-focus
   #:on-lose-focus
  ))

;;; Source File: gum-wireframe-interactive-gue.lisp
;;; C# Class: Gum.Wireframe.InteractiveGue
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from MonoGameGum.GueDeriving.ContainerRuntime
(cl:defpackage :gum-wireframe-interactive-gue
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:current-game-time
   #:current-input-receiver
   #:last-visual-pushed
   #:expose-children-events
   #:forms-control-as-object
   #:has-events
   #:enabled?
   #:enabled-recursively?
   #:outside-of-bounds-hit-testing-enabled?
   #:raise-children-events-outside-of-bounds
   #:add-next-click-action
   #:add-next-push-action
   #:call-click
   #:call-right-click
   #:clear-next-click-actions
   #:has-cursor-over
   #:in-parent-chain?
   #:over-children?
   #:remove-from-managers
   #:to-string
   #:try-call-dragging
   #:try-call-hover-over
   #:try-call-push
   #:try-call-remove-as-pushed
   #:try-call-roll-off
   #:try-call-roll-on
   #:try-call-roll-over
   #:add-click
   #:remove-click
   #:add-click-preview
   #:remove-click-preview
   #:add-double-click
   #:remove-double-click
   #:add-dragging
   #:remove-dragging
   #:add-enabled-change
   #:remove-enabled-change
   #:add-hover-over
   #:remove-hover-over
   #:add-lose-push
   #:remove-lose-push
   #:add-mouse-wheel-scroll
   #:remove-mouse-wheel-scroll
   #:add-push
   #:remove-push
   #:add-push-preview
   #:remove-push-preview
   #:add-removed-as-pushed
   #:remove-removed-as-pushed
   #:add-right-click
   #:remove-right-click
   #:add-roll-off
   #:remove-roll-off
   #:add-roll-on
   #:remove-roll-on
   #:add-roll-over
   #:remove-roll-over
   #:add-roll-over-bubbling
   #:remove-roll-over-bubbling
  ))

;;; Source File: rendering-library-graphics-i-renderable.lisp
;;; C# Class: RenderingLibrary.Graphics.IRenderable
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from MonoGameGum.GueDeriving.ContainerRuntime
(cl:defpackage :rendering-library-graphics-i-renderable
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:batch-key
   #:blend-state
   #:wrap
   #:end-batch
   #:pre-render
   #:render
   #:start-batch
  ))

;;; Source File: rendering-library-graphics-i-renderable-ipso.lisp
;;; C# Class: RenderingLibrary.Graphics.IRenderableIpso
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from MonoGameGum.GueDeriving.ContainerRuntime
(cl:defpackage :rendering-library-graphics-i-renderable-ipso
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:alpha
   #:children
   #:clips-children
   #:color-operation
   #:render-target?
   #:parent
   #:set-parent-direct
   #:in-render-target-recursively?
   #:get-absolute-bottom
   #:get-absolute-center-x
   #:get-absolute-center-y
   #:get-absolute-flip-horizontal
   #:get-absolute-left
   #:get-absolute-right
   #:get-absolute-rotation-matrix
   #:get-absolute-top
   #:get-absolute-x
   #:get-absolute-y
   #:get-rotation-matrix
   #:get-top-parent
   #:has-cursor-over
  ))

;;; Source File: rendering-library-graphics-i-visible.lisp
;;; C# Class: RenderingLibrary.Graphics.IVisible
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from MonoGameGum.GueDeriving.ContainerRuntime
(cl:defpackage :rendering-library-graphics-i-visible
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:absolute-visible
   #:parent
   #:visible
   #:get-absolute-visible
  ))

;;; Source File: rendering-library-i-positioned-sized-object.lisp
;;; C# Class: RenderingLibrary.IPositionedSizedObject
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from MonoGameGum.GueDeriving.ContainerRuntime
(cl:defpackage :rendering-library-i-positioned-sized-object
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:flip-horizontal
   #:height
   #:name
   #:rotation
   #:tag
   #:width
   #:x
   #:y
   #:z
   #:get-position
   #:set-position
  ))

;;; Source File: gum-wireframe-graphical-ui-element.lisp
;;; C# Class: Gum.Wireframe.GraphicalUiElement
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from MonoGameGum.GueDeriving.ContainerRuntime
(cl:defpackage :gum-wireframe-graphical-ui-element
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:add-renderable-to-managers
   #:apply-markup
   #:children-updating-parent-layout-calls
   #:clone-renderable-function
   #:get-type-call-count
   #:global-font-scale
   #:all-layout-suspended?
   #:property-unsubscribe-call-count
   #:remove-renderable-from-managers
   #:save-forms-runtime-properties-action
   #:set-property-on-renderable
   #:show-line-rectangles
   #:throw-exceptions-for-missing-files
   #:update-font-from-properties
   #:update-forms-state-action
   #:update-layout-call-count
   #:are-updates-applied-when-invisible
   #:canvas-height
   #:canvas-width
   #:missing-file-behavior
   #:absolute-bottom
   #:absolute-left
   #:absolute-right
   #:absolute-top
   #:absolute-visible
   #:absolute-x
   #:absolute-y
   #:animation-controller
   #:animations
   #:auto-grid-horizontal-cells
   #:auto-grid-vertical-cells
   #:batch-key
   #:binding-context
   #:binding-context-binding
   #:binding-context-binding-property-owner
   #:categories
   #:children
   #:children-layout
   #:clips-children
   #:component
   #:contained-elements
   #:effective-managers
   #:effective-parent-gue
   #:element-gue-containing-this
   #:element-save
   #:explicit-i-visible-parent
   #:flip-horizontal
   #:height
   #:height-units
   #:ignored-by-parent-size
   #:font-dirty?
   #:fully-created?
   #:layout-suspended?
   #:outside-of-bounds-hit-testing-enabled?
   #:render-target?
   #:layer
   #:managers
   #:max-height
   #:max-width
   #:min-height
   #:min-width
   #:name
   #:parent
   #:parent-gue
   #:renderable-component
   #:rotation
   #:stacked-row-or-column-dimensions
   #:stacked-row-or-column-index
   #:stack-spacing
   #:states
   #:tag
   #:text-overflow-vertical-mode
   #:texture-address
   #:texture-height
   #:texture-height-scale
   #:texture-left
   #:texture-top
   #:texture-width
   #:texture-width-scale
   #:use-fixed-stack-children-size
   #:visible
   #:what-this-contains
   #:width
   #:width-units
   #:wrap
   #:wraps-children
   #:x
   #:x-origin
   #:x-units
   #:y
   #:y-origin
   #:y-units
   #:z
   #:add-category
   #:add-child
   #:add-exposed-variable
   #:add-states
   #:add-to-managers
   #:after-full-creation
   #:anchor
   #:animate-self
   #:apply-state
   #:apply-state-recursive
   #:clear-dirty-layout-state
   #:clear-managers
   #:clone
   #:convert-value
   #:create-children-recursively
   #:dock
   #:end-batch
   #:fill-list-with-children-by-type-recursively
   #:get-absolute-height
   #:get-absolute-width
   #:get-anchor
   #:get-child-by-name
   #:get-child-by-name-recursively
   #:get-child-by-type
   #:get-child-by-type-recursively
   #:get-dock
   #:get-graphical-ui-element-by-name
   #:get-if-dimensions-depend-on-children
   #:get-parent-by-name-recursively
   #:get-parent-by-type-recursively
   #:interpolate-between
   #:exposed-variable?
   #:point-inside?
   #:move-to-layer
   #:notify-property-changed
   #:play-animation
   #:pre-render
   #:push-value-to-view-model
   #:refresh-styles
   #:refresh-text-overflow-vertical-mode
   #:remove-child
   #:remove-from-managers
   #:render
   #:resume-layout
   #:set-binding
   #:set-contained-object
   #:set-gue-values
   #:set-initial-state
   #:set-property
   #:set-property-through-reflection
   #:start-batch
   #:stop-animation
   #:suspend-layout
   #:to-string
   #:update-font-recursive
   #:update-height
   #:update-layout
   #:update-texture-values-from
   #:update-to-font-values
   #:update-width
   #:get-parent-offsets
   #:add-binding-context-changed
   #:remove-binding-context-changed
   #:add-inherited-binding-context-changed
   #:remove-inherited-binding-context-changed
   #:add-parent-changed
   #:remove-parent-changed
   #:add-position-changed
   #:remove-position-changed
   #:add-property-changed
   #:remove-property-changed
   #:add-size-changed
   #:remove-size-changed
   #:add-visible-changed
   #:remove-visible-changed
   #:do-ui-activity-recursively
   #:add-exposed-variables-recursively
   #:add-states-and-categories-recursively-to-gue
   #:apply-variable-references
   #:create-graphical-component
   #:set-states-and-categories-recursively
   #:set-variables-recursively
   #:export-layout-json
   #:to-layout-json
   #:add-to-root
   #:remove-from-root
  ))

;;; Source File: mono-game-gum-gum-service.lisp
;;; C# Class: MonoGameGum.GumService
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :mono-game-gum-gum-service
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:default
   #:canvas-height
   #:canvas-width
   #:content-loader
   #:cursor
   #:deferred-queue
   #:game
   #:gamepads
   #:game-time
   #:initialized?
   #:keyboard
   #:last-load-result
   #:localization-service
   #:modal-root
   #:popup-root
   #:renderer
   #:root
   #:synchronization-context
   #:system-managers
   #:draw
   #:enable-hot-reload
   #:initialize
   #:initialize-for-testing
   #:load-animations
   #:refresh-styles
   #:uninitialize
   #:update
   #:use-gamepad-defaults
   #:use-keyboard-defaults
   #:use-single-threaded-async
   #:add-hot-reload-completed
   #:remove-hot-reload-completed
  ))

;;; Source File: gum-forms-controls-framework-element.lisp
;;; C# Class: Gum.Forms.Controls.FrameworkElement
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :gum-forms-controls-framework-element
  (:use :cl)
  (:shadow
   #:close
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+disabled-focused-state+
   #:+disabled-focused-state-name+
   #:+disabled-state+
   #:+disabled-state-name+
   #:+enabled-state+
   #:+enabled-state-name+
   #:+focused-state+
   #:+focused-state-name+
   #:+highlighted-focused-state+
   #:+highlighted-focused-state-name+
   #:+highlighted-state+
   #:+highlighted-state-name+
   #:+horizontal-state-name+
   #:+pushed-state+
   #:+pushed-state-name+
   #:+selected-highlighted-state-name+
   #:+selected-state-name+
   #:+vertical-state-name+
   #:default-forms-components
   #:default-forms-templates
   #:game-pads-for-ui-control
   #:keyboards-for-ui-control
   #:click-combos
   #:main-cursor
   #:main-keyboard
   #:modal-root
   #:popup-root
   #:tab-key-combos
   #:tab-reverse-key-combos
   #:absolute-left
   #:absolute-top
   #:actual-height
   #:actual-width
   #:binding-context
   #:custom-cursor
   #:gamepad-tabbing-focus-behavior
   #:height
   #:height-units
   #:enabled?
   #:focused?
   #:tab-navigation-enabled?
   #:using-left-and-right-gamepad-directions-for-navigation?
   #:visible?
   #:max-height
   #:max-width
   #:min-height
   #:min-width
   #:name
   #:parent-framework-element
   #:tool-tip
   #:visual
   #:width
   #:width-units
   #:x
   #:x-origin
   #:x-units
   #:y
   #:y-origin
   #:y-units
   #:add-child
   #:anchor
   #:apply-runtime-properties
   #:call-loaded
   #:clear-binding
   #:close
   #:dock
   #:get-desired-state
   #:get-desired-state-with-checked
   #:get-graphical-ui-element-for
   #:get-graphical-ui-element-for-framework-element
   #:get-if-gamepad-or-keyboard-primary-push-input-is-held
   #:get-if-is-on-this-or-child-visual
   #:get-if-push-input-is-held
   #:get-state
   #:get-visual
   #:get-visual<>
   #:handle-gamepad-navigation
   #:handle-keyboard-focus-update
   #:handle-tab
   #:handle-tab*
   #:handle-visual-binding-context-changed
   #:data-bound?
   #:on-binding-context-changed
   #:on-property-changed
   #:push-value-to-view-model
   #:raise-key-down
   #:react-to-visual-changed
   #:react-to-visual-removed
   #:refresh-internal-visual-references
   #:register-runtime-property
   #:register-runtime-property<>
   #:remove-child
   #:reposition-to-keep-in-screen
   #:save-runtime-properties
   #:set-binding
   #:show
   #:to-string
   #:update-state
   #:update-state-recursively
   #:add-after-refresh-styles
   #:remove-after-refresh-styles
   #:add-before-refresh-styles
   #:remove-before-refresh-styles
   #:add-binding-context-changed
   #:remove-binding-context-changed
   #:add-got-focus
   #:remove-got-focus
   #:add-key-down
   #:remove-key-down
   #:add-loaded
   #:remove-loaded
   #:add-lost-focus
   #:remove-lost-focus
   #:add-property-changed
   #:remove-property-changed
   #:add-tool-tip-closing
   #:remove-tool-tip-closing
   #:add-tool-tip-opening
   #:remove-tool-tip-opening
   #:get-framework-element
   #:get-parent-input-receiver
   #:remove-from-root
   #:add-to-root
  ))

;;; Source File: gum-forms-controls-panel.lisp
;;; C# Class: Gum.Forms.Controls.Panel
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
(cl:defpackage :gum-forms-controls-panel
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:children
   #:react-to-visual-changed
  ))

;;; Source File: gum-forms-controls-button.lisp
;;; C# Class: Gum.Forms.Controls.Button
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
(cl:defpackage :gum-forms-controls-button
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+button-category-name+
   #:text
   #:apply-runtime-properties
   #:react-to-visual-changed
   #:refresh-internal-visual-references
   #:save-runtime-properties
   #:set-text-no-translate
   #:update-state
  ))

;;; Source File: gum-forms-controls-primitives-button-base.lisp
;;; C# Class: Gum.Forms.Controls.Primitives.ButtonBase
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :gum-forms-controls-primitives-button-base
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:click-gamepad-button
   #:ignored-keys
   #:focused?
   #:next-in-tab-sequence
   #:parent-input-receiver
   #:taking-input
   #:do-keyboard-action
   #:get-if-push-input-is-held
   #:handle-char-entered
   #:handle-key-down
   #:lose-focus
   #:on-click
   #:on-focus-update
   #:on-focus-update-preview
   #:on-gain-focus
   #:on-lose-focus
   #:perform-click
   #:react-to-visual-changed
   #:receive-input
   #:add-click
   #:remove-click
   #:add-controller-button-pushed
   #:remove-controller-button-pushed
   #:add-focus-update
   #:remove-focus-update
   #:add-push
   #:remove-push
  ))

;;; Source File: mono-game-gum-gue-deriving-text-runtime.lisp
;;; C# Class: MonoGameGum.GueDeriving.TextRuntime
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :mono-game-gum-gue-deriving-text-runtime
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:default-height
   #:default-height-units
   #:default-width
   #:default-width-units
   #:assign-font-in-constructor
   #:default-custom-font
   #:default-font
   #:default-font-size
   #:alpha
   #:bitmap-font
   #:blend
   #:blend-state
   #:blue
   #:color
   #:custom-font-file
   #:font
   #:font-family
   #:font-scale
   #:font-size
   #:green
   #:horizontal-alignment
   #:bold?
   #:italic?
   #:line-height-multiplier
   #:max-letters-to-show
   #:max-number-of-lines
   #:outline-thickness
   #:overlap-direction
   #:red
   #:text
   #:text-overflow-horizontal-mode
   #:text-rendering-position-mode
   #:use-custom-font
   #:use-font-smoothing
   #:vertical-alignment
   #:wrapped-text
   #:add-to-managers
   #:clone
   #:get-character-index-at-position
   #:set-text-no-translate
  ))

;;; Source File: gum-forms-controls-label.lisp
;;; C# Class: Gum.Forms.Controls.Label
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
(cl:defpackage :gum-forms-controls-label
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:text
   #:text-component
   #:apply-runtime-properties
   #:react-to-visual-changed
   #:refresh-internal-visual-references
   #:save-runtime-properties
   #:set-text-no-translate
  ))

;;; Source File: gum-forms-controls-slider.lisp
;;; C# Class: Gum.Forms.Controls.Slider
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
(cl:defpackage :gum-forms-controls-slider
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:+slider-category-name+
   #:ignored-keys
   #:snap-to-tick-enabled?
   #:thumb-grabbed?
   #:next-in-tab-sequence
   #:parent-input-receiver
   #:taking-input
   #:ticks-frequency
   #:apply-runtime-properties
   #:do-keyboard-action
   #:handle-char-entered
   #:handle-key-down
   #:handle-thumb-push
   #:lose-focus
   #:on-focus-update
   #:on-focus-update-preview
   #:on-gain-focus
   #:on-lose-focus
   #:on-maximum-changed
   #:on-minimum-changed
   #:on-value-changed
   #:react-to-visual-changed
   #:react-to-visual-removed
   #:receive-input
   #:update-state
   #:update-thumb-position-to-cursor-drag
   #:add-controller-button-pushed
   #:remove-controller-button-pushed
   #:add-focus-update
   #:remove-focus-update
  ))

;;; Source File: gum-forms-default-visuals-version.lisp
;;; C# Class: Gum.Forms.DefaultVisualsVersion
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :gum-forms-default-visuals-version
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+newest+
   #:+v1+
   #:+v2+
   #:+v3+
   #:value__
  ))

;;; Source File: rendering-library-content-content-loader.lisp
;;; C# Class: RenderingLibrary.Content.ContentLoader
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :rendering-library-content-content-loader
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:system-managers
   #:xna-content-manager
   #:load-content
   #:standardize-case-sensitive
   #:try-load-content
  ))

;;; Source File: gum-forms-controls-key-combo.lisp
;;; C# Class: Gum.Forms.Controls.KeyCombo
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :gum-forms-controls-key-combo
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:held-key
   #:triggered-on-repeat?
   #:pushed-key
   #:combo-down?
   #:combo-pushed?
   #:combo-released?
  ))

;;; Source File: rendering-library-graphics-renderer.lisp
;;; C# Class: RenderingLibrary.Graphics.Renderer
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :rendering-library-graphics-renderer
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:single-pixel-source-rectangle
   #:lock-object
   #:render-using-hierarchy
   #:custom-effect-manager
   #:self
   #:using-effect
   #:apply-camera-zoom-on-world-translation
   #:linearize-textures
   #:normal-blend-state
   #:texture-filter
   #:use-basic-effect-rendering
   #:use-custom-effect-rendering
   #:camera
   #:dotted-line-texture
   #:graphics-device
   #:using-premultiplied-alpha?
   #:layers
   #:main-layer
   #:single-pixel-texture
   #:sprite-renderer
   #:add-layer
   #:begin
   #:clear-performance-recording-variables
   #:draw
   #:end
   #:equals
   #:force-end
   #:initialize
   #:insert-layer
   #:remove-layer
   #:remove-renderable
   #:try-get-single-pixel-texture
   #:uninitialize
  ))

;;; Source File: mono-game-gum-graphical-ui-element-extension-methods.lisp
;;; C# Class: MonoGameGum.GraphicalUiElementExtensionMethods
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :mono-game-gum-graphical-ui-element-extension-methods
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:add-child
   #:add-to-root
   #:remove-from-root
  ))

;;; Source File: mono-game-gum-gue-deriving-container-runtime.lisp
;;; C# Class: MonoGameGum.GueDeriving.ContainerRuntime
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
(cl:defpackage :mono-game-gum-gue-deriving-container-runtime
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:alpha
   #:batch-key
   #:blend
   #:blend-state
   #:render-target?
   #:add-to-managers
  ))

;;; Source File: gum-forms-controls-primitives-range-base.lisp
;;; C# Class: Gum.Forms.Controls.Primitives.RangeBase
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic --export-interfaces --export-parents
;;; Discovered via: --export-parents/--export-interfaces from Gum.Forms.Controls.Slider
(cl:defpackage :gum-forms-controls-primitives-range-base
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:enabled?
   #:move-to-point-enabled?
   #:large-change
   #:maximum
   #:minimum
   #:orientation
   #:small-change
   #:track
   #:value
   #:apply-value-considering-snapping
   #:get-current-sign-relative-to-value
   #:handle-thumb-push
   #:on-maximum-changed
   #:on-minimum-changed
   #:on-value-changed
   #:raise-value-change-completed
   #:raise-value-changed-by-ui
   #:react-to-visual-changed
   #:react-to-visual-removed
   #:refresh-internal-visual-references
   #:update-thumb-position-to-cursor-drag
   #:add-orientation-changed
   #:remove-orientation-changed
   #:add-value-change-completed
   #:remove-value-change-completed
   #:add-value-changed
   #:remove-value-changed
   #:add-value-changed-by-ui
   #:remove-value-changed-by-ui
  ))

;;; Source File: system-collections-generic-list-1.lisp
;;; C# Class: System.Collections.Generic.List`1
;;; Constant Properties: (none)
;;; Options: --defgeneric --ensure-type-in-generic
(cl:defpackage :system-collections-generic-list-1
  (:use :cl)
  (:shadow
   #:count
   #:find
   #:remove
   #:reverse
   #:sort
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:capacity
   #:count
   #:item
   #:add
   #:add-range
   #:as-read-only
   #:binary-search
   #:clear
   #:contains
   #:convert-all
   #:copy-to
   #:ensure-capacity
   #:exists
   #:find
   #:find-all
   #:find-index
   #:find-last
   #:find-last-index
   #:for-each
   #:get-enumerator
   #:get-range
   #:index-of
   #:insert
   #:insert-range
   #:last-index-of
   #:remove
   #:remove-all
   #:remove-at
   #:remove-range
   #:reverse
   #:slice
   #:sort
   #:to-array
   #:trim-excess
   #:true-for-all
  ))

;;; ===== Re-exports from parent/interface packages =====

;;; system-collections-object-model-observable-collection-1: re-exports inherited members from system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-generic-i-enumerable-1, system-collections-generic-i-list-1, system-collections-generic-i-read-only-collection-1, system-collections-generic-i-read-only-list-1, system-collections-i-collection, system-collections-i-enumerable, system-collections-i-list, system-collections-specialized-i-notify-collection-changed, system-component-model-i-notify-property-changed
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-generic-i-read-only-collection-1, system-collections-i-collection): count
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-list-1, system-collections-generic-i-read-only-list-1, system-collections-i-list): item
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-i-list): add
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-i-list): clear
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): clear-items
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-i-list): contains
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-i-collection): copy-to
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-enumerable-1, system-collections-i-enumerable): get-enumerator
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-list-1, system-collections-i-list): index-of
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-list-1, system-collections-i-list): insert
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): insert-item
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-collection-1, system-collections-i-list): remove
;;; Skipped (ambiguous across ancestors: system-collections-object-model-collection-1, system-collections-generic-i-list-1, system-collections-i-list): remove-at
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): remove-item
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): set-item
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-list): read-only?
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): add-collection-changed
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): remove-collection-changed
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): add-property-changed
;;; Skipped (system-collections-object-model-observable-collection-1 declares its own): remove-property-changed
(cl:import '(system-collections-object-model-collection-1::items system-collections-i-collection::synchronized? system-collections-i-collection::sync-root system-collections-i-list::fixed-size?) ':system-collections-object-model-observable-collection-1)
(cl:export '(system-collections-object-model-observable-collection-1::items system-collections-object-model-observable-collection-1::synchronized? system-collections-object-model-observable-collection-1::sync-root system-collections-object-model-observable-collection-1::fixed-size?) ':system-collections-object-model-observable-collection-1)

;;; system-collections-generic-i-collection-1: re-exports inherited members from system-collections-generic-i-enumerable-1, system-collections-i-enumerable
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-enumerable-1, system-collections-i-enumerable): get-enumerator

;;; system-collections-generic-i-enumerable-1: re-exports inherited members from system-collections-i-enumerable
;;; Skipped (system-collections-generic-i-enumerable-1 declares its own): get-enumerator

;;; system-collections-generic-i-list-1: re-exports inherited members from system-collections-generic-i-collection-1, system-collections-generic-i-enumerable-1, system-collections-i-enumerable
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-enumerable-1, system-collections-i-enumerable): get-enumerator
(cl:shadowing-import '(system-collections-generic-i-collection-1::count system-collections-generic-i-collection-1::remove) ':system-collections-generic-i-list-1)
(cl:import '(system-collections-generic-i-collection-1::read-only? system-collections-generic-i-collection-1::add system-collections-generic-i-collection-1::clear system-collections-generic-i-collection-1::contains system-collections-generic-i-collection-1::copy-to) ':system-collections-generic-i-list-1)
(cl:export '(system-collections-generic-i-list-1::count system-collections-generic-i-list-1::read-only? system-collections-generic-i-list-1::add system-collections-generic-i-list-1::clear system-collections-generic-i-list-1::contains system-collections-generic-i-list-1::copy-to system-collections-generic-i-list-1::remove) ':system-collections-generic-i-list-1)

;;; system-collections-generic-i-read-only-collection-1: re-exports inherited members from system-collections-generic-i-enumerable-1, system-collections-i-enumerable
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-enumerable-1, system-collections-i-enumerable): get-enumerator

;;; system-collections-generic-i-read-only-list-1: re-exports inherited members from system-collections-generic-i-enumerable-1, system-collections-generic-i-read-only-collection-1, system-collections-i-enumerable
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-enumerable-1, system-collections-i-enumerable): get-enumerator
(cl:shadowing-import '(system-collections-generic-i-read-only-collection-1::count) ':system-collections-generic-i-read-only-list-1)
(cl:export '(system-collections-generic-i-read-only-list-1::count) ':system-collections-generic-i-read-only-list-1)

;;; system-collections-i-collection: re-exports inherited members from system-collections-i-enumerable
(cl:import '(system-collections-i-enumerable::get-enumerator) ':system-collections-i-collection)
(cl:export '(system-collections-i-collection::get-enumerator) ':system-collections-i-collection)

;;; system-collections-i-list: re-exports inherited members from system-collections-i-collection, system-collections-i-enumerable
(cl:shadowing-import '(system-collections-i-collection::count) ':system-collections-i-list)
(cl:import '(system-collections-i-collection::synchronized? system-collections-i-collection::sync-root system-collections-i-collection::copy-to system-collections-i-enumerable::get-enumerator) ':system-collections-i-list)
(cl:export '(system-collections-i-list::count system-collections-i-list::synchronized? system-collections-i-list::sync-root system-collections-i-list::copy-to system-collections-i-list::get-enumerator) ':system-collections-i-list)

;;; system-collections-object-model-collection-1: re-exports inherited members from system-collections-generic-i-collection-1, system-collections-generic-i-enumerable-1, system-collections-generic-i-list-1, system-collections-generic-i-read-only-collection-1, system-collections-generic-i-read-only-list-1, system-collections-i-collection, system-collections-i-enumerable, system-collections-i-list
;;; Skipped (system-collections-object-model-collection-1 declares its own): count
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-list): read-only?
;;; Skipped (system-collections-object-model-collection-1 declares its own): add
;;; Skipped (system-collections-object-model-collection-1 declares its own): clear
;;; Skipped (system-collections-object-model-collection-1 declares its own): contains
;;; Skipped (system-collections-object-model-collection-1 declares its own): copy-to
;;; Skipped (system-collections-object-model-collection-1 declares its own): remove
;;; Skipped (system-collections-object-model-collection-1 declares its own): get-enumerator
;;; Skipped (system-collections-object-model-collection-1 declares its own): item
;;; Skipped (system-collections-object-model-collection-1 declares its own): index-of
;;; Skipped (system-collections-object-model-collection-1 declares its own): insert
;;; Skipped (system-collections-object-model-collection-1 declares its own): remove-at
(cl:import '(system-collections-i-collection::synchronized? system-collections-i-collection::sync-root system-collections-i-list::fixed-size?) ':system-collections-object-model-collection-1)
(cl:export '(system-collections-object-model-collection-1::synchronized? system-collections-object-model-collection-1::sync-root system-collections-object-model-collection-1::fixed-size?) ':system-collections-object-model-collection-1)

;;; gum-collections-graphical-ui-element-collection: re-exports inherited members from rendering-library-graphics-observable-collection-no-reset-1, system-collections-generic-i-collection-1, system-collections-generic-i-enumerable-1, system-collections-generic-i-list-1, system-collections-generic-i-read-only-collection-1, system-collections-generic-i-read-only-list-1, system-collections-i-collection, system-collections-i-enumerable, system-collections-i-list, system-collections-specialized-i-notify-collection-changed, system-component-model-i-notify-property-changed, system-collections-object-model-observable-collection-1, system-collections-object-model-collection-1
;;; Skipped (gum-collections-graphical-ui-element-collection declares its own): clear-items
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-observable-collection-no-reset-1, system-collections-object-model-observable-collection-1): on-collection-changed
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-generic-i-read-only-collection-1, system-collections-i-collection, system-collections-object-model-collection-1): count
;;; Skipped (gum-collections-graphical-ui-element-collection declares its own): read-only?
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-list, system-collections-object-model-collection-1): add
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-list, system-collections-object-model-collection-1): clear
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-list, system-collections-object-model-collection-1): contains
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-collection, system-collections-object-model-collection-1): copy-to
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-collection-1, system-collections-i-list, system-collections-object-model-collection-1): remove
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-enumerable-1, system-collections-i-enumerable, system-collections-object-model-collection-1): get-enumerator
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-list-1, system-collections-generic-i-read-only-list-1, system-collections-i-list, system-collections-object-model-collection-1): item
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-list-1, system-collections-i-list, system-collections-object-model-collection-1): index-of
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-list-1, system-collections-i-list, system-collections-object-model-collection-1): insert
;;; Skipped (ambiguous across ancestors: system-collections-generic-i-list-1, system-collections-i-list, system-collections-object-model-collection-1): remove-at
;;; Skipped (ambiguous across ancestors: system-collections-specialized-i-notify-collection-changed, system-collections-object-model-observable-collection-1): add-collection-changed
;;; Skipped (ambiguous across ancestors: system-collections-specialized-i-notify-collection-changed, system-collections-object-model-observable-collection-1): remove-collection-changed
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, system-collections-object-model-observable-collection-1): add-property-changed
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, system-collections-object-model-observable-collection-1): remove-property-changed
;;; Skipped (gum-collections-graphical-ui-element-collection declares its own): insert-item
;;; Skipped (gum-collections-graphical-ui-element-collection declares its own): move-item
;;; Skipped (gum-collections-graphical-ui-element-collection declares its own): remove-item
;;; Skipped (gum-collections-graphical-ui-element-collection declares its own): set-item
(cl:import '(system-collections-i-collection::synchronized? system-collections-i-collection::sync-root system-collections-i-list::fixed-size? system-collections-object-model-observable-collection-1::block-reentrancy system-collections-object-model-observable-collection-1::check-reentrancy system-collections-object-model-observable-collection-1::move system-collections-object-model-observable-collection-1::on-property-changed system-collections-object-model-collection-1::items) ':gum-collections-graphical-ui-element-collection)
(cl:export '(gum-collections-graphical-ui-element-collection::synchronized? gum-collections-graphical-ui-element-collection::sync-root gum-collections-graphical-ui-element-collection::fixed-size? gum-collections-graphical-ui-element-collection::block-reentrancy gum-collections-graphical-ui-element-collection::check-reentrancy gum-collections-graphical-ui-element-collection::move gum-collections-graphical-ui-element-collection::on-property-changed gum-collections-graphical-ui-element-collection::items) ':gum-collections-graphical-ui-element-collection)

;;; gum-wireframe-interactive-gue: re-exports inherited members from gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable, rendering-library-graphics-i-renderable-ipso, rendering-library-graphics-i-visible, rendering-library-i-positioned-sized-object, system-component-model-i-notify-property-changed
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-visible): absolute-visible
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable): batch-key
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable-ipso): children
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable-ipso): clips-children
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): flip-horizontal
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): height
;;; Skipped (gum-wireframe-interactive-gue declares its own): outside-of-bounds-hit-testing-enabled?
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable-ipso): render-target?
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): name
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable-ipso, rendering-library-graphics-i-visible): parent
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): rotation
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): tag
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-visible): visible
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): width
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable): wrap
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): x
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): y
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-i-positioned-sized-object): z
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable): end-batch
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable): pre-render
;;; Skipped (gum-wireframe-interactive-gue declares its own): remove-from-managers
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable): render
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, rendering-library-graphics-i-renderable): start-batch
;;; Skipped (gum-wireframe-interactive-gue declares its own): to-string
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, system-component-model-i-notify-property-changed): add-property-changed
;;; Skipped (ambiguous across ancestors: gum-wireframe-graphical-ui-element, system-component-model-i-notify-property-changed): remove-property-changed
;;; Skipped (gum-wireframe-interactive-gue declares its own): has-cursor-over
(cl:import '(gum-wireframe-graphical-ui-element::add-renderable-to-managers gum-wireframe-graphical-ui-element::apply-markup gum-wireframe-graphical-ui-element::children-updating-parent-layout-calls gum-wireframe-graphical-ui-element::clone-renderable-function gum-wireframe-graphical-ui-element::get-type-call-count gum-wireframe-graphical-ui-element::global-font-scale gum-wireframe-graphical-ui-element::all-layout-suspended? gum-wireframe-graphical-ui-element::property-unsubscribe-call-count gum-wireframe-graphical-ui-element::remove-renderable-from-managers gum-wireframe-graphical-ui-element::save-forms-runtime-properties-action gum-wireframe-graphical-ui-element::set-property-on-renderable gum-wireframe-graphical-ui-element::show-line-rectangles gum-wireframe-graphical-ui-element::throw-exceptions-for-missing-files gum-wireframe-graphical-ui-element::update-font-from-properties gum-wireframe-graphical-ui-element::update-forms-state-action gum-wireframe-graphical-ui-element::update-layout-call-count gum-wireframe-graphical-ui-element::are-updates-applied-when-invisible gum-wireframe-graphical-ui-element::canvas-height gum-wireframe-graphical-ui-element::canvas-width gum-wireframe-graphical-ui-element::missing-file-behavior gum-wireframe-graphical-ui-element::absolute-bottom gum-wireframe-graphical-ui-element::absolute-left gum-wireframe-graphical-ui-element::absolute-right gum-wireframe-graphical-ui-element::absolute-top gum-wireframe-graphical-ui-element::absolute-x gum-wireframe-graphical-ui-element::absolute-y gum-wireframe-graphical-ui-element::animation-controller gum-wireframe-graphical-ui-element::animations gum-wireframe-graphical-ui-element::auto-grid-horizontal-cells gum-wireframe-graphical-ui-element::auto-grid-vertical-cells gum-wireframe-graphical-ui-element::binding-context gum-wireframe-graphical-ui-element::binding-context-binding gum-wireframe-graphical-ui-element::binding-context-binding-property-owner gum-wireframe-graphical-ui-element::categories gum-wireframe-graphical-ui-element::children-layout gum-wireframe-graphical-ui-element::component gum-wireframe-graphical-ui-element::contained-elements gum-wireframe-graphical-ui-element::effective-managers gum-wireframe-graphical-ui-element::effective-parent-gue gum-wireframe-graphical-ui-element::element-gue-containing-this gum-wireframe-graphical-ui-element::element-save gum-wireframe-graphical-ui-element::explicit-i-visible-parent gum-wireframe-graphical-ui-element::height-units gum-wireframe-graphical-ui-element::ignored-by-parent-size gum-wireframe-graphical-ui-element::font-dirty? gum-wireframe-graphical-ui-element::fully-created? gum-wireframe-graphical-ui-element::layout-suspended? gum-wireframe-graphical-ui-element::layer gum-wireframe-graphical-ui-element::managers gum-wireframe-graphical-ui-element::max-height gum-wireframe-graphical-ui-element::max-width gum-wireframe-graphical-ui-element::min-height gum-wireframe-graphical-ui-element::min-width gum-wireframe-graphical-ui-element::parent-gue gum-wireframe-graphical-ui-element::renderable-component gum-wireframe-graphical-ui-element::stacked-row-or-column-dimensions gum-wireframe-graphical-ui-element::stacked-row-or-column-index gum-wireframe-graphical-ui-element::stack-spacing gum-wireframe-graphical-ui-element::states gum-wireframe-graphical-ui-element::text-overflow-vertical-mode gum-wireframe-graphical-ui-element::texture-address gum-wireframe-graphical-ui-element::texture-height gum-wireframe-graphical-ui-element::texture-height-scale gum-wireframe-graphical-ui-element::texture-left gum-wireframe-graphical-ui-element::texture-top gum-wireframe-graphical-ui-element::texture-width gum-wireframe-graphical-ui-element::texture-width-scale gum-wireframe-graphical-ui-element::use-fixed-stack-children-size gum-wireframe-graphical-ui-element::what-this-contains gum-wireframe-graphical-ui-element::width-units gum-wireframe-graphical-ui-element::wraps-children gum-wireframe-graphical-ui-element::x-origin gum-wireframe-graphical-ui-element::x-units gum-wireframe-graphical-ui-element::y-origin gum-wireframe-graphical-ui-element::y-units gum-wireframe-graphical-ui-element::add-category gum-wireframe-graphical-ui-element::add-child gum-wireframe-graphical-ui-element::add-exposed-variable gum-wireframe-graphical-ui-element::add-states gum-wireframe-graphical-ui-element::add-to-managers gum-wireframe-graphical-ui-element::after-full-creation gum-wireframe-graphical-ui-element::anchor gum-wireframe-graphical-ui-element::animate-self gum-wireframe-graphical-ui-element::apply-state gum-wireframe-graphical-ui-element::apply-state-recursive gum-wireframe-graphical-ui-element::clear-dirty-layout-state gum-wireframe-graphical-ui-element::clear-managers gum-wireframe-graphical-ui-element::clone gum-wireframe-graphical-ui-element::convert-value gum-wireframe-graphical-ui-element::create-children-recursively gum-wireframe-graphical-ui-element::dock gum-wireframe-graphical-ui-element::fill-list-with-children-by-type-recursively gum-wireframe-graphical-ui-element::get-absolute-height gum-wireframe-graphical-ui-element::get-absolute-width gum-wireframe-graphical-ui-element::get-anchor gum-wireframe-graphical-ui-element::get-child-by-name gum-wireframe-graphical-ui-element::get-child-by-name-recursively gum-wireframe-graphical-ui-element::get-child-by-type gum-wireframe-graphical-ui-element::get-child-by-type-recursively gum-wireframe-graphical-ui-element::get-dock gum-wireframe-graphical-ui-element::get-graphical-ui-element-by-name gum-wireframe-graphical-ui-element::get-if-dimensions-depend-on-children gum-wireframe-graphical-ui-element::get-parent-by-name-recursively gum-wireframe-graphical-ui-element::get-parent-by-type-recursively gum-wireframe-graphical-ui-element::interpolate-between gum-wireframe-graphical-ui-element::exposed-variable? gum-wireframe-graphical-ui-element::point-inside? gum-wireframe-graphical-ui-element::move-to-layer gum-wireframe-graphical-ui-element::notify-property-changed gum-wireframe-graphical-ui-element::play-animation gum-wireframe-graphical-ui-element::push-value-to-view-model gum-wireframe-graphical-ui-element::refresh-styles gum-wireframe-graphical-ui-element::refresh-text-overflow-vertical-mode gum-wireframe-graphical-ui-element::remove-child gum-wireframe-graphical-ui-element::resume-layout gum-wireframe-graphical-ui-element::set-binding gum-wireframe-graphical-ui-element::set-contained-object gum-wireframe-graphical-ui-element::set-gue-values gum-wireframe-graphical-ui-element::set-initial-state gum-wireframe-graphical-ui-element::set-property gum-wireframe-graphical-ui-element::set-property-through-reflection gum-wireframe-graphical-ui-element::stop-animation gum-wireframe-graphical-ui-element::suspend-layout gum-wireframe-graphical-ui-element::update-font-recursive gum-wireframe-graphical-ui-element::update-height gum-wireframe-graphical-ui-element::update-layout gum-wireframe-graphical-ui-element::update-texture-values-from gum-wireframe-graphical-ui-element::update-to-font-values gum-wireframe-graphical-ui-element::update-width gum-wireframe-graphical-ui-element::get-parent-offsets gum-wireframe-graphical-ui-element::add-binding-context-changed gum-wireframe-graphical-ui-element::remove-binding-context-changed gum-wireframe-graphical-ui-element::add-inherited-binding-context-changed gum-wireframe-graphical-ui-element::remove-inherited-binding-context-changed gum-wireframe-graphical-ui-element::add-parent-changed gum-wireframe-graphical-ui-element::remove-parent-changed gum-wireframe-graphical-ui-element::add-position-changed gum-wireframe-graphical-ui-element::remove-position-changed gum-wireframe-graphical-ui-element::add-size-changed gum-wireframe-graphical-ui-element::remove-size-changed gum-wireframe-graphical-ui-element::add-visible-changed gum-wireframe-graphical-ui-element::remove-visible-changed gum-wireframe-graphical-ui-element::do-ui-activity-recursively gum-wireframe-graphical-ui-element::add-exposed-variables-recursively gum-wireframe-graphical-ui-element::add-states-and-categories-recursively-to-gue gum-wireframe-graphical-ui-element::apply-variable-references gum-wireframe-graphical-ui-element::create-graphical-component gum-wireframe-graphical-ui-element::set-states-and-categories-recursively gum-wireframe-graphical-ui-element::set-variables-recursively gum-wireframe-graphical-ui-element::export-layout-json gum-wireframe-graphical-ui-element::to-layout-json gum-wireframe-graphical-ui-element::add-to-root gum-wireframe-graphical-ui-element::remove-from-root rendering-library-graphics-i-renderable::blend-state rendering-library-graphics-i-renderable-ipso::alpha rendering-library-graphics-i-renderable-ipso::color-operation rendering-library-graphics-i-renderable-ipso::set-parent-direct rendering-library-graphics-i-renderable-ipso::in-render-target-recursively? rendering-library-graphics-i-renderable-ipso::get-absolute-bottom rendering-library-graphics-i-renderable-ipso::get-absolute-center-x rendering-library-graphics-i-renderable-ipso::get-absolute-center-y rendering-library-graphics-i-renderable-ipso::get-absolute-flip-horizontal rendering-library-graphics-i-renderable-ipso::get-absolute-left rendering-library-graphics-i-renderable-ipso::get-absolute-right rendering-library-graphics-i-renderable-ipso::get-absolute-rotation-matrix rendering-library-graphics-i-renderable-ipso::get-absolute-top rendering-library-graphics-i-renderable-ipso::get-absolute-x rendering-library-graphics-i-renderable-ipso::get-absolute-y rendering-library-graphics-i-renderable-ipso::get-rotation-matrix rendering-library-graphics-i-renderable-ipso::get-top-parent rendering-library-graphics-i-visible::get-absolute-visible rendering-library-i-positioned-sized-object::get-position rendering-library-i-positioned-sized-object::set-position) ':gum-wireframe-interactive-gue)
(cl:export '(gum-wireframe-interactive-gue::add-renderable-to-managers gum-wireframe-interactive-gue::apply-markup gum-wireframe-interactive-gue::children-updating-parent-layout-calls gum-wireframe-interactive-gue::clone-renderable-function gum-wireframe-interactive-gue::get-type-call-count gum-wireframe-interactive-gue::global-font-scale gum-wireframe-interactive-gue::all-layout-suspended? gum-wireframe-interactive-gue::property-unsubscribe-call-count gum-wireframe-interactive-gue::remove-renderable-from-managers gum-wireframe-interactive-gue::save-forms-runtime-properties-action gum-wireframe-interactive-gue::set-property-on-renderable gum-wireframe-interactive-gue::show-line-rectangles gum-wireframe-interactive-gue::throw-exceptions-for-missing-files gum-wireframe-interactive-gue::update-font-from-properties gum-wireframe-interactive-gue::update-forms-state-action gum-wireframe-interactive-gue::update-layout-call-count gum-wireframe-interactive-gue::are-updates-applied-when-invisible gum-wireframe-interactive-gue::canvas-height gum-wireframe-interactive-gue::canvas-width gum-wireframe-interactive-gue::missing-file-behavior gum-wireframe-interactive-gue::absolute-bottom gum-wireframe-interactive-gue::absolute-left gum-wireframe-interactive-gue::absolute-right gum-wireframe-interactive-gue::absolute-top gum-wireframe-interactive-gue::absolute-x gum-wireframe-interactive-gue::absolute-y gum-wireframe-interactive-gue::animation-controller gum-wireframe-interactive-gue::animations gum-wireframe-interactive-gue::auto-grid-horizontal-cells gum-wireframe-interactive-gue::auto-grid-vertical-cells gum-wireframe-interactive-gue::binding-context gum-wireframe-interactive-gue::binding-context-binding gum-wireframe-interactive-gue::binding-context-binding-property-owner gum-wireframe-interactive-gue::categories gum-wireframe-interactive-gue::children-layout gum-wireframe-interactive-gue::component gum-wireframe-interactive-gue::contained-elements gum-wireframe-interactive-gue::effective-managers gum-wireframe-interactive-gue::effective-parent-gue gum-wireframe-interactive-gue::element-gue-containing-this gum-wireframe-interactive-gue::element-save gum-wireframe-interactive-gue::explicit-i-visible-parent gum-wireframe-interactive-gue::height-units gum-wireframe-interactive-gue::ignored-by-parent-size gum-wireframe-interactive-gue::font-dirty? gum-wireframe-interactive-gue::fully-created? gum-wireframe-interactive-gue::layout-suspended? gum-wireframe-interactive-gue::layer gum-wireframe-interactive-gue::managers gum-wireframe-interactive-gue::max-height gum-wireframe-interactive-gue::max-width gum-wireframe-interactive-gue::min-height gum-wireframe-interactive-gue::min-width gum-wireframe-interactive-gue::parent-gue gum-wireframe-interactive-gue::renderable-component gum-wireframe-interactive-gue::stacked-row-or-column-dimensions gum-wireframe-interactive-gue::stacked-row-or-column-index gum-wireframe-interactive-gue::stack-spacing gum-wireframe-interactive-gue::states gum-wireframe-interactive-gue::text-overflow-vertical-mode gum-wireframe-interactive-gue::texture-address gum-wireframe-interactive-gue::texture-height gum-wireframe-interactive-gue::texture-height-scale gum-wireframe-interactive-gue::texture-left gum-wireframe-interactive-gue::texture-top gum-wireframe-interactive-gue::texture-width gum-wireframe-interactive-gue::texture-width-scale gum-wireframe-interactive-gue::use-fixed-stack-children-size gum-wireframe-interactive-gue::what-this-contains gum-wireframe-interactive-gue::width-units gum-wireframe-interactive-gue::wraps-children gum-wireframe-interactive-gue::x-origin gum-wireframe-interactive-gue::x-units gum-wireframe-interactive-gue::y-origin gum-wireframe-interactive-gue::y-units gum-wireframe-interactive-gue::add-category gum-wireframe-interactive-gue::add-child gum-wireframe-interactive-gue::add-exposed-variable gum-wireframe-interactive-gue::add-states gum-wireframe-interactive-gue::add-to-managers gum-wireframe-interactive-gue::after-full-creation gum-wireframe-interactive-gue::anchor gum-wireframe-interactive-gue::animate-self gum-wireframe-interactive-gue::apply-state gum-wireframe-interactive-gue::apply-state-recursive gum-wireframe-interactive-gue::clear-dirty-layout-state gum-wireframe-interactive-gue::clear-managers gum-wireframe-interactive-gue::clone gum-wireframe-interactive-gue::convert-value gum-wireframe-interactive-gue::create-children-recursively gum-wireframe-interactive-gue::dock gum-wireframe-interactive-gue::fill-list-with-children-by-type-recursively gum-wireframe-interactive-gue::get-absolute-height gum-wireframe-interactive-gue::get-absolute-width gum-wireframe-interactive-gue::get-anchor gum-wireframe-interactive-gue::get-child-by-name gum-wireframe-interactive-gue::get-child-by-name-recursively gum-wireframe-interactive-gue::get-child-by-type gum-wireframe-interactive-gue::get-child-by-type-recursively gum-wireframe-interactive-gue::get-dock gum-wireframe-interactive-gue::get-graphical-ui-element-by-name gum-wireframe-interactive-gue::get-if-dimensions-depend-on-children gum-wireframe-interactive-gue::get-parent-by-name-recursively gum-wireframe-interactive-gue::get-parent-by-type-recursively gum-wireframe-interactive-gue::interpolate-between gum-wireframe-interactive-gue::exposed-variable? gum-wireframe-interactive-gue::point-inside? gum-wireframe-interactive-gue::move-to-layer gum-wireframe-interactive-gue::notify-property-changed gum-wireframe-interactive-gue::play-animation gum-wireframe-interactive-gue::push-value-to-view-model gum-wireframe-interactive-gue::refresh-styles gum-wireframe-interactive-gue::refresh-text-overflow-vertical-mode gum-wireframe-interactive-gue::remove-child gum-wireframe-interactive-gue::resume-layout gum-wireframe-interactive-gue::set-binding gum-wireframe-interactive-gue::set-contained-object gum-wireframe-interactive-gue::set-gue-values gum-wireframe-interactive-gue::set-initial-state gum-wireframe-interactive-gue::set-property gum-wireframe-interactive-gue::set-property-through-reflection gum-wireframe-interactive-gue::stop-animation gum-wireframe-interactive-gue::suspend-layout gum-wireframe-interactive-gue::update-font-recursive gum-wireframe-interactive-gue::update-height gum-wireframe-interactive-gue::update-layout gum-wireframe-interactive-gue::update-texture-values-from gum-wireframe-interactive-gue::update-to-font-values gum-wireframe-interactive-gue::update-width gum-wireframe-interactive-gue::get-parent-offsets gum-wireframe-interactive-gue::add-binding-context-changed gum-wireframe-interactive-gue::remove-binding-context-changed gum-wireframe-interactive-gue::add-inherited-binding-context-changed gum-wireframe-interactive-gue::remove-inherited-binding-context-changed gum-wireframe-interactive-gue::add-parent-changed gum-wireframe-interactive-gue::remove-parent-changed gum-wireframe-interactive-gue::add-position-changed gum-wireframe-interactive-gue::remove-position-changed gum-wireframe-interactive-gue::add-size-changed gum-wireframe-interactive-gue::remove-size-changed gum-wireframe-interactive-gue::add-visible-changed gum-wireframe-interactive-gue::remove-visible-changed gum-wireframe-interactive-gue::do-ui-activity-recursively gum-wireframe-interactive-gue::add-exposed-variables-recursively gum-wireframe-interactive-gue::add-states-and-categories-recursively-to-gue gum-wireframe-interactive-gue::apply-variable-references gum-wireframe-interactive-gue::create-graphical-component gum-wireframe-interactive-gue::set-states-and-categories-recursively gum-wireframe-interactive-gue::set-variables-recursively gum-wireframe-interactive-gue::export-layout-json gum-wireframe-interactive-gue::to-layout-json gum-wireframe-interactive-gue::add-to-root gum-wireframe-interactive-gue::remove-from-root gum-wireframe-interactive-gue::blend-state gum-wireframe-interactive-gue::alpha gum-wireframe-interactive-gue::color-operation gum-wireframe-interactive-gue::set-parent-direct gum-wireframe-interactive-gue::in-render-target-recursively? gum-wireframe-interactive-gue::get-absolute-bottom gum-wireframe-interactive-gue::get-absolute-center-x gum-wireframe-interactive-gue::get-absolute-center-y gum-wireframe-interactive-gue::get-absolute-flip-horizontal gum-wireframe-interactive-gue::get-absolute-left gum-wireframe-interactive-gue::get-absolute-right gum-wireframe-interactive-gue::get-absolute-rotation-matrix gum-wireframe-interactive-gue::get-absolute-top gum-wireframe-interactive-gue::get-absolute-x gum-wireframe-interactive-gue::get-absolute-y gum-wireframe-interactive-gue::get-rotation-matrix gum-wireframe-interactive-gue::get-top-parent gum-wireframe-interactive-gue::get-absolute-visible gum-wireframe-interactive-gue::get-position gum-wireframe-interactive-gue::set-position) ':gum-wireframe-interactive-gue)

;;; rendering-library-graphics-i-renderable-ipso: re-exports inherited members from rendering-library-graphics-i-renderable, rendering-library-graphics-i-visible, rendering-library-i-positioned-sized-object
;;; Skipped (rendering-library-graphics-i-renderable-ipso declares its own): parent
(cl:import '(rendering-library-graphics-i-renderable::batch-key rendering-library-graphics-i-renderable::blend-state rendering-library-graphics-i-renderable::wrap rendering-library-graphics-i-renderable::end-batch rendering-library-graphics-i-renderable::pre-render rendering-library-graphics-i-renderable::render rendering-library-graphics-i-renderable::start-batch rendering-library-graphics-i-visible::absolute-visible rendering-library-graphics-i-visible::visible rendering-library-graphics-i-visible::get-absolute-visible rendering-library-i-positioned-sized-object::flip-horizontal rendering-library-i-positioned-sized-object::height rendering-library-i-positioned-sized-object::name rendering-library-i-positioned-sized-object::rotation rendering-library-i-positioned-sized-object::tag rendering-library-i-positioned-sized-object::width rendering-library-i-positioned-sized-object::x rendering-library-i-positioned-sized-object::y rendering-library-i-positioned-sized-object::z rendering-library-i-positioned-sized-object::get-position rendering-library-i-positioned-sized-object::set-position) ':rendering-library-graphics-i-renderable-ipso)
(cl:export '(rendering-library-graphics-i-renderable-ipso::batch-key rendering-library-graphics-i-renderable-ipso::blend-state rendering-library-graphics-i-renderable-ipso::wrap rendering-library-graphics-i-renderable-ipso::end-batch rendering-library-graphics-i-renderable-ipso::pre-render rendering-library-graphics-i-renderable-ipso::render rendering-library-graphics-i-renderable-ipso::start-batch rendering-library-graphics-i-renderable-ipso::absolute-visible rendering-library-graphics-i-renderable-ipso::visible rendering-library-graphics-i-renderable-ipso::get-absolute-visible rendering-library-graphics-i-renderable-ipso::flip-horizontal rendering-library-graphics-i-renderable-ipso::height rendering-library-graphics-i-renderable-ipso::name rendering-library-graphics-i-renderable-ipso::rotation rendering-library-graphics-i-renderable-ipso::tag rendering-library-graphics-i-renderable-ipso::width rendering-library-graphics-i-renderable-ipso::x rendering-library-graphics-i-renderable-ipso::y rendering-library-graphics-i-renderable-ipso::z rendering-library-graphics-i-renderable-ipso::get-position rendering-library-graphics-i-renderable-ipso::set-position) ':rendering-library-graphics-i-renderable-ipso)

;;; gum-wireframe-graphical-ui-element: re-exports inherited members from rendering-library-graphics-i-renderable, rendering-library-graphics-i-renderable-ipso, rendering-library-graphics-i-visible, rendering-library-i-positioned-sized-object, system-component-model-i-notify-property-changed
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): batch-key
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): wrap
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): end-batch
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): pre-render
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): render
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): start-batch
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): children
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): clips-children
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): render-target?
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): parent
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): absolute-visible
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): visible
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): flip-horizontal
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): height
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): name
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): rotation
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): tag
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): width
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): x
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): y
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): z
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): add-property-changed
;;; Skipped (gum-wireframe-graphical-ui-element declares its own): remove-property-changed
(cl:import '(rendering-library-graphics-i-renderable::blend-state rendering-library-graphics-i-renderable-ipso::alpha rendering-library-graphics-i-renderable-ipso::color-operation rendering-library-graphics-i-renderable-ipso::set-parent-direct rendering-library-graphics-i-renderable-ipso::in-render-target-recursively? rendering-library-graphics-i-renderable-ipso::get-absolute-bottom rendering-library-graphics-i-renderable-ipso::get-absolute-center-x rendering-library-graphics-i-renderable-ipso::get-absolute-center-y rendering-library-graphics-i-renderable-ipso::get-absolute-flip-horizontal rendering-library-graphics-i-renderable-ipso::get-absolute-left rendering-library-graphics-i-renderable-ipso::get-absolute-right rendering-library-graphics-i-renderable-ipso::get-absolute-rotation-matrix rendering-library-graphics-i-renderable-ipso::get-absolute-top rendering-library-graphics-i-renderable-ipso::get-absolute-x rendering-library-graphics-i-renderable-ipso::get-absolute-y rendering-library-graphics-i-renderable-ipso::get-rotation-matrix rendering-library-graphics-i-renderable-ipso::get-top-parent rendering-library-graphics-i-renderable-ipso::has-cursor-over rendering-library-graphics-i-visible::get-absolute-visible rendering-library-i-positioned-sized-object::get-position rendering-library-i-positioned-sized-object::set-position) ':gum-wireframe-graphical-ui-element)
(cl:export '(gum-wireframe-graphical-ui-element::blend-state gum-wireframe-graphical-ui-element::alpha gum-wireframe-graphical-ui-element::color-operation gum-wireframe-graphical-ui-element::set-parent-direct gum-wireframe-graphical-ui-element::in-render-target-recursively? gum-wireframe-graphical-ui-element::get-absolute-bottom gum-wireframe-graphical-ui-element::get-absolute-center-x gum-wireframe-graphical-ui-element::get-absolute-center-y gum-wireframe-graphical-ui-element::get-absolute-flip-horizontal gum-wireframe-graphical-ui-element::get-absolute-left gum-wireframe-graphical-ui-element::get-absolute-right gum-wireframe-graphical-ui-element::get-absolute-rotation-matrix gum-wireframe-graphical-ui-element::get-absolute-top gum-wireframe-graphical-ui-element::get-absolute-x gum-wireframe-graphical-ui-element::get-absolute-y gum-wireframe-graphical-ui-element::get-rotation-matrix gum-wireframe-graphical-ui-element::get-top-parent gum-wireframe-graphical-ui-element::has-cursor-over gum-wireframe-graphical-ui-element::get-absolute-visible gum-wireframe-graphical-ui-element::get-position gum-wireframe-graphical-ui-element::set-position) ':gum-wireframe-graphical-ui-element)

;;; gum-forms-controls-panel: re-exports inherited members from gum-forms-controls-framework-element, system-component-model-i-notify-property-changed
;;; Skipped (gum-forms-controls-panel declares its own): react-to-visual-changed
;;; Skipped (ambiguous across ancestors: gum-forms-controls-framework-element, system-component-model-i-notify-property-changed): add-property-changed
;;; Skipped (ambiguous across ancestors: gum-forms-controls-framework-element, system-component-model-i-notify-property-changed): remove-property-changed
(cl:shadowing-import '(gum-forms-controls-framework-element::close) ':gum-forms-controls-panel)
(cl:import '(gum-forms-controls-framework-element::+disabled-focused-state+ gum-forms-controls-framework-element::+disabled-focused-state-name+ gum-forms-controls-framework-element::+disabled-state+ gum-forms-controls-framework-element::+disabled-state-name+ gum-forms-controls-framework-element::+enabled-state+ gum-forms-controls-framework-element::+enabled-state-name+ gum-forms-controls-framework-element::+focused-state+ gum-forms-controls-framework-element::+focused-state-name+ gum-forms-controls-framework-element::+highlighted-focused-state+ gum-forms-controls-framework-element::+highlighted-focused-state-name+ gum-forms-controls-framework-element::+highlighted-state+ gum-forms-controls-framework-element::+highlighted-state-name+ gum-forms-controls-framework-element::+horizontal-state-name+ gum-forms-controls-framework-element::+pushed-state+ gum-forms-controls-framework-element::+pushed-state-name+ gum-forms-controls-framework-element::+selected-highlighted-state-name+ gum-forms-controls-framework-element::+selected-state-name+ gum-forms-controls-framework-element::+vertical-state-name+ gum-forms-controls-framework-element::default-forms-components gum-forms-controls-framework-element::default-forms-templates gum-forms-controls-framework-element::game-pads-for-ui-control gum-forms-controls-framework-element::keyboards-for-ui-control gum-forms-controls-framework-element::click-combos gum-forms-controls-framework-element::main-cursor gum-forms-controls-framework-element::main-keyboard gum-forms-controls-framework-element::modal-root gum-forms-controls-framework-element::popup-root gum-forms-controls-framework-element::tab-key-combos gum-forms-controls-framework-element::tab-reverse-key-combos gum-forms-controls-framework-element::absolute-left gum-forms-controls-framework-element::absolute-top gum-forms-controls-framework-element::actual-height gum-forms-controls-framework-element::actual-width gum-forms-controls-framework-element::binding-context gum-forms-controls-framework-element::custom-cursor gum-forms-controls-framework-element::gamepad-tabbing-focus-behavior gum-forms-controls-framework-element::height gum-forms-controls-framework-element::height-units gum-forms-controls-framework-element::enabled? gum-forms-controls-framework-element::focused? gum-forms-controls-framework-element::tab-navigation-enabled? gum-forms-controls-framework-element::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-framework-element::visible? gum-forms-controls-framework-element::max-height gum-forms-controls-framework-element::max-width gum-forms-controls-framework-element::min-height gum-forms-controls-framework-element::min-width gum-forms-controls-framework-element::name gum-forms-controls-framework-element::parent-framework-element gum-forms-controls-framework-element::tool-tip gum-forms-controls-framework-element::visual gum-forms-controls-framework-element::width gum-forms-controls-framework-element::width-units gum-forms-controls-framework-element::x gum-forms-controls-framework-element::x-origin gum-forms-controls-framework-element::x-units gum-forms-controls-framework-element::y gum-forms-controls-framework-element::y-origin gum-forms-controls-framework-element::y-units gum-forms-controls-framework-element::add-child gum-forms-controls-framework-element::anchor gum-forms-controls-framework-element::apply-runtime-properties gum-forms-controls-framework-element::call-loaded gum-forms-controls-framework-element::clear-binding gum-forms-controls-framework-element::dock gum-forms-controls-framework-element::get-desired-state gum-forms-controls-framework-element::get-desired-state-with-checked gum-forms-controls-framework-element::get-graphical-ui-element-for gum-forms-controls-framework-element::get-graphical-ui-element-for-framework-element gum-forms-controls-framework-element::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-framework-element::get-if-is-on-this-or-child-visual gum-forms-controls-framework-element::get-if-push-input-is-held gum-forms-controls-framework-element::get-state gum-forms-controls-framework-element::get-visual gum-forms-controls-framework-element::get-visual<> gum-forms-controls-framework-element::handle-gamepad-navigation gum-forms-controls-framework-element::handle-keyboard-focus-update gum-forms-controls-framework-element::handle-tab gum-forms-controls-framework-element::handle-tab* gum-forms-controls-framework-element::handle-visual-binding-context-changed gum-forms-controls-framework-element::data-bound? gum-forms-controls-framework-element::on-binding-context-changed gum-forms-controls-framework-element::on-property-changed gum-forms-controls-framework-element::push-value-to-view-model gum-forms-controls-framework-element::raise-key-down gum-forms-controls-framework-element::react-to-visual-removed gum-forms-controls-framework-element::refresh-internal-visual-references gum-forms-controls-framework-element::register-runtime-property gum-forms-controls-framework-element::register-runtime-property<> gum-forms-controls-framework-element::remove-child gum-forms-controls-framework-element::reposition-to-keep-in-screen gum-forms-controls-framework-element::save-runtime-properties gum-forms-controls-framework-element::set-binding gum-forms-controls-framework-element::show gum-forms-controls-framework-element::to-string gum-forms-controls-framework-element::update-state gum-forms-controls-framework-element::update-state-recursively gum-forms-controls-framework-element::add-after-refresh-styles gum-forms-controls-framework-element::remove-after-refresh-styles gum-forms-controls-framework-element::add-before-refresh-styles gum-forms-controls-framework-element::remove-before-refresh-styles gum-forms-controls-framework-element::add-binding-context-changed gum-forms-controls-framework-element::remove-binding-context-changed gum-forms-controls-framework-element::add-got-focus gum-forms-controls-framework-element::remove-got-focus gum-forms-controls-framework-element::add-key-down gum-forms-controls-framework-element::remove-key-down gum-forms-controls-framework-element::add-loaded gum-forms-controls-framework-element::remove-loaded gum-forms-controls-framework-element::add-lost-focus gum-forms-controls-framework-element::remove-lost-focus gum-forms-controls-framework-element::add-tool-tip-closing gum-forms-controls-framework-element::remove-tool-tip-closing gum-forms-controls-framework-element::add-tool-tip-opening gum-forms-controls-framework-element::remove-tool-tip-opening gum-forms-controls-framework-element::get-framework-element gum-forms-controls-framework-element::get-parent-input-receiver gum-forms-controls-framework-element::remove-from-root gum-forms-controls-framework-element::add-to-root) ':gum-forms-controls-panel)
(cl:export '(gum-forms-controls-panel::+disabled-focused-state+ gum-forms-controls-panel::+disabled-focused-state-name+ gum-forms-controls-panel::+disabled-state+ gum-forms-controls-panel::+disabled-state-name+ gum-forms-controls-panel::+enabled-state+ gum-forms-controls-panel::+enabled-state-name+ gum-forms-controls-panel::+focused-state+ gum-forms-controls-panel::+focused-state-name+ gum-forms-controls-panel::+highlighted-focused-state+ gum-forms-controls-panel::+highlighted-focused-state-name+ gum-forms-controls-panel::+highlighted-state+ gum-forms-controls-panel::+highlighted-state-name+ gum-forms-controls-panel::+horizontal-state-name+ gum-forms-controls-panel::+pushed-state+ gum-forms-controls-panel::+pushed-state-name+ gum-forms-controls-panel::+selected-highlighted-state-name+ gum-forms-controls-panel::+selected-state-name+ gum-forms-controls-panel::+vertical-state-name+ gum-forms-controls-panel::default-forms-components gum-forms-controls-panel::default-forms-templates gum-forms-controls-panel::game-pads-for-ui-control gum-forms-controls-panel::keyboards-for-ui-control gum-forms-controls-panel::click-combos gum-forms-controls-panel::main-cursor gum-forms-controls-panel::main-keyboard gum-forms-controls-panel::modal-root gum-forms-controls-panel::popup-root gum-forms-controls-panel::tab-key-combos gum-forms-controls-panel::tab-reverse-key-combos gum-forms-controls-panel::absolute-left gum-forms-controls-panel::absolute-top gum-forms-controls-panel::actual-height gum-forms-controls-panel::actual-width gum-forms-controls-panel::binding-context gum-forms-controls-panel::custom-cursor gum-forms-controls-panel::gamepad-tabbing-focus-behavior gum-forms-controls-panel::height gum-forms-controls-panel::height-units gum-forms-controls-panel::enabled? gum-forms-controls-panel::focused? gum-forms-controls-panel::tab-navigation-enabled? gum-forms-controls-panel::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-panel::visible? gum-forms-controls-panel::max-height gum-forms-controls-panel::max-width gum-forms-controls-panel::min-height gum-forms-controls-panel::min-width gum-forms-controls-panel::name gum-forms-controls-panel::parent-framework-element gum-forms-controls-panel::tool-tip gum-forms-controls-panel::visual gum-forms-controls-panel::width gum-forms-controls-panel::width-units gum-forms-controls-panel::x gum-forms-controls-panel::x-origin gum-forms-controls-panel::x-units gum-forms-controls-panel::y gum-forms-controls-panel::y-origin gum-forms-controls-panel::y-units gum-forms-controls-panel::add-child gum-forms-controls-panel::anchor gum-forms-controls-panel::apply-runtime-properties gum-forms-controls-panel::call-loaded gum-forms-controls-panel::clear-binding gum-forms-controls-panel::close gum-forms-controls-panel::dock gum-forms-controls-panel::get-desired-state gum-forms-controls-panel::get-desired-state-with-checked gum-forms-controls-panel::get-graphical-ui-element-for gum-forms-controls-panel::get-graphical-ui-element-for-framework-element gum-forms-controls-panel::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-panel::get-if-is-on-this-or-child-visual gum-forms-controls-panel::get-if-push-input-is-held gum-forms-controls-panel::get-state gum-forms-controls-panel::get-visual gum-forms-controls-panel::get-visual<> gum-forms-controls-panel::handle-gamepad-navigation gum-forms-controls-panel::handle-keyboard-focus-update gum-forms-controls-panel::handle-tab gum-forms-controls-panel::handle-tab* gum-forms-controls-panel::handle-visual-binding-context-changed gum-forms-controls-panel::data-bound? gum-forms-controls-panel::on-binding-context-changed gum-forms-controls-panel::on-property-changed gum-forms-controls-panel::push-value-to-view-model gum-forms-controls-panel::raise-key-down gum-forms-controls-panel::react-to-visual-removed gum-forms-controls-panel::refresh-internal-visual-references gum-forms-controls-panel::register-runtime-property gum-forms-controls-panel::register-runtime-property<> gum-forms-controls-panel::remove-child gum-forms-controls-panel::reposition-to-keep-in-screen gum-forms-controls-panel::save-runtime-properties gum-forms-controls-panel::set-binding gum-forms-controls-panel::show gum-forms-controls-panel::to-string gum-forms-controls-panel::update-state gum-forms-controls-panel::update-state-recursively gum-forms-controls-panel::add-after-refresh-styles gum-forms-controls-panel::remove-after-refresh-styles gum-forms-controls-panel::add-before-refresh-styles gum-forms-controls-panel::remove-before-refresh-styles gum-forms-controls-panel::add-binding-context-changed gum-forms-controls-panel::remove-binding-context-changed gum-forms-controls-panel::add-got-focus gum-forms-controls-panel::remove-got-focus gum-forms-controls-panel::add-key-down gum-forms-controls-panel::remove-key-down gum-forms-controls-panel::add-loaded gum-forms-controls-panel::remove-loaded gum-forms-controls-panel::add-lost-focus gum-forms-controls-panel::remove-lost-focus gum-forms-controls-panel::add-tool-tip-closing gum-forms-controls-panel::remove-tool-tip-closing gum-forms-controls-panel::add-tool-tip-opening gum-forms-controls-panel::remove-tool-tip-opening gum-forms-controls-panel::get-framework-element gum-forms-controls-panel::get-parent-input-receiver gum-forms-controls-panel::remove-from-root gum-forms-controls-panel::add-to-root) ':gum-forms-controls-panel)

;;; gum-forms-controls-button: re-exports inherited members from gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver, system-component-model-i-notify-property-changed, gum-forms-controls-framework-element
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-forms-controls-framework-element): focused?
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver): parent-input-receiver
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver): do-keyboard-action
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-forms-controls-framework-element): get-if-push-input-is-held
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver): on-focus-update
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver): on-focus-update-preview
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver): on-gain-focus
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-button-base, gum-wireframe-i-input-receiver): on-lose-focus
;;; Skipped (gum-forms-controls-button declares its own): react-to-visual-changed
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, gum-forms-controls-framework-element): add-property-changed
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, gum-forms-controls-framework-element): remove-property-changed
;;; Skipped (gum-forms-controls-button declares its own): apply-runtime-properties
;;; Skipped (gum-forms-controls-button declares its own): refresh-internal-visual-references
;;; Skipped (gum-forms-controls-button declares its own): save-runtime-properties
;;; Skipped (gum-forms-controls-button declares its own): update-state
(cl:shadowing-import '(gum-forms-controls-framework-element::close) ':gum-forms-controls-button)
(cl:import '(gum-forms-controls-primitives-button-base::click-gamepad-button gum-forms-controls-primitives-button-base::ignored-keys gum-forms-controls-primitives-button-base::next-in-tab-sequence gum-forms-controls-primitives-button-base::taking-input gum-forms-controls-primitives-button-base::handle-char-entered gum-forms-controls-primitives-button-base::handle-key-down gum-forms-controls-primitives-button-base::lose-focus gum-forms-controls-primitives-button-base::on-click gum-forms-controls-primitives-button-base::perform-click gum-forms-controls-primitives-button-base::receive-input gum-forms-controls-primitives-button-base::add-click gum-forms-controls-primitives-button-base::remove-click gum-forms-controls-primitives-button-base::add-controller-button-pushed gum-forms-controls-primitives-button-base::remove-controller-button-pushed gum-forms-controls-primitives-button-base::add-focus-update gum-forms-controls-primitives-button-base::remove-focus-update gum-forms-controls-primitives-button-base::add-push gum-forms-controls-primitives-button-base::remove-push gum-forms-controls-framework-element::+disabled-focused-state+ gum-forms-controls-framework-element::+disabled-focused-state-name+ gum-forms-controls-framework-element::+disabled-state+ gum-forms-controls-framework-element::+disabled-state-name+ gum-forms-controls-framework-element::+enabled-state+ gum-forms-controls-framework-element::+enabled-state-name+ gum-forms-controls-framework-element::+focused-state+ gum-forms-controls-framework-element::+focused-state-name+ gum-forms-controls-framework-element::+highlighted-focused-state+ gum-forms-controls-framework-element::+highlighted-focused-state-name+ gum-forms-controls-framework-element::+highlighted-state+ gum-forms-controls-framework-element::+highlighted-state-name+ gum-forms-controls-framework-element::+horizontal-state-name+ gum-forms-controls-framework-element::+pushed-state+ gum-forms-controls-framework-element::+pushed-state-name+ gum-forms-controls-framework-element::+selected-highlighted-state-name+ gum-forms-controls-framework-element::+selected-state-name+ gum-forms-controls-framework-element::+vertical-state-name+ gum-forms-controls-framework-element::default-forms-components gum-forms-controls-framework-element::default-forms-templates gum-forms-controls-framework-element::game-pads-for-ui-control gum-forms-controls-framework-element::keyboards-for-ui-control gum-forms-controls-framework-element::click-combos gum-forms-controls-framework-element::main-cursor gum-forms-controls-framework-element::main-keyboard gum-forms-controls-framework-element::modal-root gum-forms-controls-framework-element::popup-root gum-forms-controls-framework-element::tab-key-combos gum-forms-controls-framework-element::tab-reverse-key-combos gum-forms-controls-framework-element::absolute-left gum-forms-controls-framework-element::absolute-top gum-forms-controls-framework-element::actual-height gum-forms-controls-framework-element::actual-width gum-forms-controls-framework-element::binding-context gum-forms-controls-framework-element::custom-cursor gum-forms-controls-framework-element::gamepad-tabbing-focus-behavior gum-forms-controls-framework-element::height gum-forms-controls-framework-element::height-units gum-forms-controls-framework-element::enabled? gum-forms-controls-framework-element::tab-navigation-enabled? gum-forms-controls-framework-element::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-framework-element::visible? gum-forms-controls-framework-element::max-height gum-forms-controls-framework-element::max-width gum-forms-controls-framework-element::min-height gum-forms-controls-framework-element::min-width gum-forms-controls-framework-element::name gum-forms-controls-framework-element::parent-framework-element gum-forms-controls-framework-element::tool-tip gum-forms-controls-framework-element::visual gum-forms-controls-framework-element::width gum-forms-controls-framework-element::width-units gum-forms-controls-framework-element::x gum-forms-controls-framework-element::x-origin gum-forms-controls-framework-element::x-units gum-forms-controls-framework-element::y gum-forms-controls-framework-element::y-origin gum-forms-controls-framework-element::y-units gum-forms-controls-framework-element::add-child gum-forms-controls-framework-element::anchor gum-forms-controls-framework-element::call-loaded gum-forms-controls-framework-element::clear-binding gum-forms-controls-framework-element::dock gum-forms-controls-framework-element::get-desired-state gum-forms-controls-framework-element::get-desired-state-with-checked gum-forms-controls-framework-element::get-graphical-ui-element-for gum-forms-controls-framework-element::get-graphical-ui-element-for-framework-element gum-forms-controls-framework-element::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-framework-element::get-if-is-on-this-or-child-visual gum-forms-controls-framework-element::get-state gum-forms-controls-framework-element::get-visual gum-forms-controls-framework-element::get-visual<> gum-forms-controls-framework-element::handle-gamepad-navigation gum-forms-controls-framework-element::handle-keyboard-focus-update gum-forms-controls-framework-element::handle-tab gum-forms-controls-framework-element::handle-tab* gum-forms-controls-framework-element::handle-visual-binding-context-changed gum-forms-controls-framework-element::data-bound? gum-forms-controls-framework-element::on-binding-context-changed gum-forms-controls-framework-element::on-property-changed gum-forms-controls-framework-element::push-value-to-view-model gum-forms-controls-framework-element::raise-key-down gum-forms-controls-framework-element::react-to-visual-removed gum-forms-controls-framework-element::register-runtime-property gum-forms-controls-framework-element::register-runtime-property<> gum-forms-controls-framework-element::remove-child gum-forms-controls-framework-element::reposition-to-keep-in-screen gum-forms-controls-framework-element::set-binding gum-forms-controls-framework-element::show gum-forms-controls-framework-element::to-string gum-forms-controls-framework-element::update-state-recursively gum-forms-controls-framework-element::add-after-refresh-styles gum-forms-controls-framework-element::remove-after-refresh-styles gum-forms-controls-framework-element::add-before-refresh-styles gum-forms-controls-framework-element::remove-before-refresh-styles gum-forms-controls-framework-element::add-binding-context-changed gum-forms-controls-framework-element::remove-binding-context-changed gum-forms-controls-framework-element::add-got-focus gum-forms-controls-framework-element::remove-got-focus gum-forms-controls-framework-element::add-key-down gum-forms-controls-framework-element::remove-key-down gum-forms-controls-framework-element::add-loaded gum-forms-controls-framework-element::remove-loaded gum-forms-controls-framework-element::add-lost-focus gum-forms-controls-framework-element::remove-lost-focus gum-forms-controls-framework-element::add-tool-tip-closing gum-forms-controls-framework-element::remove-tool-tip-closing gum-forms-controls-framework-element::add-tool-tip-opening gum-forms-controls-framework-element::remove-tool-tip-opening gum-forms-controls-framework-element::get-framework-element gum-forms-controls-framework-element::get-parent-input-receiver gum-forms-controls-framework-element::remove-from-root gum-forms-controls-framework-element::add-to-root) ':gum-forms-controls-button)
(cl:export '(gum-forms-controls-button::click-gamepad-button gum-forms-controls-button::ignored-keys gum-forms-controls-button::next-in-tab-sequence gum-forms-controls-button::taking-input gum-forms-controls-button::handle-char-entered gum-forms-controls-button::handle-key-down gum-forms-controls-button::lose-focus gum-forms-controls-button::on-click gum-forms-controls-button::perform-click gum-forms-controls-button::receive-input gum-forms-controls-button::add-click gum-forms-controls-button::remove-click gum-forms-controls-button::add-controller-button-pushed gum-forms-controls-button::remove-controller-button-pushed gum-forms-controls-button::add-focus-update gum-forms-controls-button::remove-focus-update gum-forms-controls-button::add-push gum-forms-controls-button::remove-push gum-forms-controls-button::+disabled-focused-state+ gum-forms-controls-button::+disabled-focused-state-name+ gum-forms-controls-button::+disabled-state+ gum-forms-controls-button::+disabled-state-name+ gum-forms-controls-button::+enabled-state+ gum-forms-controls-button::+enabled-state-name+ gum-forms-controls-button::+focused-state+ gum-forms-controls-button::+focused-state-name+ gum-forms-controls-button::+highlighted-focused-state+ gum-forms-controls-button::+highlighted-focused-state-name+ gum-forms-controls-button::+highlighted-state+ gum-forms-controls-button::+highlighted-state-name+ gum-forms-controls-button::+horizontal-state-name+ gum-forms-controls-button::+pushed-state+ gum-forms-controls-button::+pushed-state-name+ gum-forms-controls-button::+selected-highlighted-state-name+ gum-forms-controls-button::+selected-state-name+ gum-forms-controls-button::+vertical-state-name+ gum-forms-controls-button::default-forms-components gum-forms-controls-button::default-forms-templates gum-forms-controls-button::game-pads-for-ui-control gum-forms-controls-button::keyboards-for-ui-control gum-forms-controls-button::click-combos gum-forms-controls-button::main-cursor gum-forms-controls-button::main-keyboard gum-forms-controls-button::modal-root gum-forms-controls-button::popup-root gum-forms-controls-button::tab-key-combos gum-forms-controls-button::tab-reverse-key-combos gum-forms-controls-button::absolute-left gum-forms-controls-button::absolute-top gum-forms-controls-button::actual-height gum-forms-controls-button::actual-width gum-forms-controls-button::binding-context gum-forms-controls-button::custom-cursor gum-forms-controls-button::gamepad-tabbing-focus-behavior gum-forms-controls-button::height gum-forms-controls-button::height-units gum-forms-controls-button::enabled? gum-forms-controls-button::tab-navigation-enabled? gum-forms-controls-button::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-button::visible? gum-forms-controls-button::max-height gum-forms-controls-button::max-width gum-forms-controls-button::min-height gum-forms-controls-button::min-width gum-forms-controls-button::name gum-forms-controls-button::parent-framework-element gum-forms-controls-button::tool-tip gum-forms-controls-button::visual gum-forms-controls-button::width gum-forms-controls-button::width-units gum-forms-controls-button::x gum-forms-controls-button::x-origin gum-forms-controls-button::x-units gum-forms-controls-button::y gum-forms-controls-button::y-origin gum-forms-controls-button::y-units gum-forms-controls-button::add-child gum-forms-controls-button::anchor gum-forms-controls-button::call-loaded gum-forms-controls-button::clear-binding gum-forms-controls-button::close gum-forms-controls-button::dock gum-forms-controls-button::get-desired-state gum-forms-controls-button::get-desired-state-with-checked gum-forms-controls-button::get-graphical-ui-element-for gum-forms-controls-button::get-graphical-ui-element-for-framework-element gum-forms-controls-button::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-button::get-if-is-on-this-or-child-visual gum-forms-controls-button::get-state gum-forms-controls-button::get-visual gum-forms-controls-button::get-visual<> gum-forms-controls-button::handle-gamepad-navigation gum-forms-controls-button::handle-keyboard-focus-update gum-forms-controls-button::handle-tab gum-forms-controls-button::handle-tab* gum-forms-controls-button::handle-visual-binding-context-changed gum-forms-controls-button::data-bound? gum-forms-controls-button::on-binding-context-changed gum-forms-controls-button::on-property-changed gum-forms-controls-button::push-value-to-view-model gum-forms-controls-button::raise-key-down gum-forms-controls-button::react-to-visual-removed gum-forms-controls-button::register-runtime-property gum-forms-controls-button::register-runtime-property<> gum-forms-controls-button::remove-child gum-forms-controls-button::reposition-to-keep-in-screen gum-forms-controls-button::set-binding gum-forms-controls-button::show gum-forms-controls-button::to-string gum-forms-controls-button::update-state-recursively gum-forms-controls-button::add-after-refresh-styles gum-forms-controls-button::remove-after-refresh-styles gum-forms-controls-button::add-before-refresh-styles gum-forms-controls-button::remove-before-refresh-styles gum-forms-controls-button::add-binding-context-changed gum-forms-controls-button::remove-binding-context-changed gum-forms-controls-button::add-got-focus gum-forms-controls-button::remove-got-focus gum-forms-controls-button::add-key-down gum-forms-controls-button::remove-key-down gum-forms-controls-button::add-loaded gum-forms-controls-button::remove-loaded gum-forms-controls-button::add-lost-focus gum-forms-controls-button::remove-lost-focus gum-forms-controls-button::add-tool-tip-closing gum-forms-controls-button::remove-tool-tip-closing gum-forms-controls-button::add-tool-tip-opening gum-forms-controls-button::remove-tool-tip-opening gum-forms-controls-button::get-framework-element gum-forms-controls-button::get-parent-input-receiver gum-forms-controls-button::remove-from-root gum-forms-controls-button::add-to-root) ':gum-forms-controls-button)

;;; gum-forms-controls-label: re-exports inherited members from gum-forms-controls-framework-element, system-component-model-i-notify-property-changed
;;; Skipped (gum-forms-controls-label declares its own): apply-runtime-properties
;;; Skipped (gum-forms-controls-label declares its own): react-to-visual-changed
;;; Skipped (gum-forms-controls-label declares its own): refresh-internal-visual-references
;;; Skipped (gum-forms-controls-label declares its own): save-runtime-properties
;;; Skipped (ambiguous across ancestors: gum-forms-controls-framework-element, system-component-model-i-notify-property-changed): add-property-changed
;;; Skipped (ambiguous across ancestors: gum-forms-controls-framework-element, system-component-model-i-notify-property-changed): remove-property-changed
(cl:shadowing-import '(gum-forms-controls-framework-element::close) ':gum-forms-controls-label)
(cl:import '(gum-forms-controls-framework-element::+disabled-focused-state+ gum-forms-controls-framework-element::+disabled-focused-state-name+ gum-forms-controls-framework-element::+disabled-state+ gum-forms-controls-framework-element::+disabled-state-name+ gum-forms-controls-framework-element::+enabled-state+ gum-forms-controls-framework-element::+enabled-state-name+ gum-forms-controls-framework-element::+focused-state+ gum-forms-controls-framework-element::+focused-state-name+ gum-forms-controls-framework-element::+highlighted-focused-state+ gum-forms-controls-framework-element::+highlighted-focused-state-name+ gum-forms-controls-framework-element::+highlighted-state+ gum-forms-controls-framework-element::+highlighted-state-name+ gum-forms-controls-framework-element::+horizontal-state-name+ gum-forms-controls-framework-element::+pushed-state+ gum-forms-controls-framework-element::+pushed-state-name+ gum-forms-controls-framework-element::+selected-highlighted-state-name+ gum-forms-controls-framework-element::+selected-state-name+ gum-forms-controls-framework-element::+vertical-state-name+ gum-forms-controls-framework-element::default-forms-components gum-forms-controls-framework-element::default-forms-templates gum-forms-controls-framework-element::game-pads-for-ui-control gum-forms-controls-framework-element::keyboards-for-ui-control gum-forms-controls-framework-element::click-combos gum-forms-controls-framework-element::main-cursor gum-forms-controls-framework-element::main-keyboard gum-forms-controls-framework-element::modal-root gum-forms-controls-framework-element::popup-root gum-forms-controls-framework-element::tab-key-combos gum-forms-controls-framework-element::tab-reverse-key-combos gum-forms-controls-framework-element::absolute-left gum-forms-controls-framework-element::absolute-top gum-forms-controls-framework-element::actual-height gum-forms-controls-framework-element::actual-width gum-forms-controls-framework-element::binding-context gum-forms-controls-framework-element::custom-cursor gum-forms-controls-framework-element::gamepad-tabbing-focus-behavior gum-forms-controls-framework-element::height gum-forms-controls-framework-element::height-units gum-forms-controls-framework-element::enabled? gum-forms-controls-framework-element::focused? gum-forms-controls-framework-element::tab-navigation-enabled? gum-forms-controls-framework-element::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-framework-element::visible? gum-forms-controls-framework-element::max-height gum-forms-controls-framework-element::max-width gum-forms-controls-framework-element::min-height gum-forms-controls-framework-element::min-width gum-forms-controls-framework-element::name gum-forms-controls-framework-element::parent-framework-element gum-forms-controls-framework-element::tool-tip gum-forms-controls-framework-element::visual gum-forms-controls-framework-element::width gum-forms-controls-framework-element::width-units gum-forms-controls-framework-element::x gum-forms-controls-framework-element::x-origin gum-forms-controls-framework-element::x-units gum-forms-controls-framework-element::y gum-forms-controls-framework-element::y-origin gum-forms-controls-framework-element::y-units gum-forms-controls-framework-element::add-child gum-forms-controls-framework-element::anchor gum-forms-controls-framework-element::call-loaded gum-forms-controls-framework-element::clear-binding gum-forms-controls-framework-element::dock gum-forms-controls-framework-element::get-desired-state gum-forms-controls-framework-element::get-desired-state-with-checked gum-forms-controls-framework-element::get-graphical-ui-element-for gum-forms-controls-framework-element::get-graphical-ui-element-for-framework-element gum-forms-controls-framework-element::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-framework-element::get-if-is-on-this-or-child-visual gum-forms-controls-framework-element::get-if-push-input-is-held gum-forms-controls-framework-element::get-state gum-forms-controls-framework-element::get-visual gum-forms-controls-framework-element::get-visual<> gum-forms-controls-framework-element::handle-gamepad-navigation gum-forms-controls-framework-element::handle-keyboard-focus-update gum-forms-controls-framework-element::handle-tab gum-forms-controls-framework-element::handle-tab* gum-forms-controls-framework-element::handle-visual-binding-context-changed gum-forms-controls-framework-element::data-bound? gum-forms-controls-framework-element::on-binding-context-changed gum-forms-controls-framework-element::on-property-changed gum-forms-controls-framework-element::push-value-to-view-model gum-forms-controls-framework-element::raise-key-down gum-forms-controls-framework-element::react-to-visual-removed gum-forms-controls-framework-element::register-runtime-property gum-forms-controls-framework-element::register-runtime-property<> gum-forms-controls-framework-element::remove-child gum-forms-controls-framework-element::reposition-to-keep-in-screen gum-forms-controls-framework-element::set-binding gum-forms-controls-framework-element::show gum-forms-controls-framework-element::to-string gum-forms-controls-framework-element::update-state gum-forms-controls-framework-element::update-state-recursively gum-forms-controls-framework-element::add-after-refresh-styles gum-forms-controls-framework-element::remove-after-refresh-styles gum-forms-controls-framework-element::add-before-refresh-styles gum-forms-controls-framework-element::remove-before-refresh-styles gum-forms-controls-framework-element::add-binding-context-changed gum-forms-controls-framework-element::remove-binding-context-changed gum-forms-controls-framework-element::add-got-focus gum-forms-controls-framework-element::remove-got-focus gum-forms-controls-framework-element::add-key-down gum-forms-controls-framework-element::remove-key-down gum-forms-controls-framework-element::add-loaded gum-forms-controls-framework-element::remove-loaded gum-forms-controls-framework-element::add-lost-focus gum-forms-controls-framework-element::remove-lost-focus gum-forms-controls-framework-element::add-tool-tip-closing gum-forms-controls-framework-element::remove-tool-tip-closing gum-forms-controls-framework-element::add-tool-tip-opening gum-forms-controls-framework-element::remove-tool-tip-opening gum-forms-controls-framework-element::get-framework-element gum-forms-controls-framework-element::get-parent-input-receiver gum-forms-controls-framework-element::remove-from-root gum-forms-controls-framework-element::add-to-root) ':gum-forms-controls-label)
(cl:export '(gum-forms-controls-label::+disabled-focused-state+ gum-forms-controls-label::+disabled-focused-state-name+ gum-forms-controls-label::+disabled-state+ gum-forms-controls-label::+disabled-state-name+ gum-forms-controls-label::+enabled-state+ gum-forms-controls-label::+enabled-state-name+ gum-forms-controls-label::+focused-state+ gum-forms-controls-label::+focused-state-name+ gum-forms-controls-label::+highlighted-focused-state+ gum-forms-controls-label::+highlighted-focused-state-name+ gum-forms-controls-label::+highlighted-state+ gum-forms-controls-label::+highlighted-state-name+ gum-forms-controls-label::+horizontal-state-name+ gum-forms-controls-label::+pushed-state+ gum-forms-controls-label::+pushed-state-name+ gum-forms-controls-label::+selected-highlighted-state-name+ gum-forms-controls-label::+selected-state-name+ gum-forms-controls-label::+vertical-state-name+ gum-forms-controls-label::default-forms-components gum-forms-controls-label::default-forms-templates gum-forms-controls-label::game-pads-for-ui-control gum-forms-controls-label::keyboards-for-ui-control gum-forms-controls-label::click-combos gum-forms-controls-label::main-cursor gum-forms-controls-label::main-keyboard gum-forms-controls-label::modal-root gum-forms-controls-label::popup-root gum-forms-controls-label::tab-key-combos gum-forms-controls-label::tab-reverse-key-combos gum-forms-controls-label::absolute-left gum-forms-controls-label::absolute-top gum-forms-controls-label::actual-height gum-forms-controls-label::actual-width gum-forms-controls-label::binding-context gum-forms-controls-label::custom-cursor gum-forms-controls-label::gamepad-tabbing-focus-behavior gum-forms-controls-label::height gum-forms-controls-label::height-units gum-forms-controls-label::enabled? gum-forms-controls-label::focused? gum-forms-controls-label::tab-navigation-enabled? gum-forms-controls-label::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-label::visible? gum-forms-controls-label::max-height gum-forms-controls-label::max-width gum-forms-controls-label::min-height gum-forms-controls-label::min-width gum-forms-controls-label::name gum-forms-controls-label::parent-framework-element gum-forms-controls-label::tool-tip gum-forms-controls-label::visual gum-forms-controls-label::width gum-forms-controls-label::width-units gum-forms-controls-label::x gum-forms-controls-label::x-origin gum-forms-controls-label::x-units gum-forms-controls-label::y gum-forms-controls-label::y-origin gum-forms-controls-label::y-units gum-forms-controls-label::add-child gum-forms-controls-label::anchor gum-forms-controls-label::call-loaded gum-forms-controls-label::clear-binding gum-forms-controls-label::close gum-forms-controls-label::dock gum-forms-controls-label::get-desired-state gum-forms-controls-label::get-desired-state-with-checked gum-forms-controls-label::get-graphical-ui-element-for gum-forms-controls-label::get-graphical-ui-element-for-framework-element gum-forms-controls-label::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-label::get-if-is-on-this-or-child-visual gum-forms-controls-label::get-if-push-input-is-held gum-forms-controls-label::get-state gum-forms-controls-label::get-visual gum-forms-controls-label::get-visual<> gum-forms-controls-label::handle-gamepad-navigation gum-forms-controls-label::handle-keyboard-focus-update gum-forms-controls-label::handle-tab gum-forms-controls-label::handle-tab* gum-forms-controls-label::handle-visual-binding-context-changed gum-forms-controls-label::data-bound? gum-forms-controls-label::on-binding-context-changed gum-forms-controls-label::on-property-changed gum-forms-controls-label::push-value-to-view-model gum-forms-controls-label::raise-key-down gum-forms-controls-label::react-to-visual-removed gum-forms-controls-label::register-runtime-property gum-forms-controls-label::register-runtime-property<> gum-forms-controls-label::remove-child gum-forms-controls-label::reposition-to-keep-in-screen gum-forms-controls-label::set-binding gum-forms-controls-label::show gum-forms-controls-label::to-string gum-forms-controls-label::update-state gum-forms-controls-label::update-state-recursively gum-forms-controls-label::add-after-refresh-styles gum-forms-controls-label::remove-after-refresh-styles gum-forms-controls-label::add-before-refresh-styles gum-forms-controls-label::remove-before-refresh-styles gum-forms-controls-label::add-binding-context-changed gum-forms-controls-label::remove-binding-context-changed gum-forms-controls-label::add-got-focus gum-forms-controls-label::remove-got-focus gum-forms-controls-label::add-key-down gum-forms-controls-label::remove-key-down gum-forms-controls-label::add-loaded gum-forms-controls-label::remove-loaded gum-forms-controls-label::add-lost-focus gum-forms-controls-label::remove-lost-focus gum-forms-controls-label::add-tool-tip-closing gum-forms-controls-label::remove-tool-tip-closing gum-forms-controls-label::add-tool-tip-opening gum-forms-controls-label::remove-tool-tip-opening gum-forms-controls-label::get-framework-element gum-forms-controls-label::get-parent-input-receiver gum-forms-controls-label::remove-from-root gum-forms-controls-label::add-to-root) ':gum-forms-controls-label)

;;; gum-forms-controls-slider: re-exports inherited members from gum-forms-controls-primitives-range-base, gum-wireframe-i-input-receiver, system-component-model-i-notify-property-changed, gum-forms-controls-framework-element
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-range-base, gum-forms-controls-framework-element): enabled?
;;; Skipped (gum-forms-controls-slider declares its own): handle-thumb-push
;;; Skipped (gum-forms-controls-slider declares its own): on-maximum-changed
;;; Skipped (gum-forms-controls-slider declares its own): on-minimum-changed
;;; Skipped (gum-forms-controls-slider declares its own): on-value-changed
;;; Skipped (gum-forms-controls-slider declares its own): react-to-visual-changed
;;; Skipped (gum-forms-controls-slider declares its own): react-to-visual-removed
;;; Skipped (ambiguous across ancestors: gum-forms-controls-primitives-range-base, gum-forms-controls-framework-element): refresh-internal-visual-references
;;; Skipped (gum-forms-controls-slider declares its own): update-thumb-position-to-cursor-drag
;;; Skipped (gum-forms-controls-slider declares its own): parent-input-receiver
;;; Skipped (gum-forms-controls-slider declares its own): do-keyboard-action
;;; Skipped (gum-forms-controls-slider declares its own): on-focus-update
;;; Skipped (gum-forms-controls-slider declares its own): on-focus-update-preview
;;; Skipped (gum-forms-controls-slider declares its own): on-gain-focus
;;; Skipped (gum-forms-controls-slider declares its own): on-lose-focus
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, gum-forms-controls-framework-element): add-property-changed
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, gum-forms-controls-framework-element): remove-property-changed
;;; Skipped (gum-forms-controls-slider declares its own): apply-runtime-properties
;;; Skipped (gum-forms-controls-slider declares its own): update-state
(cl:shadowing-import '(gum-forms-controls-framework-element::close) ':gum-forms-controls-slider)
(cl:import '(gum-forms-controls-primitives-range-base::move-to-point-enabled? gum-forms-controls-primitives-range-base::large-change gum-forms-controls-primitives-range-base::maximum gum-forms-controls-primitives-range-base::minimum gum-forms-controls-primitives-range-base::orientation gum-forms-controls-primitives-range-base::small-change gum-forms-controls-primitives-range-base::track gum-forms-controls-primitives-range-base::value gum-forms-controls-primitives-range-base::apply-value-considering-snapping gum-forms-controls-primitives-range-base::get-current-sign-relative-to-value gum-forms-controls-primitives-range-base::raise-value-change-completed gum-forms-controls-primitives-range-base::raise-value-changed-by-ui gum-forms-controls-primitives-range-base::add-orientation-changed gum-forms-controls-primitives-range-base::remove-orientation-changed gum-forms-controls-primitives-range-base::add-value-change-completed gum-forms-controls-primitives-range-base::remove-value-change-completed gum-forms-controls-primitives-range-base::add-value-changed gum-forms-controls-primitives-range-base::remove-value-changed gum-forms-controls-primitives-range-base::add-value-changed-by-ui gum-forms-controls-primitives-range-base::remove-value-changed-by-ui gum-forms-controls-framework-element::+disabled-focused-state+ gum-forms-controls-framework-element::+disabled-focused-state-name+ gum-forms-controls-framework-element::+disabled-state+ gum-forms-controls-framework-element::+disabled-state-name+ gum-forms-controls-framework-element::+enabled-state+ gum-forms-controls-framework-element::+enabled-state-name+ gum-forms-controls-framework-element::+focused-state+ gum-forms-controls-framework-element::+focused-state-name+ gum-forms-controls-framework-element::+highlighted-focused-state+ gum-forms-controls-framework-element::+highlighted-focused-state-name+ gum-forms-controls-framework-element::+highlighted-state+ gum-forms-controls-framework-element::+highlighted-state-name+ gum-forms-controls-framework-element::+horizontal-state-name+ gum-forms-controls-framework-element::+pushed-state+ gum-forms-controls-framework-element::+pushed-state-name+ gum-forms-controls-framework-element::+selected-highlighted-state-name+ gum-forms-controls-framework-element::+selected-state-name+ gum-forms-controls-framework-element::+vertical-state-name+ gum-forms-controls-framework-element::default-forms-components gum-forms-controls-framework-element::default-forms-templates gum-forms-controls-framework-element::game-pads-for-ui-control gum-forms-controls-framework-element::keyboards-for-ui-control gum-forms-controls-framework-element::click-combos gum-forms-controls-framework-element::main-cursor gum-forms-controls-framework-element::main-keyboard gum-forms-controls-framework-element::modal-root gum-forms-controls-framework-element::popup-root gum-forms-controls-framework-element::tab-key-combos gum-forms-controls-framework-element::tab-reverse-key-combos gum-forms-controls-framework-element::absolute-left gum-forms-controls-framework-element::absolute-top gum-forms-controls-framework-element::actual-height gum-forms-controls-framework-element::actual-width gum-forms-controls-framework-element::binding-context gum-forms-controls-framework-element::custom-cursor gum-forms-controls-framework-element::gamepad-tabbing-focus-behavior gum-forms-controls-framework-element::height gum-forms-controls-framework-element::height-units gum-forms-controls-framework-element::focused? gum-forms-controls-framework-element::tab-navigation-enabled? gum-forms-controls-framework-element::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-framework-element::visible? gum-forms-controls-framework-element::max-height gum-forms-controls-framework-element::max-width gum-forms-controls-framework-element::min-height gum-forms-controls-framework-element::min-width gum-forms-controls-framework-element::name gum-forms-controls-framework-element::parent-framework-element gum-forms-controls-framework-element::tool-tip gum-forms-controls-framework-element::visual gum-forms-controls-framework-element::width gum-forms-controls-framework-element::width-units gum-forms-controls-framework-element::x gum-forms-controls-framework-element::x-origin gum-forms-controls-framework-element::x-units gum-forms-controls-framework-element::y gum-forms-controls-framework-element::y-origin gum-forms-controls-framework-element::y-units gum-forms-controls-framework-element::add-child gum-forms-controls-framework-element::anchor gum-forms-controls-framework-element::call-loaded gum-forms-controls-framework-element::clear-binding gum-forms-controls-framework-element::dock gum-forms-controls-framework-element::get-desired-state gum-forms-controls-framework-element::get-desired-state-with-checked gum-forms-controls-framework-element::get-graphical-ui-element-for gum-forms-controls-framework-element::get-graphical-ui-element-for-framework-element gum-forms-controls-framework-element::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-framework-element::get-if-is-on-this-or-child-visual gum-forms-controls-framework-element::get-if-push-input-is-held gum-forms-controls-framework-element::get-state gum-forms-controls-framework-element::get-visual gum-forms-controls-framework-element::get-visual<> gum-forms-controls-framework-element::handle-gamepad-navigation gum-forms-controls-framework-element::handle-keyboard-focus-update gum-forms-controls-framework-element::handle-tab gum-forms-controls-framework-element::handle-tab* gum-forms-controls-framework-element::handle-visual-binding-context-changed gum-forms-controls-framework-element::data-bound? gum-forms-controls-framework-element::on-binding-context-changed gum-forms-controls-framework-element::on-property-changed gum-forms-controls-framework-element::push-value-to-view-model gum-forms-controls-framework-element::raise-key-down gum-forms-controls-framework-element::register-runtime-property gum-forms-controls-framework-element::register-runtime-property<> gum-forms-controls-framework-element::remove-child gum-forms-controls-framework-element::reposition-to-keep-in-screen gum-forms-controls-framework-element::save-runtime-properties gum-forms-controls-framework-element::set-binding gum-forms-controls-framework-element::show gum-forms-controls-framework-element::to-string gum-forms-controls-framework-element::update-state-recursively gum-forms-controls-framework-element::add-after-refresh-styles gum-forms-controls-framework-element::remove-after-refresh-styles gum-forms-controls-framework-element::add-before-refresh-styles gum-forms-controls-framework-element::remove-before-refresh-styles gum-forms-controls-framework-element::add-binding-context-changed gum-forms-controls-framework-element::remove-binding-context-changed gum-forms-controls-framework-element::add-got-focus gum-forms-controls-framework-element::remove-got-focus gum-forms-controls-framework-element::add-key-down gum-forms-controls-framework-element::remove-key-down gum-forms-controls-framework-element::add-loaded gum-forms-controls-framework-element::remove-loaded gum-forms-controls-framework-element::add-lost-focus gum-forms-controls-framework-element::remove-lost-focus gum-forms-controls-framework-element::add-tool-tip-closing gum-forms-controls-framework-element::remove-tool-tip-closing gum-forms-controls-framework-element::add-tool-tip-opening gum-forms-controls-framework-element::remove-tool-tip-opening gum-forms-controls-framework-element::get-framework-element gum-forms-controls-framework-element::get-parent-input-receiver gum-forms-controls-framework-element::remove-from-root gum-forms-controls-framework-element::add-to-root) ':gum-forms-controls-slider)
(cl:export '(gum-forms-controls-slider::move-to-point-enabled? gum-forms-controls-slider::large-change gum-forms-controls-slider::maximum gum-forms-controls-slider::minimum gum-forms-controls-slider::orientation gum-forms-controls-slider::small-change gum-forms-controls-slider::track gum-forms-controls-slider::value gum-forms-controls-slider::apply-value-considering-snapping gum-forms-controls-slider::get-current-sign-relative-to-value gum-forms-controls-slider::raise-value-change-completed gum-forms-controls-slider::raise-value-changed-by-ui gum-forms-controls-slider::add-orientation-changed gum-forms-controls-slider::remove-orientation-changed gum-forms-controls-slider::add-value-change-completed gum-forms-controls-slider::remove-value-change-completed gum-forms-controls-slider::add-value-changed gum-forms-controls-slider::remove-value-changed gum-forms-controls-slider::add-value-changed-by-ui gum-forms-controls-slider::remove-value-changed-by-ui gum-forms-controls-slider::+disabled-focused-state+ gum-forms-controls-slider::+disabled-focused-state-name+ gum-forms-controls-slider::+disabled-state+ gum-forms-controls-slider::+disabled-state-name+ gum-forms-controls-slider::+enabled-state+ gum-forms-controls-slider::+enabled-state-name+ gum-forms-controls-slider::+focused-state+ gum-forms-controls-slider::+focused-state-name+ gum-forms-controls-slider::+highlighted-focused-state+ gum-forms-controls-slider::+highlighted-focused-state-name+ gum-forms-controls-slider::+highlighted-state+ gum-forms-controls-slider::+highlighted-state-name+ gum-forms-controls-slider::+horizontal-state-name+ gum-forms-controls-slider::+pushed-state+ gum-forms-controls-slider::+pushed-state-name+ gum-forms-controls-slider::+selected-highlighted-state-name+ gum-forms-controls-slider::+selected-state-name+ gum-forms-controls-slider::+vertical-state-name+ gum-forms-controls-slider::default-forms-components gum-forms-controls-slider::default-forms-templates gum-forms-controls-slider::game-pads-for-ui-control gum-forms-controls-slider::keyboards-for-ui-control gum-forms-controls-slider::click-combos gum-forms-controls-slider::main-cursor gum-forms-controls-slider::main-keyboard gum-forms-controls-slider::modal-root gum-forms-controls-slider::popup-root gum-forms-controls-slider::tab-key-combos gum-forms-controls-slider::tab-reverse-key-combos gum-forms-controls-slider::absolute-left gum-forms-controls-slider::absolute-top gum-forms-controls-slider::actual-height gum-forms-controls-slider::actual-width gum-forms-controls-slider::binding-context gum-forms-controls-slider::custom-cursor gum-forms-controls-slider::gamepad-tabbing-focus-behavior gum-forms-controls-slider::height gum-forms-controls-slider::height-units gum-forms-controls-slider::focused? gum-forms-controls-slider::tab-navigation-enabled? gum-forms-controls-slider::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-slider::visible? gum-forms-controls-slider::max-height gum-forms-controls-slider::max-width gum-forms-controls-slider::min-height gum-forms-controls-slider::min-width gum-forms-controls-slider::name gum-forms-controls-slider::parent-framework-element gum-forms-controls-slider::tool-tip gum-forms-controls-slider::visual gum-forms-controls-slider::width gum-forms-controls-slider::width-units gum-forms-controls-slider::x gum-forms-controls-slider::x-origin gum-forms-controls-slider::x-units gum-forms-controls-slider::y gum-forms-controls-slider::y-origin gum-forms-controls-slider::y-units gum-forms-controls-slider::add-child gum-forms-controls-slider::anchor gum-forms-controls-slider::call-loaded gum-forms-controls-slider::clear-binding gum-forms-controls-slider::close gum-forms-controls-slider::dock gum-forms-controls-slider::get-desired-state gum-forms-controls-slider::get-desired-state-with-checked gum-forms-controls-slider::get-graphical-ui-element-for gum-forms-controls-slider::get-graphical-ui-element-for-framework-element gum-forms-controls-slider::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-slider::get-if-is-on-this-or-child-visual gum-forms-controls-slider::get-if-push-input-is-held gum-forms-controls-slider::get-state gum-forms-controls-slider::get-visual gum-forms-controls-slider::get-visual<> gum-forms-controls-slider::handle-gamepad-navigation gum-forms-controls-slider::handle-keyboard-focus-update gum-forms-controls-slider::handle-tab gum-forms-controls-slider::handle-tab* gum-forms-controls-slider::handle-visual-binding-context-changed gum-forms-controls-slider::data-bound? gum-forms-controls-slider::on-binding-context-changed gum-forms-controls-slider::on-property-changed gum-forms-controls-slider::push-value-to-view-model gum-forms-controls-slider::raise-key-down gum-forms-controls-slider::register-runtime-property gum-forms-controls-slider::register-runtime-property<> gum-forms-controls-slider::remove-child gum-forms-controls-slider::reposition-to-keep-in-screen gum-forms-controls-slider::save-runtime-properties gum-forms-controls-slider::set-binding gum-forms-controls-slider::show gum-forms-controls-slider::to-string gum-forms-controls-slider::update-state-recursively gum-forms-controls-slider::add-after-refresh-styles gum-forms-controls-slider::remove-after-refresh-styles gum-forms-controls-slider::add-before-refresh-styles gum-forms-controls-slider::remove-before-refresh-styles gum-forms-controls-slider::add-binding-context-changed gum-forms-controls-slider::remove-binding-context-changed gum-forms-controls-slider::add-got-focus gum-forms-controls-slider::remove-got-focus gum-forms-controls-slider::add-key-down gum-forms-controls-slider::remove-key-down gum-forms-controls-slider::add-loaded gum-forms-controls-slider::remove-loaded gum-forms-controls-slider::add-lost-focus gum-forms-controls-slider::remove-lost-focus gum-forms-controls-slider::add-tool-tip-closing gum-forms-controls-slider::remove-tool-tip-closing gum-forms-controls-slider::add-tool-tip-opening gum-forms-controls-slider::remove-tool-tip-opening gum-forms-controls-slider::get-framework-element gum-forms-controls-slider::get-parent-input-receiver gum-forms-controls-slider::remove-from-root gum-forms-controls-slider::add-to-root) ':gum-forms-controls-slider)

;;; mono-game-gum-gue-deriving-container-runtime: re-exports inherited members from gum-wireframe-interactive-gue, rendering-library-graphics-i-renderable, rendering-library-graphics-i-renderable-ipso, rendering-library-graphics-i-visible, rendering-library-i-positioned-sized-object, system-component-model-i-notify-property-changed, gum-wireframe-graphical-ui-element
;;; Skipped (ambiguous across ancestors: gum-wireframe-interactive-gue, gum-wireframe-graphical-ui-element): outside-of-bounds-hit-testing-enabled?
;;; Skipped (ambiguous across ancestors: gum-wireframe-interactive-gue, rendering-library-graphics-i-renderable-ipso): has-cursor-over
;;; Skipped (ambiguous across ancestors: gum-wireframe-interactive-gue, gum-wireframe-graphical-ui-element): remove-from-managers
;;; Skipped (ambiguous across ancestors: gum-wireframe-interactive-gue, gum-wireframe-graphical-ui-element): to-string
;;; Skipped (mono-game-gum-gue-deriving-container-runtime declares its own): batch-key
;;; Skipped (mono-game-gum-gue-deriving-container-runtime declares its own): blend-state
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable, gum-wireframe-graphical-ui-element): wrap
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable, gum-wireframe-graphical-ui-element): end-batch
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable, gum-wireframe-graphical-ui-element): pre-render
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable, gum-wireframe-graphical-ui-element): render
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable, gum-wireframe-graphical-ui-element): start-batch
;;; Skipped (mono-game-gum-gue-deriving-container-runtime declares its own): alpha
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable-ipso, gum-wireframe-graphical-ui-element): children
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable-ipso, gum-wireframe-graphical-ui-element): clips-children
;;; Skipped (mono-game-gum-gue-deriving-container-runtime declares its own): render-target?
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-renderable-ipso, rendering-library-graphics-i-visible, gum-wireframe-graphical-ui-element): parent
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-visible, gum-wireframe-graphical-ui-element): absolute-visible
;;; Skipped (ambiguous across ancestors: rendering-library-graphics-i-visible, gum-wireframe-graphical-ui-element): visible
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): flip-horizontal
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): height
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): name
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): rotation
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): tag
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): width
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): x
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): y
;;; Skipped (ambiguous across ancestors: rendering-library-i-positioned-sized-object, gum-wireframe-graphical-ui-element): z
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, gum-wireframe-graphical-ui-element): add-property-changed
;;; Skipped (ambiguous across ancestors: system-component-model-i-notify-property-changed, gum-wireframe-graphical-ui-element): remove-property-changed
;;; Skipped (mono-game-gum-gue-deriving-container-runtime declares its own): add-to-managers
(cl:import '(gum-wireframe-interactive-gue::current-game-time gum-wireframe-interactive-gue::current-input-receiver gum-wireframe-interactive-gue::last-visual-pushed gum-wireframe-interactive-gue::expose-children-events gum-wireframe-interactive-gue::forms-control-as-object gum-wireframe-interactive-gue::has-events gum-wireframe-interactive-gue::enabled? gum-wireframe-interactive-gue::enabled-recursively? gum-wireframe-interactive-gue::raise-children-events-outside-of-bounds gum-wireframe-interactive-gue::add-next-click-action gum-wireframe-interactive-gue::add-next-push-action gum-wireframe-interactive-gue::call-click gum-wireframe-interactive-gue::call-right-click gum-wireframe-interactive-gue::clear-next-click-actions gum-wireframe-interactive-gue::in-parent-chain? gum-wireframe-interactive-gue::over-children? gum-wireframe-interactive-gue::try-call-dragging gum-wireframe-interactive-gue::try-call-hover-over gum-wireframe-interactive-gue::try-call-push gum-wireframe-interactive-gue::try-call-remove-as-pushed gum-wireframe-interactive-gue::try-call-roll-off gum-wireframe-interactive-gue::try-call-roll-on gum-wireframe-interactive-gue::try-call-roll-over gum-wireframe-interactive-gue::add-click gum-wireframe-interactive-gue::remove-click gum-wireframe-interactive-gue::add-click-preview gum-wireframe-interactive-gue::remove-click-preview gum-wireframe-interactive-gue::add-double-click gum-wireframe-interactive-gue::remove-double-click gum-wireframe-interactive-gue::add-dragging gum-wireframe-interactive-gue::remove-dragging gum-wireframe-interactive-gue::add-enabled-change gum-wireframe-interactive-gue::remove-enabled-change gum-wireframe-interactive-gue::add-hover-over gum-wireframe-interactive-gue::remove-hover-over gum-wireframe-interactive-gue::add-lose-push gum-wireframe-interactive-gue::remove-lose-push gum-wireframe-interactive-gue::add-mouse-wheel-scroll gum-wireframe-interactive-gue::remove-mouse-wheel-scroll gum-wireframe-interactive-gue::add-push gum-wireframe-interactive-gue::remove-push gum-wireframe-interactive-gue::add-push-preview gum-wireframe-interactive-gue::remove-push-preview gum-wireframe-interactive-gue::add-removed-as-pushed gum-wireframe-interactive-gue::remove-removed-as-pushed gum-wireframe-interactive-gue::add-right-click gum-wireframe-interactive-gue::remove-right-click gum-wireframe-interactive-gue::add-roll-off gum-wireframe-interactive-gue::remove-roll-off gum-wireframe-interactive-gue::add-roll-on gum-wireframe-interactive-gue::remove-roll-on gum-wireframe-interactive-gue::add-roll-over gum-wireframe-interactive-gue::remove-roll-over gum-wireframe-interactive-gue::add-roll-over-bubbling gum-wireframe-interactive-gue::remove-roll-over-bubbling rendering-library-graphics-i-renderable-ipso::color-operation rendering-library-graphics-i-renderable-ipso::set-parent-direct rendering-library-graphics-i-renderable-ipso::in-render-target-recursively? rendering-library-graphics-i-renderable-ipso::get-absolute-bottom rendering-library-graphics-i-renderable-ipso::get-absolute-center-x rendering-library-graphics-i-renderable-ipso::get-absolute-center-y rendering-library-graphics-i-renderable-ipso::get-absolute-flip-horizontal rendering-library-graphics-i-renderable-ipso::get-absolute-left rendering-library-graphics-i-renderable-ipso::get-absolute-right rendering-library-graphics-i-renderable-ipso::get-absolute-rotation-matrix rendering-library-graphics-i-renderable-ipso::get-absolute-top rendering-library-graphics-i-renderable-ipso::get-absolute-x rendering-library-graphics-i-renderable-ipso::get-absolute-y rendering-library-graphics-i-renderable-ipso::get-rotation-matrix rendering-library-graphics-i-renderable-ipso::get-top-parent rendering-library-graphics-i-visible::get-absolute-visible rendering-library-i-positioned-sized-object::get-position rendering-library-i-positioned-sized-object::set-position gum-wireframe-graphical-ui-element::add-renderable-to-managers gum-wireframe-graphical-ui-element::apply-markup gum-wireframe-graphical-ui-element::children-updating-parent-layout-calls gum-wireframe-graphical-ui-element::clone-renderable-function gum-wireframe-graphical-ui-element::get-type-call-count gum-wireframe-graphical-ui-element::global-font-scale gum-wireframe-graphical-ui-element::all-layout-suspended? gum-wireframe-graphical-ui-element::property-unsubscribe-call-count gum-wireframe-graphical-ui-element::remove-renderable-from-managers gum-wireframe-graphical-ui-element::save-forms-runtime-properties-action gum-wireframe-graphical-ui-element::set-property-on-renderable gum-wireframe-graphical-ui-element::show-line-rectangles gum-wireframe-graphical-ui-element::throw-exceptions-for-missing-files gum-wireframe-graphical-ui-element::update-font-from-properties gum-wireframe-graphical-ui-element::update-forms-state-action gum-wireframe-graphical-ui-element::update-layout-call-count gum-wireframe-graphical-ui-element::are-updates-applied-when-invisible gum-wireframe-graphical-ui-element::canvas-height gum-wireframe-graphical-ui-element::canvas-width gum-wireframe-graphical-ui-element::missing-file-behavior gum-wireframe-graphical-ui-element::absolute-bottom gum-wireframe-graphical-ui-element::absolute-left gum-wireframe-graphical-ui-element::absolute-right gum-wireframe-graphical-ui-element::absolute-top gum-wireframe-graphical-ui-element::absolute-x gum-wireframe-graphical-ui-element::absolute-y gum-wireframe-graphical-ui-element::animation-controller gum-wireframe-graphical-ui-element::animations gum-wireframe-graphical-ui-element::auto-grid-horizontal-cells gum-wireframe-graphical-ui-element::auto-grid-vertical-cells gum-wireframe-graphical-ui-element::binding-context gum-wireframe-graphical-ui-element::binding-context-binding gum-wireframe-graphical-ui-element::binding-context-binding-property-owner gum-wireframe-graphical-ui-element::categories gum-wireframe-graphical-ui-element::children-layout gum-wireframe-graphical-ui-element::component gum-wireframe-graphical-ui-element::contained-elements gum-wireframe-graphical-ui-element::effective-managers gum-wireframe-graphical-ui-element::effective-parent-gue gum-wireframe-graphical-ui-element::element-gue-containing-this gum-wireframe-graphical-ui-element::element-save gum-wireframe-graphical-ui-element::explicit-i-visible-parent gum-wireframe-graphical-ui-element::height-units gum-wireframe-graphical-ui-element::ignored-by-parent-size gum-wireframe-graphical-ui-element::font-dirty? gum-wireframe-graphical-ui-element::fully-created? gum-wireframe-graphical-ui-element::layout-suspended? gum-wireframe-graphical-ui-element::layer gum-wireframe-graphical-ui-element::managers gum-wireframe-graphical-ui-element::max-height gum-wireframe-graphical-ui-element::max-width gum-wireframe-graphical-ui-element::min-height gum-wireframe-graphical-ui-element::min-width gum-wireframe-graphical-ui-element::parent-gue gum-wireframe-graphical-ui-element::renderable-component gum-wireframe-graphical-ui-element::stacked-row-or-column-dimensions gum-wireframe-graphical-ui-element::stacked-row-or-column-index gum-wireframe-graphical-ui-element::stack-spacing gum-wireframe-graphical-ui-element::states gum-wireframe-graphical-ui-element::text-overflow-vertical-mode gum-wireframe-graphical-ui-element::texture-address gum-wireframe-graphical-ui-element::texture-height gum-wireframe-graphical-ui-element::texture-height-scale gum-wireframe-graphical-ui-element::texture-left gum-wireframe-graphical-ui-element::texture-top gum-wireframe-graphical-ui-element::texture-width gum-wireframe-graphical-ui-element::texture-width-scale gum-wireframe-graphical-ui-element::use-fixed-stack-children-size gum-wireframe-graphical-ui-element::what-this-contains gum-wireframe-graphical-ui-element::width-units gum-wireframe-graphical-ui-element::wraps-children gum-wireframe-graphical-ui-element::x-origin gum-wireframe-graphical-ui-element::x-units gum-wireframe-graphical-ui-element::y-origin gum-wireframe-graphical-ui-element::y-units gum-wireframe-graphical-ui-element::add-category gum-wireframe-graphical-ui-element::add-child gum-wireframe-graphical-ui-element::add-exposed-variable gum-wireframe-graphical-ui-element::add-states gum-wireframe-graphical-ui-element::after-full-creation gum-wireframe-graphical-ui-element::anchor gum-wireframe-graphical-ui-element::animate-self gum-wireframe-graphical-ui-element::apply-state gum-wireframe-graphical-ui-element::apply-state-recursive gum-wireframe-graphical-ui-element::clear-dirty-layout-state gum-wireframe-graphical-ui-element::clear-managers gum-wireframe-graphical-ui-element::clone gum-wireframe-graphical-ui-element::convert-value gum-wireframe-graphical-ui-element::create-children-recursively gum-wireframe-graphical-ui-element::dock gum-wireframe-graphical-ui-element::fill-list-with-children-by-type-recursively gum-wireframe-graphical-ui-element::get-absolute-height gum-wireframe-graphical-ui-element::get-absolute-width gum-wireframe-graphical-ui-element::get-anchor gum-wireframe-graphical-ui-element::get-child-by-name gum-wireframe-graphical-ui-element::get-child-by-name-recursively gum-wireframe-graphical-ui-element::get-child-by-type gum-wireframe-graphical-ui-element::get-child-by-type-recursively gum-wireframe-graphical-ui-element::get-dock gum-wireframe-graphical-ui-element::get-graphical-ui-element-by-name gum-wireframe-graphical-ui-element::get-if-dimensions-depend-on-children gum-wireframe-graphical-ui-element::get-parent-by-name-recursively gum-wireframe-graphical-ui-element::get-parent-by-type-recursively gum-wireframe-graphical-ui-element::interpolate-between gum-wireframe-graphical-ui-element::exposed-variable? gum-wireframe-graphical-ui-element::point-inside? gum-wireframe-graphical-ui-element::move-to-layer gum-wireframe-graphical-ui-element::notify-property-changed gum-wireframe-graphical-ui-element::play-animation gum-wireframe-graphical-ui-element::push-value-to-view-model gum-wireframe-graphical-ui-element::refresh-styles gum-wireframe-graphical-ui-element::refresh-text-overflow-vertical-mode gum-wireframe-graphical-ui-element::remove-child gum-wireframe-graphical-ui-element::resume-layout gum-wireframe-graphical-ui-element::set-binding gum-wireframe-graphical-ui-element::set-contained-object gum-wireframe-graphical-ui-element::set-gue-values gum-wireframe-graphical-ui-element::set-initial-state gum-wireframe-graphical-ui-element::set-property gum-wireframe-graphical-ui-element::set-property-through-reflection gum-wireframe-graphical-ui-element::stop-animation gum-wireframe-graphical-ui-element::suspend-layout gum-wireframe-graphical-ui-element::update-font-recursive gum-wireframe-graphical-ui-element::update-height gum-wireframe-graphical-ui-element::update-layout gum-wireframe-graphical-ui-element::update-texture-values-from gum-wireframe-graphical-ui-element::update-to-font-values gum-wireframe-graphical-ui-element::update-width gum-wireframe-graphical-ui-element::get-parent-offsets gum-wireframe-graphical-ui-element::add-binding-context-changed gum-wireframe-graphical-ui-element::remove-binding-context-changed gum-wireframe-graphical-ui-element::add-inherited-binding-context-changed gum-wireframe-graphical-ui-element::remove-inherited-binding-context-changed gum-wireframe-graphical-ui-element::add-parent-changed gum-wireframe-graphical-ui-element::remove-parent-changed gum-wireframe-graphical-ui-element::add-position-changed gum-wireframe-graphical-ui-element::remove-position-changed gum-wireframe-graphical-ui-element::add-size-changed gum-wireframe-graphical-ui-element::remove-size-changed gum-wireframe-graphical-ui-element::add-visible-changed gum-wireframe-graphical-ui-element::remove-visible-changed gum-wireframe-graphical-ui-element::do-ui-activity-recursively gum-wireframe-graphical-ui-element::add-exposed-variables-recursively gum-wireframe-graphical-ui-element::add-states-and-categories-recursively-to-gue gum-wireframe-graphical-ui-element::apply-variable-references gum-wireframe-graphical-ui-element::create-graphical-component gum-wireframe-graphical-ui-element::set-states-and-categories-recursively gum-wireframe-graphical-ui-element::set-variables-recursively gum-wireframe-graphical-ui-element::export-layout-json gum-wireframe-graphical-ui-element::to-layout-json gum-wireframe-graphical-ui-element::add-to-root gum-wireframe-graphical-ui-element::remove-from-root) ':mono-game-gum-gue-deriving-container-runtime)
(cl:export '(mono-game-gum-gue-deriving-container-runtime::current-game-time mono-game-gum-gue-deriving-container-runtime::current-input-receiver mono-game-gum-gue-deriving-container-runtime::last-visual-pushed mono-game-gum-gue-deriving-container-runtime::expose-children-events mono-game-gum-gue-deriving-container-runtime::forms-control-as-object mono-game-gum-gue-deriving-container-runtime::has-events mono-game-gum-gue-deriving-container-runtime::enabled? mono-game-gum-gue-deriving-container-runtime::enabled-recursively? mono-game-gum-gue-deriving-container-runtime::raise-children-events-outside-of-bounds mono-game-gum-gue-deriving-container-runtime::add-next-click-action mono-game-gum-gue-deriving-container-runtime::add-next-push-action mono-game-gum-gue-deriving-container-runtime::call-click mono-game-gum-gue-deriving-container-runtime::call-right-click mono-game-gum-gue-deriving-container-runtime::clear-next-click-actions mono-game-gum-gue-deriving-container-runtime::in-parent-chain? mono-game-gum-gue-deriving-container-runtime::over-children? mono-game-gum-gue-deriving-container-runtime::try-call-dragging mono-game-gum-gue-deriving-container-runtime::try-call-hover-over mono-game-gum-gue-deriving-container-runtime::try-call-push mono-game-gum-gue-deriving-container-runtime::try-call-remove-as-pushed mono-game-gum-gue-deriving-container-runtime::try-call-roll-off mono-game-gum-gue-deriving-container-runtime::try-call-roll-on mono-game-gum-gue-deriving-container-runtime::try-call-roll-over mono-game-gum-gue-deriving-container-runtime::add-click mono-game-gum-gue-deriving-container-runtime::remove-click mono-game-gum-gue-deriving-container-runtime::add-click-preview mono-game-gum-gue-deriving-container-runtime::remove-click-preview mono-game-gum-gue-deriving-container-runtime::add-double-click mono-game-gum-gue-deriving-container-runtime::remove-double-click mono-game-gum-gue-deriving-container-runtime::add-dragging mono-game-gum-gue-deriving-container-runtime::remove-dragging mono-game-gum-gue-deriving-container-runtime::add-enabled-change mono-game-gum-gue-deriving-container-runtime::remove-enabled-change mono-game-gum-gue-deriving-container-runtime::add-hover-over mono-game-gum-gue-deriving-container-runtime::remove-hover-over mono-game-gum-gue-deriving-container-runtime::add-lose-push mono-game-gum-gue-deriving-container-runtime::remove-lose-push mono-game-gum-gue-deriving-container-runtime::add-mouse-wheel-scroll mono-game-gum-gue-deriving-container-runtime::remove-mouse-wheel-scroll mono-game-gum-gue-deriving-container-runtime::add-push mono-game-gum-gue-deriving-container-runtime::remove-push mono-game-gum-gue-deriving-container-runtime::add-push-preview mono-game-gum-gue-deriving-container-runtime::remove-push-preview mono-game-gum-gue-deriving-container-runtime::add-removed-as-pushed mono-game-gum-gue-deriving-container-runtime::remove-removed-as-pushed mono-game-gum-gue-deriving-container-runtime::add-right-click mono-game-gum-gue-deriving-container-runtime::remove-right-click mono-game-gum-gue-deriving-container-runtime::add-roll-off mono-game-gum-gue-deriving-container-runtime::remove-roll-off mono-game-gum-gue-deriving-container-runtime::add-roll-on mono-game-gum-gue-deriving-container-runtime::remove-roll-on mono-game-gum-gue-deriving-container-runtime::add-roll-over mono-game-gum-gue-deriving-container-runtime::remove-roll-over mono-game-gum-gue-deriving-container-runtime::add-roll-over-bubbling mono-game-gum-gue-deriving-container-runtime::remove-roll-over-bubbling mono-game-gum-gue-deriving-container-runtime::color-operation mono-game-gum-gue-deriving-container-runtime::set-parent-direct mono-game-gum-gue-deriving-container-runtime::in-render-target-recursively? mono-game-gum-gue-deriving-container-runtime::get-absolute-bottom mono-game-gum-gue-deriving-container-runtime::get-absolute-center-x mono-game-gum-gue-deriving-container-runtime::get-absolute-center-y mono-game-gum-gue-deriving-container-runtime::get-absolute-flip-horizontal mono-game-gum-gue-deriving-container-runtime::get-absolute-left mono-game-gum-gue-deriving-container-runtime::get-absolute-right mono-game-gum-gue-deriving-container-runtime::get-absolute-rotation-matrix mono-game-gum-gue-deriving-container-runtime::get-absolute-top mono-game-gum-gue-deriving-container-runtime::get-absolute-x mono-game-gum-gue-deriving-container-runtime::get-absolute-y mono-game-gum-gue-deriving-container-runtime::get-rotation-matrix mono-game-gum-gue-deriving-container-runtime::get-top-parent mono-game-gum-gue-deriving-container-runtime::get-absolute-visible mono-game-gum-gue-deriving-container-runtime::get-position mono-game-gum-gue-deriving-container-runtime::set-position mono-game-gum-gue-deriving-container-runtime::add-renderable-to-managers mono-game-gum-gue-deriving-container-runtime::apply-markup mono-game-gum-gue-deriving-container-runtime::children-updating-parent-layout-calls mono-game-gum-gue-deriving-container-runtime::clone-renderable-function mono-game-gum-gue-deriving-container-runtime::get-type-call-count mono-game-gum-gue-deriving-container-runtime::global-font-scale mono-game-gum-gue-deriving-container-runtime::all-layout-suspended? mono-game-gum-gue-deriving-container-runtime::property-unsubscribe-call-count mono-game-gum-gue-deriving-container-runtime::remove-renderable-from-managers mono-game-gum-gue-deriving-container-runtime::save-forms-runtime-properties-action mono-game-gum-gue-deriving-container-runtime::set-property-on-renderable mono-game-gum-gue-deriving-container-runtime::show-line-rectangles mono-game-gum-gue-deriving-container-runtime::throw-exceptions-for-missing-files mono-game-gum-gue-deriving-container-runtime::update-font-from-properties mono-game-gum-gue-deriving-container-runtime::update-forms-state-action mono-game-gum-gue-deriving-container-runtime::update-layout-call-count mono-game-gum-gue-deriving-container-runtime::are-updates-applied-when-invisible mono-game-gum-gue-deriving-container-runtime::canvas-height mono-game-gum-gue-deriving-container-runtime::canvas-width mono-game-gum-gue-deriving-container-runtime::missing-file-behavior mono-game-gum-gue-deriving-container-runtime::absolute-bottom mono-game-gum-gue-deriving-container-runtime::absolute-left mono-game-gum-gue-deriving-container-runtime::absolute-right mono-game-gum-gue-deriving-container-runtime::absolute-top mono-game-gum-gue-deriving-container-runtime::absolute-x mono-game-gum-gue-deriving-container-runtime::absolute-y mono-game-gum-gue-deriving-container-runtime::animation-controller mono-game-gum-gue-deriving-container-runtime::animations mono-game-gum-gue-deriving-container-runtime::auto-grid-horizontal-cells mono-game-gum-gue-deriving-container-runtime::auto-grid-vertical-cells mono-game-gum-gue-deriving-container-runtime::binding-context mono-game-gum-gue-deriving-container-runtime::binding-context-binding mono-game-gum-gue-deriving-container-runtime::binding-context-binding-property-owner mono-game-gum-gue-deriving-container-runtime::categories mono-game-gum-gue-deriving-container-runtime::children-layout mono-game-gum-gue-deriving-container-runtime::component mono-game-gum-gue-deriving-container-runtime::contained-elements mono-game-gum-gue-deriving-container-runtime::effective-managers mono-game-gum-gue-deriving-container-runtime::effective-parent-gue mono-game-gum-gue-deriving-container-runtime::element-gue-containing-this mono-game-gum-gue-deriving-container-runtime::element-save mono-game-gum-gue-deriving-container-runtime::explicit-i-visible-parent mono-game-gum-gue-deriving-container-runtime::height-units mono-game-gum-gue-deriving-container-runtime::ignored-by-parent-size mono-game-gum-gue-deriving-container-runtime::font-dirty? mono-game-gum-gue-deriving-container-runtime::fully-created? mono-game-gum-gue-deriving-container-runtime::layout-suspended? mono-game-gum-gue-deriving-container-runtime::layer mono-game-gum-gue-deriving-container-runtime::managers mono-game-gum-gue-deriving-container-runtime::max-height mono-game-gum-gue-deriving-container-runtime::max-width mono-game-gum-gue-deriving-container-runtime::min-height mono-game-gum-gue-deriving-container-runtime::min-width mono-game-gum-gue-deriving-container-runtime::parent-gue mono-game-gum-gue-deriving-container-runtime::renderable-component mono-game-gum-gue-deriving-container-runtime::stacked-row-or-column-dimensions mono-game-gum-gue-deriving-container-runtime::stacked-row-or-column-index mono-game-gum-gue-deriving-container-runtime::stack-spacing mono-game-gum-gue-deriving-container-runtime::states mono-game-gum-gue-deriving-container-runtime::text-overflow-vertical-mode mono-game-gum-gue-deriving-container-runtime::texture-address mono-game-gum-gue-deriving-container-runtime::texture-height mono-game-gum-gue-deriving-container-runtime::texture-height-scale mono-game-gum-gue-deriving-container-runtime::texture-left mono-game-gum-gue-deriving-container-runtime::texture-top mono-game-gum-gue-deriving-container-runtime::texture-width mono-game-gum-gue-deriving-container-runtime::texture-width-scale mono-game-gum-gue-deriving-container-runtime::use-fixed-stack-children-size mono-game-gum-gue-deriving-container-runtime::what-this-contains mono-game-gum-gue-deriving-container-runtime::width-units mono-game-gum-gue-deriving-container-runtime::wraps-children mono-game-gum-gue-deriving-container-runtime::x-origin mono-game-gum-gue-deriving-container-runtime::x-units mono-game-gum-gue-deriving-container-runtime::y-origin mono-game-gum-gue-deriving-container-runtime::y-units mono-game-gum-gue-deriving-container-runtime::add-category mono-game-gum-gue-deriving-container-runtime::add-child mono-game-gum-gue-deriving-container-runtime::add-exposed-variable mono-game-gum-gue-deriving-container-runtime::add-states mono-game-gum-gue-deriving-container-runtime::after-full-creation mono-game-gum-gue-deriving-container-runtime::anchor mono-game-gum-gue-deriving-container-runtime::animate-self mono-game-gum-gue-deriving-container-runtime::apply-state mono-game-gum-gue-deriving-container-runtime::apply-state-recursive mono-game-gum-gue-deriving-container-runtime::clear-dirty-layout-state mono-game-gum-gue-deriving-container-runtime::clear-managers mono-game-gum-gue-deriving-container-runtime::clone mono-game-gum-gue-deriving-container-runtime::convert-value mono-game-gum-gue-deriving-container-runtime::create-children-recursively mono-game-gum-gue-deriving-container-runtime::dock mono-game-gum-gue-deriving-container-runtime::fill-list-with-children-by-type-recursively mono-game-gum-gue-deriving-container-runtime::get-absolute-height mono-game-gum-gue-deriving-container-runtime::get-absolute-width mono-game-gum-gue-deriving-container-runtime::get-anchor mono-game-gum-gue-deriving-container-runtime::get-child-by-name mono-game-gum-gue-deriving-container-runtime::get-child-by-name-recursively mono-game-gum-gue-deriving-container-runtime::get-child-by-type mono-game-gum-gue-deriving-container-runtime::get-child-by-type-recursively mono-game-gum-gue-deriving-container-runtime::get-dock mono-game-gum-gue-deriving-container-runtime::get-graphical-ui-element-by-name mono-game-gum-gue-deriving-container-runtime::get-if-dimensions-depend-on-children mono-game-gum-gue-deriving-container-runtime::get-parent-by-name-recursively mono-game-gum-gue-deriving-container-runtime::get-parent-by-type-recursively mono-game-gum-gue-deriving-container-runtime::interpolate-between mono-game-gum-gue-deriving-container-runtime::exposed-variable? mono-game-gum-gue-deriving-container-runtime::point-inside? mono-game-gum-gue-deriving-container-runtime::move-to-layer mono-game-gum-gue-deriving-container-runtime::notify-property-changed mono-game-gum-gue-deriving-container-runtime::play-animation mono-game-gum-gue-deriving-container-runtime::push-value-to-view-model mono-game-gum-gue-deriving-container-runtime::refresh-styles mono-game-gum-gue-deriving-container-runtime::refresh-text-overflow-vertical-mode mono-game-gum-gue-deriving-container-runtime::remove-child mono-game-gum-gue-deriving-container-runtime::resume-layout mono-game-gum-gue-deriving-container-runtime::set-binding mono-game-gum-gue-deriving-container-runtime::set-contained-object mono-game-gum-gue-deriving-container-runtime::set-gue-values mono-game-gum-gue-deriving-container-runtime::set-initial-state mono-game-gum-gue-deriving-container-runtime::set-property mono-game-gum-gue-deriving-container-runtime::set-property-through-reflection mono-game-gum-gue-deriving-container-runtime::stop-animation mono-game-gum-gue-deriving-container-runtime::suspend-layout mono-game-gum-gue-deriving-container-runtime::update-font-recursive mono-game-gum-gue-deriving-container-runtime::update-height mono-game-gum-gue-deriving-container-runtime::update-layout mono-game-gum-gue-deriving-container-runtime::update-texture-values-from mono-game-gum-gue-deriving-container-runtime::update-to-font-values mono-game-gum-gue-deriving-container-runtime::update-width mono-game-gum-gue-deriving-container-runtime::get-parent-offsets mono-game-gum-gue-deriving-container-runtime::add-binding-context-changed mono-game-gum-gue-deriving-container-runtime::remove-binding-context-changed mono-game-gum-gue-deriving-container-runtime::add-inherited-binding-context-changed mono-game-gum-gue-deriving-container-runtime::remove-inherited-binding-context-changed mono-game-gum-gue-deriving-container-runtime::add-parent-changed mono-game-gum-gue-deriving-container-runtime::remove-parent-changed mono-game-gum-gue-deriving-container-runtime::add-position-changed mono-game-gum-gue-deriving-container-runtime::remove-position-changed mono-game-gum-gue-deriving-container-runtime::add-size-changed mono-game-gum-gue-deriving-container-runtime::remove-size-changed mono-game-gum-gue-deriving-container-runtime::add-visible-changed mono-game-gum-gue-deriving-container-runtime::remove-visible-changed mono-game-gum-gue-deriving-container-runtime::do-ui-activity-recursively mono-game-gum-gue-deriving-container-runtime::add-exposed-variables-recursively mono-game-gum-gue-deriving-container-runtime::add-states-and-categories-recursively-to-gue mono-game-gum-gue-deriving-container-runtime::apply-variable-references mono-game-gum-gue-deriving-container-runtime::create-graphical-component mono-game-gum-gue-deriving-container-runtime::set-states-and-categories-recursively mono-game-gum-gue-deriving-container-runtime::set-variables-recursively mono-game-gum-gue-deriving-container-runtime::export-layout-json mono-game-gum-gue-deriving-container-runtime::to-layout-json mono-game-gum-gue-deriving-container-runtime::add-to-root mono-game-gum-gue-deriving-container-runtime::remove-from-root) ':mono-game-gum-gue-deriving-container-runtime)

;;; gum-forms-controls-primitives-range-base: re-exports inherited members from gum-forms-controls-framework-element, system-component-model-i-notify-property-changed
;;; Skipped (gum-forms-controls-primitives-range-base declares its own): enabled?
;;; Skipped (gum-forms-controls-primitives-range-base declares its own): react-to-visual-changed
;;; Skipped (gum-forms-controls-primitives-range-base declares its own): react-to-visual-removed
;;; Skipped (gum-forms-controls-primitives-range-base declares its own): refresh-internal-visual-references
;;; Skipped (ambiguous across ancestors: gum-forms-controls-framework-element, system-component-model-i-notify-property-changed): add-property-changed
;;; Skipped (ambiguous across ancestors: gum-forms-controls-framework-element, system-component-model-i-notify-property-changed): remove-property-changed
(cl:shadowing-import '(gum-forms-controls-framework-element::close) ':gum-forms-controls-primitives-range-base)
(cl:import '(gum-forms-controls-framework-element::+disabled-focused-state+ gum-forms-controls-framework-element::+disabled-focused-state-name+ gum-forms-controls-framework-element::+disabled-state+ gum-forms-controls-framework-element::+disabled-state-name+ gum-forms-controls-framework-element::+enabled-state+ gum-forms-controls-framework-element::+enabled-state-name+ gum-forms-controls-framework-element::+focused-state+ gum-forms-controls-framework-element::+focused-state-name+ gum-forms-controls-framework-element::+highlighted-focused-state+ gum-forms-controls-framework-element::+highlighted-focused-state-name+ gum-forms-controls-framework-element::+highlighted-state+ gum-forms-controls-framework-element::+highlighted-state-name+ gum-forms-controls-framework-element::+horizontal-state-name+ gum-forms-controls-framework-element::+pushed-state+ gum-forms-controls-framework-element::+pushed-state-name+ gum-forms-controls-framework-element::+selected-highlighted-state-name+ gum-forms-controls-framework-element::+selected-state-name+ gum-forms-controls-framework-element::+vertical-state-name+ gum-forms-controls-framework-element::default-forms-components gum-forms-controls-framework-element::default-forms-templates gum-forms-controls-framework-element::game-pads-for-ui-control gum-forms-controls-framework-element::keyboards-for-ui-control gum-forms-controls-framework-element::click-combos gum-forms-controls-framework-element::main-cursor gum-forms-controls-framework-element::main-keyboard gum-forms-controls-framework-element::modal-root gum-forms-controls-framework-element::popup-root gum-forms-controls-framework-element::tab-key-combos gum-forms-controls-framework-element::tab-reverse-key-combos gum-forms-controls-framework-element::absolute-left gum-forms-controls-framework-element::absolute-top gum-forms-controls-framework-element::actual-height gum-forms-controls-framework-element::actual-width gum-forms-controls-framework-element::binding-context gum-forms-controls-framework-element::custom-cursor gum-forms-controls-framework-element::gamepad-tabbing-focus-behavior gum-forms-controls-framework-element::height gum-forms-controls-framework-element::height-units gum-forms-controls-framework-element::focused? gum-forms-controls-framework-element::tab-navigation-enabled? gum-forms-controls-framework-element::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-framework-element::visible? gum-forms-controls-framework-element::max-height gum-forms-controls-framework-element::max-width gum-forms-controls-framework-element::min-height gum-forms-controls-framework-element::min-width gum-forms-controls-framework-element::name gum-forms-controls-framework-element::parent-framework-element gum-forms-controls-framework-element::tool-tip gum-forms-controls-framework-element::visual gum-forms-controls-framework-element::width gum-forms-controls-framework-element::width-units gum-forms-controls-framework-element::x gum-forms-controls-framework-element::x-origin gum-forms-controls-framework-element::x-units gum-forms-controls-framework-element::y gum-forms-controls-framework-element::y-origin gum-forms-controls-framework-element::y-units gum-forms-controls-framework-element::add-child gum-forms-controls-framework-element::anchor gum-forms-controls-framework-element::apply-runtime-properties gum-forms-controls-framework-element::call-loaded gum-forms-controls-framework-element::clear-binding gum-forms-controls-framework-element::dock gum-forms-controls-framework-element::get-desired-state gum-forms-controls-framework-element::get-desired-state-with-checked gum-forms-controls-framework-element::get-graphical-ui-element-for gum-forms-controls-framework-element::get-graphical-ui-element-for-framework-element gum-forms-controls-framework-element::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-framework-element::get-if-is-on-this-or-child-visual gum-forms-controls-framework-element::get-if-push-input-is-held gum-forms-controls-framework-element::get-state gum-forms-controls-framework-element::get-visual gum-forms-controls-framework-element::get-visual<> gum-forms-controls-framework-element::handle-gamepad-navigation gum-forms-controls-framework-element::handle-keyboard-focus-update gum-forms-controls-framework-element::handle-tab gum-forms-controls-framework-element::handle-tab* gum-forms-controls-framework-element::handle-visual-binding-context-changed gum-forms-controls-framework-element::data-bound? gum-forms-controls-framework-element::on-binding-context-changed gum-forms-controls-framework-element::on-property-changed gum-forms-controls-framework-element::push-value-to-view-model gum-forms-controls-framework-element::raise-key-down gum-forms-controls-framework-element::register-runtime-property gum-forms-controls-framework-element::register-runtime-property<> gum-forms-controls-framework-element::remove-child gum-forms-controls-framework-element::reposition-to-keep-in-screen gum-forms-controls-framework-element::save-runtime-properties gum-forms-controls-framework-element::set-binding gum-forms-controls-framework-element::show gum-forms-controls-framework-element::to-string gum-forms-controls-framework-element::update-state gum-forms-controls-framework-element::update-state-recursively gum-forms-controls-framework-element::add-after-refresh-styles gum-forms-controls-framework-element::remove-after-refresh-styles gum-forms-controls-framework-element::add-before-refresh-styles gum-forms-controls-framework-element::remove-before-refresh-styles gum-forms-controls-framework-element::add-binding-context-changed gum-forms-controls-framework-element::remove-binding-context-changed gum-forms-controls-framework-element::add-got-focus gum-forms-controls-framework-element::remove-got-focus gum-forms-controls-framework-element::add-key-down gum-forms-controls-framework-element::remove-key-down gum-forms-controls-framework-element::add-loaded gum-forms-controls-framework-element::remove-loaded gum-forms-controls-framework-element::add-lost-focus gum-forms-controls-framework-element::remove-lost-focus gum-forms-controls-framework-element::add-tool-tip-closing gum-forms-controls-framework-element::remove-tool-tip-closing gum-forms-controls-framework-element::add-tool-tip-opening gum-forms-controls-framework-element::remove-tool-tip-opening gum-forms-controls-framework-element::get-framework-element gum-forms-controls-framework-element::get-parent-input-receiver gum-forms-controls-framework-element::remove-from-root gum-forms-controls-framework-element::add-to-root) ':gum-forms-controls-primitives-range-base)
(cl:export '(gum-forms-controls-primitives-range-base::+disabled-focused-state+ gum-forms-controls-primitives-range-base::+disabled-focused-state-name+ gum-forms-controls-primitives-range-base::+disabled-state+ gum-forms-controls-primitives-range-base::+disabled-state-name+ gum-forms-controls-primitives-range-base::+enabled-state+ gum-forms-controls-primitives-range-base::+enabled-state-name+ gum-forms-controls-primitives-range-base::+focused-state+ gum-forms-controls-primitives-range-base::+focused-state-name+ gum-forms-controls-primitives-range-base::+highlighted-focused-state+ gum-forms-controls-primitives-range-base::+highlighted-focused-state-name+ gum-forms-controls-primitives-range-base::+highlighted-state+ gum-forms-controls-primitives-range-base::+highlighted-state-name+ gum-forms-controls-primitives-range-base::+horizontal-state-name+ gum-forms-controls-primitives-range-base::+pushed-state+ gum-forms-controls-primitives-range-base::+pushed-state-name+ gum-forms-controls-primitives-range-base::+selected-highlighted-state-name+ gum-forms-controls-primitives-range-base::+selected-state-name+ gum-forms-controls-primitives-range-base::+vertical-state-name+ gum-forms-controls-primitives-range-base::default-forms-components gum-forms-controls-primitives-range-base::default-forms-templates gum-forms-controls-primitives-range-base::game-pads-for-ui-control gum-forms-controls-primitives-range-base::keyboards-for-ui-control gum-forms-controls-primitives-range-base::click-combos gum-forms-controls-primitives-range-base::main-cursor gum-forms-controls-primitives-range-base::main-keyboard gum-forms-controls-primitives-range-base::modal-root gum-forms-controls-primitives-range-base::popup-root gum-forms-controls-primitives-range-base::tab-key-combos gum-forms-controls-primitives-range-base::tab-reverse-key-combos gum-forms-controls-primitives-range-base::absolute-left gum-forms-controls-primitives-range-base::absolute-top gum-forms-controls-primitives-range-base::actual-height gum-forms-controls-primitives-range-base::actual-width gum-forms-controls-primitives-range-base::binding-context gum-forms-controls-primitives-range-base::custom-cursor gum-forms-controls-primitives-range-base::gamepad-tabbing-focus-behavior gum-forms-controls-primitives-range-base::height gum-forms-controls-primitives-range-base::height-units gum-forms-controls-primitives-range-base::focused? gum-forms-controls-primitives-range-base::tab-navigation-enabled? gum-forms-controls-primitives-range-base::using-left-and-right-gamepad-directions-for-navigation? gum-forms-controls-primitives-range-base::visible? gum-forms-controls-primitives-range-base::max-height gum-forms-controls-primitives-range-base::max-width gum-forms-controls-primitives-range-base::min-height gum-forms-controls-primitives-range-base::min-width gum-forms-controls-primitives-range-base::name gum-forms-controls-primitives-range-base::parent-framework-element gum-forms-controls-primitives-range-base::tool-tip gum-forms-controls-primitives-range-base::visual gum-forms-controls-primitives-range-base::width gum-forms-controls-primitives-range-base::width-units gum-forms-controls-primitives-range-base::x gum-forms-controls-primitives-range-base::x-origin gum-forms-controls-primitives-range-base::x-units gum-forms-controls-primitives-range-base::y gum-forms-controls-primitives-range-base::y-origin gum-forms-controls-primitives-range-base::y-units gum-forms-controls-primitives-range-base::add-child gum-forms-controls-primitives-range-base::anchor gum-forms-controls-primitives-range-base::apply-runtime-properties gum-forms-controls-primitives-range-base::call-loaded gum-forms-controls-primitives-range-base::clear-binding gum-forms-controls-primitives-range-base::close gum-forms-controls-primitives-range-base::dock gum-forms-controls-primitives-range-base::get-desired-state gum-forms-controls-primitives-range-base::get-desired-state-with-checked gum-forms-controls-primitives-range-base::get-graphical-ui-element-for gum-forms-controls-primitives-range-base::get-graphical-ui-element-for-framework-element gum-forms-controls-primitives-range-base::get-if-gamepad-or-keyboard-primary-push-input-is-held gum-forms-controls-primitives-range-base::get-if-is-on-this-or-child-visual gum-forms-controls-primitives-range-base::get-if-push-input-is-held gum-forms-controls-primitives-range-base::get-state gum-forms-controls-primitives-range-base::get-visual gum-forms-controls-primitives-range-base::get-visual<> gum-forms-controls-primitives-range-base::handle-gamepad-navigation gum-forms-controls-primitives-range-base::handle-keyboard-focus-update gum-forms-controls-primitives-range-base::handle-tab gum-forms-controls-primitives-range-base::handle-tab* gum-forms-controls-primitives-range-base::handle-visual-binding-context-changed gum-forms-controls-primitives-range-base::data-bound? gum-forms-controls-primitives-range-base::on-binding-context-changed gum-forms-controls-primitives-range-base::on-property-changed gum-forms-controls-primitives-range-base::push-value-to-view-model gum-forms-controls-primitives-range-base::raise-key-down gum-forms-controls-primitives-range-base::register-runtime-property gum-forms-controls-primitives-range-base::register-runtime-property<> gum-forms-controls-primitives-range-base::remove-child gum-forms-controls-primitives-range-base::reposition-to-keep-in-screen gum-forms-controls-primitives-range-base::save-runtime-properties gum-forms-controls-primitives-range-base::set-binding gum-forms-controls-primitives-range-base::show gum-forms-controls-primitives-range-base::to-string gum-forms-controls-primitives-range-base::update-state gum-forms-controls-primitives-range-base::update-state-recursively gum-forms-controls-primitives-range-base::add-after-refresh-styles gum-forms-controls-primitives-range-base::remove-after-refresh-styles gum-forms-controls-primitives-range-base::add-before-refresh-styles gum-forms-controls-primitives-range-base::remove-before-refresh-styles gum-forms-controls-primitives-range-base::add-binding-context-changed gum-forms-controls-primitives-range-base::remove-binding-context-changed gum-forms-controls-primitives-range-base::add-got-focus gum-forms-controls-primitives-range-base::remove-got-focus gum-forms-controls-primitives-range-base::add-key-down gum-forms-controls-primitives-range-base::remove-key-down gum-forms-controls-primitives-range-base::add-loaded gum-forms-controls-primitives-range-base::remove-loaded gum-forms-controls-primitives-range-base::add-lost-focus gum-forms-controls-primitives-range-base::remove-lost-focus gum-forms-controls-primitives-range-base::add-tool-tip-closing gum-forms-controls-primitives-range-base::remove-tool-tip-closing gum-forms-controls-primitives-range-base::add-tool-tip-opening gum-forms-controls-primitives-range-base::remove-tool-tip-opening gum-forms-controls-primitives-range-base::get-framework-element gum-forms-controls-primitives-range-base::get-parent-input-receiver gum-forms-controls-primitives-range-base::remove-from-root gum-forms-controls-primitives-range-base::add-to-root) ':gum-forms-controls-primitives-range-base)

