;;; MonoGame Tutorial Chapter 13: Tilemaps
;;;
;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Coded in conjunction with Antigravity CLI

(in-package :dungeon-slime)

(format *error-output* "[tilemap.lisp] Loading in package ~S~%" *package*)

(defclass tilemap ()
  ((tileset
    :accessor tileset
    :initarg :tileset
    :documentation "The tileset used by this tilemap.")
   (columns
    :accessor columns
    :initarg :columns
    :documentation "The total number of columns in this tilemap.")
   (rows
    :accessor rows
    :initarg :rows
    :documentation "The total number of rows in this tilemap.")
   (count
    :accessor tile-count
    :documentation "The total number of tiles in this tilemap.")
   (scale
    :accessor scale
    :initform v2:+one+
    :initarg :scale
    :documentation "The scale to draw the tilemap.")
   (tiles
    :accessor tiles
    :documentation "1D array of tile IDs."))
  (:documentation "A grid-based tilemap that renders tiles from a tileset."))

(defmethod initialize-instance :after ((tm tilemap) &key)
  "Initializes the tiles array."
  (let ((total (* (columns tm) (rows tm))))
    (setf (tile-count tm) total)
    (setf (tiles tm) (make-array total :element-type 'integer :initial-element 0))))

(defgeneric tm-set-tile (tilemap id-or-column id-or-row &optional id)
  (:documentation "Sets the tile ID for a given index or column/row."))

(defmethod tm-set-tile ((tm tilemap) (index integer) (id integer) &optional optional-id)
  "Sets the tile at the given 1D index, or if optional-id is provided, treats args as (column row id)."
  (if optional-id
      (let ((idx (+ (* id (columns tm)) index))) ; here id is row, index is column
        (setf (aref (tiles tm) idx) optional-id))
      (setf (aref (tiles tm) index) id)))

(defgeneric tm-get-tile (tilemap index-or-column &optional row)
  (:documentation "Gets the texture region of the tile at the specified location."))

(defmethod tm-get-tile ((tm tilemap) (index integer) &optional row)
  "Gets the texture region for the tile from this tilemap at the given index or column/row."
  (let* ((idx (if row
                  (+ (* row (columns tm)) index)
                  index))
         (tile-id (aref (tiles tm) idx)))
    (get-tile (tileset tm) tile-id)))

(defmethod draw ((tm tilemap) sb)
  "Draws this tilemap using the given sprite batch."
  (let* ((cols (columns tm))
         (count (tile-count tm))
         (ts (tileset tm))
         (tw (tile-width ts))
         (th (tile-height ts))
         (sc (scale tm))
         (sc-x (x sc))
         (sc-y (y sc)))
    (dotimes (i count)
      (let* ((tile-id (aref (tiles tm) i))
             (tile-tr (get-tile ts tile-id))
             (col (mod i cols))
             (row (floor i cols))
             (pos (v2:new (float (* col tw sc-x))
                          (float (* row th sc-y)))))
        (tr-draw tile-tr sb pos microsoft-xna-framework-color:+white+ 0.0e0 nil sc)))))

(defun content-load-texture2d (content-manager asset-name)
  "Loads a Texture2D from the ContentManager. If the asset-name has a .png
   suffix, it is removed before loading. If the content-manager is nil,
   returns the asset-name directly."
  (let ((clean-name (if (and (stringp asset-name)
                             (uiop:string-suffix-p asset-name ".png"))
                        (subseq asset-name 0 (- (length asset-name) 4))
                        asset-name)))
    (if content-manager
        (dotnet:invoke-generic content-manager "Load" '("Microsoft.Xna.Framework.Graphics.Texture2D") clean-name)
        clean-name)))

(defun tm-from-file (content filename)
  "Creates a new tilemap based on a tilemap s-expression configuration file."
  (let* ((filepath (qualify-path filename))
         (data (with-open-file (stream filepath)
                 (read stream)))
         (ts-data (getf data :tileset))
         (region-data (getf ts-data :region))
         (tw (getf ts-data :tile-width))
         (th (getf ts-data :tile-height))
         (tex-path (getf ts-data :texture))
         (cols (getf data :columns))
         (rows (getf data :rows))
         (tiles-list (getf data :tiles))
         ;; Load texture
         (tex (content-load-texture2d content tex-path))
         ;; Create texture region
         (rx (getf region-data :x))
         (ry (getf region-data :y))
         (rw (getf region-data :w))
         (rh (getf region-data :h))
         (tr (make-instance 'texture-region :texture tex :source-rect (rect:new rx ry rw rh)))
         ;; Create tileset
         (ts (make-instance 'tileset :texture-region tr :tile-width tw :tile-height th))
         ;; Create tilemap
         (tm (make-instance 'tilemap :tileset ts :columns cols :rows rows)))
    ;; Process rows
    (loop for row-list in tiles-list
          for r from 0
          do (loop for tile-id in row-list
                   for c from 0
                   do (tm-set-tile tm c r tile-id)))
    tm))

(format *error-output* "[tilemap.lisp] Loading complete.~%")
