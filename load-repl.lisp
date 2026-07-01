;; REPL loader for simplicity
;; (load "load-repl.lisp")

;; Load build-setup to register Quicklisp so ASDF can locate dependencies
(let ((setup (merge-pathnames "build-setup.lisp"
                              (uiop:pathname-directory-pathname
                                (cond (*load-pathname* *load-pathname*)
                                      (*load-truename* *load-truename*)
                                      (t *default-pathname-defaults*))))))
  (when (probe-file setup)
    (load setup)))

(format *error-output* "[load-repl.lisp] Requiring ASDF/UIOP...~%")
(require "asdf")

(format *error-output* "[load-repl.lisp] Loading dungeon-slime ASDF system...~%")
(push '*default-pathname-defaults* asdf:*central-registry*)
(asdf:load-system "dungeon-slime")

;; Switch to our game package
(format *error-output* "[load-repl.lisp] Changing package to dungeon-slime...~%")
(in-package :dungeon-slime)

;; Create the game objects
(format *error-output* "[load-repl.lisp] Creating game objects...~%")
(defparameter *mg-game* (make-game))

;; Tell MonoGame where to load content assets from
(setf (dotnet:invoke (content *game*) "RootDirectory")
      (namestring *content-directory*))

(format t "[load-repl.lisp] *mg-game* is now available from (make-game).~%")
(format t "[load-repl.lisp] Example usage:~%")
(format t "[load-repl.lisp] (dotnet:invoke *mg-game* \"Run\")~%")
(format t "[load-repl.lisp] (dotnet:invoke *mg-game* \"Dispose\")~%")
(format t "~%")
