(defsystem "MonoGameLispDemo"
  :description "dotcl Common Lisp implementation of the MonoGame Dungeon Slime demo"
  :version "0.1"
  :depends-on ("dotnet-class"
               "dotcl-thread"
               "dotcl-repl")
  :components ((:file "main")))
