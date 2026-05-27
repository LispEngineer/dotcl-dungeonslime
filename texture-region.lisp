;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; MonoGame Tutorial Chapter 7: TextureRegion as a CLOS class.

(in-package :cl-user)

(defclass texture-region ()
  ((texture
    ;; ACCESSOR defines the reader/writer methods for the slot.
    :accessor texture
    ;; INITARG specifies the keyword used to initialize this slot
    ;; during MAKE-INSTANCE.
    :initarg :texture)
   (source-rect
    :accessor source-rect
    :initarg :source-rect))
  (:documentation "Stores a texture and its source rectangle."))


;; Need to think about how I'm going to deal with this
#|
(defgeneric width (obj)
  (:documentation "Gets the width of the specified object"))

(defmethod width ((obj texture-region))
  "Gets the width of the source-rect")
|#