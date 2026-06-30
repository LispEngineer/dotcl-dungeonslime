;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Define all the packages and exports of this software

(format *error-output* "[packages.lisp] Loading beginning.~%" *package*)
(in-package :cl-user)
(format *error-output* "[packages.lisp] Defining packages in package ~S~%" *package*)

;; Pre-declare empty C# packages so local-nicknames doesn't crash
;; Recreate this with: fgrep -h in-package cspackages/* | fgrep -v cl-user | sed 's/in-/def/'
(defpackage :microsoft-xna-framework-audio-sound-effect-instance)
(defpackage :microsoft-xna-framework-audio-sound-effect)
(defpackage :microsoft-xna-framework-audio-sound-state)
(defpackage :microsoft-xna-framework-color)
(defpackage :microsoft-xna-framework-content-content-manager)
(defpackage :microsoft-xna-framework-game)
(defpackage :microsoft-xna-framework-game-time)
(defpackage :microsoft-xna-framework-game-window)
(defpackage :microsoft-xna-framework-graphics-device-manager)
(defpackage :microsoft-xna-framework-graphics-graphics-device)
(defpackage :microsoft-xna-framework-graphics-presentation-parameters)
(defpackage :microsoft-xna-framework-graphics-sampler-state)
(defpackage :microsoft-xna-framework-graphics-sprite-batch)
(defpackage :microsoft-xna-framework-graphics-sprite-effects)
(defpackage :microsoft-xna-framework-graphics-sprite-font)
(defpackage :microsoft-xna-framework-graphics-sprite-sort-mode)
(defpackage :microsoft-xna-framework-input-buttons)
(defpackage :microsoft-xna-framework-input-button-state)
(defpackage :microsoft-xna-framework-input-game-pad-d-pad)
(defpackage :microsoft-xna-framework-input-game-pad)
(defpackage :microsoft-xna-framework-input-game-pad-state)
(defpackage :microsoft-xna-framework-input-game-pad-thumb-sticks)
(defpackage :microsoft-xna-framework-input-game-pad-triggers)
(defpackage :microsoft-xna-framework-input-keyboard)
(defpackage :microsoft-xna-framework-input-keyboard-state)
(defpackage :microsoft-xna-framework-input-keys)
(defpackage :microsoft-xna-framework-input-mouse)
(defpackage :microsoft-xna-framework-input-mouse-state)
(defpackage :microsoft-xna-framework-media-media-player)
(defpackage :microsoft-xna-framework-media-song)
(defpackage :microsoft-xna-framework-player-index)
(defpackage :microsoft-xna-framework-point)
(defpackage :microsoft-xna-framework-rectangle)
(defpackage :microsoft-xna-framework-vector2)
(defpackage :system-app-domain)
(defpackage :system-boolean)
(defpackage :system-console)
(defpackage :system-convert)
(defpackage :system-io-path)
(defpackage :system-object)
(defpackage :system-single)
(defpackage :system-double)
(defpackage :system-reflection-member-info)
(defpackage :system-time-span)
(defpackage :system-type)
(defpackage :system-uri-kind)
(defpackage :system-uri)
;; Some special packages
(defpackage :system-object
  (:export #:get-type))
(defpackage :system-type
  (:export #:full-name))
;; Additional manually added packages
(defpackage :anaphora)

(defpackage :utils
  (:use :cl)
  (:local-nicknames
    (:path :system-io-path)
    (:app-domain :system-app-domain))
  (:export #:safe-read-form-from-file
            #:+base-directory+
            #:format-red
            #:path-combine
            #:file-exists-and-readable-p
            #:qualify-path))

(defpackage :monoutils
  (:use :cl)
  (:local-nicknames
    (:object :system-object)
    (:type :system-type))
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
  (:local-nicknames
    (:v2 :microsoft-xna-framework-vector2)
    (:rect :microsoft-xna-framework-rectangle)
    (:game-time :microsoft-xna-framework-game-time))
  (:export 
            #:x
            #:y
            #:width
            #:height
            #:°2R
            #:sprite-batch-begin
  ))

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
    (:gp-ts :microsoft-xna-framework-input-game-pad-thumb-sticks)
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
    (:sound-effect :microsoft-xna-framework-audio-sound-effect)
    (:sei :microsoft-xna-framework-audio-sound-effect-instance)
    (:sound-state :microsoft-xna-framework-audio-sound-state)
    (:media-player :microsoft-xna-framework-media-media-player)
    (:song :microsoft-xna-framework-media-song)
    (:game-time :microsoft-xna-framework-game-time)
    (:game :microsoft-xna-framework-game)
    (:window :microsoft-xna-framework-game-window)
    (:app-domain :system-app-domain)
    (:sprite-batch :microsoft-xna-framework-graphics-sprite-batch)
    (:gdm :microsoft-xna-framework-graphics-device-manager)
    (:cm :microsoft-xna-framework-content-content-manager)
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
    #:core #:monogame #:window-info #:graphics #:graphics-device #:sprite-batch #:content #:audio-controller
    #:initialize #:load-content #:update #:draw #:dispose #:begin-run #:end-run #:run
    #:update-audio #:play-sound-effect #:play-song #:pause-audio #:resume-audio #:toggle-mute #:adjust-volume #:dispose-audio
    #:game-1 #:slime #:bat #:bat-pos #:bat-vel
     #:score #:score-text #:score-font #:score-text-position #:score-text-origin
     #:circle #:circle-intersects
    #:circle-left #:circle-right #:circle-top #:circle-bottom
    #:pulse-color
    #:animation #:animated-sprite
    #:sprite #:sprite-center-origin #:sprite-draw
    #:texture-atlas #:ta-add-region #:ta-get-region #:ta-remove-region #:ta-clear
    #:ta-create-sprite #:ta-create-animated-sprite #:ta-add-animation #:ta-get-animation
    #:ta-remove-animation #:ta-from-file
    #:texture-region #:tr-draw
     #:load-font #:measure-string #:draw-string))

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
    (:bs :microsoft-xna-framework-input-button-state)
    (:kb :microsoft-xna-framework-input-keyboard)
    (:mouse :microsoft-xna-framework-input-mouse)
    (:gp :microsoft-xna-framework-input-game-pad)
    (:game-time :microsoft-xna-framework-game-time)
    (:ts :system-time-span))
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
  (:local-nicknames
    (:v2 :microsoft-xna-framework-vector2)
    (:rect :microsoft-xna-framework-rectangle)
    (:single :system-single)
    (:ts :system-time-span))
  (:export
    #:run-all-tests
    #:test-clr-defmethods))