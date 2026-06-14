;;; clr-generic-test.lisp
;;;
;;; Comprehensive tests for Version 1 of C# Class-Aware Generic Functions.

(in-package :dungeon-slime-tests)

(format *error-output* "[clr-generic-test.lisp] Starting tests...~%")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Test 1: Basic dispatch on C# class type and fallback

(defc#generic test-width (obj)
  (:documentation "Gets the width for testing C# generic functions"))

(defc#method test-width ((obj "System.Collections.ArrayList"))
  (format t "[test-width] ArrayList method called~%")
  :array-list)

(defc#method test-width ((obj "System.Collections.Hashtable"))
  (format t "[test-width] Hashtable method called~%")
  :hash-table)

(defc#method test-width ((obj t))
  (format t "[test-width] Fallback method called~%")
  :fallback)

(let ((al (dotnet:new "System.Collections.ArrayList"))
      (ht (dotnet:new "System.Collections.Hashtable"))
      (str "hello"))
  (let ((r-al (test-width al))
        (r-ht (test-width ht))
        (r-str (test-width str)))
    (format t "r-al = ~S, expected = ~S~%" r-al :array-list)
    (format t "r-ht = ~S, expected = ~S~%" r-ht :hash-table)
    (format t "r-str = ~S, expected = ~S~%" r-str :fallback)
    (assert (eq r-al :array-list))
    (assert (eq r-ht :hash-table))
    (assert (eq r-str :fallback))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Test 2: Interface Inheritance and Precedence
;; In .NET, Hashtable implements both ICollection and IDictionary.
;; IDictionary itself implements ICollection, making IDictionary more specific.

(defc#generic test-interface-gf (obj)
  (:documentation "Test interface inheritance specificity"))

(defc#method test-interface-gf ((obj "System.Collections.ICollection"))
  (format t "[test-interface-gf] ICollection method called~%")
  :collection)

(defc#method test-interface-gf ((obj "System.Collections.IDictionary"))
  (format t "[test-interface-gf] IDictionary method called~%")
  :dictionary)

(defc#method test-interface-gf ((obj t))
  (format t "[test-interface-gf] Fallback method called~%")
  :fallback)

(let ((al (dotnet:new "System.Collections.ArrayList"))
      (ht (dotnet:new "System.Collections.Hashtable"))
      (str "hello"))
  (let ((r-al (test-interface-gf al))
        (r-ht (test-interface-gf ht))
        (r-str (test-interface-gf str)))
    (format t "r-al (ICollection) = ~S, expected = ~S~%" r-al :collection)
    (format t "r-ht (IDictionary / ICollection) = ~S, expected = ~S~%" r-ht :dictionary)
    (format t "r-str = ~S, expected = ~S~%" r-str :fallback)
    (assert (eq r-al :collection))
    (assert (eq r-ht :dictionary))
    (assert (eq r-str :fallback))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Test 3: Type Alias Resolution
;; "GAME" type alias maps to "Microsoft.Xna.Framework.Game"

(defc#generic test-alias-gf (obj)
  (:documentation "Test type alias resolution in C# generic functions"))

(defc#method test-alias-gf ((obj "GAMETIME"))
  (format t "[test-alias-gf] GAMETIME alias method called~%")
  :gametime-alias)

(defc#method test-alias-gf ((obj t))
  (format t "[test-alias-gf] Fallback method called~%")
  :fallback)

(let ((gt (dotnet:new "Microsoft.Xna.Framework.GameTime")))
  (let ((r-gt (test-alias-gf gt))
        (r-fallback (test-alias-gf 42)))
    (format t "r-gt = ~S, expected = ~S~%" r-gt :gametime-alias)
    (format t "r-fallback = ~S, expected = ~S~%" r-fallback :fallback)
    (assert (eq r-gt :gametime-alias))
    (assert (eq r-fallback :fallback))))

(format *error-output* "[clr-generic-test.lisp] All tests passed!~%")
