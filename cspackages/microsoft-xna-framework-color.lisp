;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Color
;;; Generator Version: 9
;;; Creation Date: 2026-06-18T02:00:30Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-color
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:+alice-blue+
   #:+antique-white+
   #:+aqua+
   #:+aquamarine+
   #:+azure+
   #:+beige+
   #:+bisque+
   #:+black+
   #:+blanched-almond+
   #:+blue+
   #:+blue-violet+
   #:+brown+
   #:+burly-wood+
   #:+cadet-blue+
   #:+chartreuse+
   #:+chocolate+
   #:+coral+
   #:+cornflower-blue+
   #:+cornsilk+
   #:+crimson+
   #:+cyan+
   #:+dark-blue+
   #:+dark-cyan+
   #:+dark-goldenrod+
   #:+dark-gray+
   #:+dark-green+
   #:+dark-khaki+
   #:+dark-magenta+
   #:+dark-olive-green+
   #:+dark-orange+
   #:+dark-orchid+
   #:+dark-red+
   #:+dark-salmon+
   #:+dark-sea-green+
   #:+dark-slate-blue+
   #:+dark-slate-gray+
   #:+dark-turquoise+
   #:+dark-violet+
   #:+deep-pink+
   #:+deep-sky-blue+
   #:+dim-gray+
   #:+dodger-blue+
   #:+firebrick+
   #:+floral-white+
   #:+forest-green+
   #:+fuchsia+
   #:+gainsboro+
   #:+ghost-white+
   #:+gold+
   #:+goldenrod+
   #:+gray+
   #:+green+
   #:+green-yellow+
   #:+honeydew+
   #:+hot-pink+
   #:+indian-red+
   #:+indigo+
   #:+ivory+
   #:+khaki+
   #:+lavender+
   #:+lavender-blush+
   #:+lawn-green+
   #:+lemon-chiffon+
   #:+light-blue+
   #:+light-coral+
   #:+light-cyan+
   #:+light-goldenrod-yellow+
   #:+light-gray+
   #:+light-green+
   #:+light-pink+
   #:+light-salmon+
   #:+light-sea-green+
   #:+light-sky-blue+
   #:+light-slate-gray+
   #:+light-steel-blue+
   #:+light-yellow+
   #:+lime+
   #:+lime-green+
   #:+linen+
   #:+magenta+
   #:+maroon+
   #:+medium-aquamarine+
   #:+medium-blue+
   #:+medium-orchid+
   #:+medium-purple+
   #:+medium-sea-green+
   #:+medium-slate-blue+
   #:+medium-spring-green+
   #:+medium-turquoise+
   #:+medium-violet-red+
   #:+midnight-blue+
   #:+mint-cream+
   #:+misty-rose+
   #:+moccasin+
   #:+mono-game-orange+
   #:+navajo-white+
   #:+navy+
   #:+old-lace+
   #:+olive+
   #:+olive-drab+
   #:+orange+
   #:+orange-red+
   #:+orchid+
   #:+pale-goldenrod+
   #:+pale-green+
   #:+pale-turquoise+
   #:+pale-violet-red+
   #:+papaya-whip+
   #:+peach-puff+
   #:+peru+
   #:+pink+
   #:+plum+
   #:+powder-blue+
   #:+purple+
   #:+red+
   #:+rosy-brown+
   #:+royal-blue+
   #:+saddle-brown+
   #:+salmon+
   #:+sandy-brown+
   #:+sea-green+
   #:+sea-shell+
   #:+sienna+
   #:+silver+
   #:+sky-blue+
   #:+slate-blue+
   #:+slate-gray+
   #:+snow+
   #:+spring-green+
   #:+steel-blue+
   #:+tan+
   #:+teal+
   #:+thistle+
   #:+tomato+
   #:+transparent+
   #:+turquoise+
   #:+violet+
   #:+wheat+
   #:+white+
   #:+white-smoke+
   #:+yellow+
   #:+yellow-green+
   #:a
   #:b
   #:g
   #:packed-value
   #:r
   #:=
   #:get-hash-code
   #:implicit-cast
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
(defconstant <creation> "2026-06-18T02:00:30Z")
(defconstant <version> 9)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Color")))

(defconstant +alice-blue+ (dotnet:static <type-str> "AliceBlue"))

(defconstant +antique-white+ (dotnet:static <type-str> "AntiqueWhite"))

(defconstant +aqua+ (dotnet:static <type-str> "Aqua"))

(defconstant +aquamarine+ (dotnet:static <type-str> "Aquamarine"))

(defconstant +azure+ (dotnet:static <type-str> "Azure"))

(defconstant +beige+ (dotnet:static <type-str> "Beige"))

(defconstant +bisque+ (dotnet:static <type-str> "Bisque"))

(defconstant +black+ (dotnet:static <type-str> "Black"))

(defconstant +blanched-almond+ (dotnet:static <type-str> "BlanchedAlmond"))

(defconstant +blue+ (dotnet:static <type-str> "Blue"))

(defconstant +blue-violet+ (dotnet:static <type-str> "BlueViolet"))

(defconstant +brown+ (dotnet:static <type-str> "Brown"))

(defconstant +burly-wood+ (dotnet:static <type-str> "BurlyWood"))

(defconstant +cadet-blue+ (dotnet:static <type-str> "CadetBlue"))

(defconstant +chartreuse+ (dotnet:static <type-str> "Chartreuse"))

(defconstant +chocolate+ (dotnet:static <type-str> "Chocolate"))

(defconstant +coral+ (dotnet:static <type-str> "Coral"))

(defconstant +cornflower-blue+ (dotnet:static <type-str> "CornflowerBlue"))

(defconstant +cornsilk+ (dotnet:static <type-str> "Cornsilk"))

(defconstant +crimson+ (dotnet:static <type-str> "Crimson"))

(defconstant +cyan+ (dotnet:static <type-str> "Cyan"))

(defconstant +dark-blue+ (dotnet:static <type-str> "DarkBlue"))

(defconstant +dark-cyan+ (dotnet:static <type-str> "DarkCyan"))

(defconstant +dark-goldenrod+ (dotnet:static <type-str> "DarkGoldenrod"))

(defconstant +dark-gray+ (dotnet:static <type-str> "DarkGray"))

(defconstant +dark-green+ (dotnet:static <type-str> "DarkGreen"))

(defconstant +dark-khaki+ (dotnet:static <type-str> "DarkKhaki"))

(defconstant +dark-magenta+ (dotnet:static <type-str> "DarkMagenta"))

(defconstant +dark-olive-green+ (dotnet:static <type-str> "DarkOliveGreen"))

(defconstant +dark-orange+ (dotnet:static <type-str> "DarkOrange"))

(defconstant +dark-orchid+ (dotnet:static <type-str> "DarkOrchid"))

(defconstant +dark-red+ (dotnet:static <type-str> "DarkRed"))

(defconstant +dark-salmon+ (dotnet:static <type-str> "DarkSalmon"))

(defconstant +dark-sea-green+ (dotnet:static <type-str> "DarkSeaGreen"))

(defconstant +dark-slate-blue+ (dotnet:static <type-str> "DarkSlateBlue"))

(defconstant +dark-slate-gray+ (dotnet:static <type-str> "DarkSlateGray"))

(defconstant +dark-turquoise+ (dotnet:static <type-str> "DarkTurquoise"))

(defconstant +dark-violet+ (dotnet:static <type-str> "DarkViolet"))

(defconstant +deep-pink+ (dotnet:static <type-str> "DeepPink"))

(defconstant +deep-sky-blue+ (dotnet:static <type-str> "DeepSkyBlue"))

(defconstant +dim-gray+ (dotnet:static <type-str> "DimGray"))

(defconstant +dodger-blue+ (dotnet:static <type-str> "DodgerBlue"))

(defconstant +firebrick+ (dotnet:static <type-str> "Firebrick"))

(defconstant +floral-white+ (dotnet:static <type-str> "FloralWhite"))

(defconstant +forest-green+ (dotnet:static <type-str> "ForestGreen"))

(defconstant +fuchsia+ (dotnet:static <type-str> "Fuchsia"))

(defconstant +gainsboro+ (dotnet:static <type-str> "Gainsboro"))

(defconstant +ghost-white+ (dotnet:static <type-str> "GhostWhite"))

(defconstant +gold+ (dotnet:static <type-str> "Gold"))

(defconstant +goldenrod+ (dotnet:static <type-str> "Goldenrod"))

(defconstant +gray+ (dotnet:static <type-str> "Gray"))

(defconstant +green+ (dotnet:static <type-str> "Green"))

(defconstant +green-yellow+ (dotnet:static <type-str> "GreenYellow"))

(defconstant +honeydew+ (dotnet:static <type-str> "Honeydew"))

(defconstant +hot-pink+ (dotnet:static <type-str> "HotPink"))

(defconstant +indian-red+ (dotnet:static <type-str> "IndianRed"))

(defconstant +indigo+ (dotnet:static <type-str> "Indigo"))

(defconstant +ivory+ (dotnet:static <type-str> "Ivory"))

(defconstant +khaki+ (dotnet:static <type-str> "Khaki"))

(defconstant +lavender+ (dotnet:static <type-str> "Lavender"))

(defconstant +lavender-blush+ (dotnet:static <type-str> "LavenderBlush"))

(defconstant +lawn-green+ (dotnet:static <type-str> "LawnGreen"))

(defconstant +lemon-chiffon+ (dotnet:static <type-str> "LemonChiffon"))

(defconstant +light-blue+ (dotnet:static <type-str> "LightBlue"))

(defconstant +light-coral+ (dotnet:static <type-str> "LightCoral"))

(defconstant +light-cyan+ (dotnet:static <type-str> "LightCyan"))

(defconstant +light-goldenrod-yellow+ (dotnet:static <type-str> "LightGoldenrodYellow"))

(defconstant +light-gray+ (dotnet:static <type-str> "LightGray"))

(defconstant +light-green+ (dotnet:static <type-str> "LightGreen"))

(defconstant +light-pink+ (dotnet:static <type-str> "LightPink"))

(defconstant +light-salmon+ (dotnet:static <type-str> "LightSalmon"))

(defconstant +light-sea-green+ (dotnet:static <type-str> "LightSeaGreen"))

(defconstant +light-sky-blue+ (dotnet:static <type-str> "LightSkyBlue"))

(defconstant +light-slate-gray+ (dotnet:static <type-str> "LightSlateGray"))

(defconstant +light-steel-blue+ (dotnet:static <type-str> "LightSteelBlue"))

(defconstant +light-yellow+ (dotnet:static <type-str> "LightYellow"))

(defconstant +lime+ (dotnet:static <type-str> "Lime"))

(defconstant +lime-green+ (dotnet:static <type-str> "LimeGreen"))

(defconstant +linen+ (dotnet:static <type-str> "Linen"))

(defconstant +magenta+ (dotnet:static <type-str> "Magenta"))

(defconstant +maroon+ (dotnet:static <type-str> "Maroon"))

(defconstant +medium-aquamarine+ (dotnet:static <type-str> "MediumAquamarine"))

(defconstant +medium-blue+ (dotnet:static <type-str> "MediumBlue"))

(defconstant +medium-orchid+ (dotnet:static <type-str> "MediumOrchid"))

(defconstant +medium-purple+ (dotnet:static <type-str> "MediumPurple"))

(defconstant +medium-sea-green+ (dotnet:static <type-str> "MediumSeaGreen"))

(defconstant +medium-slate-blue+ (dotnet:static <type-str> "MediumSlateBlue"))

(defconstant +medium-spring-green+ (dotnet:static <type-str> "MediumSpringGreen"))

(defconstant +medium-turquoise+ (dotnet:static <type-str> "MediumTurquoise"))

(defconstant +medium-violet-red+ (dotnet:static <type-str> "MediumVioletRed"))

(defconstant +midnight-blue+ (dotnet:static <type-str> "MidnightBlue"))

(defconstant +mint-cream+ (dotnet:static <type-str> "MintCream"))

(defconstant +misty-rose+ (dotnet:static <type-str> "MistyRose"))

(defconstant +moccasin+ (dotnet:static <type-str> "Moccasin"))

(defconstant +mono-game-orange+ (dotnet:static <type-str> "MonoGameOrange"))

(defconstant +navajo-white+ (dotnet:static <type-str> "NavajoWhite"))

(defconstant +navy+ (dotnet:static <type-str> "Navy"))

(defconstant +old-lace+ (dotnet:static <type-str> "OldLace"))

(defconstant +olive+ (dotnet:static <type-str> "Olive"))

(defconstant +olive-drab+ (dotnet:static <type-str> "OliveDrab"))

(defconstant +orange+ (dotnet:static <type-str> "Orange"))

(defconstant +orange-red+ (dotnet:static <type-str> "OrangeRed"))

(defconstant +orchid+ (dotnet:static <type-str> "Orchid"))

(defconstant +pale-goldenrod+ (dotnet:static <type-str> "PaleGoldenrod"))

(defconstant +pale-green+ (dotnet:static <type-str> "PaleGreen"))

(defconstant +pale-turquoise+ (dotnet:static <type-str> "PaleTurquoise"))

(defconstant +pale-violet-red+ (dotnet:static <type-str> "PaleVioletRed"))

(defconstant +papaya-whip+ (dotnet:static <type-str> "PapayaWhip"))

(defconstant +peach-puff+ (dotnet:static <type-str> "PeachPuff"))

(defconstant +peru+ (dotnet:static <type-str> "Peru"))

(defconstant +pink+ (dotnet:static <type-str> "Pink"))

(defconstant +plum+ (dotnet:static <type-str> "Plum"))

(defconstant +powder-blue+ (dotnet:static <type-str> "PowderBlue"))

(defconstant +purple+ (dotnet:static <type-str> "Purple"))

(defconstant +red+ (dotnet:static <type-str> "Red"))

(defconstant +rosy-brown+ (dotnet:static <type-str> "RosyBrown"))

(defconstant +royal-blue+ (dotnet:static <type-str> "RoyalBlue"))

(defconstant +saddle-brown+ (dotnet:static <type-str> "SaddleBrown"))

(defconstant +salmon+ (dotnet:static <type-str> "Salmon"))

(defconstant +sandy-brown+ (dotnet:static <type-str> "SandyBrown"))

(defconstant +sea-green+ (dotnet:static <type-str> "SeaGreen"))

(defconstant +sea-shell+ (dotnet:static <type-str> "SeaShell"))

(defconstant +sienna+ (dotnet:static <type-str> "Sienna"))

(defconstant +silver+ (dotnet:static <type-str> "Silver"))

(defconstant +sky-blue+ (dotnet:static <type-str> "SkyBlue"))

(defconstant +slate-blue+ (dotnet:static <type-str> "SlateBlue"))

(defconstant +slate-gray+ (dotnet:static <type-str> "SlateGray"))

(defconstant +snow+ (dotnet:static <type-str> "Snow"))

(defconstant +spring-green+ (dotnet:static <type-str> "SpringGreen"))

(defconstant +steel-blue+ (dotnet:static <type-str> "SteelBlue"))

(defconstant +tan+ (dotnet:static <type-str> "Tan"))

(defconstant +teal+ (dotnet:static <type-str> "Teal"))

(defconstant +thistle+ (dotnet:static <type-str> "Thistle"))

(defconstant +tomato+ (dotnet:static <type-str> "Tomato"))

(defconstant +transparent+ (dotnet:static <type-str> "Transparent"))

(defconstant +turquoise+ (dotnet:static <type-str> "Turquoise"))

(defconstant +violet+ (dotnet:static <type-str> "Violet"))

(defconstant +wheat+ (dotnet:static <type-str> "Wheat"))

(defconstant +white+ (dotnet:static <type-str> "White"))

(defconstant +white-smoke+ (dotnet:static <type-str> "WhiteSmoke"))

(defconstant +yellow+ (dotnet:static <type-str> "Yellow"))

(defconstant +yellow-green+ (dotnet:static <type-str> "YellowGreen"))

(defun a (obj)
  (dotnet:invoke obj "get_A"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf a) (new-value obj)
  (dotnet:invoke obj "set_A" new-value))

(defun b (obj)
  (dotnet:invoke obj "get_B"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf b) (new-value obj)
  (dotnet:invoke obj "set_B" new-value))

(defun g (obj)
  (dotnet:invoke obj "get_G"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf g) (new-value obj)
  (dotnet:invoke obj "set_G" new-value))

(defun packed-value (obj)
  (dotnet:invoke obj "get_PackedValue"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf packed-value) (new-value obj)
  (dotnet:invoke obj "set_PackedValue" new-value))

(defun r (obj)
  (dotnet:invoke obj "get_R"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(defun (setf r) (new-value obj)
  (dotnet:invoke obj "set_R" new-value))

(defun = (a b)
  (dotnet:static <type-str> "op_Equality" a b))

(defun get-hash-code (obj)
  (dotnet:invoke obj "GetHashCode"))

(defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" value))

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

