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
;;
;; 1. Prefix Shorthand Mode:
;;    (#!MethodName obj ...)
;;    -> Synonym for: ((lambda (obj &rest args) (apply #'dotnet:invoke obj "MethodName" args)) obj ...)
;;
;;    (#!!Class.Method ...)
;;    -> Synonym for: ((lambda (&rest args) (apply #'dotnet:static "Class" "Method" args)) ...)
;;
;; 2. List-Call Mode (Synonym and case-sensitive symbols):
;;    (#! obj "StringMethod" ...) -> Calls StringMethod on obj
;;    (#! obj SymbolMethod ...)   -> Calls SymbolMethod on obj (casing preserved)
;;    (#!! "Class" "Method" ...)  -> Calls static Method on Class
;;    (#!! Class Method ...)      -> Calls static Method on Class (casing preserved)
;;
;;    The Method name (and Class name for #!!) can be either a string or a case-sensitive symbol.
;;    The remaining arguments are read with standard Lisp reader settings.
;;
;; 3. Synonym Mode:
;;    #!  -> Evaluates to the symbol dotnet:invoke (when followed by no arguments or closing parenthesis)
;;    #!! -> Evaluates to the symbol dotnet:static (when followed by no arguments or closing parenthesis)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (set-dispatch-macro-character #\# #\!
    (lambda (stream sub-char numeric-argument)
      (declare (ignore sub-char numeric-argument))
      ;; 1. Check if the next character is another exclamation point '!' indicating a static call.
      (let ((static-p (char= (peek-char nil stream nil #\Space t) #\!)))
        (when static-p
          (read-char stream t nil t)) ; Consume the second '!'

        ;; 2. Look ahead at the next character to determine the parse mode.
        (let ((next-c (peek-char nil stream nil :eof t)))
          (if
            ;; --- WHITE SPACE OR DELIMITER FOLLOWS ---
            (or (eq next-c :eof)
                 (member next-c '(#\Space #\Tab #\Newline #\Return #\) #\Linefeed #\Page)))
             ;; Check if this is Synonym Mode or List-Call Mode by looking at the next non-whitespace character.
             (let ((next-non-ws (peek-char t stream nil :eof t)))
                (if (or (eq next-non-ws :eof) (char= next-non-ws #\)))
                  ;; Synonym Mode: Return the raw symbol.
                  (if static-p 'dotnet:static 'dotnet:invoke)
                  ;; List-Call Mode: Consume arguments case-sensitively where needed.
                  (if static-p
                    ;; Static call: #!! Class Method -> (lambda (&rest args) (apply #'dotnet:static Class Method args))
                    (let* ((class (let ((*readtable* (copy-readtable nil)))
                                    (setf (readtable-case *readtable*) :preserve)
                                    (read stream t nil t)))
                           (method (let ((*readtable* (copy-readtable nil)))
                                     (setf (readtable-case *readtable*) :preserve)
                                     (read stream t nil t))))
                      (when (or (member class '(#\) :eof)) (member method '(#\) :eof)))
                        (error "Class name and Method name are required in #!! list invocation."))
                      `(lambda (&rest args)
                        (apply #'dotnet:static ,(string class) ,(string method) args)))
                    ;; Instance call: #! obj Method -> (lambda (&rest args) (apply #'dotnet:invoke obj Method args))
                    (let* ((obj (read stream t nil t))
                           (method (let ((*readtable* (copy-readtable nil)))
                                     (setf (readtable-case *readtable*) :preserve)
                                     (read stream t nil t))))
                      (when (or (member obj '(#\) :eof)) (member method '(#\) :eof)))
                        (error "Object and Method name are required in #! list invocation."))
                      `(lambda (&rest args)
                        (apply #'dotnet:invoke ,obj ,(string method) args))))))

            ;; --- PREFIX SHORTHAND MODE ---
             (let ((token
                     (with-output-to-string (out)
                       (loop for c = (peek-char nil stream nil :eof t)
                             until (or (eq c :eof)
                                       (member c '(#\Space #\Tab #\Newline #\Return #\) #\Linefeed #\Page)))
                             do (write-char (read-char stream t nil t) out)))))
               (if static-p
                  ;; Static Prefix: #!!Class.Method
                  (let ((last-dot (position #\. token :from-end t)))
                    (unless last-dot
                      (error "Static #!! prefix syntax requires a dot: ~A" token))
                    (let ((class-name (subseq token 0 last-dot))
                          (method-name (subseq token (1+ last-dot))))
                      `(lambda (&rest args)
                        (apply #'dotnet:static ,class-name ,method-name args))))
                  ;; Instance Prefix: #!MethodName
                  `(lambda (obj &rest args)
                    (apply #'dotnet:invoke obj ,token args))))))))))
