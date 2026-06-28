;;; Douglas P. Fields, Jr. <symbolics@lisp.engineer>
;;;
;;; Version 1 Implementation of C# Class-Aware Generic Functions:
;;; defc#generic, defc#method.
;;;
;;; TODO:
;;; * Consider memoizing these "IsAssignableFrom" calls


(in-package :clr-generic)
(require :dotnet-class)

(format *error-output* "[clr-generic.lisp] Loading in package ~S~%" *package*)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Registry and Metadata Structures

(defvar *c#generic-functions* (make-hash-table :test 'eq)
  "Registry mapping symbols to c#generic-function metadata instances.")

(defstruct c#generic-function
  "Metadata representing a registered C# generic function."
  name          ; The symbol naming the generic function
  lambda-list   ; The congruent lambda list representing the parameter names
  methods       ; The list of registered c#method instances associated with this generic function
  documentation ; The documentation string for this generic function
)

(defstruct c#method
  "Metadata representing a single registered C# method."
  specializer       ; The resolved first parameter specializer (either a C# type string or T)
  raw-specializer   ; The raw/unresolved specializer (as specified in code)
  function          ; The Lisp lambda function representing the method body
  lambda-list       ; The lambda list of this method
  ;; FIXME: This is missing the documentation string
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper Functions

(defun resolve-type-alias (spec)
  "Resolves a type alias symbol or string using DotCL's *type-aliases* table.
   If not found in the table, returns the original spec."
  (if (or (stringp spec) (symbolp spec))
    ;; FIXME: Does the type alias have to be upcased?
    (let* ((spec-str (string-upcase (string spec)))
           (resolved (gethash spec-str dotnet::*type-aliases*)))
      (or resolved spec))
    spec))

(defun c#method-applicable-p (method first-arg)
  "Returns T if the method is applicable to the given first argument.
   method must be a c#method struct instance"
  (let ((spec (c#method-specializer method)))
    (cond
      ;; T matches anything (including non-C# objects)
      ((eq spec 't) t)
      ((stringp spec)
       (when (monoutils:dotnet-p first-arg)
         (dotnet:is-instance-of first-arg spec)))
      ;; No match
      (t nil))))

(defun c#method-more-specific-p (m1 m2 first-arg)
  "Returns T if method m1 is more specific than method m2 for the first-arg."
  (let ((s1 (c#method-specializer m1))
        (s2 (c#method-specializer m2)))
    (cond
      ;; 1. Identical specializers -> neither is more specific
      ((equal s1 s2) nil)
      ;; 2. S2 is T -> S1 (which is not T) is more specific
      ((eq s2 't) t)
      ;; 3. S1 is T -> S1 is less specific
      ((eq s1 't) nil)
      ;; 4. Both are C# type strings: compare their inheritance relation
      ((and (stringp s1) (stringp s2))
       (let ((t1 (monoutils:get-type s1))
             (t2 (monoutils:get-type s2)))
         (cond
           ((and t1 t2)
            (let ((t2-assignable-t1 (dotnet:invoke t2 "IsAssignableFrom" t1))
                  (t1-assignable-t2 (dotnet:invoke t1 "IsAssignableFrom" t2)))
              (cond
                ;; T1 inherits from T2 -> T1 is more specific
                ((and t2-assignable-t1 (not t1-assignable-t2)) t)
                ;; T2 inherits from T1 -> T2 is more specific
                ((and t1-assignable-t2 (not t2-assignable-t1)) nil)
                ;; Unrelated classes/interfaces -> sort alphabetically by name for determinism
                ;; TODO: Can't we just use s1/s2, which were already strings?
                (t (string< (dotnet:invoke t1 "FullName")
                            (dotnet:invoke t2 "FullName"))))))
           ;; Fallbacks in case type resolution fails
           (t1 t)
           (t2 nil)
           (t (string< s1 s2)))))
      ;; Neither C# type string nor T for either or both
      (t nil))))

(defun dispatch-c#generic (gf-name args)
  "Dispatches the generic function to the most specific applicable method."
  (let ((gf (gethash gf-name *c#generic-functions*))
        (first-arg (car args)))
    (unless gf
      (error "No C# generic function registered for name ~S" gf-name))
    (let ((applicable-methods nil))
      ;; Collect all applicable methods
      (dolist (method (c#generic-function-methods gf))
        (when (c#method-applicable-p method first-arg)
          (push method applicable-methods)))
      (if (null applicable-methods)
          (error "No applicable C# method found for generic function ~S called with argument ~S"
                 gf-name first-arg)
          ;; Sort the applicable methods: most specific first
          ;; TODO: Consider if there is some sort of topological sort we can do
          ;; across ALL methods at method creation time that would enable us
          ;; not to sort at dispatch time here.
          ;; Also, we don't technically have to do a full sort, as this implementation
          ;; does not allow calling the next method; we just need to find the *most*
          ;; applicable method. That would be a linear operation, not an n lg n op.
          (let ((sorted (sort applicable-methods
                              (lambda (m1 m2)
                                (c#method-more-specific-p m1 m2 first-arg)))))
            ;; Invoke the most specific method
            (apply (c#method-function (car sorted)) args))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Macros

(defmacro defc#generic (name lambda-list &rest options)
  "Defines a C# class-aware generic function."
  (let ((doc-option (find :documentation options :key #'car)))
    `(progn
       ;; Create gf entry if it doesn't already exist, or update it
       (let ((gf (or (gethash ',name *c#generic-functions*)
                     (make-c#generic-function :name ',name))))
         (setf (c#generic-function-lambda-list gf) ',lambda-list)
         (setf (c#generic-function-documentation gf) ,(cadr doc-option))
         (setf (gethash ',name *c#generic-functions*) gf))
       ;; Create the generic function entry point to our dispatching mechanism.
       ;; FIXME: This defun does not define the docstring, which it should, using
       ;; the :documentation found above.
       (defun ,name ,lambda-list
         (dispatch-c#generic ',name (list ,@lambda-list)))
       ',name)))

(defmacro defc#method (name specialized-lambda-list &body body)
  "Defines a method on a C# class-aware generic function."
  ;; FIXME: This function does not properly handle a documentation string,
  ;; which would be a literal string as the first body form.
  (let* ((first-param (car specialized-lambda-list))
         (first-param-name (if (consp first-param) (car first-param) first-param))
         ;; If the first parameter isn't specialized, default it to T
         (first-param-spec (if (consp first-param) (cadr first-param) 't))
         (remaining-params (cdr specialized-lambda-list))
         (lambda-list (cons first-param-name remaining-params))
         (resolved-spec (if (eq first-param-spec 't)
                            't
                            (resolve-type-alias first-param-spec))))
    `(progn
       ;; Auto-create generic function metadata if it does not exist yet
       ;; TODO: This duplicates the logic in defc#generic, so these two
       ;; identical codes should be consolidated.
       (unless (gethash ',name *c#generic-functions*)
         (let ((gf (make-c#generic-function :name ',name)))
           (setf (c#generic-function-lambda-list gf) ',lambda-list)
           ;; TODO: This does not use the documentation string twice
           (setf (gethash ',name *c#generic-functions*) gf)
           (unless (fboundp ',name)
             (defun ,name ,lambda-list
               (dispatch-c#generic ',name (list ,@lambda-list))))))
       
       (let* ((gf (gethash ',name *c#generic-functions*))
              (new-method (make-c#method
                           :specializer ',resolved-spec
                           :raw-specializer ',first-param-spec
                           :lambda-list ',lambda-list
                           :function (lambda ,lambda-list ,@body))))
         ;; Overwrite any existing method with the exact same raw specializer
         (setf (c#generic-function-methods gf)
               (remove ',first-param-spec (c#generic-function-methods gf)
                       :key #'c#method-raw-specializer
                       :test #'equal))
         ;; Register the new method
         (push new-method (c#generic-function-methods gf))
         new-method))))
