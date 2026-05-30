;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; MonoGame Tutorial Chapter 7: TextureRegion as a CLOS class.

(in-package :cl-user)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Texture Atlas

(defclass texture-atlas ()
  ((regions
    :accessor regions
    :documentation "All the regions in a hashtable indexed by string name")
   (texture
    :accessor texture
    :initarg :texture
    :documentation "The base texture of the atlas") 
   (source-rect
    :accessor source-rect
    :initarg :source-rect))
  (:documentation "Stores a texture and its source rectangle."))

(defmethod initialize-instance :after ((atlas texture-atlas) &key)
  ;; This code runs immediately after a texture-atlas object is created
  ;; and its initial keyword arguments are processed.
  (format *error-output* "[texture-atlas:initialize-instance:after] Setting up texture-atlas~%")
  ;; Create an empty hash table for the regions
  (setf (regions atlas) (make-hash-table :test #'equal)))

;; TODO: Consider making these generic functions and dispatch on the texture-atlas?
(defun ta-add-region (ta name x y w h)
  "Creates a new region and adds it to this texture atlas.
   name: The name to give the texture region.
   x: The top-left x-coordinate position of the region boundary relative to the top-left corner of the source texture boundary.
   y: The top-left y-coordinate position of the region boundary relative to the top-left corner of the source texture boundary.
   width: The width, in pixels, of the region.
   height: The height, in pixels, of the region."
  (let ((tr (make-instance 'texture-region 
                           :texture (texture ta)
                           :source-rect (rect x y w h))))
    (setf (gethash name (regions ta)) tr)))

(defun ta-get-region (ta name)
  "Gets the region from this texture atlas with the specified name.
   name: The name of the region to retrieve.
   returns: The TextureRegion with the specified name."
  (gethash name (regions ta)))

(defun ta-remove-region (ta name)
  "Removes the region from this texture atlas with the specified name.
   name: The name of the region to remove."
  (remhash name (regions ta)))

(defun ta-clear (ta)
  "Removes all regions from this texture atlas."
  (clear (regions ta)))

(defun safe-read-form-from-file (filepath)
  "To safely load (or read) a single form from a file in Common Lisp,
   you must prevent read-time code execution, isolate symbol resolution,  
   and handle potential errors or end-of-file situations gracefully."
  (with-open-file (stream filepath :direction :input)
    (let ((*read-eval* nil)                    ; 1. Disable read-time execution (#.)
          (*readtable* (copy-readtable nil))   ; 2. Use the standard standard readtable
          (*package* (find-package :cl-user))) ; 3. Control package context
      (read stream nil :eof))))                ; 4. Graceful EOF handling

(defconstant +base-directory+
  (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")
  "Get the C# base directory of this current executable")

(defun path-combine (part1 part2 &optional (part3 nil part3-p) (part4 nil part4-p))
  "Calls the C# Path Combining logic with 2-4 parameters."
  (cond
   (part4-p
    (dotnet:static "System.IO.Path" "Combine" part1 part2 part3 part4))
   (part3-p
    (dotnet:static "System.IO.Path" "Combine" part1 part2 part3))
   (t
    (dotnet:static "System.IO.Path" "Combine" part1 part2))))

#|
(defun file-exists-and-readable-p (filename)
  "Returns T if the file exists and can be successfully opened for reading."
  (let ((path (probe-file filename)))
    (when path
      ;; If probe-file found it, try to actually open it to test readability
      (handler-case
        (with-open-file (stream path :direction :input) t) ; Successfully opened! Return T
        (file-error () nil))))) ; Catch OS permission/read errors and return NIL
|#
(defun file-exists-and-readable-p (filename)
  "Returns T if the file exists and can be successfully opened for reading."
  (anaphora:awhen (probe-file filename)
    ;; If probe-file found it, try to actually open it to test readability
    (handler-case
      (with-open-file (stream it :direction :input) t) ; Successfully opened! Return T
      (file-error () nil)))) ; Catch OS permission/read errors and return NIL

(defun qualify-path (filename)
  "Checks if we can read filename as it is, and returns it. Otherwise,
   checks if it can be read after combining with +base-directory+ and then
   will return that. Otherwise, just returns the original filename."
  ;; This is necessary because when we (load "load-repl.lisp") to load the
  ;; entire game from the REPL, DotCL doesn't actually set the 
  ;; +base-directory+ to a reasonable setting:
  ;; [texture-region.lisp] +base-directory+ =
  ;;   /home/dfields/.dotnet/tools/.store/dotcl/0.1.8/dotcl.linux-x64/0.1.8/tools/net10.0/linux-x64/
  (cond
    ((file-exists-and-readable-p filename) filename)
    ((file-exists-and-readable-p (path-combine +base-directory+ filename))
     (path-combine +base-directory+ filename))
    (t filename)))

(format *error-output* "[texture-region.lisp] +base-directory+ = ~A~%" +base-directory+)
(format *error-output* "[texture-region.lisp] combined = ~A~%" (qualify-path "Content/test-atlas.lisp"))

(defvar ta-example-atlas
  '(:texture "SomeTexture.png"
    :regions (:first  (:x 0   :y 0 :w 128 :h 128)
              :second (:x 128 :y 0 :w 128 :h 128)))
  "Example texture atlas. Note that the keys of the regions are converted from
   symbols to strings.")

(format *error-output* "[texture-atlas.lisp] example atlas texture: ~S~%" (getf ta-example-atlas :texture))

(setf ta-example-atlas (safe-read-form-from-file (qualify-path "Content/test-atlas.lisp")))

(format *error-output* "[texture-atlas.lisp] example file atlas: ~S~%" ta-example-atlas)

(defun string-suffix-p (filename suffix)
  "Implementation of uiop:string-suffix-p"
  (null (mismatch suffix filename :from-end t :start2 (- (length filename) (length suffix)))))

(defun ta-from-file (filepath &optional content-manager)
  "Creates a texture-atlas from a Lisp form description file.
   filepath: path to the file containing the Lisp form description.
   content-manager: MonoGame ContentManager, used to load the texture.
     (can be nil for testing purposes only!)
   All texture name keys are downcased.
   Returns the newly created texture atlas."
  (let ((plist (safe-read-form-from-file filepath)))
    (format *error-output* "[ta-from-file] plist = ~A~%" plist)
    (when (eq plist :eof)
      (error "Empty or invalid texture atlas file: ~A" filepath))
    (let* ((tex-name (getf plist :texture))
           (regions-plist (getf plist :regions))
           ;; Remove the .png suffix (if any) from the texture name
           (clean-name (if (and (stringp tex-name)
                                (uiop:string-suffix-p tex-name ".png"))
                                ;; (string-suffix-p tex-name ".png"))
                         (subseq tex-name 0 (- (length tex-name) 4))
                         tex-name))
           ;; For test purposes, we allow content-manager to be nil and just set
           ;; the texture to the clean name
           (tex (if content-manager
                  (monoutils:invoke-generic content-manager "Load" '("TEXTURE2D") clean-name)
                  clean-name))
           ;; Create the texture-atlas instance
           (atlas (make-instance 'texture-atlas :texture tex)))
      (format *error-output* "[ta-from-file] atlas texture = ~A~%" tex)
      ;; Add each region
      (loop for (key val) on regions-plist by #'cddr
            do (let ((name (string-downcase (string key)))
                      (x (getf val :x 0))
                      (y (getf val :y 0))
                      (w (getf val :w 0))
                      (h (getf val :h 0)))
                 (format *error-output* "[ta-from-file] region: ~S ~S ~S ~S ~S~%" name x y w h)
                 (ta-add-region atlas name x y w h)))
      ;; Return our completed texture atlas
      atlas)))

;; Test to ensure that the example test-atlas.lisp file can be read correctly.
(let ((test-atlas (ta-from-file (qualify-path "Content/test-atlas.lisp"))))
  (format *error-output* "[texture-atlas.lisp] Testing ta-from-file...~%")
  (assert (typep test-atlas 'texture-atlas))
  (assert (equal (texture test-atlas) "AnotherTexture")) ;; It removes the .png suffix
  (let ((reg-a (ta-get-region test-atlas "a"))
        (reg-b (ta-get-region test-atlas "b")))
    (assert reg-a)
    (assert reg-b)
    (assert (monoutils:dotnet-p (source-rect reg-a)))
    (assert (equal (x      reg-a) 0))
    (assert (equal (y      reg-a) 0))
    (assert (equal (width  reg-a) 64))
    (assert (equal (height reg-a) 64))
    (assert (equal (x      reg-b) 64))
    (assert (equal (y      reg-b) 0))
    (assert (equal (width  reg-b) 64))
    (assert (equal (height reg-b) 64)))
  (format *error-output* "[texture-atlas.lisp] ta-from-file test passed!~%"))
