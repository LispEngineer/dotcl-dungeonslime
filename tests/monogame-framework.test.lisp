;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;; Tests for MonoGame.Framework.dll metadata

(in-package :dungeon-slime-tests)

(def-assembly-test "MonoGame.Framework.dll" test-monogame-framework
  (let ((game (find-if (lambda (cls) (string= (getf cls :fully-qualified-name) "Microsoft.Xna.Framework.Game")) *metadata*)))
    (assert-not-null game "Should find Microsoft.Xna.Framework.Game type")
    (when game
      (assert-equal :class (getf game :kind) "Game is a class")
      (assert-true (find-if (lambda (m) (string= (getf m :name) "Run")) (getf game :methods))
                   "Game should contain Run method")
      (assert-true (find-if (lambda (m) (string= (getf m :name) "Exit")) (getf game :methods))
                   "Game should contain Exit method"))))
