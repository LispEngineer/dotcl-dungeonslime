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
;; load it during compilation.
;;
;; If I put both these forms (require & load-system) into the same `eval-when`,
;; then it breaks during (load "...") of this file at the REPL. For some
;; reason, separating them makes it work correctly.
;;
;; NOTE: It does NOT put the FASL into the final build, so that has to
;; be done separately somehow. So you can't copy the game directory
;; to another computer/user and expect it to work, yet.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (require "asdf"))

;; As the built binary execution includes the directories in the binary output
;; directory under contrib in the ASDF Central Registry, something like
;; this below appears to be unnecessary
#|
(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; Get the directory where the running executable resides
  (let ((app-base (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))
    (when app-base
      (let ((anaphora-path (merge-pathnames "contrib/anaphora/" (pathname app-base))))
        (pushnew anaphora-path asdf:*central-registry* :test #'equal)))))
|#

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; If needed, you can push search paths to asdf:*central-registry* here
  (format *error-output* "[load-system-test.lisp] asdf:*central-registry* = ~A~%"
          asdf:*central-registry*)
  (asdf:load-system "anaphora"))

(format *error-output* "[load-system-test.lisp] (length asdf:*central-registry*) = ~A~%" 
        (length asdf:*central-registry*))

(anaphora:awhen (+ 3 4)
  (format *error-output* "[load-system-test.lisp] anaphora:it = ~A (should be 7)~%" anaphora:it))