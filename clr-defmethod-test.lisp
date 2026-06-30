(in-package :dungeon-slime-tests)

;; The MonoGame assembly is loaded at compile time and used to explicitly register
;; the C# classes into the compiler's CLOS registry so that
;; standard defmethods can be used without eval workarounds.

;; 1. The :compile-toplevel Phase
;; When DotCL compiles this file into a FASL, the compiler process needs to know about
;; the .NET types to successfully macro-expand `defmethod` and verify the classes exist.
;; Because the compiler runs from a different working directory,  the
;; absolute path to the MonoGame.Framework.dll must be supplied to ensure it loads successfully.
;; FIXME: Make this more generic - there has to be a way to find out where the .dll is from
;; build information or .csproj or something.
(eval-when (:compile-toplevel)
  (let* ((outdir-file (merge-pathnames "obj/dotcl-outdir.txt" (asdf:system-source-directory "dungeon-slime")))
         (bin-dir (with-open-file (s outdir-file) (read-line s)))
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    (dotnet:load-assembly (namestring dll-path)))
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle")))

;; 2. The :load-toplevel and :execute Phase
;; When the built game runs (or when evaluating this file directly via a REPL), the
;; .NET runtime automatically resolves dependencies like MonoGame since it is located
;; alongside the executable in the bin/ directory. Therefore, there is *no* need to explicitly
;; load the assembly again using a hardcoded path. However, it is still necessary to ensure
;; that the CLOS wrappers are registered before `find-class` is called at runtime.
(eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type "Microsoft.Xna.Framework.Vector2"))
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type "Microsoft.Xna.Framework.Rectangle")))

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

;; Implement methods for built-in C# types natively!
(defmethod get-x ((obj dotcl-internal::|Vector2|)) (dotnet:invoke obj "X"))
(defmethod get-y ((obj dotcl-internal::|Vector2|)) (dotnet:invoke obj "Y"))
(defmethod get-width ((obj dotcl-internal::|Vector2|)) 0.0f0)
(defmethod get-height ((obj dotcl-internal::|Vector2|)) 0.0f0)

(defmethod get-x ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "X")))
(defmethod get-y ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "Y")))
(defmethod get-width ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "Width")))
(defmethod get-height ((obj dotcl-internal::|Rectangle|)) (float (dotnet:invoke obj "Height")))

(defun test-clr-defmethods ()
  (format *error-output* "  [clr-defmethod-test] Starting tests...~%")
  (let ((entity (make-instance 'game-entity :x 10.0d0 :y 20.0d0 :width 30.0d0 :height 40.0d0))
        (cs-entity (dotnet:new "CSharpEntity" 15.0d0 25.0d0 35.0d0 45.0d0))
        (vec2 (dotnet:new "Microsoft.Xna.Framework.Vector2" 100.0f0 200.0f0))
        (rct (dotnet:new "Microsoft.Xna.Framework.Rectangle" 50 60 70 80)))
    
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
    (assert (= 100.0 (get-x vec2)))
    (assert (= 200.0 (get-y vec2)))
    (assert (= 0.0 (get-width vec2)))
    (assert (= 0.0 (get-height vec2)))
    (format *error-output* "      OK~%")

    (format *error-output* "    Testing Rectangle (Raw CLR):~%")
    (assert (= 50.0 (get-x rct)))
    (assert (= 60.0 (get-y rct)))
    (assert (= 70.0 (get-width rct)))
    (assert (= 80.0 (get-height rct)))
    (format *error-output* "      OK~%")
    
    (format *error-output* "  [clr-defmethod-test] All tests passed!~%")))
