;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Background console REPL for a game

(in-package :cl-user)

(require "dotcl-thread")
(require "dotcl-repl")

(defvar *no-lisp-repl* nil
  "Set this to non-nil if you want to prevent the REPL from being
   spawned.")

(defvar *background-repl* nil
  "Our singleton dotcl-thread that is running the background REPL.
   nil if not started; if non-nil, will need to check the status of
   the running thread.")

(defun run-repl ()
  "Run a super basic CL REPL with the current standard input and output."
  (format *error-output* "~%--- MonoGame Lisp REPL starting ---~%")
  (sleep 2) ;; Give a moment for the rest of the game to launch
  (format *error-output* "~%--- MonoGame Lisp REPL started ---~%")
  (loop
    ;; TODO: Figure out a graceful way to exit the background REPL
    (let ((line (dotcl-repl:readline "MONOGAME-LISP> ")))
      (when (null line) ;; Exit on Ctrl+D; TODO: exit the game after confirmation?
        (format *error-output* "Exiting MONOGAME-LISP REPL.~%")
        ;; TODO: Figure out how to persist the REPL history and reload it.
        (return))
      (handler-case
          (let* ((input (make-string-input-stream line))
                 (form (read input nil nil)))
            (when form
                (let ((results (multiple-value-list (eval form))))
                  (dolist (res results)
                    (prin1 res)
                    (terpri)))))
        (error (c)
          (format t "Error: ~A~%" c))))))

(defun start-background-repl ()
  "Starts a REPL in a background thread. However, sometimes we don't want
   that, such as when we're already running in a top-level REPL, so
   we check if cl-user::*no-monogame-lisp-repl* is bound and true first.
   Returns the thread from dotcl-thread:make-thread."
  (unless (and (boundp 'cl-user::*no-monogame-lisp-repl*) cl-user::*no-monogame-lisp-repl*)
    (setf *background-repl* (dotcl-thread:make-thread #'run-repl :name "REPL"))
    *background-repl*))

(defun kill-background-repl ()
  "Kills the background REPL thread. This is not guaranteed to work, as
   the thread may not notice the interrupt from dotcl-thread:destroy-thread.
   Does nothing if the *background-repl* has never been started, or if the
   thread therein is not alive."
  ;; For this to work, we need a patched DotCL 0.1.8 or the pull request
  ;; submitted to DotCL maintainer to be accepted in a future DotCL release.
  ;; Otherwise, nothing bad happens but it won't be interruptable.
  (when (and *background-repl* (thread-alive-p *background-repl*))
    (dotcl-thread:destroy-thread *background-repl*)))

