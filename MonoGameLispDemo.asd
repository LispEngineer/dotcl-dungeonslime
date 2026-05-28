(defsystem "MonoGameLispDemo"
  :description "dotcl Common Lisp implementation of the MonoGame Dungeon Slime demo"
  :version "0.2"
  :depends-on ("dotnet-class"
               "dotcl-thread"
               "dotcl-repl")
  :components ((:file "settings") ;; Load this file first, it contains declaims
               (:file "monoutils")
               (:file "constants")
               (:file "type-aliases")
               ;; Uncomment the below to run the Proof of Concepts & Tests
               (:file "poc-test" :depends-on ("monoutils" "constants" "settings"))
               (:file "clr-generic" :depends-on ("monoutils"))
               (:file "clr-generic-test" :depends-on ("clr-generic" "type-aliases"))
               (:file "game-repl")
               (:file "mg-classes" :depends-on ("type-aliases"))
               (:file "texture-region" :depends-on ("monoutils" "constants" "mg-classes"))
               (:file "mg-core" :depends-on ("monoutils" "type-aliases" "constants"))
               (:file "game-1" :depends-on ("constants" "mg-classes" "type-aliases" "mg-core" "monoutils"))
               (:file "main" :depends-on
                 ("mg-core" "game-1" "type-aliases" "constants" "monoutils" "game-repl" "settings"))))
