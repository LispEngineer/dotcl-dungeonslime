;;; Proofs of concept & functionality tests

(in-package :dungeon-slime-tests)

(format *error-output* "[poc-test.lisp] Loading in package ~S~%" *package*)

(defun poc-tests ()
  "Run all the Proof of Concept tests"
  ;; Expose our C# function "add3" by creating the package and exported
  ;; symbol during compilation.

  ;; Test Add3
  (format t "Add3 sum = ~A~%" (monoutils:add3 1 2.0 9/3))
  (handler-case
      (monoutils:add3 1 "two" 3)
    (type-error (c)
      (format t "Caught expected type error: ~A~%" c)))

  (format *error-output* "invoke-generic docs: ~A~%"
    (documentation 'monoutils:invoke-generic 'function))

  ;; Test call-base functionality
  (let ((child (dotnet:new "Child")))
    (dotnet:invoke child "Speak")
    (dotnet:call-base child "Speak"))


  ;; Test type stuff
  (let ((x (dotnet:new "System.Collections.ArrayList")))
    (format *error-output* "x = ~A~%" x)
    (format *error-output* "type-of x = ~A~%" (type-of x))
    (format *error-output* "class-of x = ~A~%" (class-of x))
    (format *error-output* "dotnet-p x = ~A~%" (monoutils:dotnet-p x))
    (format *error-output* "boxed-dotnet-p x = ~A~%" (monoutils:boxed-dotnet-p))
    (format *error-output* "get-type x = ~A~%" (monoutils:get-type x))
    (format *error-output* "get-type-full-name x = ~A~%" (monoutils:get-type-full-name x))
    (format *error-output* "dotnet-p +false+ = ~A~%" (monoutils:dotnet-p dungeon-slime::+false+))
    (format *error-output* "boxed-dotnet-p +false+ = ~A~%" (monoutils:boxed-dotnet-p dungeon-slime::+false+)))


  ;; Test Case-Sensitive C# Reader Macros (#!! and #!)
  (format *error-output* "--- Running C# Reader Macro Tests ---~%")

  ;; 1. Prefix Shorthand Instance: (#!ToString obj)
  (let* ((guid (dotnet:static "System.Guid" "NewGuid"))
        (guid-str (#!ToString guid)))
    (if (and (stringp guid-str) (> (length guid-str) 0))
        (format *error-output* "[PASS] (#!ToString guid) returned ~S~%" guid-str)
        (utils:format-red *error-output* "[FAIL] (#!ToString guid) returned ~S~%" guid-str)))

  ;; 2. Prefix Shorthand Static: (#!!System.Math.Max 10 20)
  (let ((max-val (#!!System.Math.Max 10 20)))
    (if (= max-val 20)
        (format *error-output* "[PASS] (#!!System.Math.Max 10 20) returned 20~%")
        (utils:format-red *error-output* "[FAIL] (#!!System.Math.Max 10 20) returned ~A (expected 20)~%" max-val)))

  ;; 3. List-Call Instance with String: (#! obj "ToString")
  (let* ((guid (dotnet:static "System.Guid" "NewGuid"))
        (guid-str (#! guid "ToString")))
    (if (and (stringp guid-str) (> (length guid-str) 0))
        (format *error-output* "[PASS] (#! guid \"ToString\") returned ~S~%" guid-str)
        (utils:format-red *error-output* "[FAIL] (#! guid \"ToString\") returned ~S~%" guid-str)))

  ;; 4. List-Call Instance with Symbol: (#! obj ToString)
  (let* ((guid (dotnet:static "System.Guid" "NewGuid"))
        (guid-str (#! guid ToString)))
    (if (and (stringp guid-str) (> (length guid-str) 0))
        (format *error-output* "[PASS] (#! guid ToString) returned ~S~%" guid-str)
        (utils:format-red *error-output* "[FAIL] (#! guid ToString) returned ~S~%" guid-str)))

  ;; 5. List-Call Static with Strings: (#!! "System.Math" "Max" 10 20)
  (let ((max-val (#!! "System.Math" "Max" 10 20)))
    (if (= max-val 20)
        (format *error-output* "[PASS] (#!! \"System.Math\" \"Max\" 10 20) returned 20~%")
        (utils:format-red *error-output* "[FAIL] (#!! \"System.Math\" \"Max\" 10 20) returned ~A (expected 20)~%" max-val)))

  ;; 6. List-Call Static with Symbols: (#!! System.Math Max 10 20)
  (let ((max-val (#!! System.Math Max 10 20)))
    (if (= max-val 20)
        (format *error-output* "[PASS] (#!! System.Math Max 10 20) returned 20~%")
        (utils:format-red *error-output* "[FAIL] (#!! System.Math Max 10 20) returned ~A (expected 20)~%" max-val)))

  ;; 7. List-Call Static with Mixed (String Class, Symbol Method): (#!! "System.Math" Max 10 20)
  (let ((max-val (#!! "System.Math" Max 10 20)))
    (if (= max-val 20)
        (format *error-output* "[PASS] (#!! \"System.Math\" Max 10 20) returned 20~%")
        (utils:format-red *error-output* "[FAIL] (#!! \"System.Math\" Max 10 20) returned ~A (expected 20)~%" max-val)))

  ;; 8. List-Call Static with Mixed (Symbol Class, String Method): (#!! System.Math "Max" 10 20)
  (let ((max-val (#!! System.Math "Max" 10 20)))
    (if (= max-val 20)
        (format *error-output* "[PASS] (#!! System.Math \"Max\" 10 20) returned 20~%")
        (utils:format-red *error-output* "[FAIL] (#!! System.Math \"Max\" 10 20) returned ~A (expected 20)~%" max-val)))

  (format *error-output* "--- C# Reader Macro Tests Completed ---~%")

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; C# Package Generator Integration Tests

  (format *error-output* "--- Running C# Package Generator Integration Tests ---~%")

  (let ((sc-pkg (find-package "SYSTEM-CONSOLE"))
        (sts-pkg (find-package "SYSTEM-TIME-SPAN"))
        (mv2-pkg (find-package "MICROSOFT-XNA-FRAMEWORK-VECTOR2")))
    (if (and sc-pkg sts-pkg mv2-pkg)
        (progn
          ;; 1. System.Console Tests
          (let* ((console-type-sym (find-symbol "<TYPE>" sc-pkg))
                (console-type (and console-type-sym (symbol-value console-type-sym)))
                (type-name (and console-type (dotnet:invoke console-type "FullName"))))
            (if (equal type-name "System.Console")
                (format *error-output* "[PASS] system-console:<type> returned System.Console~%")
                (utils:format-red *error-output* "[FAIL] system-console:<type> returned ~S~%" type-name)))

          (handler-case
              (let ((reset-color-sym (find-symbol "RESET-COLOR" sc-pkg)))
                (if reset-color-sym
                    (progn
                      (funcall reset-color-sym)
                      (format *error-output* "[PASS] system-console:reset-color called successfully~%"))
                    (utils:format-red *error-output* "[FAIL] system-console:reset-color symbol not found~%")))
            (error (e)
              (format *error-output* "[FAIL] system-console:reset-color threw error: ~A~%" e)))

          ;; 2. System.TimeSpan Tests
          (let* ((ts-type-sym (find-symbol "<TYPE>" sts-pkg))
                (ts-type (and ts-type-sym (symbol-value ts-type-sym)))
                (type-name (and ts-type (dotnet:invoke ts-type "FullName"))))
            (if (equal type-name "System.TimeSpan")
                (format *error-output* "[PASS] system-time-span:<type> returned System.TimeSpan~%")
                (utils:format-red *error-output* "[FAIL] system-time-span:<type> returned ~S~%" type-name)))

          ;; 3. Microsoft.Xna.Framework.Vector2 Tests
          (let* ((vec-type-sym (find-symbol "<TYPE>" mv2-pkg))
                (vec-type (and vec-type-sym (symbol-value vec-type-sym)))
                (type-name (and vec-type (dotnet:invoke vec-type "FullName"))))
            (if (equal type-name "Microsoft.Xna.Framework.Vector2")
                (format *error-output* "[PASS] microsoft-xna-framework-vector2:<type> returned Microsoft.Xna.Framework.Vector2~%")
                (utils:format-red *error-output* "[FAIL] microsoft-xna-framework-vector2:<type> returned ~S~%" type-name)))

          ;; Test zero static constant
          (let* ((zero-sym (find-symbol "ZERO" mv2-pkg)))
            (format *error-output* "zero-sym found: ~S~%" zero-sym)
            (multiple-value-bind (expansion expanded-p) (macroexpand-1 zero-sym)
              (format *error-output* "macroexpand-1: expansion=~S, expanded-p=~S~%" expansion expanded-p))
            (let* ((zero-vec (and zero-sym (eval zero-sym)))
                  (x-val (and zero-vec (dotnet:invoke zero-vec "X")))
                  (y-val (and zero-vec (dotnet:invoke zero-vec "Y"))))
              (format *error-output* "zero-vec value: ~S~%" zero-vec)
              (if (and x-val y-val (= x-val 0.0) (= y-val 0.0))
                  (format *error-output* "[PASS] microsoft-xna-framework-vector2:zero is zero vector~%")
                  (utils:format-red *error-output* "[FAIL] microsoft-xna-framework-vector2:zero has values X=~A, Y=~A~%" x-val y-val)))))
        (format *error-output* "[SKIP] C# Package Generator Integration Tests skipped (packages not loaded)~%")))

  (format *error-output* "--- C# Package Generator Integration Tests Completed ---~%")

  ;; ADD NEW TESTS HERE
)

(format *error-output* "[poc-test.lisp] Loaded.~%")

