(defsystem "MonoGameLispDemo"
  :description "dotcl Common Lisp implementation of the MonoGame Dungeon Slime demo"
  :version "0.1"
  :depends-on ("dotnet-class"
               "dotcl-thread"
               "dotcl-repl")
  :components ((:file "monoutils")
               (:file "poc-test" :depends-on ("monoutils"))
               (:file "game-repl")
               (:file "type-aliases")
               (:file "constants")
               (:file "mg-core" :depends-on ("monoutils" "type-aliases" "constants"))
               (:file "main" :depends-on
                 ("mg-core" "type-aliases" "constants" "poc-test" "monoutils" "game-repl"))))
