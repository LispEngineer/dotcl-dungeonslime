;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Graphics.Texture2D
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :microsoft-xna-framework-graphics-texture2-d)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Graphics.Texture2D"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Graphics.Texture2D")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new (graphics-device width height cl:&optional (mipmap cl:nil supplied-mipmap) (format cl:nil supplied-format) (array-size cl:nil supplied-array-size) (shared cl:nil supplied-shared) (array-size2 cl:nil supplied-array-size2))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.Texture2D constructor overloads. Dispatches at runtime.

new(GraphicsDevice, Int32, Int32)

new(GraphicsDevice, Int32, Int32, Boolean, SurfaceFormat)

new(GraphicsDevice, Int32, Int32, Boolean, SurfaceFormat, Int32)

new(GraphicsDevice, Int32, Int32, Boolean, SurfaceFormat, Texture2D+SurfaceType, Boolean, Int32)
"
  (cl:cond
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:numberp width) (cl:numberp height) supplied-mipmap (cl:typep mipmap 'cl:boolean) supplied-format (cl:or (cl:null format) (dotnet:is-instance-of format "Microsoft.Xna.Framework.Graphics.SurfaceFormat")) supplied-array-size (cl:or (cl:null array-size) (dotnet:is-instance-of array-size "Microsoft.Xna.Framework.Graphics.Texture2D+SurfaceType")) supplied-shared (cl:typep shared 'cl:boolean) supplied-array-size2 (cl:numberp array-size2))
     (dotnet:new <type-str> graphics-device width height mipmap format array-size shared array-size2))
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:numberp width) (cl:numberp height) supplied-mipmap (cl:typep mipmap 'cl:boolean) supplied-format (cl:or (cl:null format) (dotnet:is-instance-of format "Microsoft.Xna.Framework.Graphics.SurfaceFormat")) supplied-array-size (cl:numberp array-size) (cl:not supplied-shared) (cl:not supplied-array-size2))
     (dotnet:new <type-str> graphics-device width height mipmap format array-size))
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:numberp width) (cl:numberp height) supplied-mipmap (cl:typep mipmap 'cl:boolean) supplied-format (cl:or (cl:null format) (dotnet:is-instance-of format "Microsoft.Xna.Framework.Graphics.SurfaceFormat")) (cl:not supplied-array-size) (cl:not supplied-shared) (cl:not supplied-array-size2))
     (dotnet:new <type-str> graphics-device width height mipmap format))
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:numberp width) (cl:numberp height) (cl:not supplied-mipmap) (cl:not supplied-format) (cl:not supplied-array-size) (cl:not supplied-shared) (cl:not supplied-array-size2))
     (dotnet:new <type-str> graphics-device width height))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:list :graphics-device graphics-device) (cl:list :width width) (cl:list :height height) (cl:when supplied-mipmap (cl:list :mipmap mipmap)) (cl:when supplied-format (cl:list :format format)) (cl:when supplied-array-size (cl:list :array-size array-size)) (cl:when supplied-shared (cl:list :shared shared)) (cl:when supplied-array-size2 (cl:list :array-size2 array-size2)))))))

(cl:defun bounds (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "get_Bounds"))

(cl:defun height (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "get_Height"))

(cl:defun width (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "get_Width"))

(cl:defun from-file (graphics-device path cl:&optional (color-processor cl:nil supplied-color-processor))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.Texture2D.FromFile overloads. Dispatches at runtime.

FromFile(GraphicsDevice, String) -> Texture2D

FromFile(GraphicsDevice, String, Byte[]]) -> Texture2D
"
  (cl:cond
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:stringp path) supplied-color-processor (cl:or (cl:null color-processor) (dotnet:is-instance-of color-processor "System.Action`1[[System.Byte[], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e")))
     (dotnet:static <type-str> "FromFile" graphics-device path color-processor))
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:stringp path) (cl:not supplied-color-processor))
     (dotnet:static <type-str> "FromFile" graphics-device path))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D"
                    :class-name <type-str>
                    :method-name "FromFile"
                    :supplied-args (cl:append (cl:list :graphics-device graphics-device) (cl:list :path path) (cl:when supplied-color-processor (cl:list :color-processor color-processor)))))))

(cl:defun from-stream (graphics-device stream cl:&optional (color-processor cl:nil supplied-color-processor))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.Texture2D.FromStream overloads. Dispatches at runtime.

FromStream(GraphicsDevice, Stream) -> Texture2D

FromStream(GraphicsDevice, Stream, Byte[]]) -> Texture2D
"
  (cl:cond
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:or (cl:null stream) (dotnet:is-instance-of stream "System.IO.Stream")) supplied-color-processor (cl:or (cl:null color-processor) (dotnet:is-instance-of color-processor "System.Action`1[[System.Byte[], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e")))
     (dotnet:static <type-str> "FromStream" graphics-device stream color-processor))
    ((cl:and (cl:or (cl:null graphics-device) (dotnet:is-instance-of graphics-device "Microsoft.Xna.Framework.Graphics.GraphicsDevice")) (cl:or (cl:null stream) (dotnet:is-instance-of stream "System.IO.Stream")) (cl:not supplied-color-processor))
     (dotnet:static <type-str> "FromStream" graphics-device stream))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D"
                    :class-name <type-str>
                    :method-name "FromStream"
                    :supplied-args (cl:append (cl:list :graphics-device graphics-device) (cl:list :stream stream) (cl:when supplied-color-processor (cl:list :color-processor color-processor)))))))

(cl:defun get-data (type obj! data cl:&optional (start-index cl:nil supplied-start-index) (element-count cl:nil supplied-element-count) (start-index2 cl:nil supplied-start-index2) (element-count2 cl:nil supplied-element-count2) (element-count3 cl:nil supplied-element-count3))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.Texture2D.GetData overloads. Dispatches at runtime.

GetData(T[]) -> Void

GetData(T[], Int32, Int32) -> Void

GetData(Int32, Rectangle], T[], Int32, Int32) -> Void

GetData(Int32, Int32, Rectangle], T[], Int32, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:numberp data) supplied-start-index (cl:numberp start-index) supplied-element-count (cl:or (cl:null element-count) (dotnet:is-instance-of element-count "Microsoft.Xna.Framework.Rectangle")) supplied-start-index2 (cl:or (cl:null start-index2) (dotnet:is-instance-of start-index2 "T[]")) supplied-element-count2 (cl:numberp element-count2) supplied-element-count3 (cl:numberp element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "GetData" (cl:list type) data start-index element-count start-index2 element-count2 element-count3))
    ((cl:and (cl:numberp data) supplied-start-index (cl:or (cl:null start-index) (dotnet:is-instance-of start-index "Microsoft.Xna.Framework.Rectangle")) supplied-element-count (cl:or (cl:null element-count) (dotnet:is-instance-of element-count "T[]")) supplied-start-index2 (cl:numberp start-index2) supplied-element-count2 (cl:numberp element-count2) (cl:not supplied-element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "GetData" (cl:list type) data start-index element-count start-index2 element-count2))
    ((cl:and (cl:or (cl:null data) (dotnet:is-instance-of data "T[]")) supplied-start-index (cl:numberp start-index) supplied-element-count (cl:numberp element-count) (cl:not supplied-start-index2) (cl:not supplied-element-count2) (cl:not supplied-element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "GetData" (cl:list type) data start-index element-count))
    ((cl:and (cl:or (cl:null data) (dotnet:is-instance-of data "T[]")) (cl:not supplied-start-index) (cl:not supplied-element-count) (cl:not supplied-start-index2) (cl:not supplied-element-count2) (cl:not supplied-element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "GetData" (cl:list type) data))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D"
                    :class-name <type-str>
                    :method-name "GetData"
                    :supplied-args (cl:append (cl:list :data data) (cl:when supplied-start-index (cl:list :start-index start-index)) (cl:when supplied-element-count (cl:list :element-count element-count)) (cl:when supplied-start-index2 (cl:list :start-index2 start-index2)) (cl:when supplied-element-count2 (cl:list :element-count2 element-count2)) (cl:when supplied-element-count3 (cl:list :element-count3 element-count3)))))))

(cl:defun reload (obj! texture-stream)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "Reload" texture-stream))

(cl:defun save-as-jpeg (obj! stream width height)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "SaveAsJpeg" stream width height))

(cl:defun save-as-png (obj! stream width height)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "SaveAsPng" stream width height))

(cl:defun set-data (type obj! data cl:&optional (start-index cl:nil supplied-start-index) (element-count cl:nil supplied-element-count) (start-index2 cl:nil supplied-start-index2) (element-count2 cl:nil supplied-element-count2) (element-count3 cl:nil supplied-element-count3))
  "Master wrapper for Microsoft.Xna.Framework.Graphics.Texture2D.SetData overloads. Dispatches at runtime.

SetData(T[]) -> Void

SetData(T[], Int32, Int32) -> Void

SetData(Int32, Rectangle], T[], Int32, Int32) -> Void

SetData(Int32, Int32, Rectangle], T[], Int32, Int32) -> Void
"
  (cl:cond
    ((cl:and (cl:numberp data) supplied-start-index (cl:numberp start-index) supplied-element-count (cl:or (cl:null element-count) (dotnet:is-instance-of element-count "Microsoft.Xna.Framework.Rectangle")) supplied-start-index2 (cl:or (cl:null start-index2) (dotnet:is-instance-of start-index2 "T[]")) supplied-element-count2 (cl:numberp element-count2) supplied-element-count3 (cl:numberp element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "SetData" (cl:list type) data start-index element-count start-index2 element-count2 element-count3))
    ((cl:and (cl:numberp data) supplied-start-index (cl:or (cl:null start-index) (dotnet:is-instance-of start-index "Microsoft.Xna.Framework.Rectangle")) supplied-element-count (cl:or (cl:null element-count) (dotnet:is-instance-of element-count "T[]")) supplied-start-index2 (cl:numberp start-index2) supplied-element-count2 (cl:numberp element-count2) (cl:not supplied-element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "SetData" (cl:list type) data start-index element-count start-index2 element-count2))
    ((cl:and (cl:or (cl:null data) (dotnet:is-instance-of data "T[]")) supplied-start-index (cl:numberp start-index) supplied-element-count (cl:numberp element-count) (cl:not supplied-start-index2) (cl:not supplied-element-count2) (cl:not supplied-element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "SetData" (cl:list type) data start-index element-count))
    ((cl:and (cl:or (cl:null data) (dotnet:is-instance-of data "T[]")) (cl:not supplied-start-index) (cl:not supplied-element-count) (cl:not supplied-start-index2) (cl:not supplied-element-count2) (cl:not supplied-element-count3))
     (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Graphics.Texture2D") obj!) "SetData" (cl:list type) data))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-GRAPHICS-TEXTURE2-D"
                    :class-name <type-str>
                    :method-name "SetData"
                    :supplied-args (cl:append (cl:list :data data) (cl:when supplied-start-index (cl:list :start-index start-index)) (cl:when supplied-element-count (cl:list :element-count element-count)) (cl:when supplied-start-index2 (cl:list :start-index2 start-index2)) (cl:when supplied-element-count2 (cl:list :element-count2 element-count2)) (cl:when supplied-element-count3 (cl:list :element-count3 element-count3)))))))

