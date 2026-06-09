;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;; Tests for AssemblyToLispy metadata extraction

(in-package :cl-user)

(defvar *test-failures* 0)
(defvar *test-count* 0)

(defmacro deftest (name &body body)
  `(defun ,name ()
     (format *error-output* "~%[TEST] Running ~A...~%" ',name)
     (let ((initial-failures *test-failures*))
       ,@body
       (if (= *test-failures* initial-failures)
           (format *error-output* "[TEST] ~A PASSED~%" ',name)
           (format *error-output* "[TEST] ~A FAILED~%" ',name)))))

(defun assert-equal (expected actual msg)
  (incf *test-count*)
  (unless (equal expected actual)
    (incf *test-failures*)
    (format *error-output* "  ASSERTION FAILED: ~A~%    Expected: ~S~%    Actual:   ~S~%"
            msg expected actual)))

(defun assert-true (actual msg)
  (incf *test-count*)
  (unless actual
    (incf *test-failures*)
    (format *error-output* "  ASSERTION FAILED: ~A~%    Expected: logically true~%    Actual:   ~S~%"
            msg actual)))

(defun assert-not-null (actual msg)
  (incf *test-count*)
  (unless actual
    (incf *test-failures*)
    (format *error-output* "  ASSERTION FAILED: ~A~%    Expected: not null~%    Actual:   ~S~%"
            msg actual)))

(defvar *metadata* nil)

(deftest test-load-metadata
  (assert-not-null *metadata* "Metadata should be loaded"))

(deftest test-array-list
  (let ((al (find-if (lambda (cls) (string= (getf cls :name) "ArrayList")) *metadata*)))
    (assert-not-null al "Should find ArrayList class")
    (when al
      (assert-equal "System.Collections.ArrayList" (getf al :fully-qualified-name) "ArrayList fully qualified name")
      (assert-equal "System.Collections" (getf al :namespace) "ArrayList namespace")
      (assert-equal :class (getf al :kind) "ArrayList is a class")
      (assert-equal "System.Object" (getf al :superclass) "ArrayList superclass")
      (assert-true (find-if (lambda (i) (string= i "System.Collections.IList")) (getf al :interfaces))
                   "ArrayList interfaces should contain System.Collections.IList"))))

(deftest test-synthetic-target
  ;; Test ByteEnum
  (let ((enm (find-if (lambda (cls) (string= (getf cls :name) "ByteEnum")) *metadata*)))
    (assert-not-null enm "Should find ByteEnum")
    (when enm
      (assert-equal :enum (getf enm :kind) "ByteEnum is an enum")
      (assert-equal "System.Byte" (getf enm :enum-underlying-type) "ByteEnum underlying type is byte")))

  ;; Test IDummyInterface
  (let ((iface (find-if (lambda (cls) (string= (getf cls :name) "IDummyInterface")) *metadata*)))
    (assert-not-null iface "Should find IDummyInterface")
    (when iface
      (assert-equal :interface (getf iface :kind) "IDummyInterface is an interface")
      (assert-true (member :abstract (getf iface :flags)) "Interfaces should be abstract")))

  ;; Test AbstractBase
  (let ((abs (find-if (lambda (cls) (string= (getf cls :name) "AbstractBase")) *metadata*)))
    (assert-not-null abs "Should find AbstractBase")
    (when abs
      (assert-equal :class (getf abs :kind) "AbstractBase is a class")
      (assert-true (member :abstract (getf abs :flags)) "AbstractBase should be abstract")
      (let ((ctors (getf abs :constructors)))
        (assert-true (> (length ctors) 0) "Should have a constructor")
        (assert-true (getf (car ctors) :protected) "Constructor should be protected"))))

  ;; Test GenericClass
  (let ((gen (find-if (lambda (cls) (string= (getf cls :name) "GenericClass`1")) *metadata*)))
    (assert-not-null gen "Should find GenericClass`1")
    (when gen
      (assert-equal "AssemblyToLispyTestTarget.AbstractBase" (getf gen :superclass) "GenericClass superclass")
      (assert-true (find-if (lambda (i) (string= i "AssemblyToLispyTestTarget.IDummyInterface")) (getf gen :interfaces))
                   "GenericClass interfaces should contain IDummyInterface")
      (let ((op (find-if (lambda (m) (string= (getf m :name) "+")) (getf gen :methods))))
        (assert-not-null op "Should find overloaded operator +")
        (when op
          (assert-equal "op_Addition" (getf op :mangled-name) "+ should have mangled name op_Addition")
          (assert-true (getf op :is-static) "Operator should be static")))))

  ;; Test EdgeCaseStruct
  (let ((strc (find-if (lambda (cls) (string= (getf cls :name) "EdgeCaseStruct")) *metadata*)))
    (assert-not-null strc "Should find EdgeCaseStruct")
    (when strc
      (assert-equal :struct (getf strc :kind) "EdgeCaseStruct is a struct")
      ;; Test modifiers
      (let ((mod-method (find-if (lambda (m) (string= (getf m :name) "ModifierMethod")) (getf strc :methods))))
        (assert-not-null mod-method "Should find ModifierMethod")
        (when mod-method
          (let ((params (getf mod-method :parameters)))
            (assert-equal 4 (length params) "ModifierMethod should have 4 parameters")
            (assert-true (getf (nth 0 params) :out) "First param should be out")
            (assert-true (getf (nth 1 params) :ref) "Second param should be ref")
            (assert-true (getf (nth 2 params) :ref-readonly) "Third param should be ref readonly (in)")
            (assert-true (getf (nth 3 params) :params) "Fourth param should be params array"))))
      
      ;; Test defaults
      (let ((def-method (find-if (lambda (m) (string= (getf m :name) "DefaultsMethod")) (getf strc :methods))))
        (assert-not-null def-method "Should find DefaultsMethod")
        (when def-method
          (let ((params (getf def-method :parameters)))
            (assert-equal "hello" (getf (nth 0 params) :default-value) "First default is string hello")
            (assert-equal 42 (getf (nth 1 params) :default-value) "Second default is int 42")
            (assert-equal nil (getf (nth 2 params) :default-value) "Third default is null (nil)")
            (assert-equal #\A (getf (nth 3 params) :default-value) "Fourth default is char A"))))))

  ;; Test Extensions
  (let ((ext (find-if (lambda (cls) (string= (getf cls :name) "Extensions")) *metadata*)))
    (assert-not-null ext "Should find Extensions class")
    (when ext
      (let ((ext-method (find-if (lambda (m) (string= (getf m :name) "DummyExtension")) (getf ext :methods))))
        (assert-not-null ext-method "Should find DummyExtension")
        (when ext-method
          (assert-true (getf ext-method :extension-method) "Method should have :extension-method flag")
          (let ((params (getf ext-method :parameters)))
            (assert-true (getf (nth 0 params) :extension-this) "First parameter should be tagged as :extension-this")))))))

(defun run-all-assembly-tests (filename assembly-name)
  (format *error-output* "~%==============================~%")
  (format *error-output* "Loading metadata from: ~A (~A)~%" filename assembly-name)
  (setf *metadata* (utils:safe-read-form-from-file filename))
  (format *error-output* "Metadata successfully loaded: ~A items found.~%" (length *metadata*))
  (format *error-output* "==============================~%")
  
  (setf *test-failures* 0)
  (setf *test-count* 0)
  
  (test-load-metadata)
  
  (cond
    ((string= assembly-name "System.Runtime.dll")
     (test-array-list))
    ((string= assembly-name "AssemblyToLispyTestTarget.dll")
     (test-synthetic-target)))
  
  (format *error-output* "~%==============================~%")
  (format *error-output* "TESTS COMPLETE: ~A run, ~A failed.~%" *test-count* *test-failures*)
  (format *error-output* "==============================~%")
  (if (> *test-failures* 0)
      nil
      t))
