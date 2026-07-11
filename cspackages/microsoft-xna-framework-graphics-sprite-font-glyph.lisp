;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph
;;; Generator Version: 43
;;; Creation Date: 2026-07-11T16:00:40Z

(cl:in-package :microsoft-xna-framework-graphics-sprite-font-glyph)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph")
(cl:defconstant <creation> "2026-07-11T16:00:40Z")
(cl:defconstant <version> 43)

;; Register C# Type with CLOS
(cl:eval-when (:load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:define-symbol-macro empty (dotnet:static <type-str> "Empty"))

(cl:defun bounds-in-texture (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "BoundsInTexture"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf bounds-in-texture) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "BoundsInTexture") new-value))

(cl:defun character (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "Character"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf character) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "Character") new-value))

(cl:defun cropping (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "Cropping"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf cropping) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "Cropping") new-value))

(cl:defun left-side-bearing (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "LeftSideBearing"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf left-side-bearing) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "LeftSideBearing") new-value))

(cl:defun right-side-bearing (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "RightSideBearing"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf right-side-bearing) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "RightSideBearing") new-value))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "Width"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf width) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "Width") new-value))

(cl:defun width-including-bearings (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "WidthIncludingBearings"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf width-including-bearings) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "WidthIncludingBearings") new-value))

(cl:defun to-string (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph") obj!) "ToString"))

