;;; MonoGame Tutorial Chapter 13: Tilesets

(in-package :dungeon-slime)

(format *error-output* "[tileset.lisp] Loading in package ~S~%" *package*)

(defclass tileset ()
  ((texture-region
    :accessor tileset-region
    :initarg :texture-region
    :documentation "The source texture region that contains all the tiles.")
   (tile-width
    :accessor tile-width
    :initarg :tile-width)
   (tile-height
    :accessor tile-height
    :initarg :tile-height)
   (columns
    :accessor columns
    :documentation "The total number of columns in this tileset.")
   (rows
    :accessor rows
    :documentation "The total number of rows in this tileset.")
   (count
    :accessor tile-count
    :documentation "The total number of tiles in this tileset.")
   (tiles
    :accessor tiles
    :documentation "1D array of texture-regions for each individual tile."))
  (:documentation "Manages a collection of tiles extracted from a texture atlas."))

(defmethod initialize-instance :after ((ts tileset) &key)
  "Initializes the tiles array by slicing the source texture region."
  (let* ((tr (tileset-region ts))
         (tw (tile-width ts))
         (th (tile-height ts))
         (cols (floor (cs:width tr) tw))
         (rs (floor (cs:height tr) th))
         (total (* cols rs))
         (tile-array (make-array total)))
    (setf (columns ts) cols)
    (setf (rows ts) rs)
    (setf (tile-count ts) total)
    (setf (tiles ts) tile-array)

    (let ((tex (texture tr))
          (base-x (cs:x tr))
          (base-y (cs:y tr)))
      (dotimes (i total)
        (let* ((col (mod i cols))
               (row (floor i cols))
               (tx (+ base-x (* col tw)))
               (ty (+ base-y (* row th)))
               (tile-tr (make-instance 'texture-region
                          :texture tex
                          :source-rect (rect:new tx ty tw th))))
          (setf (aref tile-array i) tile-tr))))))

(defgeneric get-tile (tileset id-or-column &optional row)
  (:documentation "Gets the texture region for a tile by 1D index or 2D column/row."))

(defmethod get-tile ((ts tileset) (index integer) &optional row)
  "Gets the texture region for the tile from this tileset at the given index.
   If row is provided, treats index as column."
  (if row
      (let ((idx (+ (* row (columns ts)) index)))
        (aref (tiles ts) idx))
      (aref (tiles ts) index)))

(format *error-output* "[tileset.lisp] Loading complete.~%")
