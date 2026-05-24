;;; main.lisp — MonoGame Game subclass written in Lisp.
;;;
;;; Demonstrates `dotnet:define-class` against the MonoGame `Game` class.
;;; Update + Draw are overridden to animate the background color over
;;; time. main.lisp is compiled into MonoGameLispDemo.fasl by the
;;; project-core build target (#166); main.lisp itself doesn't ship at
;;; runtime.
;;;
;;; Ultimately this will implement the MonoGame's Dungeon Slime tutorial
;;; project in DotCL-flavored ANSI Common Lisp.

(in-package :cl-user)
(format *error-output* "[main.lisp] Loading in package ~S~%" *package*)

;; Turn off optimization and include lots of debugging
(declaim (optimize (debug 3)))

(require :dotnet-class)
(require "dotcl-thread") ;; Does not work if used as :dotcl-thread
(require "dotcl-repl")


(format *error-output* "[main.lisp] about to defparameter *cs-game*~%")
(defparameter *cs-game* nil
  "CLR class of the game, vs the CLOS class of the game.")

(defun make-game ()
  "Instantiate Demo.LispGame for Program.cs to Run().
   This first instantiates the C#/CLR object,
   then instantiates the CLOS object with a link to the C# object,
   then associates the C# object with the CLOS object."
  (let* ((cs (dotnet:new "Demo.LispGame")) ;; cs = c-sharp object
         (clos (make-instance 'game-1 :monogame cs)))
    ;; We have to assocaite these two, which is to say associate
    ;; the cs with the clos, since clos is already associated with cs.
    (setf (dotnet:invoke cs "CLOSObject") clos)
    ;; Save these for later global reuse
    (setf *cs-game* cs)
    (setf *game* clos)
    ;; And return our CLR object
    cs))

(format *error-output* "[main.lisp] make-game defined: ~S~%"
        (fboundp 'make-game))
(format *error-output* "[main.lisp] *game*: ~A~%" *game*)
(format *error-output* "[main.lisp] *cs-game*: ~A~%" *cs-game*)
