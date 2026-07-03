;;; Generated automatically. Do not edit.
;;; Generator Version: 23
;;; Creation Date: 2026-07-03T13:50:10Z

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
   #:write-char
   #:write-string
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
   #:beep-int32-int32
   #:clear
   #:get-cursor-position
   #:move-buffer-area
   #:move-buffer-area-int32-int32-int32-int32-int32-int32
   #:move-buffer-area-int32-int32-int32-int32-int32-int32-char-console-color-console-color
   #:open-standard-error
   #:open-standard-error-int32
   #:open-standard-input
   #:open-standard-input-int32
   #:open-standard-output
   #:open-standard-output-int32
   #:read
   #:read-key
   #:read-key-boolean
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
   #:write-boolean
   #:write-char
   #:write-char[]
   #:write-double
   #:write-decimal
   #:write-single
   #:write-int32
   #:write-u-int32
   #:write-int64
   #:write-u-int64
   #:write-object
   #:write-string
   #:write-char]
   #:write-string-object
   #:write-string-object]
   #:write-string-object-object
   #:write-char[]-int32-int32
   #:write-string-object-object-object
   #:write-line
   #:write-line-boolean
   #:write-line-char
   #:write-line-char[]
   #:write-line-decimal
   #:write-line-double
   #:write-line-single
   #:write-line-int32
   #:write-line-u-int32
   #:write-line-int64
   #:write-line-u-int64
   #:write-line-object
   #:write-line-string
   #:write-line-char]
   #:write-line-string-object
   #:write-line-string-object]
   #:write-line-char[]-int32-int32
   #:write-line-string-object-object
   #:write-line-string-object-object-object
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
   #:new-int64
   #:new-int32-int32-int32
   #:new-int32-int32-int32-int32
   #:new-int32-int32-int32-int32-int32
   #:new-int32-int32-int32-int32-int32-int32
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
   #:--time-span
   #:--time-span-time-span
   #:*
   #:*-time-span-double
   #:*-double-time-span
   #:/
   #:/-time-span-double
   #:/-time-span-time-span
   #:+
   #:+-time-span
   #:+-time-span-time-span
   #:<
   #:<=
   #:=
   #:>
   #:>=
   #:add
   #:compare
   #:compare-to
   #:compare-to-object
   #:compare-to-time-span
   #:divide
   #:divide-double
   #:divide-time-span
   #:duration
   #:equals
   #:equals*
   #:equals-object
   #:equals-time-span
   #:equals-time-span-time-span
   #:from-days
   #:from-days-double
   #:from-days-int32
   #:from-days-int32-int32-int64-int64-int64-int64
   #:from-hours
   #:from-hours-int32
   #:from-hours-double
   #:from-hours-int32-int64-int64-int64-int64
   #:from-microseconds
   #:from-microseconds-int64
   #:from-microseconds-double
   #:from-milliseconds
   #:from-milliseconds-int64
   #:from-milliseconds-double
   #:from-milliseconds-int64-int64
   #:from-minutes
   #:from-minutes-int64
   #:from-minutes-double
   #:from-minutes-int64-int64-int64-int64
   #:from-seconds
   #:from-seconds-int64
   #:from-seconds-double
   #:from-seconds-int64-int64-int64
   #:from-ticks
   #:get-hash-code
   #:multiply
   #:negate
   #:not=
   #:parse
   #:parse-string
   #:parse-string-i-format-provider
   #:parse-char]-i-format-provider
   #:parse-exact
   #:parse-exact-string-string-i-format-provider
   #:parse-exact-string-string[]-i-format-provider
   #:parse-exact-string-string-i-format-provider-time-span-styles
   #:parse-exact-char]-char]-i-format-provider-time-span-styles
   #:parse-exact-string-string[]-i-format-provider-time-span-styles
   #:parse-exact-char]-string[]-i-format-provider-time-span-styles
   #:subtract
   #:to-string
   #:to-string-string
   #:to-string-string-i-format-provider
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
   #:new-string
   #:new-string-boolean
   #:new-string-uri-kind
   #:new-uri-string
   #:new-serialization-info-streaming-context
   #:new-uri-uri
   #:new-uri-string-boolean
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
   #:equals-object
   #:equals-uri
   #:escape
   #:escape-data-string
   #:escape-data-string-string
   #:escape-data-string-char]
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
   #:unescape-data-string-string
   #:unescape-data-string-char]
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
   #:change-type-object-type-code
   #:change-type-object-type
   #:change-type-object-type-code-i-format-provider
   #:change-type-object-type-i-format-provider
   #:from-base64-char-array
   #:from-base64-string
   #:from-hex-string
   #:from-hex-string-string
   #:from-hex-string-char]
   #:from-hex-string-byte]
   #:get-type-code
   #:db-null?
   #:to-base64-char-array
   #:to-base64-char-array-byte[]-int32-int32-char[]-int32
   #:to-base64-char-array-byte[]-int32-int32-char[]-int32-base64-formatting-options
   #:to-base64-string
   #:to-base64-string-byte[]
   #:to-base64-string-byte[]-base64-formatting-options
   #:to-base64-string-byte]-base64-formatting-options
   #:to-base64-string-byte[]-int32-int32
   #:to-base64-string-byte[]-int32-int32-base64-formatting-options
   #:to-boolean
   #:to-boolean-object
   #:to-boolean-boolean
   #:to-boolean-s-byte
   #:to-boolean-char
   #:to-boolean-byte
   #:to-boolean-int16
   #:to-boolean-u-int16
   #:to-boolean-int32
   #:to-boolean-u-int32
   #:to-boolean-int64
   #:to-boolean-u-int64
   #:to-boolean-string
   #:to-boolean-single
   #:to-boolean-double
   #:to-boolean-decimal
   #:to-boolean-date-time
   #:to-boolean-object-i-format-provider
   #:to-boolean-string-i-format-provider
   #:to-byte
   #:to-byte-object
   #:to-byte-boolean
   #:to-byte-byte
   #:to-byte-char
   #:to-byte-s-byte
   #:to-byte-int16
   #:to-byte-u-int16
   #:to-byte-int32
   #:to-byte-u-int32
   #:to-byte-int64
   #:to-byte-u-int64
   #:to-byte-single
   #:to-byte-double
   #:to-byte-decimal
   #:to-byte-string
   #:to-byte-date-time
   #:to-byte-object-i-format-provider
   #:to-byte-string-i-format-provider
   #:to-byte-string-int32
   #:to-char
   #:to-char-object
   #:to-char-boolean
   #:to-char-char
   #:to-char-s-byte
   #:to-char-byte
   #:to-char-int16
   #:to-char-u-int16
   #:to-char-int32
   #:to-char-u-int32
   #:to-char-int64
   #:to-char-u-int64
   #:to-char-string
   #:to-char-single
   #:to-char-double
   #:to-char-decimal
   #:to-char-date-time
   #:to-char-object-i-format-provider
   #:to-char-string-i-format-provider
   #:to-date-time
   #:to-date-time-date-time
   #:to-date-time-object
   #:to-date-time-string
   #:to-date-time-s-byte
   #:to-date-time-byte
   #:to-date-time-int16
   #:to-date-time-u-int16
   #:to-date-time-int32
   #:to-date-time-u-int32
   #:to-date-time-int64
   #:to-date-time-u-int64
   #:to-date-time-boolean
   #:to-date-time-char
   #:to-date-time-single
   #:to-date-time-double
   #:to-date-time-decimal
   #:to-date-time-object-i-format-provider
   #:to-date-time-string-i-format-provider
   #:to-decimal
   #:to-decimal-object
   #:to-decimal-s-byte
   #:to-decimal-byte
   #:to-decimal-char
   #:to-decimal-int16
   #:to-decimal-u-int16
   #:to-decimal-int32
   #:to-decimal-u-int32
   #:to-decimal-int64
   #:to-decimal-u-int64
   #:to-decimal-single
   #:to-decimal-double
   #:to-decimal-string
   #:to-decimal-decimal
   #:to-decimal-boolean
   #:to-decimal-date-time
   #:to-decimal-object-i-format-provider
   #:to-decimal-string-i-format-provider
   #:to-double
   #:to-double-object
   #:to-double-s-byte
   #:to-double-byte
   #:to-double-int16
   #:to-double-char
   #:to-double-u-int16
   #:to-double-int32
   #:to-double-u-int32
   #:to-double-int64
   #:to-double-u-int64
   #:to-double-single
   #:to-double-double
   #:to-double-decimal
   #:to-double-string
   #:to-double-boolean
   #:to-double-date-time
   #:to-double-object-i-format-provider
   #:to-double-string-i-format-provider
   #:to-hex-string
   #:to-hex-string-byte[]
   #:to-hex-string-byte]
   #:to-hex-string-byte[]-int32-int32
   #:to-hex-string-lower
   #:to-hex-string-lower-byte[]
   #:to-hex-string-lower-byte]
   #:to-hex-string-lower-byte[]-int32-int32
   #:to-int16
   #:to-int16-object
   #:to-int16-boolean
   #:to-int16-char
   #:to-int16-s-byte
   #:to-int16-byte
   #:to-int16-u-int16
   #:to-int16-int32
   #:to-int16-u-int32
   #:to-int16-int16
   #:to-int16-int64
   #:to-int16-u-int64
   #:to-int16-single
   #:to-int16-double
   #:to-int16-decimal
   #:to-int16-string
   #:to-int16-date-time
   #:to-int16-object-i-format-provider
   #:to-int16-string-i-format-provider
   #:to-int16-string-int32
   #:to-int32
   #:to-int32-object
   #:to-int32-boolean
   #:to-int32-char
   #:to-int32-s-byte
   #:to-int32-byte
   #:to-int32-int16
   #:to-int32-u-int16
   #:to-int32-u-int32
   #:to-int32-int32
   #:to-int32-int64
   #:to-int32-u-int64
   #:to-int32-single
   #:to-int32-double
   #:to-int32-decimal
   #:to-int32-string
   #:to-int32-date-time
   #:to-int32-object-i-format-provider
   #:to-int32-string-i-format-provider
   #:to-int32-string-int32
   #:to-int64
   #:to-int64-object
   #:to-int64-boolean
   #:to-int64-char
   #:to-int64-s-byte
   #:to-int64-byte
   #:to-int64-int16
   #:to-int64-u-int16
   #:to-int64-int32
   #:to-int64-u-int32
   #:to-int64-u-int64
   #:to-int64-int64
   #:to-int64-single
   #:to-int64-double
   #:to-int64-decimal
   #:to-int64-string
   #:to-int64-date-time
   #:to-int64-object-i-format-provider
   #:to-int64-string-i-format-provider
   #:to-int64-string-int32
   #:to-s-byte
   #:to-s-byte-object
   #:to-s-byte-boolean
   #:to-s-byte-s-byte
   #:to-s-byte-char
   #:to-s-byte-byte
   #:to-s-byte-int16
   #:to-s-byte-u-int16
   #:to-s-byte-int32
   #:to-s-byte-u-int32
   #:to-s-byte-int64
   #:to-s-byte-u-int64
   #:to-s-byte-single
   #:to-s-byte-double
   #:to-s-byte-decimal
   #:to-s-byte-string
   #:to-s-byte-date-time
   #:to-s-byte-object-i-format-provider
   #:to-s-byte-string-i-format-provider
   #:to-s-byte-string-int32
   #:to-single
   #:to-single-object
   #:to-single-s-byte
   #:to-single-byte
   #:to-single-char
   #:to-single-int16
   #:to-single-u-int16
   #:to-single-int32
   #:to-single-u-int32
   #:to-single-int64
   #:to-single-u-int64
   #:to-single-single
   #:to-single-double
   #:to-single-decimal
   #:to-single-string
   #:to-single-boolean
   #:to-single-date-time
   #:to-single-object-i-format-provider
   #:to-single-string-i-format-provider
   #:to-string
   #:to-string-object
   #:to-string-boolean
   #:to-string-char
   #:to-string-s-byte
   #:to-string-byte
   #:to-string-int16
   #:to-string-u-int16
   #:to-string-int32
   #:to-string-u-int32
   #:to-string-int64
   #:to-string-u-int64
   #:to-string-single
   #:to-string-double
   #:to-string-decimal
   #:to-string-date-time
   #:to-string-string
   #:to-string-object-i-format-provider
   #:to-string-boolean-i-format-provider
   #:to-string-char-i-format-provider
   #:to-string-s-byte-i-format-provider
   #:to-string-byte-i-format-provider
   #:to-string-int16-i-format-provider
   #:to-string-u-int16-i-format-provider
   #:to-string-int32-i-format-provider
   #:to-string-u-int32-i-format-provider
   #:to-string-int64-i-format-provider
   #:to-string-u-int64-i-format-provider
   #:to-string-single-i-format-provider
   #:to-string-double-i-format-provider
   #:to-string-decimal-i-format-provider
   #:to-string-date-time-i-format-provider
   #:to-string-string-i-format-provider
   #:to-string-byte-int32
   #:to-string-int16-int32
   #:to-string-int32-int32
   #:to-string-int64-int32
   #:to-u-int16
   #:to-u-int16-object
   #:to-u-int16-boolean
   #:to-u-int16-char
   #:to-u-int16-s-byte
   #:to-u-int16-byte
   #:to-u-int16-int16
   #:to-u-int16-int32
   #:to-u-int16-u-int16
   #:to-u-int16-u-int32
   #:to-u-int16-int64
   #:to-u-int16-u-int64
   #:to-u-int16-single
   #:to-u-int16-double
   #:to-u-int16-decimal
   #:to-u-int16-string
   #:to-u-int16-date-time
   #:to-u-int16-object-i-format-provider
   #:to-u-int16-string-i-format-provider
   #:to-u-int16-string-int32
   #:to-u-int32
   #:to-u-int32-object
   #:to-u-int32-boolean
   #:to-u-int32-char
   #:to-u-int32-s-byte
   #:to-u-int32-byte
   #:to-u-int32-int16
   #:to-u-int32-u-int16
   #:to-u-int32-int32
   #:to-u-int32-u-int32
   #:to-u-int32-int64
   #:to-u-int32-u-int64
   #:to-u-int32-single
   #:to-u-int32-double
   #:to-u-int32-decimal
   #:to-u-int32-string
   #:to-u-int32-date-time
   #:to-u-int32-object-i-format-provider
   #:to-u-int32-string-i-format-provider
   #:to-u-int32-string-int32
   #:to-u-int64
   #:to-u-int64-object
   #:to-u-int64-boolean
   #:to-u-int64-char
   #:to-u-int64-s-byte
   #:to-u-int64-byte
   #:to-u-int64-int16
   #:to-u-int64-u-int16
   #:to-u-int64-int32
   #:to-u-int64-u-int32
   #:to-u-int64-int64
   #:to-u-int64-u-int64
   #:to-u-int64-single
   #:to-u-int64-double
   #:to-u-int64-decimal
   #:to-u-int64-string
   #:to-u-int64-date-time
   #:to-u-int64-object-i-format-provider
   #:to-u-int64-string-i-format-provider
   #:to-u-int64-string-int32
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
   #:create-instance-string-string
   #:create-instance-string-string-object[]
   #:create-instance-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:create-instance-and-unwrap
   #:create-instance-and-unwrap-string-string
   #:create-instance-and-unwrap-string-string-object[]
   #:create-instance-and-unwrap-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:create-instance-from
   #:create-instance-from-string-string
   #:create-instance-from-string-string-object[]
   #:create-instance-from-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:create-instance-from-and-unwrap
   #:create-instance-from-and-unwrap-string-string
   #:create-instance-from-and-unwrap-string-string-object[]
   #:create-instance-from-and-unwrap-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:execute-assembly
   #:execute-assembly-string
   #:execute-assembly-string-string[]
   #:execute-assembly-string-string[]-byte[]-assembly-hash-algorithm
   #:execute-assembly-by-name
   #:get-assemblies
   #:get-current-thread-id
   #:get-data
   #:compatibility-switch-set?
   #:default-app-domain?
   #:finalizing-for-unload?
   #:load
   #:load-byte[]
   #:load-assembly-name
   #:load-string
   #:load-byte[]-byte[]
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
   #:combine-string]
   #:combine-string-string
   #:combine-string-string-string
   #:combine-string-string-string-string
   #:ends-in-directory-separator
   #:ends-in-directory-separator-char]
   #:ends-in-directory-separator-string
   #:exists
   #:get-directory-name
   #:get-directory-name-string
   #:get-directory-name-char]
   #:get-extension
   #:get-extension-string
   #:get-extension-char]
   #:get-file-name
   #:get-file-name-string
   #:get-file-name-char]
   #:get-file-name-without-extension
   #:get-file-name-without-extension-string
   #:get-file-name-without-extension-char]
   #:get-full-path
   #:get-full-path-string
   #:get-full-path-string-string
   #:get-invalid-file-name-chars
   #:get-invalid-path-chars
   #:get-path-root
   #:get-path-root-string
   #:get-path-root-char]
   #:get-random-file-name
   #:get-relative-path
   #:get-temp-file-name
   #:get-temp-path
   #:has-extension
   #:has-extension-string
   #:has-extension-char]
   #:path-fully-qualified?
   #:path-fully-qualified?-string
   #:path-fully-qualified?-char]
   #:path-rooted?
   #:path-rooted?-string
   #:path-rooted?-char]
   #:join
   #:join-string]
   #:join-char]-char]
   #:join-string-string
   #:join-char]-char]-char]
   #:join-string-string-string
   #:join-char]-char]-char]-char]
   #:join-string-string-string-string
   #:trim-ending-directory-separator
   #:trim-ending-directory-separator-string
   #:trim-ending-directory-separator-char]
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
   #:compare-to-object
   #:compare-to-boolean
   #:equals
   #:equals-object
   #:equals-boolean
   #:get-hash-code
   #:get-type-code
   #:parse
   #:parse-string
   #:parse-char]
   #:to-string
   #:to-string-i-format-provider
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
   #:equals-object
   #:equals-type
   #:find-interfaces
   #:find-members
   #:get-array-rank
   #:get-attribute-flags-impl
   #:get-constructor
   #:get-constructor-type[]
   #:get-constructor-binding-flags-type[]
   #:get-constructor-binding-flags-binder-type[]-parameter-modifier[]
   #:get-constructor-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
   #:get-constructor-impl
   #:get-constructors
   #:get-constructors-binding-flags
   #:get-default-members
   #:get-element-type
   #:get-enum-name
   #:get-enum-names
   #:get-enum-underlying-type
   #:get-enum-values
   #:get-enum-values-as-underlying-type
   #:get-event
   #:get-event-string
   #:get-event-string-binding-flags
   #:get-events
   #:get-events-binding-flags
   #:get-field
   #:get-field-string
   #:get-field-string-binding-flags
   #:get-fields
   #:get-fields-binding-flags
   #:get-function-pointer-calling-conventions
   #:get-function-pointer-parameter-types
   #:get-function-pointer-return-type
   #:get-generic-arguments
   #:get-generic-parameter-constraints
   #:get-generic-type-definition
   #:get-hash-code
   #:get-interface
   #:get-interface-string
   #:get-interface-string-boolean
   #:get-interface-map
   #:get-interfaces
   #:get-member
   #:get-member-string
   #:get-member-string-binding-flags
   #:get-member-string-member-types-binding-flags
   #:get-members
   #:get-members-binding-flags
   #:get-member-with-same-metadata-definition-as
   #:get-method
   #:get-method-string
   #:get-method-string-binding-flags
   #:get-method-string-type[]
   #:get-method-string-binding-flags-type[]
   #:get-method-string-type[]-parameter-modifier[]
   #:get-method-string-int32-type[]
   #:get-method-string-int32-type[]-parameter-modifier[]
   #:get-method-string-int32-binding-flags-type[]
   #:get-method-string-binding-flags-binder-type[]-parameter-modifier[]
   #:get-method-string-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
   #:get-method-string-int32-binding-flags-binder-type[]-parameter-modifier[]
   #:get-method-string-int32-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
   #:get-method-impl
   #:get-method-impl-string-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
   #:get-method-impl-string-int32-binding-flags-binder-calling-conventions-type[]-parameter-modifier[]
   #:get-methods
   #:get-methods-binding-flags
   #:get-nested-type
   #:get-nested-type-string
   #:get-nested-type-string-binding-flags
   #:get-nested-types
   #:get-nested-types-binding-flags
   #:get-optional-custom-modifiers
   #:get-properties
   #:get-properties-binding-flags
   #:get-property
   #:get-property-string
   #:get-property-string-binding-flags
   #:get-property-string-type
   #:get-property-string-type[]
   #:get-property-string-type-type[]
   #:get-property-string-type-type[]-parameter-modifier[]
   #:get-property-string-binding-flags-binder-type-type[]-parameter-modifier[]
   #:get-property-impl
   #:get-required-custom-modifiers
   #:get-type
   #:get-type*
   #:get-type-string
   #:get-type-string-boolean
   #:get-type-string-boolean-boolean
   #:get-type-string-assembly]-type]
   #:get-type-string-assembly]-type]-boolean
   #:get-type-string-assembly]-type]-boolean-boolean
   #:get-type-array
   #:get-type-code
   #:get-type-code-impl
   #:get-type-from-clsid
   #:get-type-from-clsid-guid
   #:get-type-from-clsid-guid-boolean
   #:get-type-from-clsid-guid-string
   #:get-type-from-clsid-guid-string-boolean
   #:get-type-from-handle
   #:get-type-from-prog-id
   #:get-type-from-prog-id-string
   #:get-type-from-prog-id-string-boolean
   #:get-type-from-prog-id-string-string
   #:get-type-from-prog-id-string-string-boolean
   #:get-type-handle
   #:has-element-type-impl
   #:invoke-member
   #:invoke-member-string-binding-flags-binder-object-object[]
   #:invoke-member-string-binding-flags-binder-object-object[]-culture-info
   #:invoke-member-string-binding-flags-binder-object-object[]-parameter-modifier[]-culture-info-string[]
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
   #:make-array-type-int32
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
   #:equals-object
   #:equals-object-object
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
   #:compare-to-object
   #:compare-to-single
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
   #:equals-object
   #:equals-single
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
   #:log-single
   #:log-single-single
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
   #:parse-string
   #:parse-string-number-styles
   #:parse-string-i-format-provider
   #:parse-char]-i-format-provider
   #:parse-byte]-i-format-provider
   #:parse-string-number-styles-i-format-provider
   #:parse-char]-number-styles-i-format-provider
   #:parse-byte]-number-styles-i-format-provider
   #:pow
   #:radians-to-degrees
   #:reciprocal-estimate
   #:reciprocal-sqrt-estimate
   #:root-n
   #:round
   #:round-single
   #:round-single-int32
   #:round-single-midpoint-rounding
   #:round-single-int32-midpoint-rounding
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
   #:to-string-i-format-provider
   #:to-string-string
   #:to-string-string-i-format-provider
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
   #:compare-to-object
   #:compare-to-double
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
   #:equals-object
   #:equals-double
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
   #:log-double
   #:log-double-double
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
   #:parse-string
   #:parse-string-number-styles
   #:parse-string-i-format-provider
   #:parse-char]-i-format-provider
   #:parse-byte]-i-format-provider
   #:parse-string-number-styles-i-format-provider
   #:parse-char]-number-styles-i-format-provider
   #:parse-byte]-number-styles-i-format-provider
   #:pow
   #:radians-to-degrees
   #:reciprocal-estimate
   #:reciprocal-sqrt-estimate
   #:root-n
   #:round
   #:round-double
   #:round-double-int32
   #:round-double-midpoint-rounding
   #:round-double-int32-midpoint-rounding
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
   #:to-string-string
   #:to-string-i-format-provider
   #:to-string-string-i-format-provider
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
   #:get-custom-attributes-boolean
   #:get-custom-attributes-type-boolean
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
   #:new-single
   #:new-single-single
   #:+one+
   #:+unit-x+
   #:+unit-y+
   #:+zero+
   #:-
   #:--vector2
   #:--vector2-vector2
   #:*
   #:*-vector2-vector2
   #:*-vector2-single
   #:*-single-vector2
   #:/
   #:/-vector2-vector2
   #:/-vector2-single
   #:+
   #:=
   #:add
   #:barycentric
   #:catmull-rom
   #:ceiling
   #:ceiling*
   #:ceiling-vector2
   #:clamp
   #:distance
   #:distance-squared
   #:divide
   #:divide-vector2-vector2
   #:divide-vector2-single
   #:dot
   #:equals
   #:equals-object
   #:equals-vector2
   #:floor
   #:floor*
   #:floor-vector2
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
   #:multiply-vector2-vector2
   #:multiply-vector2-single
   #:negate
   #:normalize
   #:normalize*
   #:normalize-vector2
   #:not=
   #:reflect
   #:rotate
   #:rotate*
   #:rotate-single
   #:rotate-vector2-single
   #:rotate-around
   #:rotate-around*
   #:rotate-around-vector2-single
   #:rotate-around-vector2-vector2-single
   #:round
   #:round*
   #:round-vector2
   #:smooth-step
   #:subtract
   #:to-numerics
   #:to-point
   #:to-string
   #:transform
   #:transform-vector2-matrix
   #:transform-vector2-quaternion
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
   #:new-point-point
   #:new-int32-int32-int32-int32
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
   #:contains-point
   #:contains-vector2
   #:contains-rectangle
   #:contains-int32-int32
   #:contains-single-single
   #:equals
   #:equals-object
   #:equals-rectangle
   #:get-hash-code
   #:inflate
   #:inflate-int32-int32
   #:inflate-single-single
   #:intersect
   #:intersects
   #:not=
   #:offset
   #:offset-point
   #:offset-vector2
   #:offset-int32-int32
   #:offset-single-single
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
   #:new-int32
   #:new-int32-int32
   #:+zero+
   #:-
   #:*
   #:/
   #:+
   #:=
   #:equals
   #:equals-object
   #:equals-point
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
   #:new-time-span-time-span
   #:new-time-span-time-span-boolean
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
   #:dispose-boolean
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
   #:run-game-run-behavior
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
   #:end-screen-device-change-string
   #:end-screen-device-change-string-int32-int32
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
   #:get-state-player-index
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
   #:get-pressed-keys-keys[]
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
   #:get-state-game-window
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
   #:new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state
   #:new-int32-int32-int32-button-state-button-state-button-state-button-state-button-state-int32
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
   #:get-capabilities-player-index
   #:get-capabilities-int32
   #:get-state
   #:get-state-player-index
   #:get-state-int32
   #:get-state-player-index-game-pad-dead-zone
   #:get-state-int32-game-pad-dead-zone
   #:get-state-player-index-game-pad-dead-zone-game-pad-dead-zone
   #:get-state-int32-game-pad-dead-zone-game-pad-dead-zone
   #:set-vibration
   #:set-vibration-player-index-single-single
   #:set-vibration-int32-single-single
   #:set-vibration-player-index-single-single-single-single
   #:set-vibration-int32-single-single-single-single
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
   #:new-game-pad-thumb-sticks-game-pad-triggers-game-pad-buttons-game-pad-d-pad
   #:new-vector2-vector2-single-single-buttons
   #:new-vector2-vector2-single-single-buttons[]
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
   #:new-button-state-button-state-button-state-button-state
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
   #:new-vector2-vector2
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
   #:new-single-single
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
   #:get-state-game-window
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
   #:new-touch-location[]
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
   #:new-int32-touch-location-state-vector2
   #:new-int32-touch-location-state-vector2-touch-location-state-vector2
   #:id
   #:position
   #:pressure
   #:state
   #:=
   #:equals
   #:equals-object
   #:equals-touch-location
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
   #:new-gesture-type-time-span-vector2-vector2-vector2-vector2
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
   #:new-u-int32
   #:new-vector4
   #:new-vector3
   #:new-color-int32
   #:new-color-single
   #:new-single-single-single
   #:new-int32-int32-int32
   #:new-single-single-single-single
   #:new-int32-int32-int32-int32
   #:new-byte-byte-byte-byte
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
   #:*-color-single
   #:*-single-color
   #:*-color-color
   #:=
   #:equals
   #:equals-object
   #:equals-color
   #:from-non-premultiplied
   #:from-non-premultiplied-vector4
   #:from-non-premultiplied-int32-int32-int32-int32
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
   #:new-i-service-provider
   #:new-i-service-provider-string
   #:loaded-assets
   #:root-directory
   #:service-provider
   #:dispose
   #:dispose-boolean
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
   #:dispose-boolean
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
   #:new-graphics-adapter-graphics-profile-presentation-parameters
   #:new-graphics-adapter-graphics-profile-boolean-presentation-parameters
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
   #:clear-color
   #:clear-clear-options-color-single-int32
   #:clear-clear-options-vector4-single-int32
   #:dispose
   #:dispose-boolean
   #:draw-indexed-primitives
   #:draw-indexed-primitives-primitive-type-int32-int32-int32
   #:draw-indexed-primitives-primitive-type-int32-int32-int32-int32-int32
   #:draw-instanced-primitives
   #:draw-instanced-primitives-primitive-type-int32-int32-int32-int32
   #:draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32
   #:draw-instanced-primitives-primitive-type-int32-int32-int32-int32-int32-int32
   #:draw-primitives
   #:draw-user-indexed-primitives
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int16[]-int32-int32-vertex-declaration
   #:draw-user-indexed-primitives-primitive-type-t[]-int32-int32-int32[]-int32-int32-vertex-declaration
   #:draw-user-primitives
   #:draw-user-primitives-primitive-type-t[]-int32-int32
   #:draw-user-primitives-primitive-type-t[]-int32-int32-vertex-declaration
   #:finalize
   #:get-back-buffer-data
   #:get-back-buffer-data-t[]
   #:get-back-buffer-data-t[]-int32-int32
   #:get-back-buffer-data-rectangle]-t[]-int32-int32
   #:get-render-targets
   #:get-render-targets-render-target-binding[]
   #:present
   #:reset
   #:reset-presentation-parameters
   #:set-render-target
   #:set-render-target-render-target2-d
   #:set-render-target-render-target-cube-cube-map-face
   #:set-vertex-buffer
   #:set-vertex-buffer-vertex-buffer
   #:set-vertex-buffer-vertex-buffer-int32
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
   #:new-graphics-device
   #:new-graphics-device-int32
   #:begin
   #:dispose
   #:draw
   #:draw-texture2-d-vector2-color
   #:draw-texture2-d-rectangle-color
   #:draw-texture2-d-vector2-rectangle]-color
   #:draw-texture2-d-rectangle-rectangle]-color
   #:draw-texture2-d-rectangle-rectangle]-color-single-vector2-sprite-effects-single
   #:draw-texture2-d-vector2-rectangle]-color-single-vector2-vector2-sprite-effects-single
   #:draw-texture2-d-vector2-rectangle]-color-single-vector2-single-sprite-effects-single
   #:draw-string
   #:draw-string-sprite-font-string-vector2-color
   #:draw-string-sprite-font-string-builder-vector2-color
   #:draw-string-sprite-font-string-vector2-color-single-vector2-single-sprite-effects-single
   #:draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single
   #:draw-string-sprite-font-string-builder-vector2-color-single-vector2-single-sprite-effects-single
   #:draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single
   #:draw-string-sprite-font-string-vector2-color-single-vector2-vector2-sprite-effects-single-boolean
   #:draw-string-sprite-font-string-builder-vector2-color-single-vector2-vector2-sprite-effects-single-boolean
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
   #:measure-string-string
   #:measure-string-string-builder
  ))

;;; Source File: microsoft-xna-framework-graphics-sprite-font-glyph.lisp
;;; C# Class: Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph
;;; Constant Properties: (none)
(cl:defpackage :microsoft-xna-framework-graphics-sprite-font-glyph
  (:use :cl)
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:empty
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
   #:new-byte[]-int32-audio-channels
   #:new-byte[]-int32-int32-int32-audio-channels-int32-int32
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
   #:play-single-single-single
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
   #:apply3-d-audio-listener-audio-emitter
   #:apply3-d-audio-listener[]-audio-emitter
   #:dispose
   #:dispose-boolean
   #:finalize
   #:pause
   #:play
   #:resume
   #:stop
   #:stop-boolean
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
   #:equals-song
   #:equals-object
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
   #:play-song
   #:play-song-time-span]
   #:play-song-collection-int32
   #:resume
   #:stop
  ))

