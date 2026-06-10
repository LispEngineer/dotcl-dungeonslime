;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; C# Utilities
;;;
;;; Note: Including this will add a readtable entry for
;;; #! macro dispatch character (exclamation point).
;;; This is a global change (for now)!

(in-package :csharp)
(require :dotnet-class)

(format *error-output* "[csharp.lisp] Loading in package ~S~%" *package*)

(defun timespan<-milliseconds (millis &optional (micros 0 has-micros-p))
  "Create a TimeSpan struct from this number of milliseconds,
   which is either a Double or Int64. Optionally include Int64 microseconds."
  (if has-micros-p
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis micros)
    (dotnet:static "System.TimeSpan" "FromMilliseconds" millis)))

(defun timespan->milliseconds (ts)
  "Gets the number of milliseconds of this C# TimeSpan object."
  (if (null ts)
    0
    (dotnet:invoke ts "TotalMilliseconds")))

(defun ts+ (ts1 ts2)
  "Adds two System.TimeSpan objects, returning a new one.
   Does not check for nil or correct object types."
  (dotnet:static "System.TimeSpan" "op_Addition" ts1 ts2))

(defun ts> (ts1 ts2)
  "Compares two System.TimeSpan objects, ts1 > ts2.
   Does not check for nil or correct object types."
  (dotnet:static "System.TimeSpan" "op_GreaterThan" ts1 ts2))

(defun ts>= (ts1 ts2)
  "Compares two System.TimeSpan objects, ts1 >= ts2.
   Does not check for nil or correct object types."
  (dotnet:static "System.TimeSpan" "op_GreaterThan" ts1 ts2))

;; Make calling DotNet functions more convenient.
;; 1. (#! ...)  -> synonym for dotnet:invoke
;; 2. (#!! ...) -> synonym for dotnet:static
;; 3. (#!MethodName obj ...) -> synonym for (dotnet:invoke obj "MethodName" ...)
;; 4. (#!!ClassName.MethodName ...) -> synonym for (dotnet:static "ClassName" "MethodName" ...)
;; TODO: Use named-readtables in the future when we get QuickLisp working.
;;   TODO: Consider making a *csharp-readtable* otherwise
;; TODO: Make the list of delimiter characters a defconstant
;; TODO: Allow the class/method names to be CL symbols (treated case sensitively)
;; Examples:
;; (#!!System.Guid.NewGuid)
;; (#!ToString (#!!System.Guid.NewGuid))
;; (#! (#!! "System.Guid" "NewGuid") "NewGuid")
;; Note also: VS Code (or Rainbow Parentheses) does not handle Common Lisp's character
;; #\) properly and messes up the highlighting after this method
(set-dispatch-macro-character #\# #\!
  (lambda (stream sub-char numeric-argument)
    (declare (ignore sub-char numeric-argument))
    ;; 1. Check if it's a static call (starts with an extra '!')
    (let ((static-p (char= (peek-char nil stream nil #\Space t) #\!)))
      (when static-p
        (read-char stream t nil t)) ; Consume the second '!'

      ;; 2. Look ahead at the next character to see if a delimiter follows
      (let ((next-c (peek-char nil stream nil :eof t)))
        (if (or (eq next-c :eof)
                ;; Check if it's whitespace, or possibly the end of an s-expression (i.e.
                ;; close parentheses)
                (member next-c '(#\Space #\Tab #\Newline #\Return #\) #\Linefeed #\Page)))

          ;; --- MODE A: SYNONYM MODE ---
          ;; Just return the raw symbol. The reader handles the rest normally.
          (if static-p 'dotnet:static 'dotnet:invoke)

          ;; --- MODE B: PREFIX SHORTHAND MODE ---
          ;; Read the alphanumeric string token up to the next delimiter
          (let ((token
                  (with-output-to-string (out)
                    (loop for c = (peek-char nil stream nil :eof t)
                          until (or (eq c :eof)
                                    (member c '(#\Space #\Tab #\Newline #\Return #\) #\Linefeed #\Page)))
                          do (write-char (read-char stream t nil t) out)))))
            ;; Handle it differently on static or not static (#!! or #!)
            (if static-p
              ;; Static Prefix: #!!System.Math.Sin
              ;; Break it into the package/class and the method name
              ;; TODO: Allow package/class synonyms from the dotnet::type-aliases hash table
              (let ((last-dot (position #\. token :from-end t)))
                (unless last-dot
                  ;; TODO: Is this the best way to indicate an error in a
                  ;; readtable macro dispatch?
                  (error "Static prefix syntax requires a dot between package/class and method name: ~A" token))
                (let ((class-name (subseq token 0 last-dot))
                      (method-name (subseq token (1+ last-dot))))
                  `(lambda (&rest args)
                      (apply #'dotnet:static ,class-name ,method-name args))))

              ;; Instance Prefix: #!Append
              `(lambda (obj &rest args)
                  (apply #'dotnet:invoke obj ,token args)))))))))
