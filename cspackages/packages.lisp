;;; Generated automatically. Do not edit.
;;; Generator Version: 30
;;; Creation Date: 2026-07-04T19:51:37Z

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
           #:csharp-overload-supplied-args))

;;; Source File: system-console.lisp
;;; C# Class: System.Console
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-uri-kind.lisp
;;; C# Class: System.UriKind
;;; Constant Properties: *
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
  ))

;;; Source File: system-convert.lisp
;;; C# Class: System.Convert
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-app-domain.lisp
;;; C# Class: System.AppDomain
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-io-path.lisp
;;; C# Class: System.IO.Path
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-boolean.lisp
;;; C# Class: System.Boolean
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-type.lisp
;;; C# Class: System.Type
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-object.lisp
;;; C# Class: System.Object
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-double.lisp
;;; C# Class: System.Double
;;; Constant Properties: (none)
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
  ))

;;; Source File: system-reflection-member-info.lisp
;;; C# Class: System.Reflection.MemberInfo
;;; Constant Properties: (none)
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

;;; Source File: microsoft-xna-framework-vector2.lisp
;;; C# Class: Microsoft.Xna.Framework.Vector2
;;; Constant Properties: *
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
  ))

;;; Source File: microsoft-xna-framework-rectangle.lisp
;;; C# Class: Microsoft.Xna.Framework.Rectangle
;;; Constant Properties: *
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
  ))

;;; Source File: microsoft-xna-framework-point.lisp
;;; C# Class: Microsoft.Xna.Framework.Point
;;; Constant Properties: *
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
  ))

;;; Source File: microsoft-xna-framework-game-time.lisp
;;; C# Class: Microsoft.Xna.Framework.GameTime
;;; Constant Properties: (none)
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
  ))

;;; Source File: microsoft-xna-framework-game-window.lisp
;;; C# Class: Microsoft.Xna.Framework.GameWindow
;;; Constant Properties: (none)
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
  ))

;;; Source File: microsoft-xna-framework-input-keyboard.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Keyboard
;;; Constant Properties: (none)
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
(cl:defpackage :microsoft-xna-framework-input-mouse
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:get-state
   #:set-cursor
   #:set-position
  ))

;;; Source File: microsoft-xna-framework-input-mouse-state.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.MouseState
;;; Constant Properties: (none)
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
(cl:defpackage :microsoft-xna-framework-input-touch-touch-panel
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:gesture-available?
   #:get-capabilities
   #:get-state
   #:read-gesture
  ))

;;; Source File: microsoft-xna-framework-input-touch-touch-collection.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.TouchCollection
;;; Constant Properties: (none)
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
  ))

;;; Source File: microsoft-xna-framework-input-touch-touch-location.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.TouchLocation
;;; Constant Properties: (none)
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
  ))

;;; Source File: microsoft-xna-framework-input-touch-gesture-sample.lisp
;;; C# Class: Microsoft.Xna.Framework.Input.Touch.GestureSample
;;; Constant Properties: (none)
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
  ))

;;; Source File: microsoft-xna-framework-content-content-manager.lisp
;;; C# Class: Microsoft.Xna.Framework.Content.ContentManager
;;; Constant Properties: (none)
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
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-effects.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteEffects
;;; Constant Properties: (none)
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
(cl:defpackage :microsoft-xna-framework-graphics-graphics-device
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
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
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-batch.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteBatch
;;; Constant Properties: (none)
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

;;; Source File: microsoft-xna-framework-graphics-sprite-font.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteFont
;;; Constant Properties: (none)
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
(cl:defpackage :microsoft-xna-framework-player-index
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+four+
   #:+one+
   #:+three+
   #:+two+
   #:value__
  ))

;;; Source File: microsoft-xna-framework-audio-sound-effect.lisp
;;; C# Class: Microsoft.Xna.Framework.Audio.SoundEffect
;;; Constant Properties: (none)
(cl:defpackage :microsoft-xna-framework-audio-sound-effect
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
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
   #:move-next
   #:move-previous
   #:pause
   #:play
   #:resume
   #:stop
  ))

;;; Source File: gum-wireframe-anchor.lisp
;;; C# Class: Gum.Wireframe.Anchor
;;; Constant Properties: (none)
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

;;; Source File: rendering-library-content-i-content-loader.lisp
;;; C# Class: RenderingLibrary.Content.IContentLoader
;;; Constant Properties: (none)
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

;;; Source File: mono-game-gum-gum-service.lisp
;;; C# Class: MonoGameGum.GumService
;;; Constant Properties: (none)
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
  ))

;;; Source File: gum-forms-controls-framework-element.lisp
;;; C# Class: Gum.Forms.Controls.FrameworkElement
;;; Constant Properties: (none)
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
  ))

;;; Source File: gum-forms-controls-panel.lisp
;;; C# Class: Gum.Forms.Controls.Panel
;;; Constant Properties: (none)
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

;;; Source File: mono-game-gum-gue-deriving-text-runtime.lisp
;;; C# Class: MonoGameGum.GueDeriving.TextRuntime
;;; Constant Properties: (none)
(cl:defpackage :mono-game-gum-gue-deriving-text-runtime
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:default-height
   #:default-height-units
   #:default-width
   #:default-width-units
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
  ))

;;; Source File: gum-forms-default-visuals-version.lisp
;;; C# Class: Gum.Forms.DefaultVisualsVersion
;;; Constant Properties: (none)
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

;;; Source File: system-collections-generic-list-1.lisp
;;; C# Class: System.Collections.Generic.List`1
;;; Constant Properties: (none)
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

