;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; MonoGame Tutorial Chapter 7: TextureRegion as a CLOS class.

(in-package :dungeon-slime)
(require "asdf") ;; Load uiop library
; (require "anaphora") ; This doesn't work, but should have been loaded earlier

(format *error-output* "[texture-region.lisp] Loading in package ~S~%" *package*)

;; Alternatively to use-package, we can just get the specific symbols we want.
;; (use-package :mg-classes)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (shadowing-import '(mg-classes:x
                      mg-classes:y
                      mg-classes:width
                      mg-classes:height)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Texture Region

(defclass texture-region ()
  ((texture
    ;; ACCESSOR defines the reader/writer methods for the slot.
    :accessor texture
    ;; INITARG specifies the keyword used to initialize this slot
    ;; during MAKE-INSTANCE.
    :initarg :texture)
   (source-rect
    :documentation "A MonoGame Rectangle referenced to the texture"
    :accessor source-rect
    :initarg :source-rect))
  (:documentation "Stores a texture and its source rectangle."))

(format *error-output* "[texture-region.lisp] Showing defined generic methods on width~%")
(format *error-output* "[texture-region.lisp] Before defining texture-region specialization~%")
(print-gf-methods 'width)
(defmethod width ((tr texture-region))
  "Gets the width of the source-rect of this texture-region"
  ; (format *error-output* "[texture-region:width] tr = ~A~%" tr)
  (width (source-rect tr)))
(format *error-output* "[texture-region.lisp] After defining texture-region specialization~%")
(print-gf-methods 'width)
#|
(defmethod width ((str string))
  "Gets the length of this string"
  (length str))
(format *error-output* "[texture-region.lisp] After defining string specialization~%")
(print-gf-methods 'width)
|#
(format *error-output* "[texture-region.lisp] End showing defined generic methods on width~%")

(defmethod height ((obj texture-region))
  "Gets the height of the source-rect of this texture-region"
  (height (source-rect obj)))

(defmethod x ((obj texture-region))
  "Gets the x-coordinate of the source-rect of this texture-region"
  (format *error-output* "[texture-region:x] (source-rect obj) = ~A~%" (source-rect obj))
  (x (source-rect obj)))

(defmethod y ((obj texture-region))
  "Gets the y-coordinate of the source-rect of this texture-region"
  (y (source-rect obj)))

(defun tr-draw (tr sb pos color 
                &optional (rotation 0.0e0) (origin nil) (scale +v2-1+)
                (effects +sprite-effects-none+) (layer-depth 0.0e0))
  "Submit this texture region for drawing in the current batch.
   tr: the texture-region
   sb: The spritebatch instance used for batching draw calls.
   pos: The xy-coordinate location to draw this texture region on the screen.
   color: The color mask to apply when drawing this texture region on screen.
   These arguments are all optional:
   rotation: The amount of rotation, in radians, to apply when drawing this texture region on screen.
   origin: The center of rotation, scaling, and position when drawing this texture region on screen.
   scale: The Vector2 scale factor to apply when drawing this texture region on screen.
   effects: Specifies if this texture region should be flipped horizontally, vertically, or both when drawing on screen.
   layer-depth: The depth of the layer to use when drawing this texture region on screen."
  (dotnet:invoke sb "Draw" (texture tr)     ;; Texture
                           pos              ;; Position
                           (source-rect tr) ;; Source Rectangle
                           color            ;; Color
                           rotation         ;; float rotation, e.g. (°2R 45)
                           origin           ;; origin
                           scale            ;; Vector2 scale
                           effects          ;; sprite-effects
                           layer-depth)     ;; float Layer Depth
)

(format *error-output* "[texture-region.lisp] Loading complete.~%")
