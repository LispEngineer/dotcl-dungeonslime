;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Color
;;; Generator Version: 21
;;; Creation Date: 2026-07-03T12:03:34Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-color
  (:use :cl)
  (:shadow
   #:*
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-u-int32
   #:new-vector4
   #:new-vector3
   #:new-color-int32
   #:new-color-single
   #:new-single-single-single
   #:new-int32-int32-int32
   #:new-single-single-single-single
   #:new-int32-int32-int32-int32
   #:new-byte-byte-byte-byte
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
   #:*
   #:*-color-single
   #:*-single-color
   #:*-color-color
   #:=
   #:equals
   #:equals-object
   #:equals-color
   #:from-non-premultiplied
   #:from-non-premultiplied-vector4
   #:from-non-premultiplied-int32-int32-int32-int32
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

(cl:in-package :microsoft-xna-framework-color)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Color"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Color")
(cl:defconstant <creation> "2026-07-03T12:03:34Z")
(cl:defconstant <version> 21)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Color")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Color. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-u-int32 (packed-value)
  "Calls Microsoft.Xna.Framework.Color constructor new(UInt32)"
  (dotnet:new <type-str> packed-value))

(cl:defun new-vector4 (color)
  "Calls Microsoft.Xna.Framework.Color constructor new(Vector4)"
  (dotnet:new <type-str> color))

(cl:defun new-vector3 (color)
  "Calls Microsoft.Xna.Framework.Color constructor new(Vector3)"
  (dotnet:new <type-str> color))

(cl:defun new-color-int32 (color alpha)
  "Calls Microsoft.Xna.Framework.Color constructor new(Color, Int32)"
  (dotnet:new <type-str> color alpha))

(cl:defun new-color-single (color alpha)
  "Calls Microsoft.Xna.Framework.Color constructor new(Color, Single)"
  (dotnet:new <type-str> color alpha))

(cl:defun new-single-single-single (r g b)
  "Calls Microsoft.Xna.Framework.Color constructor new(Single, Single, Single)"
  (dotnet:new <type-str> r g b))

(cl:defun new-int32-int32-int32 (r g b)
  "Calls Microsoft.Xna.Framework.Color constructor new(Int32, Int32, Int32)"
  (dotnet:new <type-str> r g b))

(cl:defun new-single-single-single-single (r g b alpha)
  "Calls Microsoft.Xna.Framework.Color constructor new(Single, Single, Single, Single)"
  (dotnet:new <type-str> r g b alpha))

(cl:defun new-int32-int32-int32-int32 (r g b alpha)
  "Calls Microsoft.Xna.Framework.Color constructor new(Int32, Int32, Int32, Int32)"
  (dotnet:new <type-str> r g b alpha))

(cl:defun new-byte-byte-byte-byte (r g b alpha)
  "Calls Microsoft.Xna.Framework.Color constructor new(Byte, Byte, Byte, Byte)"
  (dotnet:new <type-str> r g b alpha))

(cl:defconstant +alice-blue+ (dotnet:static <type-str> "AliceBlue"))

(cl:defconstant +antique-white+ (dotnet:static <type-str> "AntiqueWhite"))

(cl:defconstant +aqua+ (dotnet:static <type-str> "Aqua"))

(cl:defconstant +aquamarine+ (dotnet:static <type-str> "Aquamarine"))

(cl:defconstant +azure+ (dotnet:static <type-str> "Azure"))

(cl:defconstant +beige+ (dotnet:static <type-str> "Beige"))

(cl:defconstant +bisque+ (dotnet:static <type-str> "Bisque"))

(cl:defconstant +black+ (dotnet:static <type-str> "Black"))

(cl:defconstant +blanched-almond+ (dotnet:static <type-str> "BlanchedAlmond"))

(cl:defconstant +blue+ (dotnet:static <type-str> "Blue"))

(cl:defconstant +blue-violet+ (dotnet:static <type-str> "BlueViolet"))

(cl:defconstant +brown+ (dotnet:static <type-str> "Brown"))

(cl:defconstant +burly-wood+ (dotnet:static <type-str> "BurlyWood"))

(cl:defconstant +cadet-blue+ (dotnet:static <type-str> "CadetBlue"))

(cl:defconstant +chartreuse+ (dotnet:static <type-str> "Chartreuse"))

(cl:defconstant +chocolate+ (dotnet:static <type-str> "Chocolate"))

(cl:defconstant +coral+ (dotnet:static <type-str> "Coral"))

(cl:defconstant +cornflower-blue+ (dotnet:static <type-str> "CornflowerBlue"))

(cl:defconstant +cornsilk+ (dotnet:static <type-str> "Cornsilk"))

(cl:defconstant +crimson+ (dotnet:static <type-str> "Crimson"))

(cl:defconstant +cyan+ (dotnet:static <type-str> "Cyan"))

(cl:defconstant +dark-blue+ (dotnet:static <type-str> "DarkBlue"))

(cl:defconstant +dark-cyan+ (dotnet:static <type-str> "DarkCyan"))

(cl:defconstant +dark-goldenrod+ (dotnet:static <type-str> "DarkGoldenrod"))

(cl:defconstant +dark-gray+ (dotnet:static <type-str> "DarkGray"))

(cl:defconstant +dark-green+ (dotnet:static <type-str> "DarkGreen"))

(cl:defconstant +dark-khaki+ (dotnet:static <type-str> "DarkKhaki"))

(cl:defconstant +dark-magenta+ (dotnet:static <type-str> "DarkMagenta"))

(cl:defconstant +dark-olive-green+ (dotnet:static <type-str> "DarkOliveGreen"))

(cl:defconstant +dark-orange+ (dotnet:static <type-str> "DarkOrange"))

(cl:defconstant +dark-orchid+ (dotnet:static <type-str> "DarkOrchid"))

(cl:defconstant +dark-red+ (dotnet:static <type-str> "DarkRed"))

(cl:defconstant +dark-salmon+ (dotnet:static <type-str> "DarkSalmon"))

(cl:defconstant +dark-sea-green+ (dotnet:static <type-str> "DarkSeaGreen"))

(cl:defconstant +dark-slate-blue+ (dotnet:static <type-str> "DarkSlateBlue"))

(cl:defconstant +dark-slate-gray+ (dotnet:static <type-str> "DarkSlateGray"))

(cl:defconstant +dark-turquoise+ (dotnet:static <type-str> "DarkTurquoise"))

(cl:defconstant +dark-violet+ (dotnet:static <type-str> "DarkViolet"))

(cl:defconstant +deep-pink+ (dotnet:static <type-str> "DeepPink"))

(cl:defconstant +deep-sky-blue+ (dotnet:static <type-str> "DeepSkyBlue"))

(cl:defconstant +dim-gray+ (dotnet:static <type-str> "DimGray"))

(cl:defconstant +dodger-blue+ (dotnet:static <type-str> "DodgerBlue"))

(cl:defconstant +firebrick+ (dotnet:static <type-str> "Firebrick"))

(cl:defconstant +floral-white+ (dotnet:static <type-str> "FloralWhite"))

(cl:defconstant +forest-green+ (dotnet:static <type-str> "ForestGreen"))

(cl:defconstant +fuchsia+ (dotnet:static <type-str> "Fuchsia"))

(cl:defconstant +gainsboro+ (dotnet:static <type-str> "Gainsboro"))

(cl:defconstant +ghost-white+ (dotnet:static <type-str> "GhostWhite"))

(cl:defconstant +gold+ (dotnet:static <type-str> "Gold"))

(cl:defconstant +goldenrod+ (dotnet:static <type-str> "Goldenrod"))

(cl:defconstant +gray+ (dotnet:static <type-str> "Gray"))

(cl:defconstant +green+ (dotnet:static <type-str> "Green"))

(cl:defconstant +green-yellow+ (dotnet:static <type-str> "GreenYellow"))

(cl:defconstant +honeydew+ (dotnet:static <type-str> "Honeydew"))

(cl:defconstant +hot-pink+ (dotnet:static <type-str> "HotPink"))

(cl:defconstant +indian-red+ (dotnet:static <type-str> "IndianRed"))

(cl:defconstant +indigo+ (dotnet:static <type-str> "Indigo"))

(cl:defconstant +ivory+ (dotnet:static <type-str> "Ivory"))

(cl:defconstant +khaki+ (dotnet:static <type-str> "Khaki"))

(cl:defconstant +lavender+ (dotnet:static <type-str> "Lavender"))

(cl:defconstant +lavender-blush+ (dotnet:static <type-str> "LavenderBlush"))

(cl:defconstant +lawn-green+ (dotnet:static <type-str> "LawnGreen"))

(cl:defconstant +lemon-chiffon+ (dotnet:static <type-str> "LemonChiffon"))

(cl:defconstant +light-blue+ (dotnet:static <type-str> "LightBlue"))

(cl:defconstant +light-coral+ (dotnet:static <type-str> "LightCoral"))

(cl:defconstant +light-cyan+ (dotnet:static <type-str> "LightCyan"))

(cl:defconstant +light-goldenrod-yellow+ (dotnet:static <type-str> "LightGoldenrodYellow"))

(cl:defconstant +light-gray+ (dotnet:static <type-str> "LightGray"))

(cl:defconstant +light-green+ (dotnet:static <type-str> "LightGreen"))

(cl:defconstant +light-pink+ (dotnet:static <type-str> "LightPink"))

(cl:defconstant +light-salmon+ (dotnet:static <type-str> "LightSalmon"))

(cl:defconstant +light-sea-green+ (dotnet:static <type-str> "LightSeaGreen"))

(cl:defconstant +light-sky-blue+ (dotnet:static <type-str> "LightSkyBlue"))

(cl:defconstant +light-slate-gray+ (dotnet:static <type-str> "LightSlateGray"))

(cl:defconstant +light-steel-blue+ (dotnet:static <type-str> "LightSteelBlue"))

(cl:defconstant +light-yellow+ (dotnet:static <type-str> "LightYellow"))

(cl:defconstant +lime+ (dotnet:static <type-str> "Lime"))

(cl:defconstant +lime-green+ (dotnet:static <type-str> "LimeGreen"))

(cl:defconstant +linen+ (dotnet:static <type-str> "Linen"))

(cl:defconstant +magenta+ (dotnet:static <type-str> "Magenta"))

(cl:defconstant +maroon+ (dotnet:static <type-str> "Maroon"))

(cl:defconstant +medium-aquamarine+ (dotnet:static <type-str> "MediumAquamarine"))

(cl:defconstant +medium-blue+ (dotnet:static <type-str> "MediumBlue"))

(cl:defconstant +medium-orchid+ (dotnet:static <type-str> "MediumOrchid"))

(cl:defconstant +medium-purple+ (dotnet:static <type-str> "MediumPurple"))

(cl:defconstant +medium-sea-green+ (dotnet:static <type-str> "MediumSeaGreen"))

(cl:defconstant +medium-slate-blue+ (dotnet:static <type-str> "MediumSlateBlue"))

(cl:defconstant +medium-spring-green+ (dotnet:static <type-str> "MediumSpringGreen"))

(cl:defconstant +medium-turquoise+ (dotnet:static <type-str> "MediumTurquoise"))

(cl:defconstant +medium-violet-red+ (dotnet:static <type-str> "MediumVioletRed"))

(cl:defconstant +midnight-blue+ (dotnet:static <type-str> "MidnightBlue"))

(cl:defconstant +mint-cream+ (dotnet:static <type-str> "MintCream"))

(cl:defconstant +misty-rose+ (dotnet:static <type-str> "MistyRose"))

(cl:defconstant +moccasin+ (dotnet:static <type-str> "Moccasin"))

(cl:defconstant +mono-game-orange+ (dotnet:static <type-str> "MonoGameOrange"))

(cl:defconstant +navajo-white+ (dotnet:static <type-str> "NavajoWhite"))

(cl:defconstant +navy+ (dotnet:static <type-str> "Navy"))

(cl:defconstant +old-lace+ (dotnet:static <type-str> "OldLace"))

(cl:defconstant +olive+ (dotnet:static <type-str> "Olive"))

(cl:defconstant +olive-drab+ (dotnet:static <type-str> "OliveDrab"))

(cl:defconstant +orange+ (dotnet:static <type-str> "Orange"))

(cl:defconstant +orange-red+ (dotnet:static <type-str> "OrangeRed"))

(cl:defconstant +orchid+ (dotnet:static <type-str> "Orchid"))

(cl:defconstant +pale-goldenrod+ (dotnet:static <type-str> "PaleGoldenrod"))

(cl:defconstant +pale-green+ (dotnet:static <type-str> "PaleGreen"))

(cl:defconstant +pale-turquoise+ (dotnet:static <type-str> "PaleTurquoise"))

(cl:defconstant +pale-violet-red+ (dotnet:static <type-str> "PaleVioletRed"))

(cl:defconstant +papaya-whip+ (dotnet:static <type-str> "PapayaWhip"))

(cl:defconstant +peach-puff+ (dotnet:static <type-str> "PeachPuff"))

(cl:defconstant +peru+ (dotnet:static <type-str> "Peru"))

(cl:defconstant +pink+ (dotnet:static <type-str> "Pink"))

(cl:defconstant +plum+ (dotnet:static <type-str> "Plum"))

(cl:defconstant +powder-blue+ (dotnet:static <type-str> "PowderBlue"))

(cl:defconstant +purple+ (dotnet:static <type-str> "Purple"))

(cl:defconstant +red+ (dotnet:static <type-str> "Red"))

(cl:defconstant +rosy-brown+ (dotnet:static <type-str> "RosyBrown"))

(cl:defconstant +royal-blue+ (dotnet:static <type-str> "RoyalBlue"))

(cl:defconstant +saddle-brown+ (dotnet:static <type-str> "SaddleBrown"))

(cl:defconstant +salmon+ (dotnet:static <type-str> "Salmon"))

(cl:defconstant +sandy-brown+ (dotnet:static <type-str> "SandyBrown"))

(cl:defconstant +sea-green+ (dotnet:static <type-str> "SeaGreen"))

(cl:defconstant +sea-shell+ (dotnet:static <type-str> "SeaShell"))

(cl:defconstant +sienna+ (dotnet:static <type-str> "Sienna"))

(cl:defconstant +silver+ (dotnet:static <type-str> "Silver"))

(cl:defconstant +sky-blue+ (dotnet:static <type-str> "SkyBlue"))

(cl:defconstant +slate-blue+ (dotnet:static <type-str> "SlateBlue"))

(cl:defconstant +slate-gray+ (dotnet:static <type-str> "SlateGray"))

(cl:defconstant +snow+ (dotnet:static <type-str> "Snow"))

(cl:defconstant +spring-green+ (dotnet:static <type-str> "SpringGreen"))

(cl:defconstant +steel-blue+ (dotnet:static <type-str> "SteelBlue"))

(cl:defconstant +tan+ (dotnet:static <type-str> "Tan"))

(cl:defconstant +teal+ (dotnet:static <type-str> "Teal"))

(cl:defconstant +thistle+ (dotnet:static <type-str> "Thistle"))

(cl:defconstant +tomato+ (dotnet:static <type-str> "Tomato"))

(cl:defconstant +transparent+ (dotnet:static <type-str> "Transparent"))

(cl:defconstant +turquoise+ (dotnet:static <type-str> "Turquoise"))

(cl:defconstant +violet+ (dotnet:static <type-str> "Violet"))

(cl:defconstant +wheat+ (dotnet:static <type-str> "Wheat"))

(cl:defconstant +white+ (dotnet:static <type-str> "White"))

(cl:defconstant +white-smoke+ (dotnet:static <type-str> "WhiteSmoke"))

(cl:defconstant +yellow+ (dotnet:static <type-str> "Yellow"))

(cl:defconstant +yellow-green+ (dotnet:static <type-str> "YellowGreen"))

(cl:defun a (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "get_A"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf a) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "set_A" new-value))

(cl:defun b (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "get_B"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf b) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "set_B" new-value))

(cl:defun g (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "get_G"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf g) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "set_G" new-value))

(cl:defun packed-value (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "get_PackedValue"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf packed-value) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "set_PackedValue" new-value))

(cl:defun r (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "get_R"))

;; Note: Modifying a property of a value type (struct) via setf may only mutate
;; a boxed copy, leaving the original unchanged. Use caution with structs.
(cl:defun (cl:setf r) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "set_R" new-value))

(cl:defun * (value scale)
  "Master wrapper for Microsoft.Xna.Framework.Color.* overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)) (cl:numberp scale))
     (dotnet:static <type-str> "op_Multiply" value scale))
    ((cl:and (cl:numberp value) (cl:or (cl:null scale) (monoutils:dotnet-p scale)))
     (dotnet:static <type-str> "op_Multiply" value scale))
    ((cl:and (cl:or (cl:null value) (monoutils:dotnet-p value)) (cl:or (cl:null scale) (monoutils:dotnet-p scale)))
     (dotnet:static <type-str> "op_Multiply" value scale))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "*"
                    :supplied-args (cl:append (cl:list :value value) (cl:list :scale scale))))))

(cl:defun *-color-single (value scale)
  "Calls Microsoft.Xna.Framework.Color.* *(Color, Single) -> Color"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value) (cl:the (dotnet "System.Single") scale)))

(cl:defun *-single-color (scale value)
  "Calls Microsoft.Xna.Framework.Color.* *(Single, Color) -> Color"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "System.Single") scale) (cl:the (dotnet "Microsoft.Xna.Framework.Color") value)))

(cl:defun *-color-color (color1 color2)
  "Calls Microsoft.Xna.Framework.Color.* *(Color, Color) -> Color"
  (dotnet:static <type-str> "op_Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Color") color1) (cl:the (dotnet "Microsoft.Xna.Framework.Color") color2)))

(cl:defun = (a b)
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "Microsoft.Xna.Framework.Color") a) (cl:the (dotnet "Microsoft.Xna.Framework.Color") b)))

;; The following C# Microsoft.Xna.Framework.Color.Deconstruct overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   Deconstruct(out Byte&, out Byte&, out Byte&) -> Void
;;   Deconstruct(out Single&, out Single&, out Single&) -> Void
;;   Deconstruct(out Byte&, out Byte&, out Byte&, out Byte&) -> Void
;;   Deconstruct(out Single&, out Single&, out Single&, out Single&) -> Void

(cl:defun equals (obj obj)
  "Master wrapper for Microsoft.Xna.Framework.Color.Equals overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "Equals" obj))
    ((cl:and (cl:or (cl:null obj) (monoutils:dotnet-p obj)))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "Equals" obj))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :obj obj))))))

(cl:defun equals-object (obj obj)
  "Calls Microsoft.Xna.Framework.Color.Equals Equals(Object) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "Equals" obj))

(cl:defun equals-color (obj other)
  "Calls Microsoft.Xna.Framework.Color.Equals Equals(Color) -> Boolean"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "Equals" other))

(cl:defun from-non-premultiplied (vector cl:&optional (g cl:nil supplied-g) (b cl:nil supplied-b) (a cl:nil supplied-a))
  "Master wrapper for Microsoft.Xna.Framework.Color.FromNonPremultiplied overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:numberp vector) supplied-g (cl:numberp g) supplied-b (cl:numberp b) supplied-a (cl:numberp a))
     (dotnet:static <type-str> "FromNonPremultiplied" vector g b a))
    ((cl:and (cl:or (cl:null vector) (monoutils:dotnet-p vector)) (cl:not supplied-g) (cl:not supplied-b) (cl:not supplied-a))
     (dotnet:static <type-str> "FromNonPremultiplied" vector))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-COLOR"
                    :class-name <type-str>
                    :method-name "FromNonPremultiplied"
                    :supplied-args (cl:append (cl:list :vector vector) (cl:when supplied-g (cl:list :g g)) (cl:when supplied-b (cl:list :b b)) (cl:when supplied-a (cl:list :a a)))))))

(cl:defun from-non-premultiplied-vector4 (vector)
  "Calls Microsoft.Xna.Framework.Color.FromNonPremultiplied FromNonPremultiplied(Vector4) -> Color"
  (dotnet:static <type-str> "FromNonPremultiplied" (cl:the (dotnet "Microsoft.Xna.Framework.Vector4") vector)))

(cl:defun from-non-premultiplied-int32-int32-int32-int32 (r g b a)
  "Calls Microsoft.Xna.Framework.Color.FromNonPremultiplied FromNonPremultiplied(Int32, Int32, Int32, Int32) -> Color"
  (dotnet:static <type-str> "FromNonPremultiplied" (cl:the (dotnet "System.Int32") r) (cl:the (dotnet "System.Int32") g) (cl:the (dotnet "System.Int32") b) (cl:the (dotnet "System.Int32") a)))

(cl:defun get-hash-code (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "GetHashCode"))

(cl:defun implicit-cast (value)
  (dotnet:static <type-str> "op_Implicit" (cl:the (dotnet "System.Numerics.Vector4") value)))

(cl:defun lerp (value1 value2 amount)
  (dotnet:static <type-str> "Lerp" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Color") value2) (cl:the (dotnet "System.Single") amount)))

(cl:defun lerp-precise (value1 value2 amount)
  (dotnet:static <type-str> "LerpPrecise" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value1) (cl:the (dotnet "Microsoft.Xna.Framework.Color") value2) (cl:the (dotnet "System.Single") amount)))

(cl:defun multiply (value scale)
  (dotnet:static <type-str> "Multiply" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value) (cl:the (dotnet "System.Single") scale)))

(cl:defun multiply-alpha (value scale)
  (dotnet:static <type-str> "MultiplyAlpha" (cl:the (dotnet "Microsoft.Xna.Framework.Color") value) (cl:the (dotnet "System.Single") scale)))

(cl:defun not= (a b)
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "Microsoft.Xna.Framework.Color") a) (cl:the (dotnet "Microsoft.Xna.Framework.Color") b)))

(cl:defun to-string (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "ToString"))

(cl:defun to-vector3 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "ToVector3"))

(cl:defun to-vector4 (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Color") obj) "ToVector4"))

