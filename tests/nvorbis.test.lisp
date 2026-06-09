;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;; Tests for NVorbis.dll metadata

(in-package :cl-user)

(def-assembly-test "NVorbis.dll" test-nvorbis
  (let ((reader (find-if (lambda (cls) (string= (getf cls :fully-qualified-name) "NVorbis.VorbisReader")) *metadata*)))
    (assert-not-null reader "Should find NVorbis.VorbisReader type")
    (when reader
      (assert-equal :class (getf reader :kind) "VorbisReader is a class"))))
