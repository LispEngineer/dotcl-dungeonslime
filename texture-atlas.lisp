;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; MonoGame Tutorial Chapter 7: TextureAtlas as a CLOS class.

(in-package :dungeon-slime)
(require "asdf") ;; Load uiop library
; (require "anaphora") ; This doesn't work, but should have been loaded earlier

(format *error-output* "[texture-atlas.lisp] Loading in package ~S~%" *package*)

;; Alternatively to use-package, we can just get the specific symbols we want.
;; (use-package :mg-classes)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (shadowing-import '(mg-classes:x
                      mg-classes:y
                      mg-classes:width
                      mg-classes:height)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Texture Atlas

(defclass texture-atlas ()
  ((regions
    :accessor regions
    :documentation "All the regions in a hashtable indexed by string name.")
   (texture
    :accessor texture
    :initarg :texture
    :documentation "The base texture of the atlas.")
   (animations
    :accessor animations
    :documentation "Stores animations in a hashtable indexed by string name.")
   (source-rect
    :accessor source-rect
    :initarg :source-rect))
  (:documentation "Stores a texture associated regions and animations."))

(defmethod initialize-instance :after ((atlas texture-atlas) &key)
  ;; This code runs immediately after a texture-atlas object is created
  ;; and its initial keyword arguments are processed.
  (format *error-output* "[texture-atlas:initialize-instance:after] Setting up texture-atlas~%")
  ;; Create an empty hash table for the regions and animations
  (setf (regions atlas)    (make-hash-table :test #'equal))
  (setf (animations atlas) (make-hash-table :test #'equal)))

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

(defun ta-create-sprite (ta region-name)
  "Creates a sprite for the specified region name. If the region name is not
   found, returns nil."
  (anaphora:awhen (ta-get-region ta region-name)
    (make-instance 'sprite :texture-region it)))

(defun ta-create-animated-sprite (ta sprite-name)
  "Creates a new animated sprite using the animation from this
   texture atlas with the specified name."
  (make-instance 'animated-sprite :animation (ta-get-animation ta sprite-name)))

(defun ta-add-animation (ta name delay frames)
  "Adds the given animation to this texture atlas with the specified name.
   The delay should be a C# TimeSpan object."
  (setf (gethash name (animations ta))
    (make-instance 'animation :delay delay :frames frames)))

(defun ta-get-animation (ta name)
  "Gets the animation from this texture atlas with the specified name."
  (gethash name (animations ta)))

(defun ta-remove-animation (ta name)
  "Removes the animation with the specified name from this texture atlas."
  (remhash name (animations ta)))



(format *error-output* "[texture-atlas.lisp] +base-directory+ = ~A~%" utils:+base-directory+)
(format *error-output* "[texture-atlas.lisp] combined = ~A~%" (utils:qualify-path "Content/test-atlas.lisp"))

(defvar ta-example-atlas
  '(:texture "SomeTexture.png"
    :regions (:first  (:x 0   :y 0 :w 128 :h 128)
              :second (:x 128 :y 0 :w 128 :h 128)))
  "Example texture atlas. Note that the keys of the regions are converted from
   symbols to strings.")

(format *error-output* "[texture-atlas.lisp] example atlas texture: ~S~%" (getf ta-example-atlas :texture))

(setf ta-example-atlas (utils:safe-read-form-from-file (utils:qualify-path "Content/test-atlas.lisp")))

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
  (let ((plist (utils:safe-read-form-from-file filepath)))
    (format *error-output* "[ta-from-file] plist = ~A~%" plist)
    (when (eq plist :eof)
      (error "Empty or invalid texture atlas file: ~A" filepath))
    (let* ((tex-name (getf plist :texture))
           (regions-plist (getf plist :regions))
           (animations-plist (getf plist :animations))
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
      ;; Add each animation
#|
  :animations (:slime-animation (:delay  200
                                 :frames (:slime-1 :slime-2))
               :bat-animation   (:delay  200
                                 :frames (:bat-1 :bat-2 :bat-1 :bat-3)))
|#
      (loop for (key val) on animations-plist by #'cddr
            do (let* ((name (string-downcase (string key)))
                      (delay (getf val :delay 100))
                      (frames (getf val :frames '())))
                 (format *error-output* "[ta-from-file] animation: ~S ~S ~S~%" name delay frames)
                 (ta-add-animation atlas name
                   (csharp:timespan<-milliseconds delay)
                   (mapcar (lambda (sym) (ta-get-region atlas (string-downcase (string sym)))) frames))))
      ;; Return our completed texture atlas
      atlas)))

;; Test to ensure that the example test-atlas.lisp file can be read correctly.
(let ((test-atlas (ta-from-file (qualify-path "Content/test-atlas.lisp"))))
  (format *error-output* "[texture-atlas.lisp] Testing ta-from-file...~%")
  (assert (typep test-atlas 'texture-atlas))
  (assert (equal (texture test-atlas) "AnotherTexture")) ;; It removes the .png suffix
  (let ((reg-a (ta-get-region test-atlas "a"))
        (reg-b (ta-get-region test-atlas "b"))
        (ani-ab (ta-get-animation test-atlas "ab")))
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
    (assert (equal (height reg-b) 64))
    ;; Animation tests
    (let* ((delay-ts (delay ani-ab))
           (delay-ms (csharp:timespan->milliseconds delay-ts)))
      (format *error-output* "[texture-atlas.lisp] delay-ts = ~A, delay-ms = ~A~%" delay-ts delay-ms)
      ;; Use = instead of equal for numeric comparison to handle type differences (double-float vs integer)
      (assert (= delay-ms 234)))
    ;; TODO: Check the values of the frames
    (assert (equal (length (frames ani-ab)) 5)))
  (format *error-output* "[texture-atlas.lisp] ta-from-file test passed!~%"))

(format *error-output* "[texture-atlas.lisp] Loading complete.~%")
