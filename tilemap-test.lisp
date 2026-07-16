;;; Tests for tilemap and tileset

(in-package :dungeon-slime)

(format *error-output* "[tilemap-test.lisp] Loading in package ~S~%" *package*)

(defun test-tilemap-and-tileset ()
  (format *error-output* "[test-tilemap] Starting...~%")

  ;; Create a mock texture region
  (let* ((tex nil) ; mock texture
         (tr (make-instance 'texture-region :texture tex :source-rect (rect:new 0 0 100 100)))
         (ts (make-instance 'tileset :texture-region tr :tile-width 10 :tile-height 10)))

    (assert (= (columns ts) 10) () "Tileset columns mismatch")
    (assert (= (rows ts) 10) () "Tileset rows mismatch")
    (assert (= (tile-count ts) 100) () "Tileset count mismatch")

    (let ((tile-tr (get-tile ts 11)))
      (assert (= (cs:width tile-tr) 10) () "Tile width mismatch")
      (assert (= (cs:height tile-tr) 10) () "Tile height mismatch")
      (assert (= (cs:x tile-tr) 10) () "Tile x mismatch")
      (assert (= (cs:y tile-tr) 10) () "Tile y mismatch"))

    (let ((tile-tr (get-tile ts 1 1)))
      (assert (= (cs:width tile-tr) 10) () "Tile width mismatch")
      (assert (= (cs:height tile-tr) 10) () "Tile height mismatch")
      (assert (= (cs:x tile-tr) 10) () "Tile x mismatch")
      (assert (= (cs:y tile-tr) 10) () "Tile y mismatch"))

    (let ((tm (make-instance 'tilemap :tileset ts :columns 20 :rows 15)))
      (assert (= (tile-count tm) 300) () "Tilemap count mismatch")
      (tm-set-tile tm 0 0 11)
      (tm-set-tile tm 1 0 12)
      (tm-set-tile tm 0 1 21)
      (assert (= (aref (tiles tm) 0) 11) () "Tilemap 0,0 mismatch")
      (assert (= (aref (tiles tm) 1) 12) () "Tilemap 1,0 mismatch")
      (assert (= (aref (tiles tm) 20) 21) () "Tilemap 0,1 mismatch")

      (let ((tile-tr (tm-get-tile tm 0 0)))
        (assert (= (cs:x tile-tr) 10) () "Tilemap tile x mismatch")
        (assert (= (cs:y tile-tr) 10) () "Tilemap tile y mismatch"))))

  (format *error-output* "[test-tilemap] Finished successfully.~%"))

(format *error-output* "[tilemap-test.lisp] Loading complete.~%")
