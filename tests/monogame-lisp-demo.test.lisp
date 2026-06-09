;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;; Tests for MonoGameLispDemo.dll metadata

(in-package :cl-user)

(def-assembly-test "MonoGameLispDemo.dll" test-monogame-lisp-demo
  (let ((atl (find-if (lambda (cls) (string= (getf cls :fully-qualified-name) "MonoGameLispDemo.AssemblyToLispy")) *metadata*)))
    (assert-not-null atl "Should find MonoGameLispDemo.AssemblyToLispy type")
    (when atl
      (assert-equal :class (getf atl :kind) "AssemblyToLispy is a class")
      (assert-true (find-if (lambda (m) (string= (getf m :name) "GenerateLispyMetadata")) (getf atl :methods))
                   "AssemblyToLispy should contain GenerateLispyMetadata method"))))
