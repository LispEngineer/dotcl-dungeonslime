;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;; Tests for DungeonSlime.dll metadata

(in-package :cl-user)

(def-assembly-test "DungeonSlime.dll" test-dungeon-slime
  (let ((atl (find-if (lambda (cls) (string= (getf cls :fully-qualified-name) "DungeonSlime.AssemblyToLispy")) *metadata*)))
    (assert-not-null atl "Should find DungeonSlime.AssemblyToLispy type")
    (when atl
      (assert-equal :class (getf atl :kind) "AssemblyToLispy is a class")
      (assert-true (find-if (lambda (m) (string= (getf m :name) "GenerateLispyMetadata")) (getf atl :methods))
                   "AssemblyToLispy should contain GenerateLispyMetadata method"))))
