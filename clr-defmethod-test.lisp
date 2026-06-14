(in-package :dungeon-slime-tests)

;; We will define the methods for raw CLR types dynamically so that the MonoGame
;; assembly does not need to be loaded during compilation.

;; Define some CLOS classes to mix with C# classes
(defclass game-entity ()
  ((x :initarg :x :accessor entity-x)
   (y :initarg :y :accessor entity-y)
   (width :initarg :width :accessor entity-width)
   (height :initarg :height :accessor entity-height)))

(require :dotnet-class)
(dotnet:define-class "CSharpEntity" ("System.Object")
  (:fields
    ("X" "System.Double")
    ("Y" "System.Double")
    ("Width" "System.Double")
    ("Height" "System.Double"))
  (:ctor ((x "System.Double") (y "System.Double") (w "System.Double") (h "System.Double"))
    (setf (dotnet:invoke self "X") x)
    (setf (dotnet:invoke self "Y") y)
    (setf (dotnet:invoke self "Width") w)
    (setf (dotnet:invoke self "Height") h)))

;; Define generic functions
(defgeneric get-x (obj)
  (:documentation "Get the X coordinate of the object"))

(defgeneric get-y (obj)
  (:documentation "Get the Y coordinate of the object"))

(defgeneric get-width (obj)
  (:documentation "Get the width of the object"))

(defgeneric get-height (obj)
  (:documentation "Get the height of the object"))

;; Implement methods for standard CLOS class
(defmethod get-x ((obj game-entity)) (entity-x obj))
(defmethod get-y ((obj game-entity)) (entity-y obj))
(defmethod get-width ((obj game-entity)) (entity-width obj))
(defmethod get-height ((obj game-entity)) (entity-height obj))

;; Implement methods for dotnet:define-class instance
(defmethod get-x ((obj dotcl-internal::|CSharpEntity|)) (dotnet:invoke obj "X"))
(defmethod get-y ((obj dotcl-internal::|CSharpEntity|)) (dotnet:invoke obj "Y"))
(defmethod get-width ((obj dotcl-internal::|CSharpEntity|)) (dotnet:invoke obj "Width"))
(defmethod get-height ((obj dotcl-internal::|CSharpEntity|)) (dotnet:invoke obj "Height"))

;; Implement methods for built-in C# types dynamically
(defun register-clr-methods ()
  ;; Force class creation by instantiating once
  (class-of (dotnet:new "Microsoft.Xna.Framework.Vector2" 0.0f0 0.0f0))
  (class-of (dotnet:new "Microsoft.Xna.Framework.Rectangle" 0 0 0 0))
  
  (eval '(defmethod get-x ((obj dotcl-internal::|Vector2|)) (dotnet:invoke obj "X")))
  (eval '(defmethod get-y ((obj dotcl-internal::|Vector2|)) (dotnet:invoke obj "Y")))
  (eval '(defmethod get-width ((obj dotcl-internal::|Vector2|)) 0.0f0))
  (eval '(defmethod get-height ((obj dotcl-internal::|Vector2|)) 0.0f0))

  (eval '(defmethod get-x ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "X"))))
  (eval '(defmethod get-y ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "Y"))))
  (eval '(defmethod get-width ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "Width"))))
  (eval '(defmethod get-height ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "Height")))))

(defun test-clr-defmethods ()
  (format *error-output* "  [clr-defmethod-test] Starting tests...~%")
  (register-clr-methods)
  (let ((entity (make-instance 'game-entity :x 10.0d0 :y 20.0d0 :width 30.0d0 :height 40.0d0))
        (cs-entity (dotnet:new "CSharpEntity" 15.0d0 25.0d0 35.0d0 45.0d0))
        (vector2 (dotnet:new "Microsoft.Xna.Framework.Vector2" 100.0f0 200.0f0))
        (rect (dotnet:new "Microsoft.Xna.Framework.Rectangle" 50 60 70 80)))
    
    (format *error-output* "    Testing game-entity (CLOS):~%")
    (assert (= 10.0 (get-x entity)))
    (assert (= 20.0 (get-y entity)))
    (assert (= 30.0 (get-width entity)))
    (assert (= 40.0 (get-height entity)))
    (format *error-output* "      OK~%")

    (format *error-output* "    Testing CSharpEntity (dotnet:define-class):~%")
    (assert (= 15.0 (get-x cs-entity)))
    (assert (= 25.0 (get-y cs-entity)))
    (assert (= 35.0 (get-width cs-entity)))
    (assert (= 45.0 (get-height cs-entity)))
    (format *error-output* "      OK~%")

    (format *error-output* "    Testing Vector2 (Raw CLR):~%")
    (assert (= 100.0 (get-x vector2)))
    (assert (= 200.0 (get-y vector2)))
    (assert (= 0.0 (get-width vector2)))
    (assert (= 0.0 (get-height vector2)))
    (format *error-output* "      OK~%")

    (format *error-output* "    Testing Rectangle (Raw CLR):~%")
    (assert (= 50.0 (get-x rect)))
    (assert (= 60.0 (get-y rect)))
    (assert (= 70.0 (get-width rect)))
    (assert (= 80.0 (get-height rect)))
    (format *error-output* "      OK~%")
    
    (format *error-output* "  [clr-defmethod-test] All tests passed!~%")))
