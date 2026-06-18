(in-package :dungeon-slime-tests)

(defun run-typed-calls-tests ()
  (format *error-output* "--- Running Typed Calls Tests ---~%")
  
  ;; Helper to assert equal values safely (handling numeric type differences with =)
  (labels ((to-int (obj)
             (dotnet:static "System.Convert" "ToInt32" obj))
           (assert-equal (val expected desc)
             (if (if (and (numberp val) (numberp expected))
                     (= val expected)
                     (equal val expected))
                 (format *error-output* "  [PASS] ~A: got ~S~%" desc val)
                 (progn
                   (format *error-output* "  [FAIL] ~A: expected ~S, got ~S~%" desc expected val)
                   (error "Test failure: ~A" desc))))
           (assert-not-fboundp (name desc)
             (if (fboundp name)
                 (progn
                   (format *error-output* "  [FAIL] ~A: ~S is bound but should not be!~%" desc name)
                   (error "Test failure: ~A (~S is bound)" desc name))
                 (format *error-output* "  [PASS] ~A: ~S is not bound~%" desc name))))

    ;; 1. Incorrect usage: passing a string to a method that expects SamplerState
    (let ((failed t))
      (handler-case
          (progn
            (microsoft-xna-framework-graphics-sampler-state::dispose "this is a string, not a sampler state" t)
            (setf failed nil))
        (error (e)
          (format *error-output* "  [PASS] Caught expected exception when passing invalid type to Dispose: ~A~%" e)))
      (when (not failed)
        (error "FAIL: Expected an error when passing a string to SamplerState.Dispose, but none was thrown!")))

    ;; 2. Reference Type Instance Accessors/Mutators (SamplerState)
    (let ((state (dotnet:new "Microsoft.Xna.Framework.Graphics.SamplerState")))
      ;; Default MaxAnisotropy is 4
      (assert-equal (microsoft-xna-framework-graphics-sampler-state:max-anisotropy state) 4 "Default MaxAnisotropy")
      
      ;; Mutate MaxAnisotropy to 8
      (setf (microsoft-xna-framework-graphics-sampler-state:max-anisotropy state) 8)
      (assert-equal (microsoft-xna-framework-graphics-sampler-state:max-anisotropy state) 8 "Mutated MaxAnisotropy")
      
      ;; Default MaxMipLevel is 0
      (assert-equal (microsoft-xna-framework-graphics-sampler-state:max-mip-level state) 0 "Default MaxMipLevel")
      
      ;; Mutate MaxMipLevel to 4
      (setf (microsoft-xna-framework-graphics-sampler-state:max-mip-level state) 4)
      (assert-equal (microsoft-xna-framework-graphics-sampler-state:max-mip-level state) 4 "Mutated MaxMipLevel")
      
      ;; Test border-color get/set (Reference type property that takes/returns a Color struct)
      (let ((color (dotnet:new "Microsoft.Xna.Framework.Color" 0 255 0 255)))
        (setf (microsoft-xna-framework-graphics-sampler-state:border-color state) color)
        (let ((got-color (microsoft-xna-framework-graphics-sampler-state:border-color state)))
          (assert-equal (to-int (microsoft-xna-framework-color:r got-color)) 0 "SamplerState BorderColor R")
          (assert-equal (to-int (microsoft-xna-framework-color:g got-color)) 255 "SamplerState BorderColor G")
          (assert-equal (to-int (microsoft-xna-framework-color:b got-color)) 0 "SamplerState BorderColor B")
          (assert-equal (to-int (microsoft-xna-framework-color:a got-color)) 255 "SamplerState BorderColor A")))

      ;; Direct type enforcement for property accessor
      (let ((failed t))
        (handler-case
            (progn
              (microsoft-xna-framework-graphics-sampler-state:max-anisotropy "not a sampler state")
              (setf failed nil))
          (error (e)
            (format *error-output* "  [PASS] Caught expected exception when calling accessor with invalid type: ~A~%" e)))
        (when (not failed)
          (error "FAIL: Expected an error when passing a string to SamplerState.MaxAnisotropy, but none was thrown!"))))

    ;; 3. Value Type Instance Accessors/Mutators (Color struct)
    (let ((c (dotnet:new "Microsoft.Xna.Framework.Color" 10 20 30 40)))
      ;; Read initial values
      (assert-equal (to-int (microsoft-xna-framework-color:r c)) 10 "Color R")
      (assert-equal (to-int (microsoft-xna-framework-color:g c)) 20 "Color G")
      (assert-equal (to-int (microsoft-xna-framework-color:b c)) 30 "Color B")
      (assert-equal (to-int (microsoft-xna-framework-color:a c)) 40 "Color A")
      
      ;; Mutate value type properties (casting to byte to resolve C# reflection method mismatch)
      (setf (microsoft-xna-framework-color:r c) (dotnet:static "System.Convert" "ToByte" 100))
      (assert-equal (to-int (microsoft-xna-framework-color:r c)) 100 "Mutated Color R")
      
      (setf (microsoft-xna-framework-color:g c) (dotnet:static "System.Convert" "ToByte" 200))
      (assert-equal (to-int (microsoft-xna-framework-color:g c)) 200 "Mutated Color G")

      ;; Mutate PackedValue (UInt32 property)
      (setf (microsoft-xna-framework-color:packed-value c)
            (dotnet:static "System.Convert" "ToUInt32" #xFFFFFFFF))
      (assert-equal (to-int (microsoft-xna-framework-color:r c)) 255 "Color R after packed-value mutate to max")
      (assert-equal (to-int (microsoft-xna-framework-color:g c)) 255 "Color G after packed-value mutate to max")
      (assert-equal (to-int (microsoft-xna-framework-color:b c)) 255 "Color B after packed-value mutate to max")
      (assert-equal (to-int (microsoft-xna-framework-color:a c)) 255 "Color A after packed-value mutate to max")

      (setf (microsoft-xna-framework-color:packed-value c)
            (dotnet:static "System.Convert" "ToUInt32" 0))
      (assert-equal (to-int (microsoft-xna-framework-color:r c)) 0 "Color R after packed-value mutate to 0")
      (assert-equal (to-int (microsoft-xna-framework-color:g c)) 0 "Color G after packed-value mutate to 0")
      (assert-equal (to-int (microsoft-xna-framework-color:b c)) 0 "Color B after packed-value mutate to 0")
      (assert-equal (to-int (microsoft-xna-framework-color:a c)) 0 "Color A after packed-value mutate to 0"))

    ;; 4. Value Type Read-Only Property (TimeSpan struct)
    (let ((ts (system-time-span:from-ticks 10000))) ; 1 millisecond
      (assert-equal (system-time-span:total-milliseconds ts) 1.0 "TimeSpan TotalMilliseconds"))

    ;; 5. Verification of Absence of Mutators (Read-Only Properties)
    (assert-not-fboundp '(setf system-time-span:total-milliseconds) "TimeSpan.TotalMilliseconds mutator absence")
    (assert-not-fboundp '(setf microsoft-xna-framework-input-mouse-state:x) "MouseState.X mutator absence")
    (assert-not-fboundp '(setf microsoft-xna-framework-input-keyboard-state:caps-lock) "KeyboardState.CapsLock mutator absence")
    (assert-not-fboundp '(setf microsoft-xna-framework-input-game-pad-state:is-connected) "GamePadState.IsConnected mutator absence"))
  (format *error-output* "  [ALL PASSED] Detailed property accessor/mutator tests completed successfully.~%"))

;; Run tests immediately upon loading
(run-typed-calls-tests)
