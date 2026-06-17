;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Color
;;; Generator Version: 5
;;; Creation Date: 2026-06-16T22:31:20Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-color
  (:use :cl)
  (:shadow
   #:tan
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:alice-blue
   #:antique-white
   #:aqua
   #:aquamarine
   #:azure
   #:beige
   #:bisque
   #:black
   #:blanched-almond
   #:blue
   #:blue-violet
   #:brown
   #:burly-wood
   #:cadet-blue
   #:chartreuse
   #:chocolate
   #:coral
   #:cornflower-blue
   #:cornsilk
   #:crimson
   #:cyan
   #:dark-blue
   #:dark-cyan
   #:dark-goldenrod
   #:dark-gray
   #:dark-green
   #:dark-khaki
   #:dark-magenta
   #:dark-olive-green
   #:dark-orange
   #:dark-orchid
   #:dark-red
   #:dark-salmon
   #:dark-sea-green
   #:dark-slate-blue
   #:dark-slate-gray
   #:dark-turquoise
   #:dark-violet
   #:deep-pink
   #:deep-sky-blue
   #:dim-gray
   #:dodger-blue
   #:firebrick
   #:floral-white
   #:forest-green
   #:fuchsia
   #:gainsboro
   #:ghost-white
   #:gold
   #:goldenrod
   #:gray
   #:green
   #:green-yellow
   #:honeydew
   #:hot-pink
   #:indian-red
   #:indigo
   #:ivory
   #:khaki
   #:lavender
   #:lavender-blush
   #:lawn-green
   #:lemon-chiffon
   #:light-blue
   #:light-coral
   #:light-cyan
   #:light-goldenrod-yellow
   #:light-gray
   #:light-green
   #:light-pink
   #:light-salmon
   #:light-sea-green
   #:light-sky-blue
   #:light-slate-gray
   #:light-steel-blue
   #:light-yellow
   #:lime
   #:lime-green
   #:linen
   #:magenta
   #:maroon
   #:medium-aquamarine
   #:medium-blue
   #:medium-orchid
   #:medium-purple
   #:medium-sea-green
   #:medium-slate-blue
   #:medium-spring-green
   #:medium-turquoise
   #:medium-violet-red
   #:midnight-blue
   #:mint-cream
   #:misty-rose
   #:moccasin
   #:mono-game-orange
   #:navajo-white
   #:navy
   #:old-lace
   #:olive
   #:olive-drab
   #:orange
   #:orange-red
   #:orchid
   #:pale-goldenrod
   #:pale-green
   #:pale-turquoise
   #:pale-violet-red
   #:papaya-whip
   #:peach-puff
   #:peru
   #:pink
   #:plum
   #:powder-blue
   #:purple
   #:red
   #:rosy-brown
   #:royal-blue
   #:saddle-brown
   #:salmon
   #:sandy-brown
   #:sea-green
   #:sea-shell
   #:sienna
   #:silver
   #:sky-blue
   #:slate-blue
   #:slate-gray
   #:snow
   #:spring-green
   #:steel-blue
   #:tan
   #:teal
   #:thistle
   #:tomato
   #:transparent
   #:turquoise
   #:violet
   #:wheat
   #:white
   #:white-smoke
   #:yellow
   #:yellow-green
   #:=
   #:get-hash-code
   #:lerp
   #:lerp-precise
   #:multiply
   #:multiply-alpha
   #:not=
   #:to-string
   #:to-vector3
   #:to-vector4
  ))

(in-package :microsoft-xna-framework-color)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Color"))
(defconstant <type-str> "Microsoft.Xna.Framework.Color")
(defconstant <creation> "2026-06-16T22:31:20Z")
(defconstant <version> 5)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Color")))

(define-symbol-macro alice-blue (dotnet:static <type-str> "AliceBlue"))

(define-symbol-macro antique-white (dotnet:static <type-str> "AntiqueWhite"))

(define-symbol-macro aqua (dotnet:static <type-str> "Aqua"))

(define-symbol-macro aquamarine (dotnet:static <type-str> "Aquamarine"))

(define-symbol-macro azure (dotnet:static <type-str> "Azure"))

(define-symbol-macro beige (dotnet:static <type-str> "Beige"))

(define-symbol-macro bisque (dotnet:static <type-str> "Bisque"))

(define-symbol-macro black (dotnet:static <type-str> "Black"))

(define-symbol-macro blanched-almond (dotnet:static <type-str> "BlanchedAlmond"))

(define-symbol-macro blue (dotnet:static <type-str> "Blue"))

(define-symbol-macro blue-violet (dotnet:static <type-str> "BlueViolet"))

(define-symbol-macro brown (dotnet:static <type-str> "Brown"))

(define-symbol-macro burly-wood (dotnet:static <type-str> "BurlyWood"))

(define-symbol-macro cadet-blue (dotnet:static <type-str> "CadetBlue"))

(define-symbol-macro chartreuse (dotnet:static <type-str> "Chartreuse"))

(define-symbol-macro chocolate (dotnet:static <type-str> "Chocolate"))

(define-symbol-macro coral (dotnet:static <type-str> "Coral"))

(define-symbol-macro cornflower-blue (dotnet:static <type-str> "CornflowerBlue"))

(define-symbol-macro cornsilk (dotnet:static <type-str> "Cornsilk"))

(define-symbol-macro crimson (dotnet:static <type-str> "Crimson"))

(define-symbol-macro cyan (dotnet:static <type-str> "Cyan"))

(define-symbol-macro dark-blue (dotnet:static <type-str> "DarkBlue"))

(define-symbol-macro dark-cyan (dotnet:static <type-str> "DarkCyan"))

(define-symbol-macro dark-goldenrod (dotnet:static <type-str> "DarkGoldenrod"))

(define-symbol-macro dark-gray (dotnet:static <type-str> "DarkGray"))

(define-symbol-macro dark-green (dotnet:static <type-str> "DarkGreen"))

(define-symbol-macro dark-khaki (dotnet:static <type-str> "DarkKhaki"))

(define-symbol-macro dark-magenta (dotnet:static <type-str> "DarkMagenta"))

(define-symbol-macro dark-olive-green (dotnet:static <type-str> "DarkOliveGreen"))

(define-symbol-macro dark-orange (dotnet:static <type-str> "DarkOrange"))

(define-symbol-macro dark-orchid (dotnet:static <type-str> "DarkOrchid"))

(define-symbol-macro dark-red (dotnet:static <type-str> "DarkRed"))

(define-symbol-macro dark-salmon (dotnet:static <type-str> "DarkSalmon"))

(define-symbol-macro dark-sea-green (dotnet:static <type-str> "DarkSeaGreen"))

(define-symbol-macro dark-slate-blue (dotnet:static <type-str> "DarkSlateBlue"))

(define-symbol-macro dark-slate-gray (dotnet:static <type-str> "DarkSlateGray"))

(define-symbol-macro dark-turquoise (dotnet:static <type-str> "DarkTurquoise"))

(define-symbol-macro dark-violet (dotnet:static <type-str> "DarkViolet"))

(define-symbol-macro deep-pink (dotnet:static <type-str> "DeepPink"))

(define-symbol-macro deep-sky-blue (dotnet:static <type-str> "DeepSkyBlue"))

(define-symbol-macro dim-gray (dotnet:static <type-str> "DimGray"))

(define-symbol-macro dodger-blue (dotnet:static <type-str> "DodgerBlue"))

(define-symbol-macro firebrick (dotnet:static <type-str> "Firebrick"))

(define-symbol-macro floral-white (dotnet:static <type-str> "FloralWhite"))

(define-symbol-macro forest-green (dotnet:static <type-str> "ForestGreen"))

(define-symbol-macro fuchsia (dotnet:static <type-str> "Fuchsia"))

(define-symbol-macro gainsboro (dotnet:static <type-str> "Gainsboro"))

(define-symbol-macro ghost-white (dotnet:static <type-str> "GhostWhite"))

(define-symbol-macro gold (dotnet:static <type-str> "Gold"))

(define-symbol-macro goldenrod (dotnet:static <type-str> "Goldenrod"))

(define-symbol-macro gray (dotnet:static <type-str> "Gray"))

(define-symbol-macro green (dotnet:static <type-str> "Green"))

(define-symbol-macro green-yellow (dotnet:static <type-str> "GreenYellow"))

(define-symbol-macro honeydew (dotnet:static <type-str> "Honeydew"))

(define-symbol-macro hot-pink (dotnet:static <type-str> "HotPink"))

(define-symbol-macro indian-red (dotnet:static <type-str> "IndianRed"))

(define-symbol-macro indigo (dotnet:static <type-str> "Indigo"))

(define-symbol-macro ivory (dotnet:static <type-str> "Ivory"))

(define-symbol-macro khaki (dotnet:static <type-str> "Khaki"))

(define-symbol-macro lavender (dotnet:static <type-str> "Lavender"))

(define-symbol-macro lavender-blush (dotnet:static <type-str> "LavenderBlush"))

(define-symbol-macro lawn-green (dotnet:static <type-str> "LawnGreen"))

(define-symbol-macro lemon-chiffon (dotnet:static <type-str> "LemonChiffon"))

(define-symbol-macro light-blue (dotnet:static <type-str> "LightBlue"))

(define-symbol-macro light-coral (dotnet:static <type-str> "LightCoral"))

(define-symbol-macro light-cyan (dotnet:static <type-str> "LightCyan"))

(define-symbol-macro light-goldenrod-yellow (dotnet:static <type-str> "LightGoldenrodYellow"))

(define-symbol-macro light-gray (dotnet:static <type-str> "LightGray"))

(define-symbol-macro light-green (dotnet:static <type-str> "LightGreen"))

(define-symbol-macro light-pink (dotnet:static <type-str> "LightPink"))

(define-symbol-macro light-salmon (dotnet:static <type-str> "LightSalmon"))

(define-symbol-macro light-sea-green (dotnet:static <type-str> "LightSeaGreen"))

(define-symbol-macro light-sky-blue (dotnet:static <type-str> "LightSkyBlue"))

(define-symbol-macro light-slate-gray (dotnet:static <type-str> "LightSlateGray"))

(define-symbol-macro light-steel-blue (dotnet:static <type-str> "LightSteelBlue"))

(define-symbol-macro light-yellow (dotnet:static <type-str> "LightYellow"))

(define-symbol-macro lime (dotnet:static <type-str> "Lime"))

(define-symbol-macro lime-green (dotnet:static <type-str> "LimeGreen"))

(define-symbol-macro linen (dotnet:static <type-str> "Linen"))

(define-symbol-macro magenta (dotnet:static <type-str> "Magenta"))

(define-symbol-macro maroon (dotnet:static <type-str> "Maroon"))

(define-symbol-macro medium-aquamarine (dotnet:static <type-str> "MediumAquamarine"))

(define-symbol-macro medium-blue (dotnet:static <type-str> "MediumBlue"))

(define-symbol-macro medium-orchid (dotnet:static <type-str> "MediumOrchid"))

(define-symbol-macro medium-purple (dotnet:static <type-str> "MediumPurple"))

(define-symbol-macro medium-sea-green (dotnet:static <type-str> "MediumSeaGreen"))

(define-symbol-macro medium-slate-blue (dotnet:static <type-str> "MediumSlateBlue"))

(define-symbol-macro medium-spring-green (dotnet:static <type-str> "MediumSpringGreen"))

(define-symbol-macro medium-turquoise (dotnet:static <type-str> "MediumTurquoise"))

(define-symbol-macro medium-violet-red (dotnet:static <type-str> "MediumVioletRed"))

(define-symbol-macro midnight-blue (dotnet:static <type-str> "MidnightBlue"))

(define-symbol-macro mint-cream (dotnet:static <type-str> "MintCream"))

(define-symbol-macro misty-rose (dotnet:static <type-str> "MistyRose"))

(define-symbol-macro moccasin (dotnet:static <type-str> "Moccasin"))

(define-symbol-macro mono-game-orange (dotnet:static <type-str> "MonoGameOrange"))

(define-symbol-macro navajo-white (dotnet:static <type-str> "NavajoWhite"))

(define-symbol-macro navy (dotnet:static <type-str> "Navy"))

(define-symbol-macro old-lace (dotnet:static <type-str> "OldLace"))

(define-symbol-macro olive (dotnet:static <type-str> "Olive"))

(define-symbol-macro olive-drab (dotnet:static <type-str> "OliveDrab"))

(define-symbol-macro orange (dotnet:static <type-str> "Orange"))

(define-symbol-macro orange-red (dotnet:static <type-str> "OrangeRed"))

(define-symbol-macro orchid (dotnet:static <type-str> "Orchid"))

(define-symbol-macro pale-goldenrod (dotnet:static <type-str> "PaleGoldenrod"))

(define-symbol-macro pale-green (dotnet:static <type-str> "PaleGreen"))

(define-symbol-macro pale-turquoise (dotnet:static <type-str> "PaleTurquoise"))

(define-symbol-macro pale-violet-red (dotnet:static <type-str> "PaleVioletRed"))

(define-symbol-macro papaya-whip (dotnet:static <type-str> "PapayaWhip"))

(define-symbol-macro peach-puff (dotnet:static <type-str> "PeachPuff"))

(define-symbol-macro peru (dotnet:static <type-str> "Peru"))

(define-symbol-macro pink (dotnet:static <type-str> "Pink"))

(define-symbol-macro plum (dotnet:static <type-str> "Plum"))

(define-symbol-macro powder-blue (dotnet:static <type-str> "PowderBlue"))

(define-symbol-macro purple (dotnet:static <type-str> "Purple"))

(define-symbol-macro red (dotnet:static <type-str> "Red"))

(define-symbol-macro rosy-brown (dotnet:static <type-str> "RosyBrown"))

(define-symbol-macro royal-blue (dotnet:static <type-str> "RoyalBlue"))

(define-symbol-macro saddle-brown (dotnet:static <type-str> "SaddleBrown"))

(define-symbol-macro salmon (dotnet:static <type-str> "Salmon"))

(define-symbol-macro sandy-brown (dotnet:static <type-str> "SandyBrown"))

(define-symbol-macro sea-green (dotnet:static <type-str> "SeaGreen"))

(define-symbol-macro sea-shell (dotnet:static <type-str> "SeaShell"))

(define-symbol-macro sienna (dotnet:static <type-str> "Sienna"))

(define-symbol-macro silver (dotnet:static <type-str> "Silver"))

(define-symbol-macro sky-blue (dotnet:static <type-str> "SkyBlue"))

(define-symbol-macro slate-blue (dotnet:static <type-str> "SlateBlue"))

(define-symbol-macro slate-gray (dotnet:static <type-str> "SlateGray"))

(define-symbol-macro snow (dotnet:static <type-str> "Snow"))

(define-symbol-macro spring-green (dotnet:static <type-str> "SpringGreen"))

(define-symbol-macro steel-blue (dotnet:static <type-str> "SteelBlue"))

(define-symbol-macro tan (dotnet:static <type-str> "Tan"))

(define-symbol-macro teal (dotnet:static <type-str> "Teal"))

(define-symbol-macro thistle (dotnet:static <type-str> "Thistle"))

(define-symbol-macro tomato (dotnet:static <type-str> "Tomato"))

(define-symbol-macro transparent (dotnet:static <type-str> "Transparent"))

(define-symbol-macro turquoise (dotnet:static <type-str> "Turquoise"))

(define-symbol-macro violet (dotnet:static <type-str> "Violet"))

(define-symbol-macro wheat (dotnet:static <type-str> "Wheat"))

(define-symbol-macro white (dotnet:static <type-str> "White"))

(define-symbol-macro white-smoke (dotnet:static <type-str> "WhiteSmoke"))

(define-symbol-macro yellow (dotnet:static <type-str> "Yellow"))

(define-symbol-macro yellow-green (dotnet:static <type-str> "YellowGreen"))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" a b))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun lerp (value1 value2 amount)
  (dotnet:static <type-str> "Lerp" value1 value2 amount))

(defun lerp-precise (value1 value2 amount)
  (dotnet:static <type-str> "LerpPrecise" value1 value2 amount))

(defun multiply (value scale)
  (dotnet:static <type-str> "Multiply" value scale))

(defun multiply-alpha (value scale)
  (dotnet:static <type-str> "MultiplyAlpha" value scale))

(defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" a b))

(defun to-string (obj)
  (dotnet:invoke obj "ToString"))

(defun to-vector3 (obj)
  (dotnet:invoke obj "ToVector3"))

(defun to-vector4 (obj)
  (dotnet:invoke obj "ToVector4"))

