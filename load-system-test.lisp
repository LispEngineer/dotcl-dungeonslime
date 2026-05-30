;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Proof of concept to use a QuickLisp downloaded system in
;;; DotCL. Note: quicklisp does not run in DotCL, but it does
;;; run fine in SBCL, so I use that to download the system. Then
;;; I use ASDF to load the system.
;;;
;;; From the REPL: (load "load-system-test.lisp")
;;;
;;; The real question is - how do I get the system compiled into
;;; the final binary?

(in-package :cl-user)
(format *error-output* "[load-system-test.lisp] Loading in package ~S~%" *package*)

;; To get this effort to work at compile time, need to include this in an
;; eval-when. It forces the system to compile the anaphora package and
;; load it during compilation. BUT, this now breaks the regular (load "...")!
;;
;; NOTE: It does NOT put the FASL into the final build, so that has to
;; be done separately somehow. So you can't copy the game directory
;; to another computer/user and expect it to work, yet.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (require "asdf")
  ;; If needed, you can push search paths to asdf:*central-registry* here
  (asdf:load-system "anaphora"))

(format *error-output* "[load-system-test.lisp] central-registry = ~A~%" asdf:*central-registry*)

(anaphora:awhen (+ 3 4)
  (format *error-output* "[load-system-test.lisp] anaphora:it = ~A~%" anaphora:it))