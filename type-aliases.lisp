;;; DotCL Type Definitions & Aliases
;;;
;;; Also ensures all the classes we're using for dispatch
;;; are registered with the DotCL C# class dispatch mechanism

(in-package :dungeon-slime)
(require :dotnet-class)

(format *error-output* "[type-aliases.lisp] Loading in package ~S~%" *package*)

;; Type aliases visible at compile-time too: dotnet:define-class resolves
;; short names while macroexpanding, so eval-when keeps the registration
;; effective in both compile and load phases.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf (gethash "GAME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Game")
  (setf (gethash "GAMETIME" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GameTime")
  (setf (gethash "GRAPHICSDEVICEMANAGER" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.GraphicsDeviceManager")
  (setf (gethash "TEXTURE2D" dotnet::*type-aliases*)
        "Microsoft.Xna.Framework.Graphics.Texture2D")
  ;; Create an alias for the functions returned from DynamicBaseCaller
  ;; (This does not seem to work.)
  (setf (gethash "BASEFUNC" dotnet::*type-aliases*)
        "System.Func`3[[System.Object],[System.Object[]],[System.Object]]"))

;; Try to figure out where things are at various times
(eval-when (:compile-toplevel)
  (format *error-output* "[type-aliases.lisp] Compile time: AppContext.BaseDirectory: ~S~%"
     (dotnet:static "System.AppContext" "BaseDirectory"))
  (format *error-output* "[type-aliases.lisp] Compile time: AppDomain.CurrentDomain.BaseDirectory: ~S~%"
     (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))

(eval-when (:load-toplevel)
  (format *error-output* "[type-aliases.lisp] Load time: AppContext.BaseDirectory: ~S~%"
     (dotnet:static "System.AppContext" "BaseDirectory"))
  (format *error-output* "[type-aliases.lisp] Load time: AppDomain.CurrentDomain.BaseDirectory: ~S~%"
     (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))

(eval-when (:execute)
  (format *error-output* "[type-aliases.lisp] Execute time: AppContext.BaseDirectory: ~S~%"
     (dotnet:static "System.AppContext" "BaseDirectory"))
  (format *error-output* "[type-aliases.lisp] Execute time: AppDomain.CurrentDomain.BaseDirectory: ~S~%"
     (dotnet:invoke (dotnet:static "System.AppDomain" "CurrentDomain") "BaseDirectory")))

(eval-when (:compile-toplevel)

  ;; dotnet-build way
  (let* ((out-path
          (uiop:run-program '("dotnet" "build" "DungeonSlime.csproj" "-getProperty:OutputPath")
                            :output :string
                            :ignore-error-status t))
         ;; Trim trailing newlines and whitespace
         (bin-dir (string-trim '(#\Space #\Tab #\Newline) out-path))
         ;; Parse and merge the absolute path to the DLL
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    (format *error-output* 
      "[type-aliases.lisp] [dotnet-build] Compile time info:~%  out-path: ~S~%  bin-dir: ~S~%  dll-path: ~S~%"
      out-path bin-dir dll-path))

  ;; ASDF way:
  (let* ((sys-dir (asdf:system-source-directory "dungeon-slime"))
         (outdir-file (merge-pathnames "obj/dotcl-outdir.txt" sys-dir))
         (bin-dir (with-open-file (s outdir-file) (read-line s)))
         (dll-path (merge-pathnames (concatenate 'string bin-dir "MonoGame.Framework.dll")
                                    (asdf:system-source-directory "dungeon-slime"))))
    (format *error-output* 
      "[type-aliases.lisp] [dotcl-outdir] Compile time info:~%  sys-dir: ~S~%  outdir-file: ~S~%  bin-dir: ~S~%  dll-path: ~S~%"
      sys-dir outdir-file bin-dir dll-path)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Register classes for CLOS C# Class integration
;; 1. First load all the necessary assemblies
;; 2. Then register the classes with the CLOS type system

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *content-directory* nil
    "The resolved content directory path used in REPL contexts."))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter dotnet-assemblies
    '("MonoGame.Framework.dll")
    "These are all the external assemblies loaded so that classes are registered
     for method dispatch.")

  (when (find-package :asdf)
    (format *error-output* "[type-aliases.lisp] Loading assemblies...~%")
    (let* ((sys-dir (asdf:system-source-directory "dungeon-slime"))
           (outdir-file (merge-pathnames "obj/dotcl-outdir.txt" sys-dir))
           (bin-dir (when (probe-file outdir-file)
                      (with-open-file (s outdir-file)
                        (read-line s)))))
      (when bin-dir
        (setf *content-directory*
              (merge-pathnames (concatenate 'string bin-dir "Content") sys-dir))
        (dolist (assembly dotnet-assemblies)
          (let ((path (merge-pathnames (concatenate 'string bin-dir assembly) sys-dir)))
            (if (probe-file path)
                (progn
                  (format *error-output* "[type-aliases.lisp] Loading assembly: ~S~%" assembly)
                  (dotnet:load-assembly (namestring path)))
                (format *error-output* "[type-aliases.lisp] Warning: Assembly not found at ~A~%" path))))))))

(eval-when (:load-toplevel :execute)
  ;; Load the runtime assembly for this project so that custom C# types
  ;; (like MonoUtilsRegistrar) are resolvable during REPL sessions.
  (when (find-package :asdf)
    (let* ((sys-dir (asdf:system-source-directory "dungeon-slime"))
           (outdir-file (merge-pathnames "obj/dotcl-outdir.txt" sys-dir))
           (bin-dir (when (probe-file outdir-file)
                      (with-open-file (s outdir-file)
                        (read-line s)))))
      (when bin-dir
        (let ((path (merge-pathnames (concatenate 'string bin-dir "DungeonSlime.dll") sys-dir)))
          (if (probe-file path)
              (progn
                (format *error-output* "[type-aliases.lisp] Loading runtime assembly: DungeonSlime.dll~%")
                (dotnet:load-assembly (namestring path)))
              (format *error-output* "[type-aliases.lisp] Warning: Runtime assembly DungeonSlime.dll not found at ~A~%" path))))))

  (defparameter csharp-classes
    '("Microsoft.Xna.Framework.Vector2"
      "Microsoft.Xna.Framework.Rectangle")
    "Classes to be used for C# CLOS generic dispatch methods")

  (dolist (cls csharp-classes)
    (format *error-output* "[type-aliases.lisp] Registering class: ~S~%" cls)
    (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass" (dotnet:resolve-type cls))))

(format *error-output* "[type-aliases.lisp] Load complete in package ~S.~%" *package*)

