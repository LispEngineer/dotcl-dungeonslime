;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Define all the packages and exports of this software

(format *error-output* "[packages.lisp] Loading beginning.~%" *package*)
(in-package :cl-user)
(format *error-output* "[packages.lisp] Defining packages in package ~S~%" *package*)

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
            #:ts-
            #:ts>
            #:ts>=
            #:ts<=))

(defpackage :mg-classes
  (:use :cl)
  (:export #:vector2
            #:rect
            #:+v2-0+
            #:+v2-1+
            #:+v2-x1+
            #:+v2-y1+
            #:v2*
            #:v2-normalize
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

;; Pre-declare empty C# packages so local-nicknames doesn't crash
(defpackage :microsoft-xna-framework-vector2)
(defpackage :system-time-span)
(defpackage :microsoft-xna-framework-input-keys)
(defpackage :microsoft-xna-framework-input-keyboard)
(defpackage :microsoft-xna-framework-input-keyboard-state)
(defpackage :microsoft-xna-framework-input-game-pad)
(defpackage :microsoft-xna-framework-input-game-pad-state)
(defpackage :microsoft-xna-framework-input-game-pad-thumb-sticks)
(defpackage :microsoft-xna-framework-input-buttons)
(defpackage :microsoft-xna-framework-color)
(defpackage :microsoft-xna-framework-graphics-sprite-effects)
(defpackage :microsoft-xna-framework-graphics-sprite-sort-mode)
(defpackage :microsoft-xna-framework-graphics-sampler-state)
(defpackage :microsoft-xna-framework-player-index)
(defpackage :microsoft-xna-framework-input-mouse-state)
(defpackage :microsoft-xna-framework-input-game-pad-triggers)
(defpackage :microsoft-xna-framework-input-button-state)
(defpackage :microsoft-xna-framework-point)
(defpackage :microsoft-xna-framework-rectangle)
(defpackage :microsoft-xna-framework-graphics-graphics-device)
(defpackage :microsoft-xna-framework-graphics-presentation-parameters)
(defpackage :microsoft-xna-framework-audio-sound-effect)
(defpackage :microsoft-xna-framework-media-media-player)
(defpackage :microsoft-xna-framework-media-song)
(defpackage :dungeon-slime-input)

(defpackage :dungeon-slime
  (:use :cl 
        :utils :mg-classes :monoutils :csharp :game-repl :clr-generic)
  (:local-nicknames 
    (:v2 :microsoft-xna-framework-vector2)
    (:ts :system-time-span)
    (:key :microsoft-xna-framework-input-keys)
    (:kb :microsoft-xna-framework-input-keyboard)
    (:kb-state :microsoft-xna-framework-input-keyboard-state)
    (:gp :microsoft-xna-framework-input-game-pad)
    (:ts :microsoft-xna-framework-input-game-pad-thumb-sticks)
    (:gp-state :microsoft-xna-framework-input-game-pad-state)
    (:button :microsoft-xna-framework-input-buttons)
    (:pi :microsoft-xna-framework-player-index)
    (:color :microsoft-xna-framework-color)
    (:sprite-effects :microsoft-xna-framework-graphics-sprite-effects)
    (:sprite-sort-mode :microsoft-xna-framework-graphics-sprite-sort-mode)
    (:sampler-state :microsoft-xna-framework-graphics-sampler-state)
    (:input :dungeon-slime-input)
    (:rect :microsoft-xna-framework-rectangle)
    (:gd :microsoft-xna-framework-graphics-graphics-device)
    (:pp :microsoft-xna-framework-graphics-presentation-parameters)
    (:point :microsoft-xna-framework-point)
    (:time-span :system-time-span)
    (:sound-effect :microsoft-xna-framework-audio-sound-effect)
    (:media-player :microsoft-xna-framework-media-media-player)
    (:song :microsoft-xna-framework-media-song)
  )
  (:export 
    ;; Constants
    #:+window-defaults+ #:+content-default+ #:+false+
    #:+atlas-texture+ #:+atlas-filename+
    ;; Globals
    #:*core* #:*game* #:*cs-game*
    #:color-cycle-period
    ;; Make Game
    #:make-game
    ;; Classes and Methods
    #:core #:monogame #:window-info #:graphics #:graphics-device #:sprite-batch #:content
    #:initialize #:load-content #:update #:draw #:dispose #:begin-run #:end-run #:run
    #:game-1 #:slime #:bat #:bat-pos #:bat-vel
    #:circle #:circle-intersects
    #:circle-left #:circle-right #:circle-top #:circle-bottom
    #:pulse-color
    #:animation #:animated-sprite
    #:sprite #:sprite-center-origin #:sprite-draw
    #:texture-atlas #:ta-add-region #:ta-get-region #:ta-remove-region #:ta-clear
    #:ta-create-sprite #:ta-create-animated-sprite #:ta-add-animation #:ta-get-animation
    #:ta-remove-animation #:ta-from-file
    #:texture-region #:tr-draw))

(defpackage :dungeon-slime-input
  (:use :cl :mg-classes :csharp)
  (:local-nicknames
    (:kb-state :microsoft-xna-framework-input-keyboard-state)
    (:gp-state :microsoft-xna-framework-input-game-pad-state)
    (:ms :microsoft-xna-framework-input-mouse-state)
    (:gp-ts :microsoft-xna-framework-input-game-pad-thumb-sticks)
    (:gp-trig :microsoft-xna-framework-input-game-pad-triggers)
    (:button :microsoft-xna-framework-input-buttons)
    (:pi :microsoft-xna-framework-player-index)
    (:v2 :microsoft-xna-framework-vector2)
    (:bs :microsoft-xna-framework-input-button-state))
  (:export
    ;; KeyboardInfo class and functions
    #:keyboard-info
    #:keyboard-previous-state
    #:keyboard-current-state
    #:keyboard-update
    #:is-key-down
    #:is-key-up
    #:was-key-just-pressed
    #:was-key-just-released
    ;; MouseInfo class and functions
    #:mouse-info
    #:mouse-previous-state
    #:mouse-current-state
    #:mouse-update
    #:mouse-set-position
    #:mouse-button
    #:is-button-down
    #:is-button-up
    #:was-button-just-pressed
    #:was-button-just-released
    #:mouse-position
    #:mouse-x
    #:mouse-y
    #:mouse-position-delta
    #:mouse-x-delta
    #:mouse-y-delta
    #:mouse-was-moved
    #:mouse-scroll-wheel
    #:mouse-scroll-wheel-delta
    ;; GamePadInfo class and functions
    #:game-pad-info
    #:game-pad-player-index
    #:game-pad-previous-state
    #:game-pad-current-state
    #:game-pad-is-connected
    #:game-pad-update
    #:game-pad-left-thumb-stick
    #:game-pad-right-thumb-stick
    #:game-pad-left-trigger
    #:game-pad-right-trigger
    #:game-pad-set-vibration
    #:game-pad-stop-vibration
    ;; InputManager class and functions
    #:input-manager
    #:im-keyboard
    #:im-mouse
    #:im-game-pads
    #:input-manager-update
    ;; MouseButton constants
    #:+mouse-left+
    #:+mouse-middle+
    #:+mouse-right+
    #:+mouse-x-button1+
    #:+mouse-x-button2+))

(defpackage :dungeon-slime-tests
  (:use :cl :dungeon-slime :assembly-package-generator :csharp :utils :clr-generic :monoutils :mg-classes)
  (:export
    #:run-all-tests
    #:test-clr-defmethods))