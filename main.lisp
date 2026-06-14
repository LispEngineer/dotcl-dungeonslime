;;; main.lisp
;;;
;;; Package up the CLOS game-1 with the .NET proxy and make
;;; it available to the C# Program.cs as "make-game".
;;; When the game is made, save the C# class as *cs-game* and
;;; the CLOS class as *game*.

(in-package :dungeon-slime)
(require :dotnet-class)

(format *error-output* "[main.lisp] Loading in package ~S~%" *package*)

(defparameter *cs-game* nil
  "CLR class of the game, vs the CLOS class of the game.")

(defun make-game ()
  "Instantiate MonoGameCLOSProxy for Program.cs to Run().
   This first instantiates the C#/CLR object,
   then instantiates the CLOS object with a link to the C# object,
   then associates the C# object with the CLOS object."
  (let* ((cs (dotnet:new "MonoGameCLOSProxy")) ;; cs = c-sharp object
         (clos (make-instance 'game-1 :monogame cs)))
    ;; We have to assocaite these two, which is to say associate
    ;; the cs with the clos, since clos is already associated with cs.
    (setf (dotnet:invoke cs "CLOSObject") clos)
    ;; Save these for later global reuse
    (setf *cs-game* cs)
    (setf *game* clos)
    ;; And return our CLR object
    cs))

(format *error-output* "[main.lisp] make-game defined: ~S in package ~S~%" (fboundp 'make-game) *package*)
