(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *cspackages-components*
    (let* ((base-dir (uiop:pathname-directory-pathname
                      (cond (*load-pathname* *load-pathname*)
                            (*load-truename* *load-truename*)
                            (t *default-pathname-defaults*))))
           (cspackages-dir (uiop:subpathname base-dir "cspackages/")))
      (if (uiop:directory-exists-p cspackages-dir)
          (mapcar (lambda (file)
                    (let ((name (pathname-name file)))
                      (list :file (concatenate 'string "cspackages/" name)
                            :pathname (uiop:subpathname cspackages-dir (concatenate 'string name ".lisp"))
                            :depends-on '("packages" "utils" "monoutils"))))
                  (remove-if-not (lambda (file)
                                   (string-equal (pathname-type file) "lisp"))
                                 (uiop:directory-files cspackages-dir)))
          nil))))

(defsystem "MonoGameLispDemo"
  :description "dotcl Common Lisp implementation of the MonoGame Dungeon Slime demo"
  :version "0.2"
  :depends-on ("dotnet-class"
               "dotcl-thread"
               "dotcl-repl"
               "anaphora")
  ;; Do not include any of the "depends-on" stuff above in the "depends-on"
  ;; clauses in the components!
  :components #.(append
                 '((:file "settings") ;; Load this file first, it contains declaims
                   (:file "packages")
                   (:file "utils" :depends-on ("packages"))
                   (:file "monoutils" :depends-on ("packages"))
                   (:file "constants")
                   (:file "type-aliases")
                   (:file "load-system-test")
                   (:file "csharp" :depends-on ("packages"))
                   (:file "assembly-package-generator" :depends-on ("packages" "utils")))
                 *cspackages-components*
                 (list
                  `(:file "package-generator-tests" :depends-on ("utils" "assembly-package-generator"
                                                                 ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
                  '(:file "clr-generic" :depends-on ("monoutils"))
                  ;; Uncomment the below to run the Proof of Concepts & Tests
                  `(:file "poc-test" :depends-on ("monoutils" "constants" "settings" "csharp" "utils"
                                                  ,@(mapcar (lambda (comp) (second comp)) *cspackages-components*)))
                  '(:file "clr-generic-test" :depends-on ("clr-generic" "type-aliases"))
                  ;; End tests to uncomment
                  '(:file "game-repl" :depends-on ("packages"))
                  '(:file "mg-classes" :depends-on ("type-aliases" "clr-generic" "constants" "packages"))
                  '(:file "texture-region" :depends-on ("monoutils" "constants" "mg-classes" "clr-generic"))
                  '(:file "sprite" :depends-on ("mg-classes" "texture-region"))
                  '(:file "animation" :depends-on ("csharp" "texture-region"))
                  '(:file "texture-atlas" :depends-on ("utils" "texture-region" "monoutils" "constants" "mg-classes" "clr-generic" "animation"))
                  '(:file "mg-core" :depends-on ("monoutils" "type-aliases" "constants"))
                  '(:file "game-1" :depends-on ("constants" "mg-classes" "type-aliases" "mg-core" "monoutils"))
                  '(:file "main" :depends-on
                    ("mg-core" "game-1" "type-aliases" "constants" "monoutils" "game-repl" "settings")))))
