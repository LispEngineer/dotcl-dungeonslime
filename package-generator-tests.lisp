;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Package Generator Test Suite
;;;
;;; This file contains unit tests for the assembly-package-generator.
;;; Tests are run when this file is loaded.

(in-package :dungeon-slime-tests)

(defun run-package-generator-tests ()
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
            ;; 6. Generic method with arity 1
            (:name "GenericArity1" :is-static t :is-generic t :generic-arity 1 :return-type "T" :parameters nil)
            ;; 7. Generic method with arity 2
            (:name "GenericArity2" :is-static t :is-generic t :generic-arity 2 :return-type "T" :parameters nil)
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
                "simple-method-p rejects property getter method (get_Title)")

    (assert-test (assembly-package-generator::simple-method-p 
                  (nth 6 methods-list)
                  methods-list)
                t
                "simple-method-p accepts generic method of arity 1")

    (assert-test (assembly-package-generator::simple-method-p 
                  (nth 7 methods-list)
                  methods-list)
                nil
                "simple-method-p rejects generic method of arity 2"))

  ;; 3.5 Test clean-constructor-p and constructor-overload-name helper logic using mock plists
  (let ((ctors-list
          '(
            ;; 1. Simple clean constructor with no parameters
            (:parameters nil :public t)
            ;; 2. Clean constructor with parameters
            (:parameters ((:name "x" :type "System.Single") (:name "y" :type "System.Single")) :public t)
            ;; 3. Constructor with ref parameter (dirty)
            (:parameters ((:name "value" :type "System.Int32" :ref t)) :public t)
            )))
    
    (assert-test (assembly-package-generator::clean-constructor-p (first ctors-list))
                t
                "clean-constructor-p accepts clean parameterless constructor")

    (assert-test (assembly-package-generator::clean-constructor-p (second ctors-list))
                t
                "clean-constructor-p accepts clean parameterized constructor")

    (assert-test (assembly-package-generator::clean-constructor-p (third ctors-list))
                nil
                "clean-constructor-p rejects constructor with ref parameter")

    (assert-test (assembly-package-generator::constructor-overload-name (first ctors-list))
                "new"
                "constructor-overload-name for parameterless constructor is new")

    (assert-test (assembly-package-generator::constructor-overload-name (second ctors-list))
                "new-single-single"
                "constructor-overload-name for parameterized constructor matches types"))

  ;; 4. Test Operator Overloads on Generated TimeSpan and Vector2 packages
  (format *error-output* "--- Running Generated Package Operator Overload Tests ---~%")

  ;; TimeSpan Operator Tests
  (let ((t1 (system-time-span:from-ticks 100))
        (t2 (system-time-span:from-ticks 200))
        (t3 (system-time-span:from-ticks 100)))

    (assert-test (system-time-span:= t1 t3)
                t
                "TimeSpan = operator (true case)")

    (assert-test (system-time-span:= t1 t2)
                nil
                "TimeSpan = operator (false case)")

    (assert-test (system-time-span:not= t1 t2)
                t
                "TimeSpan not= operator (true case)")

    (assert-test (system-time-span:not= t1 t3)
                nil
                "TimeSpan not= operator (false case)")

    (assert-test (system-time-span:< t1 t2)
                t
                "TimeSpan < operator (true case)")

    (assert-test (system-time-span:< t2 t1)
                nil
                "TimeSpan < operator (false case)")

    (assert-test (system-time-span:<= t1 t2)
                t
                "TimeSpan <= operator (less than case)")

    (assert-test (system-time-span:<= t1 t3)
                t
                "TimeSpan <= operator (equal case)")

    (assert-test (system-time-span:> t2 t1)
                t
                "TimeSpan > operator (true case)")

    (assert-test (system-time-span:> t1 t2)
                nil
                "TimeSpan > operator (false case)")

    (assert-test (system-time-span:>= t2 t1)
                t
                "TimeSpan >= operator (greater than case)")

    (assert-test (system-time-span:>= t1 t3)
                t
                "TimeSpan >= operator (equal case)"))

  ;; Vector2 Operator Tests
  (let ((v-zero microsoft-xna-framework-vector2:+zero+)
        (v-one microsoft-xna-framework-vector2:+one+)
        (v-x microsoft-xna-framework-vector2:+unit-x+)
        (v-y microsoft-xna-framework-vector2:+unit-y+))

    (assert-test (microsoft-xna-framework-vector2:= v-zero v-zero)
                t
                "Vector2 = operator (true case)")

    (assert-test (microsoft-xna-framework-vector2:= v-zero v-one)
                nil
                "Vector2 = operator (false case)")

    (assert-test (microsoft-xna-framework-vector2:not= v-zero v-one)
                t
                "Vector2 not= operator (true case)")

    (assert-test (microsoft-xna-framework-vector2:not= v-zero v-zero)
                nil
                "Vector2 not= operator (false case)")

    ;; UnitX (1,0) + UnitY (0,1) = One (1,1)
    (let ((v-sum (microsoft-xna-framework-vector2:+ v-x v-y)))
      (assert-test (microsoft-xna-framework-vector2:= v-sum v-one)
                  t
                  "Vector2 + operator (UnitX + UnitY = One)")))

  (format *error-output* "--- Generated Package Operator Overload Tests Completed ---~%")

  (format *error-output* "--- Package Generator Tests Completed ---~%"))
