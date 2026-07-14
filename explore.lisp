;;; Douglas P. Fields, Jr. - symbolics@lisp.engineer
;;;
;;; Exploration of DotCL

(defun full-symbol-name (sym)
  (let* ((pkg (symbol-package sym))
         (sym-name (symbol-name sym)))
    (if (null pkg)
        ;; For uninterned symbols (gensyms) which have no home package
        (format nil "#:~A" sym-name)
        (let ((pkg-name (package-name pkg)))
          ;; Check visibility of the symbol name within its own home package
          (multiple-value-bind (found-sym status) (find-symbol sym-name pkg)
            (declare (ignore found-sym))
            (cond ((eq status :external)
                   ;; Symbol is exported
                   (format nil "~A:~A" pkg-name sym-name))
                  ((eq pkg (find-package :keyword))
                   ;; Keywords are always external, but printed as :KEYWORD
                   (format nil ":~A" sym-name))
                  (t
                   ;; Symbol is internal or inherited internally
                   (format nil "~A::~A" pkg-name sym-name))))))))

(defun get-all-symbols ()
  (let ((omitted-packages '("COMMON-LISP" "KEYWORD" "DOTCL.CIL-COMPILER"))
        (collected-symbols '()))
    ;; 1. Loop through all packages in the image
    (dolist (pkg (list-all-packages))
      ;; 2. Filter out packages in the omission list by name
      (unless (member (package-name pkg) omitted-packages :test #'string=)
        ;; 3. Loop through all present symbols in the allowed package
        (do-symbols (sym pkg)
          ;; 4. Ensure we only collect symbols home-interned in this package
          ;;    to avoid duplicates from USED/inherited packages
          (when (eq (symbol-package sym) pkg)
            (push sym collected-symbols)))))
    
    ;; 5. Sort the collected symbols alphabetically by name
    (sort collected-symbols #'string< :key #'symbol-name)))

(defun get-all-sym-sorted ()
  (sort (mapcar #'full-symbol-name (get-all-symbols)) #'string<))

;; Function? Variable? Struct?
;; Type, if it's a variable or struct.

(defun print-all ()
  (dolist (name all-sym-sorted)
    (format t "* `~A`:~%~%" NAME)))