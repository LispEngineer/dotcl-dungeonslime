;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Define all the packages and exports of this software

(format *error-output* "[packages.lisp] Loading beginning.~%" *package*)
(in-package :cl-user)
(format *error-output* "[packages.lisp] Defining packages in package ~S~%" *package*)

;; Some special packages ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Without this, during compilation, we get:
;; /home/dfields/.nuget/packages/dotcl.runtime/0.1.15/buildTransitive/DotCL.Runtime.ProjectCore.targets(92,5): error dotcl compile-project failed for /home/dfields/src/cl/dotcl-dungeonslime/dungeon-slime.asd: Symbol "GET-TYPE" is not external in package "OBJECT"
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
  ))

(defpackage :game-repl
  (:use :cl)
  (:export #:run-repl
            #:start-background-repl
            #:kill-background-repl
            #:*no-lisp-repl*
            #:*background-repl*))



(defpackage :dungeon-slime
  (:use :cl 
        :utils :mg-classes :monoutils :csharp :game-repl)
  (:local-nicknames 
    (:v2 :microsoft-xna-framework-vector2)
    (:ts :system-time-span)
    (:key :microsoft-xna-framework-input-keys)
    (:kb :microsoft-xna-framework-input-keyboard)
    (:kb-state :microsoft-xna-framework-input-keyboard-state)
    (:gp :microsoft-xna-framework-input-game-pad)
    (:gp-state :microsoft-xna-framework-input-game-pad-state)
    (:ms :microsoft-xna-framework-input-mouse-state)
    (:gp-ts :microsoft-xna-framework-input-game-pad-thumb-sticks)
    (:gp-trig :microsoft-xna-framework-input-game-pad-triggers)
    (:mouse :microsoft-xna-framework-input-mouse)
    (:button :microsoft-xna-framework-input-buttons)
    (:bs :microsoft-xna-framework-input-button-state)
    (:pi :microsoft-xna-framework-player-index)
    (:color :microsoft-xna-framework-color)
    (:sprite-effects :microsoft-xna-framework-graphics-sprite-effects)
    (:sprite-sort-mode :microsoft-xna-framework-graphics-sprite-sort-mode)
    (:sampler-state :microsoft-xna-framework-graphics-sampler-state)
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
    ;; Local nickname added for Chapter 18: Texture Sampling and Tiling Backgrounds.
    ;; This allows using wrapper-based properties like sprite-font:line-spacing instead of dotnet:invoke.
    (:sprite-font :microsoft-xna-framework-graphics-sprite-font)
    ;; Gum-related
    (:gs :mono-game-gum-gum-service)
    (:default-visuals-version :gum-forms-default-visuals-version)
    (:gum-cl :rendering-library-content-content-loader)
    (:gum-fwe :gum-forms-controls-framework-element)
    (:list :system-collections-generic-list-1)
    (:key-combo :gum-forms-controls-key-combo)
    (:renderer :rendering-library-graphics-renderer)
    (:gum-camera :rendering-library-camera)
    (:panel :gum-forms-controls-panel)
    (:dock :gum-wireframe-dock)
    (:uibutton :gum-forms-controls-button)
    (:buibutton :gum-forms-controls-primitives-button-base)
    (:anchor :gum-wireframe-anchor)
    (:gfe :gum-forms-controls-framework-element)
    ;; The main generic interface
    (:cs :csharp-generics)
  ) ; end local-nicknames
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
    #:active-scene #:next-scene #:change-scene
    #:scene #:title-scene #:gameplay-scene
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

(defpackage :dungeon-slime-tests
  (:use :cl :dungeon-slime :csharp :utils :monoutils :mg-classes)
  (:local-nicknames
    (:v2 :microsoft-xna-framework-vector2)
    (:rect :microsoft-xna-framework-rectangle)
    (:single :system-single)
    (:ts :system-time-span)
    (:sprite-batch :microsoft-xna-framework-graphics-sprite-batch))
  (:export
    #:run-all-tests
    #:test-clr-defmethods))