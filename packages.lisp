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

  (defpackage :utils
    (:use :cl)
    (:export #:safe-read-form-from-file
             #:+base-directory+
             #:format-red
             #:path-combine
             #:file-exists-and-readable-p
             #:qualify-path))

  (defpackage :monoutils
    (:use :cl)
    (:export #:add3
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
             #:*background-repl*))

  (defpackage :assembly-package-generator
    (:use :cl)
    (:export #:run-assembly-package-generator
             #:generate-assembly-packages
             #:camel-to-kebab
             #:split-string))

  (defpackage :clr-generic
    (:use :cl)
    (:export #:defc#generic
             #:defc#method))

  (defpackage :dungeon-slime
    (:use :cl :utils :mg-classes :monoutils :csharp :game-repl :clr-generic)
    (:export 
     ;; Constants
     #:+window-defaults+ #:+content-default+ #:+false+
     #:+key-esc+ #:+key-left+ #:+color-white+
     #:+sprite-effects-none+ #:+sprite-effects-flip-horizontally+ #:+sprite-effects-flip-vertically+
     #:+sprite-sort-mode-back-to-front+ #:+sprite-sort-mode-deferred+ #:+sprite-sort-mode-front-to-back+
     #:+sprite-sort-mode-immediate+ #:+sprite-sort-mode-texture+
     #:+sampler-state-point-clamp+
     #:+atlas-texture+ #:+atlas-filename+
     ;; Globals
     #:*core* #:*game* #:*cs-game*
     #:color-cycle-period
     ;; Make Game
     #:make-game
     ;; Classes and Methods
     #:core #:monogame #:window-info #:graphics #:graphics-device #:sprite-batch #:content
     #:initialize #:load-content #:update #:draw #:dispose #:begin-run #:end-run #:run
     #:game-1 #:slime #:bat
     #:pulse-color
     #:animation #:animated-sprite
     #:sprite #:sprite-center-origin #:sprite-draw
     #:texture-atlas #:ta-add-region #:ta-get-region #:ta-remove-region #:ta-clear
     #:ta-create-sprite #:ta-create-animated-sprite #:ta-add-animation #:ta-get-animation
     #:ta-remove-animation #:ta-from-file
     #:texture-region #:tr-draw))

  (defpackage :dungeon-slime-tests
    (:use :cl :dungeon-slime :assembly-package-generator :csharp :utils :clr-generic :monoutils :mg-classes)
    (:export
      #:run-all-tests
      #:test-clr-defmethods)))