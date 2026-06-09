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

(defun run-all-assembly-tests (filename)
  (format *error-output* "~%==============================~%")
  (format *error-output* "Loading metadata from: ~A~%" filename)
  (setf *metadata* (utils:safe-read-form-from-file filename))
  (format *error-output* "Metadata successfully loaded: ~A items found.~%" (length *metadata*))
  (format *error-output* "==============================~%")
  
  (setf *test-failures* 0)
  (setf *test-count* 0)
  
  (test-load-metadata)
  (test-array-list)
  
  (format *error-output* "~%==============================~%")
  (format *error-output* "TESTS COMPLETE: ~A run, ~A failed.~%" *test-count* *test-failures*)
  (format *error-output* "==============================~%")
  (if (> *test-failures* 0)
      nil
      t))
