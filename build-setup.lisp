;;; build-setup.lisp - Build-time Lisp initialization for ASDF dependency resolution
;;;
;;; This script is loaded by the MSBuild task during the Lisp dependency resolution
;;; and compilation phases. It registers external system directories to ensure
;;; that the Lisp compiler can locate and compile dependencies like Quicklisp packages.

(in-package :cl-user)

(format *error-output* "~&[build-setup.lisp] Starting build initialization...~%")

;; Locate and load Quicklisp if it is installed in the user's home directory.
;; This makes all Quicklisp-installed systems discoverable by ASDF at build-time,
;; without requiring the developer to pass custom search paths or environment variables.
;;
;; NOTE: This is a patched QuickLisp with support for DotCL per:
;; https://github.com/quicklisp/quicklisp-client/pull/245 (DotCL PR for QL)
(let ((ql-setup (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (if (probe-file ql-setup)
      (progn
        (format *error-output* "~&[build-setup.lisp] Loading Quicklisp setup from ~A...~%" ql-setup)
        (load ql-setup))
      (format *error-output* "~&[build-setup.lisp] Warning: Quicklisp setup file not found at ~A~%" ql-setup)))

(format *error-output* "~&[build-setup.lisp] Build initialization complete.~%")
