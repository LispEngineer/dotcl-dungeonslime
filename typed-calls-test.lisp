(in-package :dungeon-slime-tests)

(defun run-typed-calls-tests ()
  (format *error-output* "--- Running Typed Calls Tests ---~%")
  
  ;; Incorrect usage: passing a string to a method that expects SamplerState
  (let ((failed t))
    (handler-case
        (progn
          (microsoft-xna-framework-graphics-sampler-state::dispose "this is a string, not a sampler state" t)
          (setf failed nil))
      (error (e)
        (format *error-output* "[typed-calls-tests] PASS: Caught expected exception when passing invalid type: ~A~%" e)))
    (when (not failed)
      (error "[typed-calls-tests] FAIL: Expected an error when passing a string to SamplerState.Dispose, but none was thrown!"))))

;; Run tests immediately upon loading
(run-typed-calls-tests)
