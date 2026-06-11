;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Package Generator Test Suite
;;;
;;; This file contains unit tests for the assembly-package-generator.
;;; Tests are run when this file is loaded.

(in-package :cl-user)

(format *error-output* "--- Running Package Generator Tests ---~%")

;; Helper assertion macro
(defmacro assert-test (form expected-value description)
  `(let ((result ,form))
     (if (equal result ,expected-value)
         (format *error-output* "[package-generator-tests] PASS ~A: ~S -> ~S~%" ,description result result)
         (progn
           (utils:format-red *error-output* "[package-generator-tests] FAIL ~A: Expected ~S but got ~S~%" ,description ,expected-value result)
           (error "Test failure: ~A" ,description)))))

;; 1. Test camel-to-kebab
(assert-test (assembly-package-generator:camel-to-kebab "System.Console")
             "system-console"
             "Convert System.Console to kebab-case")

(assert-test (assembly-package-generator:camel-to-kebab "System.Collections.ArrayList")
             "system-collections-array-list"
             "Convert System.Collections.ArrayList to kebab-case")

(assert-test (assembly-package-generator:camel-to-kebab "camelCase")
             "camel-case"
             "Convert camelCase to kebab-case")

(assert-test (assembly-package-generator:camel-to-kebab "PascalCase")
             "pascal-case"
             "Convert PascalCase to kebab-case")

(assert-test (assembly-package-generator:camel-to-kebab "SomeMHTMLMethod")
             "some-mhtml-method"
             "Convert SomeMHTMLMethod to kebab-case")


;; 2. Test split-string
(assert-test (assembly-package-generator:split-string "System.Console;System.Math")
             '("System.Console" "System.Math")
             "Split string by semicolon")

(assert-test (assembly-package-generator:split-string "System.Console")
             '("System.Console")
             "Split single element string")

(assert-test (assembly-package-generator:split-string "")
             '("")
             "Split empty string")


;; 3. Test simple-method-p and classification helper logic using mock plists
(let ((methods-list
        '(
          ;; 1. Simple valid method
          (:name "WriteLine" :is-static t :return-type "System.Void" :parameters nil)
          ;; 2. Overloaded method (two of this name)
          (:name "Write" :is-static t :return-type "System.Void" :parameters nil)
          (:name "Write" :is-static t :return-type "System.Void" :parameters ((:name "value" :type "System.String")))
          ;; 3. Generic method
          (:name "GenericMethod" :is-static t :return-type "!!0" :parameters nil)
          ;; 4. Method with ref parameter
          (:name "RefMethod" :is-static t :return-type "System.Void" :parameters ((:name "value" :type "System.Int32" :ref t)))
          ;; 5. Property accessor
          (:name "get_Title" :is-static t :return-type "System.String" :parameters nil)
          )))
  
  (assert-test (assembly-package-generator::simple-method-p 
                (first methods-list)
                methods-list)
               t
               "simple-method-p accepts simple non-overloaded method")

  (assert-test (assembly-package-generator::simple-method-p 
                (second methods-list)
                methods-list)
               nil
               "simple-method-p rejects overloaded method (Write)")

  (assert-test (assembly-package-generator::simple-method-p 
                (fourth methods-list)
                methods-list)
               nil
               "simple-method-p rejects generic method (GenericMethod)")

  (assert-test (assembly-package-generator::simple-method-p 
                (fifth methods-list)
                methods-list)
               nil
               "simple-method-p rejects method with ref parameter (RefMethod)")

  (assert-test (assembly-package-generator::simple-method-p 
                (sixth methods-list)
                methods-list)
               nil
               "simple-method-p rejects property getter method (get_Title)"))

(format *error-output* "--- Package Generator Tests Completed ---~%")
