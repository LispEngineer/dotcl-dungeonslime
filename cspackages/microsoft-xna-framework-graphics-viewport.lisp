;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.Viewport
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :microsoft-xna-framework-graphics-viewport)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.Viewport"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.Viewport")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun new (cl:&optional (bounds cl:nil supplied-bounds) (y cl:nil supplied-y) (width cl:nil supplied-width) (height cl:nil supplied-height) (min-depth cl:nil supplied-min-depth) (max-depth cl:nil supplied-max-depth))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.Viewport constructor overloads. Dispatches at runtime.

new()

new(Rectangle)

new(Int32, Int32, Int32, Int32)

new(Int32, Int32, Int32, Int32, Single, Single)
"
  (cl:cond
    ((cl:and supplied-bounds (cl:numberp bounds) supplied-y (cl:numberp y) supplied-width (cl:numberp width) supplied-height (cl:numberp height) supplied-min-depth (cl:numberp min-depth) supplied-max-depth (cl:numberp max-depth))
     (dotnet:new <type-str> bounds y width height min-depth max-depth))
    ((cl:and supplied-bounds (cl:numberp bounds) supplied-y (cl:numberp y) supplied-width (cl:numberp width) supplied-height (cl:numberp height) (cl:not supplied-min-depth) (cl:not supplied-max-depth))
     (dotnet:new <type-str> bounds y width height))
    ((cl:and supplied-bounds (cl:or (cl:null bounds) (dotnet:is-instance-of bounds "Microsoft.Xna.Framework.Rectangle")) (cl:not supplied-y) (cl:not supplied-width) (cl:not supplied-height) (cl:not supplied-min-depth) (cl:not supplied-max-depth))
     (dotnet:new <type-str> bounds))
    ((cl:and (cl:not supplied-bounds) (cl:not supplied-y) (cl:not supplied-width) (cl:not supplied-height) (cl:not supplied-min-depth) (cl:not supplied-max-depth))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-VIEWPORT"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-bounds (cl:list :bounds bounds)) (cl:when supplied-y (cl:list :y y)) (cl:when supplied-width (cl:list :width width)) (cl:when supplied-height (cl:list :height height)) (cl:when supplied-min-depth (cl:list :min-depth min-depth)) (cl:when supplied-max-depth (cl:list :max-depth max-depth)))))))

(cl:defun aspect-ratio (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_AspectRatio"))

(cl:defun bounds (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_Bounds"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf bounds) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_Bounds" new-value))

(cl:defun height (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_Height"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf height) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_Height" new-value))

(cl:defun max-depth (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_MaxDepth"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf max-depth) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_MaxDepth" new-value))

(cl:defun min-depth (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_MinDepth"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf min-depth) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_MinDepth" new-value))

(cl:defun title-safe-area (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_TitleSafeArea"))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_Width"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf width) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_Width" new-value))

(cl:defun x (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_X"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf x) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_X" new-value))

(cl:defun y (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "get_Y"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf y) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "set_Y" new-value))

(cl:defun project (obj! source projection view world)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "Project" source projection view world))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "ToString"))

(cl:defun unproject (obj! source projection view world)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Viewport") obj!) "Unproject" source projection view world))

