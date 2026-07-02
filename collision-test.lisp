;;; Tests for the collision detection system.
;;; Uses the same pattern as other tests in the project:
;;; plain assert, format to *error-output*, handler-case for expected errors.

(in-package :dungeon-slime-tests)

(format *error-output* "[collision-test.lisp] Loading in package ~S~%" *package*)

(defun run-collision-tests ()
  "Run all collision detection tests."

  (format *error-output* "[collision-test.lisp] Running collision tests...~%")

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Circle construction and accessors
  (format *error-output* "[collision-test.lisp] Circle construction tests...~%")

  (let ((c (make-instance 'circle :x 10 :y 20 :radius 5)))
    (assert (= (circle-x c) 10))
    (assert (= (circle-y c) 20))
    (assert (= (circle-radius c) 5))
    (format *error-output* "  [PASS] Circle created with correct slot values~%"))

  (let ((c (make-instance 'circle)))
    (assert (= (circle-x c) 0.0e0))
    (assert (= (circle-y c) 0.0e0))
    (assert (= (circle-radius c) 0.0e0))
    (format *error-output* "  [PASS] Circle with default initforms~%"))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Circle boundary properties
  (format *error-output* "[collision-test.lisp] Circle boundary tests...~%")

  ;; Circle at (10, 20) radius 5: left=5, right=15, top=15, bottom=25
  (let ((c (make-instance 'circle :x 10.0e0 :y 20.0e0 :radius 5.0e0)))
    (assert (= (circle-left c) 5.0e0))
    (assert (= (circle-right c) 15.0e0))
    (assert (= (circle-top c) 15.0e0))
    (assert (= (circle-bottom c) 25.0e0))
    (format *error-output* "  [PASS] Circle boundary values correct~%"))

  ;; Zero-radius circle
  (let ((c (make-instance 'circle :x 100 :y 200 :radius 0)))
    (assert (= (circle-left c) 100))
    (assert (= (circle-right c) 100))
    (assert (= (circle-top c) 200))
    (assert (= (circle-bottom c) 200))
    (format *error-output* "  [PASS] Zero-radius circle boundaries correct~%"))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Circle-circle intersection - true cases
  (format *error-output* "[collision-test.lisp] Circle intersection TRUE tests...~%")

  ;; Identical circles at origin, radius 5 (distance 0 < sum 10)
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 5.0e0))
        (c2 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 5.0e0)))
    (assert (circle-intersects c1 c2))
    (format *error-output* "  [PASS] Identical circles at origin intersect~%"))

  ;; Partially overlapping: centers 6 apart, radii 5+5=10, 6^2=36 < 10^2=100
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 5.0e0))
        (c2 (make-instance 'circle :x 6.0e0 :y 0.0e0 :radius 5.0e0)))
    (assert (circle-intersects c1 c2))
    (format *error-output* "  [PASS] Partially overlapping circles intersect~%"))

  ;; Nested circles: small circle inside large one
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 10.0e0))
        (c2 (make-instance 'circle :x 3.0e0 :y 4.0e0 :radius 2.0e0)))
    (assert (circle-intersects c1 c2))
    (format *error-output* "  [PASS] Nested circles intersect~%"))

  ;; Overlapping diagonally: centers at (3,4) and (0,0), dist=5, radii 5+5=10, 25<100
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 5.0e0))
        (c2 (make-instance 'circle :x 3.0e0 :y 4.0e0 :radius 5.0e0)))
    (assert (circle-intersects c1 c2))
    (format *error-output* "  [PASS] Diagonally overlapping circles intersect~%"))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Circle-circle intersection - false cases
  (format *error-output* "[collision-test.lisp] Circle intersection FALSE tests...~%")

  ;; Separated: centers 20 apart, radii 5+5=10, 400 > 100, cannot be <
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 5.0e0))
        (c2 (make-instance 'circle :x 20.0e0 :y 0.0e0 :radius 5.0e0)))
    (assert (not (circle-intersects c1 c2)))
    (format *error-output* "  [PASS] Separated circles do NOT intersect~%"))

  ;; Just touching (tangent): centers 10 apart, radii 5+5=10, 100 < 100 is FALSE
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 5.0e0))
        (c2 (make-instance 'circle :x 10.0e0 :y 0.0e0 :radius 5.0e0)))
    (assert (not (circle-intersects c1 c2)))
    (format *error-output* "  [PASS] Tangent circles (touching edge) do NOT intersect~%"))

  ;; Far apart: centers (0,0) and (100,100), dist-squared=20000, radii=1+1=2, squared=4
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 1.0e0))
        (c2 (make-instance 'circle :x 100.0e0 :y 100.0e0 :radius 1.0e0)))
    (assert (not (circle-intersects c1 c2)))
    (format *error-output* "  [PASS] Far apart circles do NOT intersect~%"))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Circle intersection - degenerate cases
  (format *error-output* "[collision-test.lisp] Circle degenerate case tests...~%")

  ;; Both circles have radius 0, same position: dist=0, radii-sum^2=0, 0<0 is FALSE
  (let ((c1 (make-instance 'circle :x 5.0e0 :y 5.0e0 :radius 0.0e0))
        (c2 (make-instance 'circle :x 5.0e0 :y 5.0e0 :radius 0.0e0)))
    (assert (not (circle-intersects c1 c2)))
    (format *error-output* "  [PASS] Two zero-radius circles at same position do NOT intersect~%"))

  ;; One zero-radius, one normal: (r1+r2)^2 = 25, dist^2 = 25, 25<25 is FALSE
  (let ((c1 (make-instance 'circle :x 0.0e0 :y 0.0e0 :radius 0.0e0))
        (c2 (make-instance 'circle :x 5.0e0 :y 0.0e0 :radius 5.0e0)))
    (assert (not (circle-intersects c1 c2)))
    (format *error-output* "  [PASS] Zero-radius circle touching normal circle does NOT intersect~%"))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; v2-distance-squared (via generated microsoft-xna-framework-vector2 package)
  (format *error-output* "[collision-test.lisp] v2-distance-squared tests...~%")

  (let ((v1 (v2:new 0.0e0 0.0e0))
        (v2 (v2:new 3.0e0 4.0e0))
        (distance-squared (find-symbol "DISTANCE-SQUARED" :microsoft-xna-framework-vector2)))
    ;; 3-4-5 triangle: (0,0) to (3,4) = 25
    (assert (= (funcall distance-squared v1 v2) 25.0e0))
    (format *error-output* "  [PASS] v2-distance-squared (0,0)->(3,4) = 25~%")
    ;; Same point: distance 0
    (assert (= (funcall distance-squared v1 v1) 0.0e0))
    (format *error-output* "  [PASS] v2-distance-squared same point = 0~%")
    ;; Negative coordinates (distance from (-3,-4) to (0,0) = 5^2 = 25)
    (let ((v3 (v2:new -3.0e0 -4.0e0)))
      (assert (= (funcall distance-squared v3 v1) 25.0e0))
      (format *error-output* "  [PASS] v2-distance-squared negative coords works~%")))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; v2-reflect (via generated microsoft-xna-framework-vector2 package)
  (format *error-output* "[collision-test.lisp] v2-reflect tests...~%")

  (let ((reflect (find-symbol "REFLECT" :microsoft-xna-framework-vector2))
        (v2-eq (find-symbol "=" :microsoft-xna-framework-vector2)))
    ;; Reflect (1, -1) about normal (0, 1) [bottom edge] -> (1, 1)
    (let* ((v (v2:new 1.0e0 -1.0e0))
           (n (v2:new 0.0e0 1.0e0))
           (r (funcall reflect v n)))
      (assert (= (x r) 1.0e0))
      (assert (= (y r) 1.0e0))
      (format *error-output* "  [PASS] v2-reflect (1,-1) about (0,1) = (1,1)~%"))
    ;; Reflect (1, 1) about normal (1, 0) [right edge] -> (-1, 1)
    (let* ((v (v2:new 1.0e0 1.0e0))
           (n (v2:new 1.0e0 0.0e0))
           (r (funcall reflect v n)))
      (assert (= (x r) -1.0e0))
      (assert (= (y r) 1.0e0))
      (format *error-output* "  [PASS] v2-reflect (1,1) about (1,0) = (-1,1)~%"))
    ;; Reflect (2, 3) about normal (0, -1) [top edge] -> (2, -3)
    (let* ((v (v2:new 2.0e0 3.0e0))
           (n (v2:new 0.0e0 -1.0e0))
           (r (funcall reflect v n)))
      (assert (= (x r) 2.0e0))
      (assert (= (y r) -3.0e0))
      (format *error-output* "  [PASS] v2-reflect (2,3) about (0,-1) = (2,-3)~%")))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; v2-normalize
  (format *error-output* "[collision-test.lisp] v2-normalize tests...~%")

  ;; Normalize (3, 4) -> (0.6, 0.8), length should be 1.0
  (let* ((v (v2:new 3.0e0 4.0e0))
         (n (v2:normalize-vector2 v))
         (len (dotnet:invoke n "Length")))
    ;; Use approximate comparison for floating point
    (assert (< (abs (- len 1.0e0)) 0.0001e0))
    (format *error-output* "  [PASS] v2:normalize-vector2 (3,4) has length ~A (expected ~A)~%" len 1.0e0))

  ;; Normalize zero vector -> NaN when using Vector2's static normalize
  (let* ((v (v2:new 0.0e0 0.0e0))
         (n (v2:normalize-vector2 v)))
    ;; Should return +v2-0+ (Vector2.Zero)
    (format *error-output* "  [info] v2:normalize-vector2 zero vector returned: ~A~%" n)
    (assert (single:nan? (x n)))
    (assert (single:nan? (y n)))
    (format *error-output* "  [PASS] v2:normalize-vector2 zero vector returns NaN for both parts~%"))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; rect-intersects (via generated microsoft-xna-framework-rectangle package)
  (format *error-output* "[collision-test.lisp] rect-intersects tests...~%")

  (let ((intersects (find-symbol "INTERSECTS" :microsoft-xna-framework-rectangle)))
    ;; Overlapping rectangles: (0,0,32,32) and (16,16,32,32)
    (let ((r1 (rect:new 0 0 32 32))
          (r2 (rect:new 16 16 32 32)))
      (assert (funcall intersects r1 r2))
      (format *error-output* "  [PASS] Overlapping rectangles intersect~%"))
    ;; Non-overlapping: (0,0,32,32) and (100,100,32,32)
    (let ((r1 (rect:new 0 0 32 32))
          (r2 (rect:new 100 100 32 32)))
      (assert (not (funcall intersects r1 r2)))
      (format *error-output* "  [PASS] Non-overlapping rectangles do NOT intersect~%"))
    ;; Identical rectangles
    (let ((r1 (rect:new 0 0 32 32))
          (r2 (rect:new 0 0 32 32)))
      (assert (funcall intersects r1 r2))
      (format *error-output* "  [PASS] Identical rectangles intersect~%"))
    ;; Edge-touching: (0,0,32,32) and (32,0,32,32)
    (let ((r1 (rect:new 0 0 32 32))
          (r2 (rect:new 32 0 32 32)))
      (assert (not (funcall intersects r1 r2)))
      (format *error-output* "  [PASS] Edge-touching rectangles do NOT intersect~%"))
    ;; One rectangle contains the other
    (let ((r1 (rect:new 0 0 100 100))
          (r2 (rect:new 10 10 20 20)))
      (assert (funcall intersects r1 r2))
      (format *error-output* "  [PASS] One rectangle containing another intersects~%")))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; rect-contains (via generated microsoft-xna-framework-rectangle package)
  (format *error-output* "[collision-test.lisp] rect-contains tests...~%")

  (let ((contains (find-symbol "CONTAINS" :microsoft-xna-framework-rectangle))
        (contains-rect (find-symbol "CONTAINS-RECTANGLE" :microsoft-xna-framework-rectangle))
        (contains-v2 (find-symbol "CONTAINS-VECTOR2" :microsoft-xna-framework-rectangle)))
    ;; Rectangle contains a point at its center (Version 18 positional/keyword interface)
    (let ((r (rect:new 0 0 100 100))
          (v (v2:new 50 50)))
      (assert (funcall contains r v))
      (format *error-output* "  [PASS] Rectangle contains center point~%"))
    ;; Rectangle does not contain point outside (Version 18 positional/keyword interface)
    (let ((r (rect:new 0 0 100 100))
          (v (v2:new 200 200)))
      (assert (not (funcall contains r v)))
      (format *error-output* "  [PASS] Rectangle does NOT contain outside point~%"))
    ;; Rectangle contains another rectangle (Version 18 positional/keyword interface)
    (let ((r1 (rect:new 0 0 100 100))
          (r2 (rect:new 10 10 20 20)))
      (assert (funcall contains r1 r2))
      (format *error-output* "  [PASS] Rectangle contains smaller rectangle~%"))
    ;; Rectangle does not contain a larger rectangle (Version 18 positional/keyword interface)
    (let ((r1 (rect:new 0 0 50 50))
          (r2 (rect:new 0 0 100 100)))
      (assert (not (funcall contains r1 r2)))
      (format *error-output* "  [PASS] Rectangle does NOT contain larger rectangle~%"))
    ;; Point on the edge - this is at the boundary (Version 18 positional/keyword interface)
    (let ((r (rect:new 0 0 100 100))
          (v (v2:new 0 0)))
      (assert (funcall contains r v))
      (format *error-output* "  [PASS] Rectangle contains point on edge~%"))
    ;; Point just outside the edge (Version 18 positional/keyword interface)
    (let ((r (rect:new 0 0 100 100))
          (v (v2:new -1 50)))
      (assert (not (funcall contains r v)))
      (format *error-output* "  [PASS] Rectangle does NOT contain point outside left edge~%"))
    ;; Typed overload: Rectangle.Contains(Vector2)
    (let ((r (rect:new 0 0 100 100))
          (v (v2:new 50 50)))
      (assert (funcall contains-v2 r v))
      (format *error-output* "  [PASS] Rectangle.Contains Vector2 typed overload~%"))
    ;; Typed overload: Rectangle.Contains(Rectangle)
    (let ((r1 (rect:new 0 0 100 100))
          (r2 (rect:new 10 10 20 20)))
      (assert (funcall contains-rect r1 r2))
      (format *error-output* "  [PASS] Rectangle.Contains Rectangle typed overload~%")))

  (format *error-output* "[collision-test.lisp] All collision tests complete.~%"))
