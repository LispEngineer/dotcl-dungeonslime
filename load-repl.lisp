;; REPL loader for simplicity
;; (load "load-repl.lisp")

;; Load MonoGame first
(format *error-output* "[load-repl.lisp] Loading MonoGame...~%")
(dotnet:load-assembly "bin/Debug/net10.0/ubuntu.24.04-x64/MonoGame.Framework.dll")

;; Load the C# project assembly
(format *error-output* "[load-repl.lisp] Loading MonoGameLispDemo C# assembly...~%")
(dotnet:load-assembly "bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo.dll")

;; Run the C# Registrar - this creates the "MONOUTILS" package and adds
;; the C#-impleemnted functions to it
(format *error-output* "[load-repl.lisp] Running MonoUtilsRegistrar...~%")
(dotnet:static "MonoUtilsRegistrar" "Initialize")

;; Load the Lisp code
(format *error-output* "[load-repl.lisp] Loading asdf...~%")
(require "asdf")
;; This adds the current directory to the ASDF search list. It has very
;; long output due to my use of Roswell so I truncate it.
(length (push '*default-pathname-defaults* asdf:*central-registry*))

(format *error-output* "[load-repl.lisp] Loading MonoGameLispDemo ASDF system...~%")
(asdf:load-system "MonoGameLispDemo")
; Load a system super verbosely
; (let ((*load-verbose* t)(*compile-verbose* t)(*compile-print* t))  (asdf:load-system "MonoGameLispDemo"))

;; Prevent the game's background REPL from spawning if desired
;; (setf game-repl:*no-lisp-repl* t)

;; Create the game objects
(format *error-output* "[load-repl.lisp] Creating game objects...~%")
(defparameter *mg-game* (make-game))
;; Tell MonoGame where to load content assets from
;; (change this for your local installation)
;; FIXME: Use a DotCL-provided way to get the current directory's
;; subdirectory of the build target, if ever possible
(setf (dotnet:invoke (content *game*) "RootDirectory") 
  "/home/dfields/src/cl/dotcl-dungeonslime/bin/Debug/net10.0/ubuntu.24.04-x64/Content")

(format t "[load-repl.lisp] *mg-game* is now available from (make-game).~%")

;; To run the game:
;; NOTE: This will require the REPL be killed when the game exits.
;; And no REPL will be available until that happens.
;; (dotnet:invoke *mg-game* "Run")
(format t "[load-repl.lisp] Example usage:~%")
(format t "[load-repl.lisp] (dotnet:invoke *mg-game* \"Run\")~%")

;; To clean up after running the game:
;; (dotnet:invoke *mg-game* "Dispose")
(format t "[load-repl.lisp] (dotnet:invoke *mg-game* \"Dispose\")~%")

;; You can also do:
(format t "[load-repl.lisp] (safe-read-form-from-file \"/tmp/System.Runtime.lispy.metadata.tmp\")")

#|
(defvar x (safe-read-form-from-file "/tmp/System.Runtime.lispy.metadata.tmp"))
(find-if (lambda (item) (string= (getf item :name) "ArrayList")) x)
;; All the generic types:
(remove-if-not (lambda (str) (find #\` str))  (mapcar (lambda (item) (getf item :name)) x))
;; All the generic methods: (none)
|#