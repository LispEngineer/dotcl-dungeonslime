;;; Generated automatically. Do not edit.
;;; Class: MonoGameGum.GueDeriving.TextRuntime
;;; Generator Version: 30
;;; Creation Date: 2026-07-04T16:57:01Z

(cl:in-package :mono-game-gum-gue-deriving-text-runtime)

(cl:defconstant <type> (dotnet:resolve-type "MonoGameGum.GueDeriving.TextRuntime"))
(cl:defconstant <type-str> "MonoGameGum.GueDeriving.TextRuntime")
(cl:defconstant <creation> "2026-07-04T16:57:01Z")
(cl:defconstant <version> 30)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "MonoGameGum.GueDeriving.TextRuntime")))

;; The following C# MonoGameGum.GueDeriving.TextRuntime constructors have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   new(Boolean, SystemManagers)

(cl:defun alpha (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Alpha"))

(cl:defun (cl:setf alpha) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Alpha" new-value))

(cl:defun bitmap-font (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_BitmapFont"))

(cl:defun (cl:setf bitmap-font) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_BitmapFont" new-value))

(cl:defun blend (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Blend"))

(cl:defun (cl:setf blend) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Blend" new-value))

(cl:defun blend-state (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_BlendState"))

(cl:defun (cl:setf blend-state) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_BlendState" new-value))

(cl:defun blue (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Blue"))

(cl:defun (cl:setf blue) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Blue" new-value))

(cl:defun color (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Color"))

(cl:defun (cl:setf color) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Color" new-value))

(cl:defun custom-font-file (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_CustomFontFile"))

(cl:defun (cl:setf custom-font-file) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_CustomFontFile" new-value))

(cl:defun font (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Font"))

(cl:defun (cl:setf font) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Font" new-value))

(cl:defun font-family (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_FontFamily"))

(cl:defun (cl:setf font-family) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_FontFamily" new-value))

(cl:defun font-scale (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_FontScale"))

(cl:defun (cl:setf font-scale) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_FontScale" new-value))

(cl:defun font-size (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_FontSize"))

(cl:defun (cl:setf font-size) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_FontSize" new-value))

(cl:defun green (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Green"))

(cl:defun (cl:setf green) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Green" new-value))

(cl:defun horizontal-alignment (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_HorizontalAlignment"))

(cl:defun (cl:setf horizontal-alignment) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_HorizontalAlignment" new-value))

(cl:defun bold? (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_IsBold"))

(cl:defun (cl:setf bold?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_IsBold" new-value))

(cl:defun italic? (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_IsItalic"))

(cl:defun (cl:setf italic?) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_IsItalic" new-value))

(cl:defun line-height-multiplier (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_LineHeightMultiplier"))

(cl:defun (cl:setf line-height-multiplier) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_LineHeightMultiplier" new-value))

(cl:defun max-letters-to-show (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_MaxLettersToShow"))

(cl:defun (cl:setf max-letters-to-show) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_MaxLettersToShow" new-value))

(cl:defun max-number-of-lines (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_MaxNumberOfLines"))

(cl:defun (cl:setf max-number-of-lines) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_MaxNumberOfLines" new-value))

(cl:defun outline-thickness (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_OutlineThickness"))

(cl:defun (cl:setf outline-thickness) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_OutlineThickness" new-value))

(cl:defun overlap-direction (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_OverlapDirection"))

(cl:defun (cl:setf overlap-direction) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_OverlapDirection" new-value))

(cl:defun red (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Red"))

(cl:defun (cl:setf red) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Red" new-value))

(cl:defun text (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_Text"))

(cl:defun (cl:setf text) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_Text" new-value))

(cl:defun text-overflow-horizontal-mode (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_TextOverflowHorizontalMode"))

(cl:defun (cl:setf text-overflow-horizontal-mode) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_TextOverflowHorizontalMode" new-value))

(cl:defun text-rendering-position-mode (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_TextRenderingPositionMode"))

(cl:defun (cl:setf text-rendering-position-mode) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_TextRenderingPositionMode" new-value))

(cl:defun use-custom-font (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_UseCustomFont"))

(cl:defun (cl:setf use-custom-font) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_UseCustomFont" new-value))

(cl:defun use-font-smoothing (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_UseFontSmoothing"))

(cl:defun (cl:setf use-font-smoothing) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_UseFontSmoothing" new-value))

(cl:defun vertical-alignment (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_VerticalAlignment"))

(cl:defun (cl:setf vertical-alignment) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "set_VerticalAlignment" new-value))

(cl:defun wrapped-text (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "get_WrappedText"))

(cl:defun default-height (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultHeight"))

(cl:defun (cl:setf default-height) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultHeight") new-value))

(cl:defun default-height-units (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultHeightUnits"))

(cl:defun (cl:setf default-height-units) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultHeightUnits") new-value))

(cl:defun default-width (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultWidth"))

(cl:defun (cl:setf default-width) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultWidth") new-value))

(cl:defun default-width-units (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultWidthUnits"))

(cl:defun (cl:setf default-width-units) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "DefaultWidthUnits") new-value))

(cl:defun add-to-managers (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "AddToManagers"))

(cl:defun clone (obj!)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "Clone"))

(cl:defun get-character-index-at-position (obj! screen-x screen-y)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "GetCharacterIndexAtPosition" screen-x screen-y))

(cl:defun set-text-no-translate (obj! value)
  (dotnet:invoke (cl:the (dotnet "MonoGameGum.GueDeriving.TextRuntime") obj!) "SetTextNoTranslate" value))

