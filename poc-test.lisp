;;; Proofs of concept & functionality tests

(in-package :cl-user)

(format *error-output* "[poc-test.lisp] Loading in package ~S~%" *package*)

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
  (format *error-output* "dotnet-p +false+ = ~A~%" (monoutils:dotnet-p +false+))
  (format *error-output* "boxed-dotnet-p +false+ = ~A~%" (monoutils:boxed-dotnet-p +false+)))


;; Test Case-Sensitive C# Reader Macros (#!! and #!)
(format *error-output* "--- Running C# Reader Macro Tests ---~%")

;; 1. Prefix Shorthand Instance: (#!ToString obj)
(let* ((guid (dotnet:static "System.Guid" "NewGuid"))
       (guid-str (#!ToString guid)))
  (if (and (stringp guid-str) (> (length guid-str) 0))
      (format *error-output* "[PASS] (#!ToString guid) returned ~S~%" guid-str)
      (format *error-output* "[FAIL] (#!ToString guid) returned ~S~%" guid-str)))

;; 2. Prefix Shorthand Static: (#!!System.Math.Max 10 20)
(let ((max-val (#!!System.Math.Max 10 20)))
  (if (= max-val 20)
      (format *error-output* "[PASS] (#!!System.Math.Max 10 20) returned 20~%")
      (format *error-output* "[FAIL] (#!!System.Math.Max 10 20) returned ~A (expected 20)~%" max-val)))

;; 3. List-Call Instance with String: (#! obj "ToString")
(let* ((guid (dotnet:static "System.Guid" "NewGuid"))
       (guid-str (#! guid "ToString")))
  (if (and (stringp guid-str) (> (length guid-str) 0))
      (format *error-output* "[PASS] (#! guid \"ToString\") returned ~S~%" guid-str)
      (format *error-output* "[FAIL] (#! guid \"ToString\") returned ~S~%" guid-str)))

;; 4. List-Call Instance with Symbol: (#! obj ToString)
(let* ((guid (dotnet:static "System.Guid" "NewGuid"))
       (guid-str (#! guid ToString)))
  (if (and (stringp guid-str) (> (length guid-str) 0))
      (format *error-output* "[PASS] (#! guid ToString) returned ~S~%" guid-str)
      (format *error-output* "[FAIL] (#! guid ToString) returned ~S~%" guid-str)))

;; 5. List-Call Static with Strings: (#!! "System.Math" "Max" 10 20)
(let ((max-val (#!! "System.Math" "Max" 10 20)))
  (if (= max-val 20)
      (format *error-output* "[PASS] (#!! \"System.Math\" \"Max\" 10 20) returned 20~%")
      (format *error-output* "[FAIL] (#!! \"System.Math\" \"Max\" 10 20) returned ~A (expected 20)~%" max-val)))

;; 6. List-Call Static with Symbols: (#!! System.Math Max 10 20)
(let ((max-val (#!! System.Math Max 10 20)))
  (if (= max-val 20)
      (format *error-output* "[PASS] (#!! System.Math Max 10 20) returned 20~%")
      (format *error-output* "[FAIL] (#!! System.Math Max 10 20) returned ~A (expected 20)~%" max-val)))

;; 7. List-Call Static with Mixed (String Class, Symbol Method): (#!! "System.Math" Max 10 20)
(let ((max-val (#!! "System.Math" Max 10 20)))
  (if (= max-val 20)
      (format *error-output* "[PASS] (#!! \"System.Math\" Max 10 20) returned 20~%")
      (format *error-output* "[FAIL] (#!! \"System.Math\" Max 10 20) returned ~A (expected 20)~%" max-val)))

;; 8. List-Call Static with Mixed (Symbol Class, String Method): (#!! System.Math "Max" 10 20)
(let ((max-val (#!! System.Math "Max" 10 20)))
  (if (= max-val 20)
      (format *error-output* "[PASS] (#!! System.Math \"Max\" 10 20) returned 20~%")
      (format *error-output* "[FAIL] (#!! System.Math \"Max\" 10 20) returned ~A (expected 20)~%" max-val)))

(format *error-output* "--- C# Reader Macro Tests Completed ---~%")

(format *error-output* "[poc-test.lisp] Loaded.~%")

