;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Define all the packages and exports of this software

(format *error-output* "[packages.lisp] Loading beginning.~%" *package*)
(in-package :cl-user)
(format *error-output* "[packages.lisp] Defining packages in package ~S~%" *package*)

;; TODO: Set :local-nicknames?

;; Define the packages at load-time/compile-time to isolate REPL symbols.
;; This seems to be important for DotCL's build system.
(eval-when (:compile-toplevel :load-toplevel :execute)

  (defpackage :monoutils
    (:use :cl)
    (:export #:add3
             #:invoke-generic
             #:dotnet-p
             #:boxed-dotnet-p
             #:get-type
             #:get-type-full-name))

  (defpackage :csharp
    (:use :cl)
    (:export #:timespan<-milliseconds
             #:timespan->milliseconds
             #:ts+
             #:ts>
             #:ts>=))

  (defpackage :mg-classes
    (:use :cl)
    (:export #:vector2
             #:rect
             #:+v2-0+
             #:+v2-1+
             #:+v2-x1+
             #:+v2-y1+
             #:v2*
             #:print-gf-methods
             #:x
             #:y
             #:width
             #:height
             #:°2R
             #:sprite-batch-begin
             #:game-time-total
             #:game-time-elapsed
             #:game-time-slow?
             #:keyboard-state
             #:key-down?))

  (defpackage :game-repl
    (:use :cl)
    (:export #:run-repl
             #:start-background-repl
             #:kill-background-repl
             #:*no-lisp-repl*
             #:*background-repl*)))