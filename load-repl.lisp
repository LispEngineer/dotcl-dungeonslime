;; REPL loader for simplicity
;; (load "load-repl.lisp")

;; Load MonoGame first
(dotnet:load-assembly "bin/Debug/net10.0/ubuntu.24.04-x64/MonoGame.Framework.dll")

;; Load the C# project assembly
(dotnet:load-assembly "bin/Debug/net10.0/ubuntu.24.04-x64/MonoGameLispDemo.dll")

;; Run the C# Registrar - this creates the "MONOUTILS" package and adds
;; the C#-impleemnted functions to it
(dotnet:static "MonoUtilsRegistrar" "Initialize")

;; Load the Lisp code
(require "asdf")
;; This adds the current directory to the ASDF search list. It has very
;; long output due to my use of Roswell so I truncate it.
(length (push '*default-pathname-defaults* asdf:*central-registry*))

(asdf:load-system "MonoGameLispDemo")
; Load a system super verbosely
; (let ((*load-verbose* t)(*compile-verbose* t)(*compile-print* t))  (asdf:load-system "MonoGameLispDemo"))

;; Prevent the game's background REPL from spawning if desired
;; (setf game-repl:*no-lisp-repl* t)

;; Create the game objects
(defparameter *mg-game* (make-game))
;; Tell MonoGame where to load content assets from
;; (change this for your local installation)
(setf (dotnet:invoke (content *game*) "RootDirectory") "/home/dfields/src/cl/MonoGameLispDemo-standalone/bin/Debug/net10.0/ubuntu.24.04-x64/Content")

(format t "[load-repl.lisp] *mg-game* is now available from (make-game).~%")

;; To run the game:
;; NOTE: This will require the REPL be killed when the game exits.
;; And no REPL will be available until that happens.
;; (dotnet:invoke *mg-game* "Run")

;; To clean up after running the game:
;; (dotnet:invoke *mg-game* "Dispose")
