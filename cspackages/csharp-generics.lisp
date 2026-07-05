;;; Generated automatically. Do not edit.
;;; Generator Version: 35
;;; Creation Date: 2026-07-05T18:06:58Z

(cl:in-package :csharp-generics)

;;; Unified CLOS generic functions dispatching on C# runtime type.
;;; Each defmethod below specializes on a literal simple-name symbol
;;; computed at generation time -- see doc/make-everything-defgeneric.md's
;;; "Static specializer collision caveat" before relying on this with
;;; two same-simple-name classes in one batch.

(cl:defgeneric days (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: days (system-time-span:days)
"))

(cl:defgeneric hours (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: hours (system-time-span:hours)
"))

(cl:defgeneric microseconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: microseconds (system-time-span:microseconds)
"))

(cl:defgeneric milliseconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: milliseconds (system-time-span:milliseconds)
"))

(cl:defgeneric minutes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: minutes (system-time-span:minutes)
"))

(cl:defgeneric nanoseconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: nanoseconds (system-time-span:nanoseconds)
"))

(cl:defgeneric seconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: seconds (system-time-span:seconds)
"))

(cl:defgeneric ticks (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: ticks (system-time-span:ticks)
"))

(cl:defgeneric total-days (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-days (system-time-span:total-days)
"))

(cl:defgeneric total-hours (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-hours (system-time-span:total-hours)
"))

(cl:defgeneric total-microseconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-microseconds (system-time-span:total-microseconds)
"))

(cl:defgeneric total-milliseconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-milliseconds (system-time-span:total-milliseconds)
"))

(cl:defgeneric total-minutes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-minutes (system-time-span:total-minutes)
"))

(cl:defgeneric total-nanoseconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-nanoseconds (system-time-span:total-nanoseconds)
"))

(cl:defgeneric total-seconds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: total-seconds (system-time-span:total-seconds)
"))

(cl:defgeneric add (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: add (system-time-span:add)
Microsoft.Xna.Framework.Input.Touch.TouchCollection: add (microsoft-xna-framework-input-touch-touch-collection:add)
System.Collections.Generic.List`1: add (system-collections-generic-list-1:add)
"))

(cl:defgeneric compare-to (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: compare-to (system-time-span:compare-to)
System.Boolean: compare-to (system-boolean:compare-to)
System.Single: compare-to (system-single:compare-to)
System.Double: compare-to (system-double:compare-to)
"))

(cl:defgeneric divide (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: divide (system-time-span:divide)
"))

(cl:defgeneric duration (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: duration (system-time-span:duration)
Microsoft.Xna.Framework.Audio.SoundEffect: duration (microsoft-xna-framework-audio-sound-effect:duration)
Microsoft.Xna.Framework.Media.Song: duration (microsoft-xna-framework-media-song:duration)
"))

(cl:defgeneric equals (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: equals (system-time-span:equals)
System.Uri: equals (system-uri:equals)
System.Boolean: equals (system-boolean:equals)
System.Type: equals (system-type:equals)
System.Object: equals (system-object:equals)
System.Single: equals (system-single:equals)
System.Double: equals (system-double:equals)
System.Reflection.MemberInfo: equals (system-reflection-member-info:equals)
Microsoft.Xna.Framework.Vector2: equals (microsoft-xna-framework-vector2:equals)
Microsoft.Xna.Framework.Rectangle: equals (microsoft-xna-framework-rectangle:equals)
Microsoft.Xna.Framework.Point: equals (microsoft-xna-framework-point:equals)
Microsoft.Xna.Framework.Input.KeyboardState: equals (microsoft-xna-framework-input-keyboard-state:equals)
Microsoft.Xna.Framework.Input.MouseState: equals (microsoft-xna-framework-input-mouse-state:equals)
Microsoft.Xna.Framework.Input.GamePadState: equals (microsoft-xna-framework-input-game-pad-state:equals)
Microsoft.Xna.Framework.Input.GamePadDPad: equals (microsoft-xna-framework-input-game-pad-d-pad:equals)
Microsoft.Xna.Framework.Input.GamePadThumbSticks: equals (microsoft-xna-framework-input-game-pad-thumb-sticks:equals)
Microsoft.Xna.Framework.Input.GamePadTriggers: equals (microsoft-xna-framework-input-game-pad-triggers:equals)
Microsoft.Xna.Framework.Input.Touch.TouchLocation: equals (microsoft-xna-framework-input-touch-touch-location:equals)
Microsoft.Xna.Framework.Color: equals (microsoft-xna-framework-color:equals)
Microsoft.Xna.Framework.Media.Song: equals (microsoft-xna-framework-media-song:equals)
RenderingLibrary.Graphics.Renderer: equals (rendering-library-graphics-renderer:equals)
"))

(cl:defgeneric get-hash-code (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: get-hash-code (system-time-span:get-hash-code)
System.Uri: get-hash-code (system-uri:get-hash-code)
System.Boolean: get-hash-code (system-boolean:get-hash-code)
System.Type: get-hash-code (system-type:get-hash-code)
System.Object: get-hash-code (system-object:get-hash-code)
System.Single: get-hash-code (system-single:get-hash-code)
System.Double: get-hash-code (system-double:get-hash-code)
System.Reflection.MemberInfo: get-hash-code (system-reflection-member-info:get-hash-code)
Microsoft.Xna.Framework.Vector2: get-hash-code (microsoft-xna-framework-vector2:get-hash-code)
Microsoft.Xna.Framework.Rectangle: get-hash-code (microsoft-xna-framework-rectangle:get-hash-code)
Microsoft.Xna.Framework.Point: get-hash-code (microsoft-xna-framework-point:get-hash-code)
Microsoft.Xna.Framework.Input.KeyboardState: get-hash-code (microsoft-xna-framework-input-keyboard-state:get-hash-code)
Microsoft.Xna.Framework.Input.MouseState: get-hash-code (microsoft-xna-framework-input-mouse-state:get-hash-code)
Microsoft.Xna.Framework.Input.GamePadState: get-hash-code (microsoft-xna-framework-input-game-pad-state:get-hash-code)
Microsoft.Xna.Framework.Input.GamePadDPad: get-hash-code (microsoft-xna-framework-input-game-pad-d-pad:get-hash-code)
Microsoft.Xna.Framework.Input.GamePadThumbSticks: get-hash-code (microsoft-xna-framework-input-game-pad-thumb-sticks:get-hash-code)
Microsoft.Xna.Framework.Input.GamePadTriggers: get-hash-code (microsoft-xna-framework-input-game-pad-triggers:get-hash-code)
Microsoft.Xna.Framework.Input.Touch.TouchLocation: get-hash-code (microsoft-xna-framework-input-touch-touch-location:get-hash-code)
Microsoft.Xna.Framework.Color: get-hash-code (microsoft-xna-framework-color:get-hash-code)
Microsoft.Xna.Framework.Media.Song: get-hash-code (microsoft-xna-framework-media-song:get-hash-code)
"))

(cl:defgeneric multiply (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: multiply (system-time-span:multiply)
"))

(cl:defgeneric negate (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: negate (system-time-span:negate)
"))

(cl:defgeneric subtract (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: subtract (system-time-span:subtract)
"))

(cl:defgeneric to-string (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.TimeSpan: to-string (system-time-span:to-string)
System.Uri: to-string (system-uri:to-string)
System.AppDomain: to-string (system-app-domain:to-string)
System.Boolean: to-string (system-boolean:to-string)
System.Type: to-string (system-type:to-string)
System.Object: to-string (system-object:to-string)
System.Single: to-string (system-single:to-string)
System.Double: to-string (system-double:to-string)
Microsoft.Xna.Framework.Vector2: to-string (microsoft-xna-framework-vector2:to-string)
Microsoft.Xna.Framework.Rectangle: to-string (microsoft-xna-framework-rectangle:to-string)
Microsoft.Xna.Framework.Point: to-string (microsoft-xna-framework-point:to-string)
Microsoft.Xna.Framework.Input.MouseState: to-string (microsoft-xna-framework-input-mouse-state:to-string)
Microsoft.Xna.Framework.Input.GamePadState: to-string (microsoft-xna-framework-input-game-pad-state:to-string)
Microsoft.Xna.Framework.Input.GamePadDPad: to-string (microsoft-xna-framework-input-game-pad-d-pad:to-string)
Microsoft.Xna.Framework.Input.GamePadThumbSticks: to-string (microsoft-xna-framework-input-game-pad-thumb-sticks:to-string)
Microsoft.Xna.Framework.Input.GamePadTriggers: to-string (microsoft-xna-framework-input-game-pad-triggers:to-string)
Microsoft.Xna.Framework.Input.Touch.TouchLocation: to-string (microsoft-xna-framework-input-touch-touch-location:to-string)
Microsoft.Xna.Framework.Color: to-string (microsoft-xna-framework-color:to-string)
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: to-string (microsoft-xna-framework-graphics-sprite-font-glyph:to-string)
Gum.Forms.Controls.FrameworkElement: to-string (gum-forms-controls-framework-element:to-string)
"))

(cl:defgeneric value__ (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.UriKind: value__ (system-uri-kind:value__)
Microsoft.Xna.Framework.Input.Keys: value__ (microsoft-xna-framework-input-keys:value__)
Microsoft.Xna.Framework.Input.ButtonState: value__ (microsoft-xna-framework-input-button-state:value__)
Microsoft.Xna.Framework.Input.Buttons: value__ (microsoft-xna-framework-input-buttons:value__)
Microsoft.Xna.Framework.Graphics.SpriteEffects: value__ (microsoft-xna-framework-graphics-sprite-effects:value__)
Microsoft.Xna.Framework.Graphics.SpriteSortMode: value__ (microsoft-xna-framework-graphics-sprite-sort-mode:value__)
Microsoft.Xna.Framework.PlayerIndex: value__ (microsoft-xna-framework-player-index:value__)
Microsoft.Xna.Framework.Audio.SoundState: value__ (microsoft-xna-framework-audio-sound-state:value__)
Gum.Wireframe.Anchor: value__ (gum-wireframe-anchor:value__)
Gum.Wireframe.Dock: value__ (gum-wireframe-dock:value__)
Gum.Forms.DefaultVisualsVersion: value__ (gum-forms-default-visuals-version:value__)
"))

(cl:defgeneric absolute-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: absolute-path (system-uri:absolute-path)
"))

(cl:defgeneric absolute-uri (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: absolute-uri (system-uri:absolute-uri)
"))

(cl:defgeneric authority (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: authority (system-uri:authority)
"))

(cl:defgeneric dns-safe-host (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: dns-safe-host (system-uri:dns-safe-host)
"))

(cl:defgeneric fragment (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: fragment (system-uri:fragment)
"))

(cl:defgeneric host (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: host (system-uri:host)
"))

(cl:defgeneric host-name-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: host-name-type (system-uri:host-name-type)
"))

(cl:defgeneric idn-host (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: idn-host (system-uri:idn-host)
"))

(cl:defgeneric absolute-uri? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: absolute-uri? (system-uri:absolute-uri?)
"))

(cl:defgeneric default-port? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: default-port? (system-uri:default-port?)
"))

(cl:defgeneric file? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: file? (system-uri:file?)
"))

(cl:defgeneric loopback? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: loopback? (system-uri:loopback?)
"))

(cl:defgeneric unc? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: unc? (system-uri:unc?)
"))

(cl:defgeneric local-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: local-path (system-uri:local-path)
"))

(cl:defgeneric original-string (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: original-string (system-uri:original-string)
"))

(cl:defgeneric path-and-query (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: path-and-query (system-uri:path-and-query)
"))

(cl:defgeneric port (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: port (system-uri:port)
"))

(cl:defgeneric query (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: query (system-uri:query)
"))

(cl:defgeneric scheme (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: scheme (system-uri:scheme)
"))

(cl:defgeneric segments (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: segments (system-uri:segments)
"))

(cl:defgeneric user-escaped (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: user-escaped (system-uri:user-escaped)
"))

(cl:defgeneric user-info (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: user-info (system-uri:user-info)
"))

(cl:defgeneric canonicalize (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: canonicalize (system-uri:canonicalize)
"))

(cl:defgeneric check-security (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: check-security (system-uri:check-security)
"))

(cl:defgeneric escape (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: escape (system-uri:escape)
"))

(cl:defgeneric get-components (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: get-components (system-uri:get-components)
"))

(cl:defgeneric get-left-part (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: get-left-part (system-uri:get-left-part)
"))

(cl:defgeneric get-object-data (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: get-object-data (system-uri:get-object-data)
"))

(cl:defgeneric bad-file-system-character? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: bad-file-system-character? (system-uri:bad-file-system-character?)
"))

(cl:defgeneric base-of? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: base-of? (system-uri:base-of?)
"))

(cl:defgeneric reserved-character? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: reserved-character? (system-uri:reserved-character?)
"))

(cl:defgeneric well-formed-original-string? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: well-formed-original-string? (system-uri:well-formed-original-string?)
"))

(cl:defgeneric make-relative (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: make-relative (system-uri:make-relative)
"))

(cl:defgeneric make-relative-uri (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: make-relative-uri (system-uri:make-relative-uri)
"))

(cl:defgeneric parse (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: parse (system-uri:parse)
"))

(cl:defgeneric unescape (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Uri: unescape (system-uri:unescape)
"))

(cl:defgeneric base-directory (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: base-directory (system-app-domain:base-directory)
"))

(cl:defgeneric dynamic-directory (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: dynamic-directory (system-app-domain:dynamic-directory)
"))

(cl:defgeneric friendly-name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: friendly-name (system-app-domain:friendly-name)
"))

(cl:defgeneric id (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: id (system-app-domain:id)
Microsoft.Xna.Framework.Input.Touch.TouchLocation: id (microsoft-xna-framework-input-touch-touch-location:id)
"))

(cl:defgeneric fully-trusted? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: fully-trusted? (system-app-domain:fully-trusted?)
"))

(cl:defgeneric homogenous? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: homogenous? (system-app-domain:homogenous?)
"))

(cl:defgeneric monitoring-survived-memory-size (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: monitoring-survived-memory-size (system-app-domain:monitoring-survived-memory-size)
"))

(cl:defgeneric monitoring-total-allocated-memory-size (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: monitoring-total-allocated-memory-size (system-app-domain:monitoring-total-allocated-memory-size)
"))

(cl:defgeneric monitoring-total-processor-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: monitoring-total-processor-time (system-app-domain:monitoring-total-processor-time)
"))

(cl:defgeneric permission-set (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: permission-set (system-app-domain:permission-set)
"))

(cl:defgeneric relative-search-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: relative-search-path (system-app-domain:relative-search-path)
"))

(cl:defgeneric setup-information (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: setup-information (system-app-domain:setup-information)
"))

(cl:defgeneric shadow-copy-files (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: shadow-copy-files (system-app-domain:shadow-copy-files)
"))

(cl:defgeneric append-private-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: append-private-path (system-app-domain:append-private-path)
"))

(cl:defgeneric apply-policy (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: apply-policy (system-app-domain:apply-policy)
"))

(cl:defgeneric clear-private-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: clear-private-path (system-app-domain:clear-private-path)
"))

(cl:defgeneric clear-shadow-copy-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: clear-shadow-copy-path (system-app-domain:clear-shadow-copy-path)
"))

(cl:defgeneric create-instance (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: create-instance (system-app-domain:create-instance)
Microsoft.Xna.Framework.Audio.SoundEffect: create-instance (microsoft-xna-framework-audio-sound-effect:create-instance)
"))

(cl:defgeneric create-instance-and-unwrap (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: create-instance-and-unwrap (system-app-domain:create-instance-and-unwrap)
"))

(cl:defgeneric create-instance-from (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: create-instance-from (system-app-domain:create-instance-from)
"))

(cl:defgeneric create-instance-from-and-unwrap (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: create-instance-from-and-unwrap (system-app-domain:create-instance-from-and-unwrap)
"))

(cl:defgeneric execute-assembly (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: execute-assembly (system-app-domain:execute-assembly)
"))

(cl:defgeneric execute-assembly-by-name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: execute-assembly-by-name (system-app-domain:execute-assembly-by-name)
"))

(cl:defgeneric get-assemblies (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: get-assemblies (system-app-domain:get-assemblies)
"))

(cl:defgeneric get-data (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: get-data (system-app-domain:get-data)
"))

(cl:defgeneric compatibility-switch-set? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: compatibility-switch-set? (system-app-domain:compatibility-switch-set?)
"))

(cl:defgeneric default-app-domain? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: default-app-domain? (system-app-domain:default-app-domain?)
"))

(cl:defgeneric finalizing-for-unload? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: finalizing-for-unload? (system-app-domain:finalizing-for-unload?)
"))

(cl:defgeneric load (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: load (system-app-domain:load)
"))

(cl:defgeneric reflection-only-get-assemblies (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: reflection-only-get-assemblies (system-app-domain:reflection-only-get-assemblies)
"))

(cl:defgeneric set-cache-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-cache-path (system-app-domain:set-cache-path)
"))

(cl:defgeneric set-data (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-data (system-app-domain:set-data)
"))

(cl:defgeneric set-dynamic-base (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-dynamic-base (system-app-domain:set-dynamic-base)
"))

(cl:defgeneric set-principal-policy (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-principal-policy (system-app-domain:set-principal-policy)
"))

(cl:defgeneric set-shadow-copy-files (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-shadow-copy-files (system-app-domain:set-shadow-copy-files)
"))

(cl:defgeneric set-shadow-copy-path (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-shadow-copy-path (system-app-domain:set-shadow-copy-path)
"))

(cl:defgeneric set-thread-principal (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.AppDomain: set-thread-principal (system-app-domain:set-thread-principal)
"))

(cl:defgeneric get-type-code (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Boolean: get-type-code (system-boolean:get-type-code)
System.Single: get-type-code (system-single:get-type-code)
System.Double: get-type-code (system-double:get-type-code)
"))

(cl:defgeneric assembly (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: assembly (system-type:assembly)
"))

(cl:defgeneric assembly-qualified-name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: assembly-qualified-name (system-type:assembly-qualified-name)
"))

(cl:defgeneric attributes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: attributes (system-type:attributes)
"))

(cl:defgeneric base-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: base-type (system-type:base-type)
"))

(cl:defgeneric contains-generic-parameters (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: contains-generic-parameters (system-type:contains-generic-parameters)
"))

(cl:defgeneric declaring-method (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: declaring-method (system-type:declaring-method)
"))

(cl:defgeneric declaring-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: declaring-type (system-type:declaring-type)
System.Reflection.MemberInfo: declaring-type (system-reflection-member-info:declaring-type)
"))

(cl:defgeneric full-name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: full-name (system-type:full-name)
"))

(cl:defgeneric generic-parameter-attributes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-parameter-attributes (system-type:generic-parameter-attributes)
"))

(cl:defgeneric generic-parameter-position (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-parameter-position (system-type:generic-parameter-position)
"))

(cl:defgeneric generic-type-arguments (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-type-arguments (system-type:generic-type-arguments)
"))

(cl:defgeneric guid (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: guid (system-type:guid)
"))

(cl:defgeneric has-element-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: has-element-type (system-type:has-element-type)
"))

(cl:defgeneric abstract? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: abstract? (system-type:abstract?)
"))

(cl:defgeneric ansi-class? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: ansi-class? (system-type:ansi-class?)
"))

(cl:defgeneric array? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: array? (system-type:array?)
"))

(cl:defgeneric auto-class? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: auto-class? (system-type:auto-class?)
"))

(cl:defgeneric auto-layout? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: auto-layout? (system-type:auto-layout?)
"))

(cl:defgeneric by-ref? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: by-ref? (system-type:by-ref?)
"))

(cl:defgeneric by-ref-like? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: by-ref-like? (system-type:by-ref-like?)
"))

(cl:defgeneric class? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: class? (system-type:class?)
"))

(cl:defgeneric com-object? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: com-object? (system-type:com-object?)
"))

(cl:defgeneric constructed-generic-type? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: constructed-generic-type? (system-type:constructed-generic-type?)
"))

(cl:defgeneric contextful? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: contextful? (system-type:contextful?)
"))

(cl:defgeneric enum? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: enum? (system-type:enum?)
"))

(cl:defgeneric explicit-layout? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: explicit-layout? (system-type:explicit-layout?)
"))

(cl:defgeneric function-pointer? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: function-pointer? (system-type:function-pointer?)
"))

(cl:defgeneric generic-method-parameter? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-method-parameter? (system-type:generic-method-parameter?)
"))

(cl:defgeneric generic-parameter? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-parameter? (system-type:generic-parameter?)
"))

(cl:defgeneric generic-type? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-type? (system-type:generic-type?)
"))

(cl:defgeneric generic-type-definition? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-type-definition? (system-type:generic-type-definition?)
"))

(cl:defgeneric generic-type-parameter? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: generic-type-parameter? (system-type:generic-type-parameter?)
"))

(cl:defgeneric import? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: import? (system-type:import?)
"))

(cl:defgeneric interface? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: interface? (system-type:interface?)
"))

(cl:defgeneric layout-sequential? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: layout-sequential? (system-type:layout-sequential?)
"))

(cl:defgeneric marshal-by-ref? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: marshal-by-ref? (system-type:marshal-by-ref?)
"))

(cl:defgeneric nested? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested? (system-type:nested?)
"))

(cl:defgeneric nested-assembly? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested-assembly? (system-type:nested-assembly?)
"))

(cl:defgeneric nested-fam-and-assem? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested-fam-and-assem? (system-type:nested-fam-and-assem?)
"))

(cl:defgeneric nested-family? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested-family? (system-type:nested-family?)
"))

(cl:defgeneric nested-fam-or-assem? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested-fam-or-assem? (system-type:nested-fam-or-assem?)
"))

(cl:defgeneric nested-private? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested-private? (system-type:nested-private?)
"))

(cl:defgeneric nested-public? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: nested-public? (system-type:nested-public?)
"))

(cl:defgeneric not-public? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: not-public? (system-type:not-public?)
"))

(cl:defgeneric pointer? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: pointer? (system-type:pointer?)
"))

(cl:defgeneric primitive? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: primitive? (system-type:primitive?)
"))

(cl:defgeneric public? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: public? (system-type:public?)
"))

(cl:defgeneric sealed? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: sealed? (system-type:sealed?)
"))

(cl:defgeneric security-critical? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: security-critical? (system-type:security-critical?)
"))

(cl:defgeneric security-safe-critical? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: security-safe-critical? (system-type:security-safe-critical?)
"))

(cl:defgeneric security-transparent? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: security-transparent? (system-type:security-transparent?)
"))

(cl:defgeneric serializable? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: serializable? (system-type:serializable?)
"))

(cl:defgeneric signature-type? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: signature-type? (system-type:signature-type?)
"))

(cl:defgeneric special-name? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: special-name? (system-type:special-name?)
"))

(cl:defgeneric sz-array? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: sz-array? (system-type:sz-array?)
"))

(cl:defgeneric type-definition? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: type-definition? (system-type:type-definition?)
"))

(cl:defgeneric unicode-class? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: unicode-class? (system-type:unicode-class?)
"))

(cl:defgeneric unmanaged-function-pointer? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: unmanaged-function-pointer? (system-type:unmanaged-function-pointer?)
"))

(cl:defgeneric value-type? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: value-type? (system-type:value-type?)
"))

(cl:defgeneric variable-bound-array? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: variable-bound-array? (system-type:variable-bound-array?)
"))

(cl:defgeneric visible? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: visible? (system-type:visible?)
Gum.Forms.Controls.FrameworkElement: visible? (gum-forms-controls-framework-element:visible?)
"))

(cl:defgeneric member-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: member-type (system-type:member-type)
System.Reflection.MemberInfo: member-type (system-reflection-member-info:member-type)
"))

(cl:defgeneric module (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: module (system-type:module)
System.Reflection.MemberInfo: module (system-reflection-member-info:module)
"))

(cl:defgeneric namespace (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: namespace (system-type:namespace)
"))

(cl:defgeneric reflected-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: reflected-type (system-type:reflected-type)
System.Reflection.MemberInfo: reflected-type (system-reflection-member-info:reflected-type)
"))

(cl:defgeneric struct-layout-attribute (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: struct-layout-attribute (system-type:struct-layout-attribute)
"))

(cl:defgeneric type-handle (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: type-handle (system-type:type-handle)
"))

(cl:defgeneric type-initializer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: type-initializer (system-type:type-initializer)
"))

(cl:defgeneric underlying-system-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: underlying-system-type (system-type:underlying-system-type)
"))

(cl:defgeneric find-interfaces (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: find-interfaces (system-type:find-interfaces)
"))

(cl:defgeneric find-members (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: find-members (system-type:find-members)
"))

(cl:defgeneric get-array-rank (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-array-rank (system-type:get-array-rank)
"))

(cl:defgeneric get-attribute-flags-impl (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-attribute-flags-impl (system-type:get-attribute-flags-impl)
"))

(cl:defgeneric get-constructor (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-constructor (system-type:get-constructor)
"))

(cl:defgeneric get-constructor-impl (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-constructor-impl (system-type:get-constructor-impl)
"))

(cl:defgeneric get-constructors (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-constructors (system-type:get-constructors)
"))

(cl:defgeneric get-default-members (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-default-members (system-type:get-default-members)
"))

(cl:defgeneric get-element-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-element-type (system-type:get-element-type)
"))

(cl:defgeneric get-enum-name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-enum-name (system-type:get-enum-name)
"))

(cl:defgeneric get-enum-names (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-enum-names (system-type:get-enum-names)
"))

(cl:defgeneric get-enum-underlying-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-enum-underlying-type (system-type:get-enum-underlying-type)
"))

(cl:defgeneric get-enum-values (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-enum-values (system-type:get-enum-values)
"))

(cl:defgeneric get-enum-values-as-underlying-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-enum-values-as-underlying-type (system-type:get-enum-values-as-underlying-type)
"))

(cl:defgeneric get-event (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-event (system-type:get-event)
"))

(cl:defgeneric get-events (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-events (system-type:get-events)
"))

(cl:defgeneric get-field (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-field (system-type:get-field)
"))

(cl:defgeneric get-fields (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-fields (system-type:get-fields)
"))

(cl:defgeneric get-function-pointer-calling-conventions (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-function-pointer-calling-conventions (system-type:get-function-pointer-calling-conventions)
"))

(cl:defgeneric get-function-pointer-parameter-types (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-function-pointer-parameter-types (system-type:get-function-pointer-parameter-types)
"))

(cl:defgeneric get-function-pointer-return-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-function-pointer-return-type (system-type:get-function-pointer-return-type)
"))

(cl:defgeneric get-generic-arguments (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-generic-arguments (system-type:get-generic-arguments)
"))

(cl:defgeneric get-generic-parameter-constraints (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-generic-parameter-constraints (system-type:get-generic-parameter-constraints)
"))

(cl:defgeneric get-generic-type-definition (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-generic-type-definition (system-type:get-generic-type-definition)
"))

(cl:defgeneric get-interface (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-interface (system-type:get-interface)
"))

(cl:defgeneric get-interface-map (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-interface-map (system-type:get-interface-map)
"))

(cl:defgeneric get-interfaces (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-interfaces (system-type:get-interfaces)
"))

(cl:defgeneric get-member (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-member (system-type:get-member)
"))

(cl:defgeneric get-members (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-members (system-type:get-members)
"))

(cl:defgeneric get-member-with-same-metadata-definition-as (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-member-with-same-metadata-definition-as (system-type:get-member-with-same-metadata-definition-as)
"))

(cl:defgeneric get-method (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-method (system-type:get-method)
"))

(cl:defgeneric get-method-impl (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-method-impl (system-type:get-method-impl)
"))

(cl:defgeneric get-methods (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-methods (system-type:get-methods)
"))

(cl:defgeneric get-nested-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-nested-type (system-type:get-nested-type)
"))

(cl:defgeneric get-nested-types (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-nested-types (system-type:get-nested-types)
"))

(cl:defgeneric get-optional-custom-modifiers (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-optional-custom-modifiers (system-type:get-optional-custom-modifiers)
"))

(cl:defgeneric get-properties (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-properties (system-type:get-properties)
"))

(cl:defgeneric get-property (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-property (system-type:get-property)
"))

(cl:defgeneric get-property-impl (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-property-impl (system-type:get-property-impl)
"))

(cl:defgeneric get-required-custom-modifiers (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-required-custom-modifiers (system-type:get-required-custom-modifiers)
"))

(cl:defgeneric get-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-type (system-type:get-type)
System.Object: get-type (system-object:get-type)
"))

(cl:defgeneric get-type-code-impl (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: get-type-code-impl (system-type:get-type-code-impl)
"))

(cl:defgeneric has-element-type-impl (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: has-element-type-impl (system-type:has-element-type-impl)
"))

(cl:defgeneric invoke-member (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: invoke-member (system-type:invoke-member)
"))

(cl:defgeneric array-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: array-impl? (system-type:array-impl?)
"))

(cl:defgeneric assignable-from? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: assignable-from? (system-type:assignable-from?)
"))

(cl:defgeneric assignable-to? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: assignable-to? (system-type:assignable-to?)
"))

(cl:defgeneric by-ref-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: by-ref-impl? (system-type:by-ref-impl?)
"))

(cl:defgeneric com-object-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: com-object-impl? (system-type:com-object-impl?)
"))

(cl:defgeneric contextful-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: contextful-impl? (system-type:contextful-impl?)
"))

(cl:defgeneric enum-defined? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: enum-defined? (system-type:enum-defined?)
"))

(cl:defgeneric equivalent-to? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: equivalent-to? (system-type:equivalent-to?)
"))

(cl:defgeneric instance-of-type? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: instance-of-type? (system-type:instance-of-type?)
"))

(cl:defgeneric marshal-by-ref-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: marshal-by-ref-impl? (system-type:marshal-by-ref-impl?)
"))

(cl:defgeneric pointer-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: pointer-impl? (system-type:pointer-impl?)
"))

(cl:defgeneric primitive-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: primitive-impl? (system-type:primitive-impl?)
"))

(cl:defgeneric subclass-of? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: subclass-of? (system-type:subclass-of?)
"))

(cl:defgeneric value-type-impl? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: value-type-impl? (system-type:value-type-impl?)
"))

(cl:defgeneric make-array-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: make-array-type (system-type:make-array-type)
"))

(cl:defgeneric make-by-ref-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: make-by-ref-type (system-type:make-by-ref-type)
"))

(cl:defgeneric make-pointer-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Type: make-pointer-type (system-type:make-pointer-type)
"))

(cl:defgeneric finalize (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Object: finalize (system-object:finalize)
Microsoft.Xna.Framework.Game: finalize (microsoft-xna-framework-game:finalize)
Microsoft.Xna.Framework.Content.ContentManager: finalize (microsoft-xna-framework-content-content-manager:finalize)
Microsoft.Xna.Framework.GraphicsDeviceManager: finalize (microsoft-xna-framework-graphics-device-manager:finalize)
Microsoft.Xna.Framework.Graphics.GraphicsDevice: finalize (microsoft-xna-framework-graphics-graphics-device:finalize)
Microsoft.Xna.Framework.Audio.SoundEffect: finalize (microsoft-xna-framework-audio-sound-effect:finalize)
Microsoft.Xna.Framework.Audio.SoundEffectInstance: finalize (microsoft-xna-framework-audio-sound-effect-instance:finalize)
Microsoft.Xna.Framework.Media.Song: finalize (microsoft-xna-framework-media-song:finalize)
"))

(cl:defgeneric memberwise-clone (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Object: memberwise-clone (system-object:memberwise-clone)
"))

(cl:defgeneric custom-attributes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: custom-attributes (system-reflection-member-info:custom-attributes)
"))

(cl:defgeneric collectible? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: collectible? (system-reflection-member-info:collectible?)
"))

(cl:defgeneric metadata-token (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: metadata-token (system-reflection-member-info:metadata-token)
"))

(cl:defgeneric name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: name (system-reflection-member-info:name)
Microsoft.Xna.Framework.Audio.SoundEffect: name (microsoft-xna-framework-audio-sound-effect:name)
Microsoft.Xna.Framework.Media.Song: name (microsoft-xna-framework-media-song:name)
Gum.Forms.Controls.FrameworkElement: name (gum-forms-controls-framework-element:name)
"))

(cl:defgeneric get-custom-attributes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: get-custom-attributes (system-reflection-member-info:get-custom-attributes)
"))

(cl:defgeneric get-custom-attributes-data (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: get-custom-attributes-data (system-reflection-member-info:get-custom-attributes-data)
"))

(cl:defgeneric has-same-metadata-definition-as (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: has-same-metadata-definition-as (system-reflection-member-info:has-same-metadata-definition-as)
"))

(cl:defgeneric defined? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Reflection.MemberInfo: defined? (system-reflection-member-info:defined?)
"))

(cl:defgeneric x (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: x (microsoft-xna-framework-vector2:x)
Microsoft.Xna.Framework.Rectangle: x (microsoft-xna-framework-rectangle:x)
Microsoft.Xna.Framework.Point: x (microsoft-xna-framework-point:x)
Microsoft.Xna.Framework.Input.MouseState: x (microsoft-xna-framework-input-mouse-state:x)
RenderingLibrary.Camera: x (rendering-library-camera:x)
Gum.Forms.Controls.FrameworkElement: x (gum-forms-controls-framework-element:x)
"))

(cl:defgeneric y (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: y (microsoft-xna-framework-vector2:y)
Microsoft.Xna.Framework.Rectangle: y (microsoft-xna-framework-rectangle:y)
Microsoft.Xna.Framework.Point: y (microsoft-xna-framework-point:y)
Microsoft.Xna.Framework.Input.MouseState: y (microsoft-xna-framework-input-mouse-state:y)
RenderingLibrary.Camera: y (rendering-library-camera:y)
Gum.Forms.Controls.FrameworkElement: y (gum-forms-controls-framework-element:y)
"))

(cl:defgeneric ceiling (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: ceiling (microsoft-xna-framework-vector2:ceiling)
"))

(cl:defgeneric floor (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: floor (microsoft-xna-framework-vector2:floor)
"))

(cl:defgeneric length (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: length (microsoft-xna-framework-vector2:length)
"))

(cl:defgeneric length-squared (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: length-squared (microsoft-xna-framework-vector2:length-squared)
"))

(cl:defgeneric normalize (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: normalize (microsoft-xna-framework-vector2:normalize)
"))

(cl:defgeneric rotate (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: rotate (microsoft-xna-framework-vector2:rotate)
"))

(cl:defgeneric rotate-around (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: rotate-around (microsoft-xna-framework-vector2:rotate-around)
"))

(cl:defgeneric round (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: round (microsoft-xna-framework-vector2:round)
"))

(cl:defgeneric to-numerics (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: to-numerics (microsoft-xna-framework-vector2:to-numerics)
"))

(cl:defgeneric to-point (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: to-point (microsoft-xna-framework-vector2:to-point)
"))

(cl:defgeneric height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: height (microsoft-xna-framework-rectangle:height)
Gum.Forms.Controls.FrameworkElement: height (gum-forms-controls-framework-element:height)
"))

(cl:defgeneric width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: width (microsoft-xna-framework-rectangle:width)
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: width (microsoft-xna-framework-graphics-sprite-font-glyph:width)
Gum.Forms.Controls.FrameworkElement: width (gum-forms-controls-framework-element:width)
"))

(cl:defgeneric bottom (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: bottom (microsoft-xna-framework-rectangle:bottom)
"))

(cl:defgeneric center (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: center (microsoft-xna-framework-rectangle:center)
"))

(cl:defgeneric empty? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: empty? (microsoft-xna-framework-rectangle:empty?)
"))

(cl:defgeneric left (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: left (microsoft-xna-framework-rectangle:left)
Microsoft.Xna.Framework.Input.GamePadDPad: left (microsoft-xna-framework-input-game-pad-d-pad:left)
Microsoft.Xna.Framework.Input.GamePadThumbSticks: left (microsoft-xna-framework-input-game-pad-thumb-sticks:left)
Microsoft.Xna.Framework.Input.GamePadTriggers: left (microsoft-xna-framework-input-game-pad-triggers:left)
"))

(cl:defgeneric location (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: location (microsoft-xna-framework-rectangle:location)
"))

(cl:defgeneric right (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: right (microsoft-xna-framework-rectangle:right)
Microsoft.Xna.Framework.Input.GamePadDPad: right (microsoft-xna-framework-input-game-pad-d-pad:right)
Microsoft.Xna.Framework.Input.GamePadThumbSticks: right (microsoft-xna-framework-input-game-pad-thumb-sticks:right)
Microsoft.Xna.Framework.Input.GamePadTriggers: right (microsoft-xna-framework-input-game-pad-triggers:right)
"))

(cl:defgeneric size (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: size (microsoft-xna-framework-rectangle:size)
"))

(cl:defgeneric top (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: top (microsoft-xna-framework-rectangle:top)
"))

(cl:defgeneric contains (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: contains (microsoft-xna-framework-rectangle:contains)
Microsoft.Xna.Framework.Input.Touch.TouchCollection: contains (microsoft-xna-framework-input-touch-touch-collection:contains)
System.Collections.Generic.List`1: contains (system-collections-generic-list-1:contains)
"))

(cl:defgeneric inflate (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: inflate (microsoft-xna-framework-rectangle:inflate)
"))

(cl:defgeneric intersects (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: intersects (microsoft-xna-framework-rectangle:intersects)
"))

(cl:defgeneric offset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: offset (microsoft-xna-framework-rectangle:offset)
"))

(cl:defgeneric to-vector2 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Point: to-vector2 (microsoft-xna-framework-point:to-vector2)
"))

(cl:defgeneric elapsed-game-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameTime: elapsed-game-time (microsoft-xna-framework-game-time:elapsed-game-time)
"))

(cl:defgeneric running-slowly? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameTime: running-slowly? (microsoft-xna-framework-game-time:running-slowly?)
"))

(cl:defgeneric total-game-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameTime: total-game-time (microsoft-xna-framework-game-time:total-game-time)
"))

(cl:defgeneric components (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: components (microsoft-xna-framework-game:components)
"))

(cl:defgeneric content (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: content (microsoft-xna-framework-game:content)
"))

(cl:defgeneric graphics-device (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: graphics-device (microsoft-xna-framework-game:graphics-device)
Microsoft.Xna.Framework.GraphicsDeviceManager: graphics-device (microsoft-xna-framework-graphics-device-manager:graphics-device)
RenderingLibrary.Graphics.Renderer: graphics-device (rendering-library-graphics-renderer:graphics-device)
"))

(cl:defgeneric inactive-sleep-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: inactive-sleep-time (microsoft-xna-framework-game:inactive-sleep-time)
"))

(cl:defgeneric active? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: active? (microsoft-xna-framework-game:active?)
"))

(cl:defgeneric fixed-time-step? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: fixed-time-step? (microsoft-xna-framework-game:fixed-time-step?)
"))

(cl:defgeneric mouse-visible? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: mouse-visible? (microsoft-xna-framework-game:mouse-visible?)
"))

(cl:defgeneric launch-parameters (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: launch-parameters (microsoft-xna-framework-game:launch-parameters)
"))

(cl:defgeneric max-elapsed-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: max-elapsed-time (microsoft-xna-framework-game:max-elapsed-time)
"))

(cl:defgeneric services (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: services (microsoft-xna-framework-game:services)
"))

(cl:defgeneric target-elapsed-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: target-elapsed-time (microsoft-xna-framework-game:target-elapsed-time)
"))

(cl:defgeneric window (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: window (microsoft-xna-framework-game:window)
"))

(cl:defgeneric begin-draw (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: begin-draw (microsoft-xna-framework-game:begin-draw)
Microsoft.Xna.Framework.GraphicsDeviceManager: begin-draw (microsoft-xna-framework-graphics-device-manager:begin-draw)
"))

(cl:defgeneric begin-run (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: begin-run (microsoft-xna-framework-game:begin-run)
"))

(cl:defgeneric dispose (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: dispose (microsoft-xna-framework-game:dispose)
Microsoft.Xna.Framework.Content.ContentManager: dispose (microsoft-xna-framework-content-content-manager:dispose)
Microsoft.Xna.Framework.GraphicsDeviceManager: dispose (microsoft-xna-framework-graphics-device-manager:dispose)
Microsoft.Xna.Framework.Graphics.SamplerState: dispose (microsoft-xna-framework-graphics-sampler-state:dispose)
Microsoft.Xna.Framework.Graphics.GraphicsDevice: dispose (microsoft-xna-framework-graphics-graphics-device:dispose)
Microsoft.Xna.Framework.Graphics.SpriteBatch: dispose (microsoft-xna-framework-graphics-sprite-batch:dispose)
Microsoft.Xna.Framework.Audio.SoundEffect: dispose (microsoft-xna-framework-audio-sound-effect:dispose)
Microsoft.Xna.Framework.Audio.SoundEffectInstance: dispose (microsoft-xna-framework-audio-sound-effect-instance:dispose)
Microsoft.Xna.Framework.Media.Song: dispose (microsoft-xna-framework-media-song:dispose)
"))

(cl:defgeneric draw (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: draw (microsoft-xna-framework-game:draw)
Microsoft.Xna.Framework.Graphics.SpriteBatch: draw (microsoft-xna-framework-graphics-sprite-batch:draw)
MonoGameGum.GumService: draw (mono-game-gum-gum-service:draw)
RenderingLibrary.Graphics.Renderer: draw (rendering-library-graphics-renderer:draw)
"))

(cl:defgeneric end-draw (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: end-draw (microsoft-xna-framework-game:end-draw)
Microsoft.Xna.Framework.GraphicsDeviceManager: end-draw (microsoft-xna-framework-graphics-device-manager:end-draw)
"))

(cl:defgeneric end-run (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: end-run (microsoft-xna-framework-game:end-run)
"))

(cl:defgeneric exit (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: exit (microsoft-xna-framework-game:exit)
"))

(cl:defgeneric initialize (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: initialize (microsoft-xna-framework-game:initialize)
MonoGameGum.GumService: initialize (mono-game-gum-gum-service:initialize)
RenderingLibrary.Graphics.Renderer: initialize (rendering-library-graphics-renderer:initialize)
"))

(cl:defgeneric load-content (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: load-content (microsoft-xna-framework-game:load-content)
"))

(cl:defgeneric on-activated (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: on-activated (microsoft-xna-framework-game:on-activated)
Microsoft.Xna.Framework.GameWindow: on-activated (microsoft-xna-framework-game-window:on-activated)
"))

(cl:defgeneric on-deactivated (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: on-deactivated (microsoft-xna-framework-game:on-deactivated)
Microsoft.Xna.Framework.GameWindow: on-deactivated (microsoft-xna-framework-game-window:on-deactivated)
"))

(cl:defgeneric on-exiting (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: on-exiting (microsoft-xna-framework-game:on-exiting)
"))

(cl:defgeneric reset-elapsed-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: reset-elapsed-time (microsoft-xna-framework-game:reset-elapsed-time)
"))

(cl:defgeneric run (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: run (microsoft-xna-framework-game:run)
"))

(cl:defgeneric run-one-frame (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: run-one-frame (microsoft-xna-framework-game:run-one-frame)
"))

(cl:defgeneric suppress-draw (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: suppress-draw (microsoft-xna-framework-game:suppress-draw)
"))

(cl:defgeneric tick (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: tick (microsoft-xna-framework-game:tick)
"))

(cl:defgeneric unload-content (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: unload-content (microsoft-xna-framework-game:unload-content)
"))

(cl:defgeneric update (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: update (microsoft-xna-framework-game:update)
MonoGameGum.GumService: update (mono-game-gum-gum-service:update)
"))

(cl:defgeneric allow-alt-f4 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: allow-alt-f4 (microsoft-xna-framework-game-window:allow-alt-f4)
"))

(cl:defgeneric allow-user-resizing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: allow-user-resizing (microsoft-xna-framework-game-window:allow-user-resizing)
"))

(cl:defgeneric client-bounds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: client-bounds (microsoft-xna-framework-game-window:client-bounds)
"))

(cl:defgeneric current-orientation (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: current-orientation (microsoft-xna-framework-game-window:current-orientation)
"))

(cl:defgeneric handle (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: handle (microsoft-xna-framework-game-window:handle)
"))

(cl:defgeneric borderless? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: borderless? (microsoft-xna-framework-game-window:borderless?)
"))

(cl:defgeneric position (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: position (microsoft-xna-framework-game-window:position)
Microsoft.Xna.Framework.Input.MouseState: position (microsoft-xna-framework-input-mouse-state:position)
Microsoft.Xna.Framework.Input.Touch.TouchLocation: position (microsoft-xna-framework-input-touch-touch-location:position)
Microsoft.Xna.Framework.Input.Touch.GestureSample: position (microsoft-xna-framework-input-touch-gesture-sample:position)
Microsoft.Xna.Framework.Media.Song: position (microsoft-xna-framework-media-song:position)
RenderingLibrary.Camera: position (rendering-library-camera:position)
"))

(cl:defgeneric screen-device-name (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: screen-device-name (microsoft-xna-framework-game-window:screen-device-name)
"))

(cl:defgeneric title (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: title (microsoft-xna-framework-game-window:title)
"))

(cl:defgeneric begin-screen-device-change (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: begin-screen-device-change (microsoft-xna-framework-game-window:begin-screen-device-change)
"))

(cl:defgeneric end-screen-device-change (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: end-screen-device-change (microsoft-xna-framework-game-window:end-screen-device-change)
"))

(cl:defgeneric on-orientation-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: on-orientation-changed (microsoft-xna-framework-game-window:on-orientation-changed)
"))

(cl:defgeneric on-paint (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: on-paint (microsoft-xna-framework-game-window:on-paint)
"))

(cl:defgeneric on-screen-device-name-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: on-screen-device-name-changed (microsoft-xna-framework-game-window:on-screen-device-name-changed)
"))

(cl:defgeneric set-supported-orientations (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: set-supported-orientations (microsoft-xna-framework-game-window:set-supported-orientations)
"))

(cl:defgeneric set-title (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: set-title (microsoft-xna-framework-game-window:set-title)
"))

(cl:defgeneric caps-lock (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: caps-lock (microsoft-xna-framework-input-keyboard-state:caps-lock)
"))

(cl:defgeneric item (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: item (microsoft-xna-framework-input-keyboard-state:item)
Microsoft.Xna.Framework.Input.Touch.TouchCollection: item (microsoft-xna-framework-input-touch-touch-collection:item)
System.Collections.Generic.List`1: item (system-collections-generic-list-1:item)
"))

(cl:defgeneric num-lock (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: num-lock (microsoft-xna-framework-input-keyboard-state:num-lock)
"))

(cl:defgeneric get-pressed-key-count (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: get-pressed-key-count (microsoft-xna-framework-input-keyboard-state:get-pressed-key-count)
"))

(cl:defgeneric get-pressed-keys (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: get-pressed-keys (microsoft-xna-framework-input-keyboard-state:get-pressed-keys)
"))

(cl:defgeneric key-down? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: key-down? (microsoft-xna-framework-input-keyboard-state:key-down?)
"))

(cl:defgeneric key-up? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.KeyboardState: key-up? (microsoft-xna-framework-input-keyboard-state:key-up?)
"))

(cl:defgeneric horizontal-scroll-wheel-value (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: horizontal-scroll-wheel-value (microsoft-xna-framework-input-mouse-state:horizontal-scroll-wheel-value)
"))

(cl:defgeneric left-button (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: left-button (microsoft-xna-framework-input-mouse-state:left-button)
"))

(cl:defgeneric middle-button (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: middle-button (microsoft-xna-framework-input-mouse-state:middle-button)
"))

(cl:defgeneric right-button (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: right-button (microsoft-xna-framework-input-mouse-state:right-button)
"))

(cl:defgeneric scroll-wheel-value (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: scroll-wheel-value (microsoft-xna-framework-input-mouse-state:scroll-wheel-value)
"))

(cl:defgeneric x-button1 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: x-button1 (microsoft-xna-framework-input-mouse-state:x-button1)
"))

(cl:defgeneric x-button2 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.MouseState: x-button2 (microsoft-xna-framework-input-mouse-state:x-button2)
"))

(cl:defgeneric buttons (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: buttons (microsoft-xna-framework-input-game-pad-state:buttons)
"))

(cl:defgeneric d-pad (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: d-pad (microsoft-xna-framework-input-game-pad-state:d-pad)
"))

(cl:defgeneric connected? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: connected? (microsoft-xna-framework-input-game-pad-state:connected?)
Microsoft.Xna.Framework.Input.Touch.TouchCollection: connected? (microsoft-xna-framework-input-touch-touch-collection:connected?)
"))

(cl:defgeneric packet-number (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: packet-number (microsoft-xna-framework-input-game-pad-state:packet-number)
"))

(cl:defgeneric thumb-sticks (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: thumb-sticks (microsoft-xna-framework-input-game-pad-state:thumb-sticks)
"))

(cl:defgeneric triggers (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: triggers (microsoft-xna-framework-input-game-pad-state:triggers)
"))

(cl:defgeneric button-down? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: button-down? (microsoft-xna-framework-input-game-pad-state:button-down?)
"))

(cl:defgeneric button-up? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadState: button-up? (microsoft-xna-framework-input-game-pad-state:button-up?)
"))

(cl:defgeneric down (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadDPad: down (microsoft-xna-framework-input-game-pad-d-pad:down)
"))

(cl:defgeneric up (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.GamePadDPad: up (microsoft-xna-framework-input-game-pad-d-pad:up)
"))

(cl:defgeneric count (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: count (microsoft-xna-framework-input-touch-touch-collection:count)
System.Collections.Generic.List`1: count (system-collections-generic-list-1:count)
"))

(cl:defgeneric read-only? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: read-only? (microsoft-xna-framework-input-touch-touch-collection:read-only?)
"))

(cl:defgeneric clear (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: clear (microsoft-xna-framework-input-touch-touch-collection:clear)
Microsoft.Xna.Framework.Graphics.GraphicsDevice: clear (microsoft-xna-framework-graphics-graphics-device:clear)
Microsoft.Xna.Framework.Graphics.PresentationParameters: clear (microsoft-xna-framework-graphics-presentation-parameters:clear)
System.Collections.Generic.List`1: clear (system-collections-generic-list-1:clear)
"))

(cl:defgeneric copy-to (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: copy-to (microsoft-xna-framework-input-touch-touch-collection:copy-to)
System.Collections.Generic.List`1: copy-to (system-collections-generic-list-1:copy-to)
"))

(cl:defgeneric get-enumerator (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: get-enumerator (microsoft-xna-framework-input-touch-touch-collection:get-enumerator)
System.Collections.Generic.List`1: get-enumerator (system-collections-generic-list-1:get-enumerator)
"))

(cl:defgeneric index-of (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: index-of (microsoft-xna-framework-input-touch-touch-collection:index-of)
System.Collections.Generic.List`1: index-of (system-collections-generic-list-1:index-of)
"))

(cl:defgeneric insert (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: insert (microsoft-xna-framework-input-touch-touch-collection:insert)
System.Collections.Generic.List`1: insert (system-collections-generic-list-1:insert)
"))

(cl:defgeneric remove (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: remove (microsoft-xna-framework-input-touch-touch-collection:remove)
System.Collections.Generic.List`1: remove (system-collections-generic-list-1:remove)
"))

(cl:defgeneric remove-at (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: remove-at (microsoft-xna-framework-input-touch-touch-collection:remove-at)
System.Collections.Generic.List`1: remove-at (system-collections-generic-list-1:remove-at)
"))

(cl:defgeneric pressure (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchLocation: pressure (microsoft-xna-framework-input-touch-touch-location:pressure)
"))

(cl:defgeneric state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchLocation: state (microsoft-xna-framework-input-touch-touch-location:state)
Microsoft.Xna.Framework.Audio.SoundEffectInstance: state (microsoft-xna-framework-audio-sound-effect-instance:state)
"))

(cl:defgeneric high-frequency-event? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchLocation: high-frequency-event? (microsoft-xna-framework-input-touch-touch-location:high-frequency-event?)
"))

(cl:defgeneric delta (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.GestureSample: delta (microsoft-xna-framework-input-touch-gesture-sample:delta)
"))

(cl:defgeneric delta2 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.GestureSample: delta2 (microsoft-xna-framework-input-touch-gesture-sample:delta2)
"))

(cl:defgeneric gesture-type (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.GestureSample: gesture-type (microsoft-xna-framework-input-touch-gesture-sample:gesture-type)
"))

(cl:defgeneric position2 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.GestureSample: position2 (microsoft-xna-framework-input-touch-gesture-sample:position2)
"))

(cl:defgeneric timestamp (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.GestureSample: timestamp (microsoft-xna-framework-input-touch-gesture-sample:timestamp)
"))

(cl:defgeneric a (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: a (microsoft-xna-framework-color:a)
"))

(cl:defgeneric b (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: b (microsoft-xna-framework-color:b)
"))

(cl:defgeneric g (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: g (microsoft-xna-framework-color:g)
"))

(cl:defgeneric packed-value (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: packed-value (microsoft-xna-framework-color:packed-value)
"))

(cl:defgeneric r (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: r (microsoft-xna-framework-color:r)
"))

(cl:defgeneric to-vector3 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: to-vector3 (microsoft-xna-framework-color:to-vector3)
"))

(cl:defgeneric to-vector4 (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: to-vector4 (microsoft-xna-framework-color:to-vector4)
"))

(cl:defgeneric loaded-assets (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: loaded-assets (microsoft-xna-framework-content-content-manager:loaded-assets)
"))

(cl:defgeneric root-directory (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: root-directory (microsoft-xna-framework-content-content-manager:root-directory)
"))

(cl:defgeneric service-provider (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: service-provider (microsoft-xna-framework-content-content-manager:service-provider)
"))

(cl:defgeneric open-stream (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: open-stream (microsoft-xna-framework-content-content-manager:open-stream)
"))

(cl:defgeneric reload-graphics-assets (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: reload-graphics-assets (microsoft-xna-framework-content-content-manager:reload-graphics-assets)
"))

(cl:defgeneric unload (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: unload (microsoft-xna-framework-content-content-manager:unload)
"))

(cl:defgeneric unload-asset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: unload-asset (microsoft-xna-framework-content-content-manager:unload-asset)
"))

(cl:defgeneric unload-assets (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: unload-assets (microsoft-xna-framework-content-content-manager:unload-assets)
"))

(cl:defgeneric graphics-profile (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: graphics-profile (microsoft-xna-framework-graphics-device-manager:graphics-profile)
Microsoft.Xna.Framework.Graphics.GraphicsDevice: graphics-profile (microsoft-xna-framework-graphics-graphics-device:graphics-profile)
"))

(cl:defgeneric hardware-mode-switch (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: hardware-mode-switch (microsoft-xna-framework-graphics-device-manager:hardware-mode-switch)
Microsoft.Xna.Framework.Graphics.PresentationParameters: hardware-mode-switch (microsoft-xna-framework-graphics-presentation-parameters:hardware-mode-switch)
"))

(cl:defgeneric full-screen? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: full-screen? (microsoft-xna-framework-graphics-device-manager:full-screen?)
Microsoft.Xna.Framework.Graphics.PresentationParameters: full-screen? (microsoft-xna-framework-graphics-presentation-parameters:full-screen?)
"))

(cl:defgeneric prefer-half-pixel-offset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: prefer-half-pixel-offset (microsoft-xna-framework-graphics-device-manager:prefer-half-pixel-offset)
"))

(cl:defgeneric prefer-multi-sampling (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: prefer-multi-sampling (microsoft-xna-framework-graphics-device-manager:prefer-multi-sampling)
"))

(cl:defgeneric preferred-back-buffer-format (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: preferred-back-buffer-format (microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-format)
"))

(cl:defgeneric preferred-back-buffer-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: preferred-back-buffer-height (microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-height)
"))

(cl:defgeneric preferred-back-buffer-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: preferred-back-buffer-width (microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-width)
"))

(cl:defgeneric preferred-depth-stencil-format (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: preferred-depth-stencil-format (microsoft-xna-framework-graphics-device-manager:preferred-depth-stencil-format)
"))

(cl:defgeneric supported-orientations (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: supported-orientations (microsoft-xna-framework-graphics-device-manager:supported-orientations)
"))

(cl:defgeneric synchronize-with-vertical-retrace (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: synchronize-with-vertical-retrace (microsoft-xna-framework-graphics-device-manager:synchronize-with-vertical-retrace)
"))

(cl:defgeneric apply-changes (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: apply-changes (microsoft-xna-framework-graphics-device-manager:apply-changes)
"))

(cl:defgeneric on-device-created (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: on-device-created (microsoft-xna-framework-graphics-device-manager:on-device-created)
"))

(cl:defgeneric on-device-disposing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: on-device-disposing (microsoft-xna-framework-graphics-device-manager:on-device-disposing)
"))

(cl:defgeneric on-device-reset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: on-device-reset (microsoft-xna-framework-graphics-device-manager:on-device-reset)
"))

(cl:defgeneric on-device-resetting (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: on-device-resetting (microsoft-xna-framework-graphics-device-manager:on-device-resetting)
"))

(cl:defgeneric toggle-full-screen (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: toggle-full-screen (microsoft-xna-framework-graphics-device-manager:toggle-full-screen)
"))

(cl:defgeneric address-u (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: address-u (microsoft-xna-framework-graphics-sampler-state:address-u)
"))

(cl:defgeneric address-v (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: address-v (microsoft-xna-framework-graphics-sampler-state:address-v)
"))

(cl:defgeneric address-w (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: address-w (microsoft-xna-framework-graphics-sampler-state:address-w)
"))

(cl:defgeneric border-color (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: border-color (microsoft-xna-framework-graphics-sampler-state:border-color)
"))

(cl:defgeneric comparison-function (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: comparison-function (microsoft-xna-framework-graphics-sampler-state:comparison-function)
"))

(cl:defgeneric filter (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: filter (microsoft-xna-framework-graphics-sampler-state:filter)
"))

(cl:defgeneric filter-mode (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: filter-mode (microsoft-xna-framework-graphics-sampler-state:filter-mode)
"))

(cl:defgeneric max-anisotropy (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: max-anisotropy (microsoft-xna-framework-graphics-sampler-state:max-anisotropy)
"))

(cl:defgeneric max-mip-level (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: max-mip-level (microsoft-xna-framework-graphics-sampler-state:max-mip-level)
"))

(cl:defgeneric mip-map-level-of-detail-bias (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: mip-map-level-of-detail-bias (microsoft-xna-framework-graphics-sampler-state:mip-map-level-of-detail-bias)
"))

(cl:defgeneric adapter (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: adapter (microsoft-xna-framework-graphics-graphics-device:adapter)
"))

(cl:defgeneric blend-factor (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: blend-factor (microsoft-xna-framework-graphics-graphics-device:blend-factor)
"))

(cl:defgeneric blend-state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: blend-state (microsoft-xna-framework-graphics-graphics-device:blend-state)
MonoGameGum.GueDeriving.TextRuntime: blend-state (mono-game-gum-gue-deriving-text-runtime:blend-state)
"))

(cl:defgeneric depth-stencil-state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: depth-stencil-state (microsoft-xna-framework-graphics-graphics-device:depth-stencil-state)
"))

(cl:defgeneric display-mode (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: display-mode (microsoft-xna-framework-graphics-graphics-device:display-mode)
"))

(cl:defgeneric graphics-debug (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: graphics-debug (microsoft-xna-framework-graphics-graphics-device:graphics-debug)
"))

(cl:defgeneric graphics-device-status (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: graphics-device-status (microsoft-xna-framework-graphics-graphics-device:graphics-device-status)
"))

(cl:defgeneric indices (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: indices (microsoft-xna-framework-graphics-graphics-device:indices)
"))

(cl:defgeneric content-lost? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: content-lost? (microsoft-xna-framework-graphics-graphics-device:content-lost?)
"))

(cl:defgeneric disposed? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: disposed? (microsoft-xna-framework-graphics-graphics-device:disposed?)
Microsoft.Xna.Framework.Audio.SoundEffect: disposed? (microsoft-xna-framework-audio-sound-effect:disposed?)
Microsoft.Xna.Framework.Audio.SoundEffectInstance: disposed? (microsoft-xna-framework-audio-sound-effect-instance:disposed?)
Microsoft.Xna.Framework.Media.Song: disposed? (microsoft-xna-framework-media-song:disposed?)
"))

(cl:defgeneric metrics (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: metrics (microsoft-xna-framework-graphics-graphics-device:metrics)
"))

(cl:defgeneric presentation-parameters (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: presentation-parameters (microsoft-xna-framework-graphics-graphics-device:presentation-parameters)
"))

(cl:defgeneric rasterizer-state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: rasterizer-state (microsoft-xna-framework-graphics-graphics-device:rasterizer-state)
"))

(cl:defgeneric render-target-count (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: render-target-count (microsoft-xna-framework-graphics-graphics-device:render-target-count)
"))

(cl:defgeneric resources-lost (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: resources-lost (microsoft-xna-framework-graphics-graphics-device:resources-lost)
"))

(cl:defgeneric sampler-states (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: sampler-states (microsoft-xna-framework-graphics-graphics-device:sampler-states)
"))

(cl:defgeneric scissor-rectangle (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: scissor-rectangle (microsoft-xna-framework-graphics-graphics-device:scissor-rectangle)
"))

(cl:defgeneric textures (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: textures (microsoft-xna-framework-graphics-graphics-device:textures)
"))

(cl:defgeneric use-half-pixel-offset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: use-half-pixel-offset (microsoft-xna-framework-graphics-graphics-device:use-half-pixel-offset)
"))

(cl:defgeneric vertex-sampler-states (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: vertex-sampler-states (microsoft-xna-framework-graphics-graphics-device:vertex-sampler-states)
"))

(cl:defgeneric vertex-textures (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: vertex-textures (microsoft-xna-framework-graphics-graphics-device:vertex-textures)
"))

(cl:defgeneric viewport (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: viewport (microsoft-xna-framework-graphics-graphics-device:viewport)
"))

(cl:defgeneric draw-indexed-primitives (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: draw-indexed-primitives (microsoft-xna-framework-graphics-graphics-device:draw-indexed-primitives)
"))

(cl:defgeneric draw-instanced-primitives (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: draw-instanced-primitives (microsoft-xna-framework-graphics-graphics-device:draw-instanced-primitives)
"))

(cl:defgeneric draw-primitives (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: draw-primitives (microsoft-xna-framework-graphics-graphics-device:draw-primitives)
"))

(cl:defgeneric get-render-targets (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: get-render-targets (microsoft-xna-framework-graphics-graphics-device:get-render-targets)
"))

(cl:defgeneric present (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: present (microsoft-xna-framework-graphics-graphics-device:present)
"))

(cl:defgeneric reset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: reset (microsoft-xna-framework-graphics-graphics-device:reset)
"))

(cl:defgeneric set-render-target (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: set-render-target (microsoft-xna-framework-graphics-graphics-device:set-render-target)
"))

(cl:defgeneric set-vertex-buffer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: set-vertex-buffer (microsoft-xna-framework-graphics-graphics-device:set-vertex-buffer)
"))

(cl:defgeneric begin (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteBatch: begin (microsoft-xna-framework-graphics-sprite-batch:begin)
RenderingLibrary.Graphics.Renderer: begin (rendering-library-graphics-renderer:begin)
"))

(cl:defgeneric draw-string (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteBatch: draw-string (microsoft-xna-framework-graphics-sprite-batch:draw-string)
"))

(cl:defgeneric end (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteBatch: end (microsoft-xna-framework-graphics-sprite-batch:end)
RenderingLibrary.Graphics.Renderer: end (rendering-library-graphics-renderer:end)
"))

(cl:defgeneric characters (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: characters (microsoft-xna-framework-graphics-sprite-font:characters)
"))

(cl:defgeneric default-character (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: default-character (microsoft-xna-framework-graphics-sprite-font:default-character)
"))

(cl:defgeneric glyphs (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: glyphs (microsoft-xna-framework-graphics-sprite-font:glyphs)
"))

(cl:defgeneric line-spacing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: line-spacing (microsoft-xna-framework-graphics-sprite-font:line-spacing)
"))

(cl:defgeneric spacing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: spacing (microsoft-xna-framework-graphics-sprite-font:spacing)
"))

(cl:defgeneric texture (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: texture (microsoft-xna-framework-graphics-sprite-font:texture)
"))

(cl:defgeneric get-glyphs (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: get-glyphs (microsoft-xna-framework-graphics-sprite-font:get-glyphs)
"))

(cl:defgeneric measure-string (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: measure-string (microsoft-xna-framework-graphics-sprite-font:measure-string)
"))

(cl:defgeneric bounds-in-texture (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: bounds-in-texture (microsoft-xna-framework-graphics-sprite-font-glyph:bounds-in-texture)
"))

(cl:defgeneric character (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: character (microsoft-xna-framework-graphics-sprite-font-glyph:character)
"))

(cl:defgeneric cropping (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: cropping (microsoft-xna-framework-graphics-sprite-font-glyph:cropping)
"))

(cl:defgeneric left-side-bearing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: left-side-bearing (microsoft-xna-framework-graphics-sprite-font-glyph:left-side-bearing)
"))

(cl:defgeneric right-side-bearing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: right-side-bearing (microsoft-xna-framework-graphics-sprite-font-glyph:right-side-bearing)
"))

(cl:defgeneric width-including-bearings (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: width-including-bearings (microsoft-xna-framework-graphics-sprite-font-glyph:width-including-bearings)
"))

(cl:defgeneric back-buffer-format (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: back-buffer-format (microsoft-xna-framework-graphics-presentation-parameters:back-buffer-format)
"))

(cl:defgeneric back-buffer-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: back-buffer-height (microsoft-xna-framework-graphics-presentation-parameters:back-buffer-height)
"))

(cl:defgeneric back-buffer-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: back-buffer-width (microsoft-xna-framework-graphics-presentation-parameters:back-buffer-width)
"))

(cl:defgeneric bounds (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: bounds (microsoft-xna-framework-graphics-presentation-parameters:bounds)
"))

(cl:defgeneric depth-stencil-format (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: depth-stencil-format (microsoft-xna-framework-graphics-presentation-parameters:depth-stencil-format)
"))

(cl:defgeneric device-window-handle (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: device-window-handle (microsoft-xna-framework-graphics-presentation-parameters:device-window-handle)
"))

(cl:defgeneric display-orientation (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: display-orientation (microsoft-xna-framework-graphics-presentation-parameters:display-orientation)
"))

(cl:defgeneric multi-sample-count (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: multi-sample-count (microsoft-xna-framework-graphics-presentation-parameters:multi-sample-count)
"))

(cl:defgeneric presentation-interval (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: presentation-interval (microsoft-xna-framework-graphics-presentation-parameters:presentation-interval)
"))

(cl:defgeneric render-target-usage (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: render-target-usage (microsoft-xna-framework-graphics-presentation-parameters:render-target-usage)
"))

(cl:defgeneric clone (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: clone (microsoft-xna-framework-graphics-presentation-parameters:clone)
MonoGameGum.GueDeriving.TextRuntime: clone (mono-game-gum-gue-deriving-text-runtime:clone)
"))

(cl:defgeneric play (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffect: play (microsoft-xna-framework-audio-sound-effect:play)
Microsoft.Xna.Framework.Audio.SoundEffectInstance: play (microsoft-xna-framework-audio-sound-effect-instance:play)
"))

(cl:defgeneric looped? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: looped? (microsoft-xna-framework-audio-sound-effect-instance:looped?)
"))

(cl:defgeneric pan (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: pan (microsoft-xna-framework-audio-sound-effect-instance:pan)
"))

(cl:defgeneric pitch (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: pitch (microsoft-xna-framework-audio-sound-effect-instance:pitch)
"))

(cl:defgeneric volume (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: volume (microsoft-xna-framework-audio-sound-effect-instance:volume)
"))

(cl:defgeneric apply3-d (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: apply3-d (microsoft-xna-framework-audio-sound-effect-instance:apply3-d)
"))

(cl:defgeneric pause (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: pause (microsoft-xna-framework-audio-sound-effect-instance:pause)
"))

(cl:defgeneric resume (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: resume (microsoft-xna-framework-audio-sound-effect-instance:resume)
"))

(cl:defgeneric stop (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: stop (microsoft-xna-framework-audio-sound-effect-instance:stop)
"))

(cl:defgeneric album (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: album (microsoft-xna-framework-media-song:album)
"))

(cl:defgeneric artist (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: artist (microsoft-xna-framework-media-song:artist)
"))

(cl:defgeneric genre (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: genre (microsoft-xna-framework-media-song:genre)
"))

(cl:defgeneric protected? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: protected? (microsoft-xna-framework-media-song:protected?)
"))

(cl:defgeneric rated? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: rated? (microsoft-xna-framework-media-song:rated?)
"))

(cl:defgeneric play-count (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: play-count (microsoft-xna-framework-media-song:play-count)
"))

(cl:defgeneric rating (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: rating (microsoft-xna-framework-media-song:rating)
"))

(cl:defgeneric track-number (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Media.Song: track-number (microsoft-xna-framework-media-song:track-number)
"))

(cl:defgeneric absolute-bottom (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: absolute-bottom (rendering-library-camera:absolute-bottom)
"))

(cl:defgeneric absolute-left (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: absolute-left (rendering-library-camera:absolute-left)
Gum.Forms.Controls.FrameworkElement: absolute-left (gum-forms-controls-framework-element:absolute-left)
"))

(cl:defgeneric absolute-right (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: absolute-right (rendering-library-camera:absolute-right)
"))

(cl:defgeneric absolute-top (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: absolute-top (rendering-library-camera:absolute-top)
Gum.Forms.Controls.FrameworkElement: absolute-top (gum-forms-controls-framework-element:absolute-top)
"))

(cl:defgeneric camera-center-on-screen (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: camera-center-on-screen (rendering-library-camera:camera-center-on-screen)
"))

(cl:defgeneric client-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: client-height (rendering-library-camera:client-height)
"))

(cl:defgeneric client-left (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: client-left (rendering-library-camera:client-left)
"))

(cl:defgeneric client-top (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: client-top (rendering-library-camera:client-top)
"))

(cl:defgeneric client-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: client-width (rendering-library-camera:client-width)
"))

(cl:defgeneric rendering-x-offset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: rendering-x-offset (rendering-library-camera:rendering-x-offset)
"))

(cl:defgeneric rendering-y-offset (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: rendering-y-offset (rendering-library-camera:rendering-y-offset)
"))

(cl:defgeneric zoom (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: zoom (rendering-library-camera:zoom)
"))

(cl:defgeneric get-transformation-matrix (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: get-transformation-matrix (rendering-library-camera:get-transformation-matrix)
"))

(cl:defgeneric canvas-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: canvas-height (mono-game-gum-gum-service:canvas-height)
"))

(cl:defgeneric canvas-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: canvas-width (mono-game-gum-gum-service:canvas-width)
"))

(cl:defgeneric content-loader (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: content-loader (mono-game-gum-gum-service:content-loader)
"))

(cl:defgeneric cursor (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: cursor (mono-game-gum-gum-service:cursor)
"))

(cl:defgeneric deferred-queue (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: deferred-queue (mono-game-gum-gum-service:deferred-queue)
"))

(cl:defgeneric game (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: game (mono-game-gum-gum-service:game)
"))

(cl:defgeneric gamepads (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: gamepads (mono-game-gum-gum-service:gamepads)
"))

(cl:defgeneric game-time (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: game-time (mono-game-gum-gum-service:game-time)
"))

(cl:defgeneric initialized? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: initialized? (mono-game-gum-gum-service:initialized?)
"))

(cl:defgeneric keyboard (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: keyboard (mono-game-gum-gum-service:keyboard)
"))

(cl:defgeneric last-load-result (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: last-load-result (mono-game-gum-gum-service:last-load-result)
"))

(cl:defgeneric localization-service (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: localization-service (mono-game-gum-gum-service:localization-service)
"))

(cl:defgeneric modal-root (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: modal-root (mono-game-gum-gum-service:modal-root)
"))

(cl:defgeneric popup-root (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: popup-root (mono-game-gum-gum-service:popup-root)
"))

(cl:defgeneric renderer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: renderer (mono-game-gum-gum-service:renderer)
"))

(cl:defgeneric root (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: root (mono-game-gum-gum-service:root)
"))

(cl:defgeneric synchronization-context (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: synchronization-context (mono-game-gum-gum-service:synchronization-context)
"))

(cl:defgeneric system-managers (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: system-managers (mono-game-gum-gum-service:system-managers)
RenderingLibrary.Content.ContentLoader: system-managers (rendering-library-content-content-loader:system-managers)
"))

(cl:defgeneric enable-hot-reload (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: enable-hot-reload (mono-game-gum-gum-service:enable-hot-reload)
"))

(cl:defgeneric initialize-for-testing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: initialize-for-testing (mono-game-gum-gum-service:initialize-for-testing)
"))

(cl:defgeneric load-animations (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: load-animations (mono-game-gum-gum-service:load-animations)
"))

(cl:defgeneric refresh-styles (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: refresh-styles (mono-game-gum-gum-service:refresh-styles)
"))

(cl:defgeneric uninitialize (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: uninitialize (mono-game-gum-gum-service:uninitialize)
RenderingLibrary.Graphics.Renderer: uninitialize (rendering-library-graphics-renderer:uninitialize)
"))

(cl:defgeneric use-gamepad-defaults (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: use-gamepad-defaults (mono-game-gum-gum-service:use-gamepad-defaults)
"))

(cl:defgeneric use-keyboard-defaults (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: use-keyboard-defaults (mono-game-gum-gum-service:use-keyboard-defaults)
"))

(cl:defgeneric use-single-threaded-async (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: use-single-threaded-async (mono-game-gum-gum-service:use-single-threaded-async)
"))

(cl:defgeneric actual-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: actual-height (gum-forms-controls-framework-element:actual-height)
"))

(cl:defgeneric actual-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: actual-width (gum-forms-controls-framework-element:actual-width)
"))

(cl:defgeneric binding-context (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: binding-context (gum-forms-controls-framework-element:binding-context)
"))

(cl:defgeneric custom-cursor (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: custom-cursor (gum-forms-controls-framework-element:custom-cursor)
"))

(cl:defgeneric gamepad-tabbing-focus-behavior (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: gamepad-tabbing-focus-behavior (gum-forms-controls-framework-element:gamepad-tabbing-focus-behavior)
"))

(cl:defgeneric height-units (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: height-units (gum-forms-controls-framework-element:height-units)
"))

(cl:defgeneric enabled? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: enabled? (gum-forms-controls-framework-element:enabled?)
"))

(cl:defgeneric focused? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: focused? (gum-forms-controls-framework-element:focused?)
Gum.Forms.Controls.Primitives.ButtonBase: focused? (gum-forms-controls-primitives-button-base:focused?)
"))

(cl:defgeneric tab-navigation-enabled? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: tab-navigation-enabled? (gum-forms-controls-framework-element:tab-navigation-enabled?)
"))

(cl:defgeneric using-left-and-right-gamepad-directions-for-navigation? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: using-left-and-right-gamepad-directions-for-navigation? (gum-forms-controls-framework-element:using-left-and-right-gamepad-directions-for-navigation?)
"))

(cl:defgeneric max-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: max-height (gum-forms-controls-framework-element:max-height)
"))

(cl:defgeneric max-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: max-width (gum-forms-controls-framework-element:max-width)
"))

(cl:defgeneric min-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: min-height (gum-forms-controls-framework-element:min-height)
"))

(cl:defgeneric min-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: min-width (gum-forms-controls-framework-element:min-width)
"))

(cl:defgeneric parent-framework-element (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: parent-framework-element (gum-forms-controls-framework-element:parent-framework-element)
"))

(cl:defgeneric tool-tip (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: tool-tip (gum-forms-controls-framework-element:tool-tip)
"))

(cl:defgeneric visual (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: visual (gum-forms-controls-framework-element:visual)
"))

(cl:defgeneric width-units (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: width-units (gum-forms-controls-framework-element:width-units)
"))

(cl:defgeneric x-origin (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: x-origin (gum-forms-controls-framework-element:x-origin)
"))

(cl:defgeneric x-units (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: x-units (gum-forms-controls-framework-element:x-units)
"))

(cl:defgeneric y-origin (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: y-origin (gum-forms-controls-framework-element:y-origin)
"))

(cl:defgeneric y-units (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: y-units (gum-forms-controls-framework-element:y-units)
"))

(cl:defgeneric add-child (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: add-child (gum-forms-controls-framework-element:add-child)
"))

(cl:defgeneric anchor (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: anchor (gum-forms-controls-framework-element:anchor)
"))

(cl:defgeneric apply-runtime-properties (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: apply-runtime-properties (gum-forms-controls-framework-element:apply-runtime-properties)
Gum.Forms.Controls.Button: apply-runtime-properties (gum-forms-controls-button:apply-runtime-properties)
Gum.Forms.Controls.Label: apply-runtime-properties (gum-forms-controls-label:apply-runtime-properties)
Gum.Forms.Controls.Slider: apply-runtime-properties (gum-forms-controls-slider:apply-runtime-properties)
"))

(cl:defgeneric call-loaded (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: call-loaded (gum-forms-controls-framework-element:call-loaded)
"))

(cl:defgeneric clear-binding (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: clear-binding (gum-forms-controls-framework-element:clear-binding)
"))

(cl:defgeneric close (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: close (gum-forms-controls-framework-element:close)
"))

(cl:defgeneric dock (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: dock (gum-forms-controls-framework-element:dock)
"))

(cl:defgeneric get-desired-state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-desired-state (gum-forms-controls-framework-element:get-desired-state)
"))

(cl:defgeneric get-desired-state-with-checked (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-desired-state-with-checked (gum-forms-controls-framework-element:get-desired-state-with-checked)
"))

(cl:defgeneric get-if-gamepad-or-keyboard-primary-push-input-is-held (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-if-gamepad-or-keyboard-primary-push-input-is-held (gum-forms-controls-framework-element:get-if-gamepad-or-keyboard-primary-push-input-is-held)
"))

(cl:defgeneric get-if-is-on-this-or-child-visual (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-if-is-on-this-or-child-visual (gum-forms-controls-framework-element:get-if-is-on-this-or-child-visual)
"))

(cl:defgeneric get-if-push-input-is-held (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-if-push-input-is-held (gum-forms-controls-framework-element:get-if-push-input-is-held)
Gum.Forms.Controls.Primitives.ButtonBase: get-if-push-input-is-held (gum-forms-controls-primitives-button-base:get-if-push-input-is-held)
"))

(cl:defgeneric get-state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-state (gum-forms-controls-framework-element:get-state)
"))

(cl:defgeneric get-visual (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: get-visual (gum-forms-controls-framework-element:get-visual)
"))

(cl:defgeneric handle-gamepad-navigation (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: handle-gamepad-navigation (gum-forms-controls-framework-element:handle-gamepad-navigation)
"))

(cl:defgeneric handle-keyboard-focus-update (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: handle-keyboard-focus-update (gum-forms-controls-framework-element:handle-keyboard-focus-update)
"))

(cl:defgeneric handle-tab (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: handle-tab (gum-forms-controls-framework-element:handle-tab)
"))

(cl:defgeneric handle-visual-binding-context-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: handle-visual-binding-context-changed (gum-forms-controls-framework-element:handle-visual-binding-context-changed)
"))

(cl:defgeneric data-bound? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: data-bound? (gum-forms-controls-framework-element:data-bound?)
"))

(cl:defgeneric on-binding-context-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: on-binding-context-changed (gum-forms-controls-framework-element:on-binding-context-changed)
"))

(cl:defgeneric on-property-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: on-property-changed (gum-forms-controls-framework-element:on-property-changed)
"))

(cl:defgeneric push-value-to-view-model (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: push-value-to-view-model (gum-forms-controls-framework-element:push-value-to-view-model)
"))

(cl:defgeneric raise-key-down (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: raise-key-down (gum-forms-controls-framework-element:raise-key-down)
"))

(cl:defgeneric react-to-visual-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: react-to-visual-changed (gum-forms-controls-framework-element:react-to-visual-changed)
Gum.Forms.Controls.Panel: react-to-visual-changed (gum-forms-controls-panel:react-to-visual-changed)
Gum.Forms.Controls.Button: react-to-visual-changed (gum-forms-controls-button:react-to-visual-changed)
Gum.Forms.Controls.Primitives.ButtonBase: react-to-visual-changed (gum-forms-controls-primitives-button-base:react-to-visual-changed)
Gum.Forms.Controls.Label: react-to-visual-changed (gum-forms-controls-label:react-to-visual-changed)
Gum.Forms.Controls.Slider: react-to-visual-changed (gum-forms-controls-slider:react-to-visual-changed)
"))

(cl:defgeneric react-to-visual-removed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: react-to-visual-removed (gum-forms-controls-framework-element:react-to-visual-removed)
Gum.Forms.Controls.Slider: react-to-visual-removed (gum-forms-controls-slider:react-to-visual-removed)
"))

(cl:defgeneric refresh-internal-visual-references (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: refresh-internal-visual-references (gum-forms-controls-framework-element:refresh-internal-visual-references)
Gum.Forms.Controls.Button: refresh-internal-visual-references (gum-forms-controls-button:refresh-internal-visual-references)
Gum.Forms.Controls.Label: refresh-internal-visual-references (gum-forms-controls-label:refresh-internal-visual-references)
"))

(cl:defgeneric register-runtime-property (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: register-runtime-property (gum-forms-controls-framework-element:register-runtime-property)
"))

(cl:defgeneric remove-child (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: remove-child (gum-forms-controls-framework-element:remove-child)
"))

(cl:defgeneric reposition-to-keep-in-screen (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: reposition-to-keep-in-screen (gum-forms-controls-framework-element:reposition-to-keep-in-screen)
"))

(cl:defgeneric save-runtime-properties (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: save-runtime-properties (gum-forms-controls-framework-element:save-runtime-properties)
Gum.Forms.Controls.Button: save-runtime-properties (gum-forms-controls-button:save-runtime-properties)
Gum.Forms.Controls.Label: save-runtime-properties (gum-forms-controls-label:save-runtime-properties)
"))

(cl:defgeneric set-binding (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: set-binding (gum-forms-controls-framework-element:set-binding)
"))

(cl:defgeneric show (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: show (gum-forms-controls-framework-element:show)
"))

(cl:defgeneric update-state (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: update-state (gum-forms-controls-framework-element:update-state)
Gum.Forms.Controls.Button: update-state (gum-forms-controls-button:update-state)
Gum.Forms.Controls.Slider: update-state (gum-forms-controls-slider:update-state)
"))

(cl:defgeneric update-state-recursively (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: update-state-recursively (gum-forms-controls-framework-element:update-state-recursively)
"))

(cl:defgeneric children (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Panel: children (gum-forms-controls-panel:children)
"))

(cl:defgeneric text (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Button: text (gum-forms-controls-button:text)
MonoGameGum.GueDeriving.TextRuntime: text (mono-game-gum-gue-deriving-text-runtime:text)
Gum.Forms.Controls.Label: text (gum-forms-controls-label:text)
"))

(cl:defgeneric set-text-no-translate (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Button: set-text-no-translate (gum-forms-controls-button:set-text-no-translate)
MonoGameGum.GueDeriving.TextRuntime: set-text-no-translate (mono-game-gum-gue-deriving-text-runtime:set-text-no-translate)
Gum.Forms.Controls.Label: set-text-no-translate (gum-forms-controls-label:set-text-no-translate)
"))

(cl:defgeneric click-gamepad-button (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: click-gamepad-button (gum-forms-controls-primitives-button-base:click-gamepad-button)
"))

(cl:defgeneric ignored-keys (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: ignored-keys (gum-forms-controls-primitives-button-base:ignored-keys)
Gum.Forms.Controls.Slider: ignored-keys (gum-forms-controls-slider:ignored-keys)
"))

(cl:defgeneric next-in-tab-sequence (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: next-in-tab-sequence (gum-forms-controls-primitives-button-base:next-in-tab-sequence)
Gum.Forms.Controls.Slider: next-in-tab-sequence (gum-forms-controls-slider:next-in-tab-sequence)
"))

(cl:defgeneric parent-input-receiver (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: parent-input-receiver (gum-forms-controls-primitives-button-base:parent-input-receiver)
Gum.Forms.Controls.Slider: parent-input-receiver (gum-forms-controls-slider:parent-input-receiver)
"))

(cl:defgeneric taking-input (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: taking-input (gum-forms-controls-primitives-button-base:taking-input)
Gum.Forms.Controls.Slider: taking-input (gum-forms-controls-slider:taking-input)
"))

(cl:defgeneric do-keyboard-action (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: do-keyboard-action (gum-forms-controls-primitives-button-base:do-keyboard-action)
Gum.Forms.Controls.Slider: do-keyboard-action (gum-forms-controls-slider:do-keyboard-action)
"))

(cl:defgeneric handle-char-entered (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: handle-char-entered (gum-forms-controls-primitives-button-base:handle-char-entered)
Gum.Forms.Controls.Slider: handle-char-entered (gum-forms-controls-slider:handle-char-entered)
"))

(cl:defgeneric handle-key-down (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: handle-key-down (gum-forms-controls-primitives-button-base:handle-key-down)
Gum.Forms.Controls.Slider: handle-key-down (gum-forms-controls-slider:handle-key-down)
"))

(cl:defgeneric lose-focus (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: lose-focus (gum-forms-controls-primitives-button-base:lose-focus)
Gum.Forms.Controls.Slider: lose-focus (gum-forms-controls-slider:lose-focus)
"))

(cl:defgeneric on-click (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: on-click (gum-forms-controls-primitives-button-base:on-click)
"))

(cl:defgeneric on-focus-update (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: on-focus-update (gum-forms-controls-primitives-button-base:on-focus-update)
Gum.Forms.Controls.Slider: on-focus-update (gum-forms-controls-slider:on-focus-update)
"))

(cl:defgeneric on-focus-update-preview (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: on-focus-update-preview (gum-forms-controls-primitives-button-base:on-focus-update-preview)
Gum.Forms.Controls.Slider: on-focus-update-preview (gum-forms-controls-slider:on-focus-update-preview)
"))

(cl:defgeneric on-gain-focus (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: on-gain-focus (gum-forms-controls-primitives-button-base:on-gain-focus)
Gum.Forms.Controls.Slider: on-gain-focus (gum-forms-controls-slider:on-gain-focus)
"))

(cl:defgeneric on-lose-focus (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: on-lose-focus (gum-forms-controls-primitives-button-base:on-lose-focus)
Gum.Forms.Controls.Slider: on-lose-focus (gum-forms-controls-slider:on-lose-focus)
"))

(cl:defgeneric perform-click (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: perform-click (gum-forms-controls-primitives-button-base:perform-click)
"))

(cl:defgeneric receive-input (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: receive-input (gum-forms-controls-primitives-button-base:receive-input)
Gum.Forms.Controls.Slider: receive-input (gum-forms-controls-slider:receive-input)
"))

(cl:defgeneric default-height (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: default-height (mono-game-gum-gue-deriving-text-runtime:default-height)
"))

(cl:defgeneric default-height-units (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: default-height-units (mono-game-gum-gue-deriving-text-runtime:default-height-units)
"))

(cl:defgeneric default-width (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: default-width (mono-game-gum-gue-deriving-text-runtime:default-width)
"))

(cl:defgeneric default-width-units (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: default-width-units (mono-game-gum-gue-deriving-text-runtime:default-width-units)
"))

(cl:defgeneric alpha (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: alpha (mono-game-gum-gue-deriving-text-runtime:alpha)
"))

(cl:defgeneric bitmap-font (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: bitmap-font (mono-game-gum-gue-deriving-text-runtime:bitmap-font)
"))

(cl:defgeneric blend (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: blend (mono-game-gum-gue-deriving-text-runtime:blend)
"))

(cl:defgeneric blue (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: blue (mono-game-gum-gue-deriving-text-runtime:blue)
"))

(cl:defgeneric color (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: color (mono-game-gum-gue-deriving-text-runtime:color)
"))

(cl:defgeneric custom-font-file (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: custom-font-file (mono-game-gum-gue-deriving-text-runtime:custom-font-file)
"))

(cl:defgeneric font (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: font (mono-game-gum-gue-deriving-text-runtime:font)
"))

(cl:defgeneric font-family (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: font-family (mono-game-gum-gue-deriving-text-runtime:font-family)
"))

(cl:defgeneric font-scale (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: font-scale (mono-game-gum-gue-deriving-text-runtime:font-scale)
"))

(cl:defgeneric font-size (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: font-size (mono-game-gum-gue-deriving-text-runtime:font-size)
"))

(cl:defgeneric green (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: green (mono-game-gum-gue-deriving-text-runtime:green)
"))

(cl:defgeneric horizontal-alignment (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: horizontal-alignment (mono-game-gum-gue-deriving-text-runtime:horizontal-alignment)
"))

(cl:defgeneric bold? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: bold? (mono-game-gum-gue-deriving-text-runtime:bold?)
"))

(cl:defgeneric italic? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: italic? (mono-game-gum-gue-deriving-text-runtime:italic?)
"))

(cl:defgeneric line-height-multiplier (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: line-height-multiplier (mono-game-gum-gue-deriving-text-runtime:line-height-multiplier)
"))

(cl:defgeneric max-letters-to-show (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: max-letters-to-show (mono-game-gum-gue-deriving-text-runtime:max-letters-to-show)
"))

(cl:defgeneric max-number-of-lines (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: max-number-of-lines (mono-game-gum-gue-deriving-text-runtime:max-number-of-lines)
"))

(cl:defgeneric outline-thickness (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: outline-thickness (mono-game-gum-gue-deriving-text-runtime:outline-thickness)
"))

(cl:defgeneric overlap-direction (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: overlap-direction (mono-game-gum-gue-deriving-text-runtime:overlap-direction)
"))

(cl:defgeneric red (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: red (mono-game-gum-gue-deriving-text-runtime:red)
"))

(cl:defgeneric text-overflow-horizontal-mode (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: text-overflow-horizontal-mode (mono-game-gum-gue-deriving-text-runtime:text-overflow-horizontal-mode)
"))

(cl:defgeneric text-rendering-position-mode (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: text-rendering-position-mode (mono-game-gum-gue-deriving-text-runtime:text-rendering-position-mode)
"))

(cl:defgeneric use-custom-font (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: use-custom-font (mono-game-gum-gue-deriving-text-runtime:use-custom-font)
"))

(cl:defgeneric use-font-smoothing (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: use-font-smoothing (mono-game-gum-gue-deriving-text-runtime:use-font-smoothing)
"))

(cl:defgeneric vertical-alignment (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: vertical-alignment (mono-game-gum-gue-deriving-text-runtime:vertical-alignment)
"))

(cl:defgeneric wrapped-text (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: wrapped-text (mono-game-gum-gue-deriving-text-runtime:wrapped-text)
"))

(cl:defgeneric add-to-managers (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: add-to-managers (mono-game-gum-gue-deriving-text-runtime:add-to-managers)
"))

(cl:defgeneric get-character-index-at-position (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: get-character-index-at-position (mono-game-gum-gue-deriving-text-runtime:get-character-index-at-position)
"))

(cl:defgeneric text-component (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Label: text-component (gum-forms-controls-label:text-component)
"))

(cl:defgeneric snap-to-tick-enabled? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: snap-to-tick-enabled? (gum-forms-controls-slider:snap-to-tick-enabled?)
"))

(cl:defgeneric thumb-grabbed? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: thumb-grabbed? (gum-forms-controls-slider:thumb-grabbed?)
"))

(cl:defgeneric ticks-frequency (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: ticks-frequency (gum-forms-controls-slider:ticks-frequency)
"))

(cl:defgeneric handle-thumb-push (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: handle-thumb-push (gum-forms-controls-slider:handle-thumb-push)
"))

(cl:defgeneric on-maximum-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: on-maximum-changed (gum-forms-controls-slider:on-maximum-changed)
"))

(cl:defgeneric on-minimum-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: on-minimum-changed (gum-forms-controls-slider:on-minimum-changed)
"))

(cl:defgeneric on-value-changed (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: on-value-changed (gum-forms-controls-slider:on-value-changed)
"))

(cl:defgeneric update-thumb-position-to-cursor-drag (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: update-thumb-position-to-cursor-drag (gum-forms-controls-slider:update-thumb-position-to-cursor-drag)
"))

(cl:defgeneric xna-content-manager (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Content.ContentLoader: xna-content-manager (rendering-library-content-content-loader:xna-content-manager)
"))

(cl:defgeneric held-key (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.KeyCombo: held-key (gum-forms-controls-key-combo:held-key)
"))

(cl:defgeneric triggered-on-repeat? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.KeyCombo: triggered-on-repeat? (gum-forms-controls-key-combo:triggered-on-repeat?)
"))

(cl:defgeneric pushed-key (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.KeyCombo: pushed-key (gum-forms-controls-key-combo:pushed-key)
"))

(cl:defgeneric single-pixel-source-rectangle (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: single-pixel-source-rectangle (rendering-library-graphics-renderer:single-pixel-source-rectangle)
"))

(cl:defgeneric camera (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: camera (rendering-library-graphics-renderer:camera)
"))

(cl:defgeneric dotted-line-texture (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: dotted-line-texture (rendering-library-graphics-renderer:dotted-line-texture)
"))

(cl:defgeneric using-premultiplied-alpha? (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: using-premultiplied-alpha? (rendering-library-graphics-renderer:using-premultiplied-alpha?)
"))

(cl:defgeneric layers (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: layers (rendering-library-graphics-renderer:layers)
"))

(cl:defgeneric main-layer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: main-layer (rendering-library-graphics-renderer:main-layer)
"))

(cl:defgeneric single-pixel-texture (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: single-pixel-texture (rendering-library-graphics-renderer:single-pixel-texture)
"))

(cl:defgeneric sprite-renderer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: sprite-renderer (rendering-library-graphics-renderer:sprite-renderer)
"))

(cl:defgeneric add-layer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: add-layer (rendering-library-graphics-renderer:add-layer)
"))

(cl:defgeneric clear-performance-recording-variables (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: clear-performance-recording-variables (rendering-library-graphics-renderer:clear-performance-recording-variables)
"))

(cl:defgeneric force-end (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: force-end (rendering-library-graphics-renderer:force-end)
"))

(cl:defgeneric insert-layer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: insert-layer (rendering-library-graphics-renderer:insert-layer)
"))

(cl:defgeneric remove-layer (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: remove-layer (rendering-library-graphics-renderer:remove-layer)
"))

(cl:defgeneric remove-renderable (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: remove-renderable (rendering-library-graphics-renderer:remove-renderable)
"))

(cl:defgeneric try-get-single-pixel-texture (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: try-get-single-pixel-texture (rendering-library-graphics-renderer:try-get-single-pixel-texture)
"))

(cl:defgeneric capacity (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: capacity (system-collections-generic-list-1:capacity)
"))

(cl:defgeneric add-range (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: add-range (system-collections-generic-list-1:add-range)
"))

(cl:defgeneric as-read-only (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: as-read-only (system-collections-generic-list-1:as-read-only)
"))

(cl:defgeneric binary-search (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: binary-search (system-collections-generic-list-1:binary-search)
"))

(cl:defgeneric ensure-capacity (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: ensure-capacity (system-collections-generic-list-1:ensure-capacity)
"))

(cl:defgeneric exists (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: exists (system-collections-generic-list-1:exists)
"))

(cl:defgeneric find (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: find (system-collections-generic-list-1:find)
"))

(cl:defgeneric find-all (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: find-all (system-collections-generic-list-1:find-all)
"))

(cl:defgeneric find-index (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: find-index (system-collections-generic-list-1:find-index)
"))

(cl:defgeneric find-last (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: find-last (system-collections-generic-list-1:find-last)
"))

(cl:defgeneric find-last-index (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: find-last-index (system-collections-generic-list-1:find-last-index)
"))

(cl:defgeneric for-each (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: for-each (system-collections-generic-list-1:for-each)
"))

(cl:defgeneric get-range (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: get-range (system-collections-generic-list-1:get-range)
"))

(cl:defgeneric insert-range (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: insert-range (system-collections-generic-list-1:insert-range)
"))

(cl:defgeneric last-index-of (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: last-index-of (system-collections-generic-list-1:last-index-of)
"))

(cl:defgeneric remove-all (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: remove-all (system-collections-generic-list-1:remove-all)
"))

(cl:defgeneric remove-range (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: remove-range (system-collections-generic-list-1:remove-range)
"))

(cl:defgeneric reverse (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: reverse (system-collections-generic-list-1:reverse)
"))

(cl:defgeneric slice (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: slice (system-collections-generic-list-1:slice)
"))

(cl:defgeneric sort (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: sort (system-collections-generic-list-1:sort)
"))

(cl:defgeneric to-array (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: to-array (system-collections-generic-list-1:to-array)
"))

(cl:defgeneric trim-excess (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: trim-excess (system-collections-generic-list-1:trim-excess)
"))

(cl:defgeneric true-for-all (obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: true-for-all (system-collections-generic-list-1:true-for-all)
"))

(cl:defgeneric (cl:setf value__) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.UriKind: (cl:setf value__) (cl:setf (system-uri-kind:value__ ...))
Microsoft.Xna.Framework.Input.Keys: (cl:setf value__) (cl:setf (microsoft-xna-framework-input-keys:value__ ...))
Microsoft.Xna.Framework.Input.ButtonState: (cl:setf value__) (cl:setf (microsoft-xna-framework-input-button-state:value__ ...))
Microsoft.Xna.Framework.Input.Buttons: (cl:setf value__) (cl:setf (microsoft-xna-framework-input-buttons:value__ ...))
Microsoft.Xna.Framework.Graphics.SpriteEffects: (cl:setf value__) (cl:setf (microsoft-xna-framework-graphics-sprite-effects:value__ ...))
Microsoft.Xna.Framework.Graphics.SpriteSortMode: (cl:setf value__) (cl:setf (microsoft-xna-framework-graphics-sprite-sort-mode:value__ ...))
Microsoft.Xna.Framework.PlayerIndex: (cl:setf value__) (cl:setf (microsoft-xna-framework-player-index:value__ ...))
Microsoft.Xna.Framework.Audio.SoundState: (cl:setf value__) (cl:setf (microsoft-xna-framework-audio-sound-state:value__ ...))
Gum.Wireframe.Anchor: (cl:setf value__) (cl:setf (gum-wireframe-anchor:value__ ...))
Gum.Wireframe.Dock: (cl:setf value__) (cl:setf (gum-wireframe-dock:value__ ...))
Gum.Forms.DefaultVisualsVersion: (cl:setf value__) (cl:setf (gum-forms-default-visuals-version:value__ ...))
"))

(cl:defgeneric (cl:setf x) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: (cl:setf x) (cl:setf (microsoft-xna-framework-vector2:x ...))
Microsoft.Xna.Framework.Rectangle: (cl:setf x) (cl:setf (microsoft-xna-framework-rectangle:x ...))
Microsoft.Xna.Framework.Point: (cl:setf x) (cl:setf (microsoft-xna-framework-point:x ...))
RenderingLibrary.Camera: (cl:setf x) (cl:setf (rendering-library-camera:x ...))
Gum.Forms.Controls.FrameworkElement: (cl:setf x) (cl:setf (gum-forms-controls-framework-element:x ...))
"))

(cl:defgeneric (cl:setf y) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Vector2: (cl:setf y) (cl:setf (microsoft-xna-framework-vector2:y ...))
Microsoft.Xna.Framework.Rectangle: (cl:setf y) (cl:setf (microsoft-xna-framework-rectangle:y ...))
Microsoft.Xna.Framework.Point: (cl:setf y) (cl:setf (microsoft-xna-framework-point:y ...))
RenderingLibrary.Camera: (cl:setf y) (cl:setf (rendering-library-camera:y ...))
Gum.Forms.Controls.FrameworkElement: (cl:setf y) (cl:setf (gum-forms-controls-framework-element:y ...))
"))

(cl:defgeneric (cl:setf height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: (cl:setf height) (cl:setf (microsoft-xna-framework-rectangle:height ...))
Gum.Forms.Controls.FrameworkElement: (cl:setf height) (cl:setf (gum-forms-controls-framework-element:height ...))
"))

(cl:defgeneric (cl:setf width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: (cl:setf width) (cl:setf (microsoft-xna-framework-rectangle:width ...))
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf width) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:width ...))
Gum.Forms.Controls.FrameworkElement: (cl:setf width) (cl:setf (gum-forms-controls-framework-element:width ...))
"))

(cl:defgeneric (cl:setf location) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: (cl:setf location) (cl:setf (microsoft-xna-framework-rectangle:location ...))
"))

(cl:defgeneric (cl:setf size) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Rectangle: (cl:setf size) (cl:setf (microsoft-xna-framework-rectangle:size ...))
"))

(cl:defgeneric (cl:setf elapsed-game-time) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameTime: (cl:setf elapsed-game-time) (cl:setf (microsoft-xna-framework-game-time:elapsed-game-time ...))
"))

(cl:defgeneric (cl:setf running-slowly?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameTime: (cl:setf running-slowly?) (cl:setf (microsoft-xna-framework-game-time:running-slowly? ...))
"))

(cl:defgeneric (cl:setf total-game-time) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameTime: (cl:setf total-game-time) (cl:setf (microsoft-xna-framework-game-time:total-game-time ...))
"))

(cl:defgeneric (cl:setf content) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: (cl:setf content) (cl:setf (microsoft-xna-framework-game:content ...))
"))

(cl:defgeneric (cl:setf inactive-sleep-time) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: (cl:setf inactive-sleep-time) (cl:setf (microsoft-xna-framework-game:inactive-sleep-time ...))
"))

(cl:defgeneric (cl:setf fixed-time-step?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: (cl:setf fixed-time-step?) (cl:setf (microsoft-xna-framework-game:fixed-time-step? ...))
"))

(cl:defgeneric (cl:setf mouse-visible?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: (cl:setf mouse-visible?) (cl:setf (microsoft-xna-framework-game:mouse-visible? ...))
"))

(cl:defgeneric (cl:setf max-elapsed-time) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: (cl:setf max-elapsed-time) (cl:setf (microsoft-xna-framework-game:max-elapsed-time ...))
"))

(cl:defgeneric (cl:setf target-elapsed-time) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Game: (cl:setf target-elapsed-time) (cl:setf (microsoft-xna-framework-game:target-elapsed-time ...))
"))

(cl:defgeneric (cl:setf allow-alt-f4) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: (cl:setf allow-alt-f4) (cl:setf (microsoft-xna-framework-game-window:allow-alt-f4 ...))
"))

(cl:defgeneric (cl:setf allow-user-resizing) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: (cl:setf allow-user-resizing) (cl:setf (microsoft-xna-framework-game-window:allow-user-resizing ...))
"))

(cl:defgeneric (cl:setf borderless?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: (cl:setf borderless?) (cl:setf (microsoft-xna-framework-game-window:borderless? ...))
"))

(cl:defgeneric (cl:setf position) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: (cl:setf position) (cl:setf (microsoft-xna-framework-game-window:position ...))
RenderingLibrary.Camera: (cl:setf position) (cl:setf (rendering-library-camera:position ...))
"))

(cl:defgeneric (cl:setf title) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GameWindow: (cl:setf title) (cl:setf (microsoft-xna-framework-game-window:title ...))
"))

(cl:defgeneric (cl:setf item) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Input.Touch.TouchCollection: (cl:setf item) (cl:setf (microsoft-xna-framework-input-touch-touch-collection:item ...))
System.Collections.Generic.List`1: (cl:setf item) (cl:setf (system-collections-generic-list-1:item ...))
"))

(cl:defgeneric (cl:setf a) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: (cl:setf a) (cl:setf (microsoft-xna-framework-color:a ...))
"))

(cl:defgeneric (cl:setf b) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: (cl:setf b) (cl:setf (microsoft-xna-framework-color:b ...))
"))

(cl:defgeneric (cl:setf g) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: (cl:setf g) (cl:setf (microsoft-xna-framework-color:g ...))
"))

(cl:defgeneric (cl:setf packed-value) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: (cl:setf packed-value) (cl:setf (microsoft-xna-framework-color:packed-value ...))
"))

(cl:defgeneric (cl:setf r) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Color: (cl:setf r) (cl:setf (microsoft-xna-framework-color:r ...))
"))

(cl:defgeneric (cl:setf root-directory) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Content.ContentManager: (cl:setf root-directory) (cl:setf (microsoft-xna-framework-content-content-manager:root-directory ...))
"))

(cl:defgeneric (cl:setf graphics-profile) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf graphics-profile) (cl:setf (microsoft-xna-framework-graphics-device-manager:graphics-profile ...))
"))

(cl:defgeneric (cl:setf hardware-mode-switch) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf hardware-mode-switch) (cl:setf (microsoft-xna-framework-graphics-device-manager:hardware-mode-switch ...))
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf hardware-mode-switch) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:hardware-mode-switch ...))
"))

(cl:defgeneric (cl:setf full-screen?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf full-screen?) (cl:setf (microsoft-xna-framework-graphics-device-manager:full-screen? ...))
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf full-screen?) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:full-screen? ...))
"))

(cl:defgeneric (cl:setf prefer-half-pixel-offset) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf prefer-half-pixel-offset) (cl:setf (microsoft-xna-framework-graphics-device-manager:prefer-half-pixel-offset ...))
"))

(cl:defgeneric (cl:setf prefer-multi-sampling) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf prefer-multi-sampling) (cl:setf (microsoft-xna-framework-graphics-device-manager:prefer-multi-sampling ...))
"))

(cl:defgeneric (cl:setf preferred-back-buffer-format) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf preferred-back-buffer-format) (cl:setf (microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-format ...))
"))

(cl:defgeneric (cl:setf preferred-back-buffer-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf preferred-back-buffer-height) (cl:setf (microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-height ...))
"))

(cl:defgeneric (cl:setf preferred-back-buffer-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf preferred-back-buffer-width) (cl:setf (microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-width ...))
"))

(cl:defgeneric (cl:setf preferred-depth-stencil-format) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf preferred-depth-stencil-format) (cl:setf (microsoft-xna-framework-graphics-device-manager:preferred-depth-stencil-format ...))
"))

(cl:defgeneric (cl:setf supported-orientations) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf supported-orientations) (cl:setf (microsoft-xna-framework-graphics-device-manager:supported-orientations ...))
"))

(cl:defgeneric (cl:setf synchronize-with-vertical-retrace) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.GraphicsDeviceManager: (cl:setf synchronize-with-vertical-retrace) (cl:setf (microsoft-xna-framework-graphics-device-manager:synchronize-with-vertical-retrace ...))
"))

(cl:defgeneric (cl:setf address-u) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf address-u) (cl:setf (microsoft-xna-framework-graphics-sampler-state:address-u ...))
"))

(cl:defgeneric (cl:setf address-v) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf address-v) (cl:setf (microsoft-xna-framework-graphics-sampler-state:address-v ...))
"))

(cl:defgeneric (cl:setf address-w) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf address-w) (cl:setf (microsoft-xna-framework-graphics-sampler-state:address-w ...))
"))

(cl:defgeneric (cl:setf border-color) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf border-color) (cl:setf (microsoft-xna-framework-graphics-sampler-state:border-color ...))
"))

(cl:defgeneric (cl:setf comparison-function) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf comparison-function) (cl:setf (microsoft-xna-framework-graphics-sampler-state:comparison-function ...))
"))

(cl:defgeneric (cl:setf filter) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf filter) (cl:setf (microsoft-xna-framework-graphics-sampler-state:filter ...))
"))

(cl:defgeneric (cl:setf filter-mode) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf filter-mode) (cl:setf (microsoft-xna-framework-graphics-sampler-state:filter-mode ...))
"))

(cl:defgeneric (cl:setf max-anisotropy) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf max-anisotropy) (cl:setf (microsoft-xna-framework-graphics-sampler-state:max-anisotropy ...))
"))

(cl:defgeneric (cl:setf max-mip-level) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf max-mip-level) (cl:setf (microsoft-xna-framework-graphics-sampler-state:max-mip-level ...))
"))

(cl:defgeneric (cl:setf mip-map-level-of-detail-bias) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SamplerState: (cl:setf mip-map-level-of-detail-bias) (cl:setf (microsoft-xna-framework-graphics-sampler-state:mip-map-level-of-detail-bias ...))
"))

(cl:defgeneric (cl:setf blend-factor) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf blend-factor) (cl:setf (microsoft-xna-framework-graphics-graphics-device:blend-factor ...))
"))

(cl:defgeneric (cl:setf blend-state) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf blend-state) (cl:setf (microsoft-xna-framework-graphics-graphics-device:blend-state ...))
MonoGameGum.GueDeriving.TextRuntime: (cl:setf blend-state) (cl:setf (mono-game-gum-gue-deriving-text-runtime:blend-state ...))
"))

(cl:defgeneric (cl:setf depth-stencil-state) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf depth-stencil-state) (cl:setf (microsoft-xna-framework-graphics-graphics-device:depth-stencil-state ...))
"))

(cl:defgeneric (cl:setf graphics-debug) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf graphics-debug) (cl:setf (microsoft-xna-framework-graphics-graphics-device:graphics-debug ...))
"))

(cl:defgeneric (cl:setf indices) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf indices) (cl:setf (microsoft-xna-framework-graphics-graphics-device:indices ...))
"))

(cl:defgeneric (cl:setf metrics) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf metrics) (cl:setf (microsoft-xna-framework-graphics-graphics-device:metrics ...))
"))

(cl:defgeneric (cl:setf rasterizer-state) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf rasterizer-state) (cl:setf (microsoft-xna-framework-graphics-graphics-device:rasterizer-state ...))
"))

(cl:defgeneric (cl:setf resources-lost) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf resources-lost) (cl:setf (microsoft-xna-framework-graphics-graphics-device:resources-lost ...))
"))

(cl:defgeneric (cl:setf scissor-rectangle) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf scissor-rectangle) (cl:setf (microsoft-xna-framework-graphics-graphics-device:scissor-rectangle ...))
"))

(cl:defgeneric (cl:setf viewport) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.GraphicsDevice: (cl:setf viewport) (cl:setf (microsoft-xna-framework-graphics-graphics-device:viewport ...))
"))

(cl:defgeneric (cl:setf default-character) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: (cl:setf default-character) (cl:setf (microsoft-xna-framework-graphics-sprite-font:default-character ...))
"))

(cl:defgeneric (cl:setf line-spacing) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: (cl:setf line-spacing) (cl:setf (microsoft-xna-framework-graphics-sprite-font:line-spacing ...))
"))

(cl:defgeneric (cl:setf spacing) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont: (cl:setf spacing) (cl:setf (microsoft-xna-framework-graphics-sprite-font:spacing ...))
"))

(cl:defgeneric (cl:setf bounds-in-texture) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf bounds-in-texture) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:bounds-in-texture ...))
"))

(cl:defgeneric (cl:setf character) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf character) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:character ...))
"))

(cl:defgeneric (cl:setf cropping) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf cropping) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:cropping ...))
"))

(cl:defgeneric (cl:setf left-side-bearing) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf left-side-bearing) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:left-side-bearing ...))
"))

(cl:defgeneric (cl:setf right-side-bearing) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf right-side-bearing) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:right-side-bearing ...))
"))

(cl:defgeneric (cl:setf width-including-bearings) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph: (cl:setf width-including-bearings) (cl:setf (microsoft-xna-framework-graphics-sprite-font-glyph:width-including-bearings ...))
"))

(cl:defgeneric (cl:setf back-buffer-format) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf back-buffer-format) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:back-buffer-format ...))
"))

(cl:defgeneric (cl:setf back-buffer-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf back-buffer-height) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:back-buffer-height ...))
"))

(cl:defgeneric (cl:setf back-buffer-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf back-buffer-width) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:back-buffer-width ...))
"))

(cl:defgeneric (cl:setf depth-stencil-format) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf depth-stencil-format) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:depth-stencil-format ...))
"))

(cl:defgeneric (cl:setf device-window-handle) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf device-window-handle) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:device-window-handle ...))
"))

(cl:defgeneric (cl:setf display-orientation) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf display-orientation) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:display-orientation ...))
"))

(cl:defgeneric (cl:setf multi-sample-count) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf multi-sample-count) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:multi-sample-count ...))
"))

(cl:defgeneric (cl:setf presentation-interval) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf presentation-interval) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:presentation-interval ...))
"))

(cl:defgeneric (cl:setf render-target-usage) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Graphics.PresentationParameters: (cl:setf render-target-usage) (cl:setf (microsoft-xna-framework-graphics-presentation-parameters:render-target-usage ...))
"))

(cl:defgeneric (cl:setf name) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffect: (cl:setf name) (cl:setf (microsoft-xna-framework-audio-sound-effect:name ...))
Gum.Forms.Controls.FrameworkElement: (cl:setf name) (cl:setf (gum-forms-controls-framework-element:name ...))
"))

(cl:defgeneric (cl:setf looped?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: (cl:setf looped?) (cl:setf (microsoft-xna-framework-audio-sound-effect-instance:looped? ...))
"))

(cl:defgeneric (cl:setf pan) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: (cl:setf pan) (cl:setf (microsoft-xna-framework-audio-sound-effect-instance:pan ...))
"))

(cl:defgeneric (cl:setf pitch) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: (cl:setf pitch) (cl:setf (microsoft-xna-framework-audio-sound-effect-instance:pitch ...))
"))

(cl:defgeneric (cl:setf volume) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Microsoft.Xna.Framework.Audio.SoundEffectInstance: (cl:setf volume) (cl:setf (microsoft-xna-framework-audio-sound-effect-instance:volume ...))
"))

(cl:defgeneric (cl:setf absolute-left) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf absolute-left) (cl:setf (rendering-library-camera:absolute-left ...))
"))

(cl:defgeneric (cl:setf absolute-top) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf absolute-top) (cl:setf (rendering-library-camera:absolute-top ...))
"))

(cl:defgeneric (cl:setf camera-center-on-screen) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf camera-center-on-screen) (cl:setf (rendering-library-camera:camera-center-on-screen ...))
"))

(cl:defgeneric (cl:setf client-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf client-height) (cl:setf (rendering-library-camera:client-height ...))
"))

(cl:defgeneric (cl:setf client-left) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf client-left) (cl:setf (rendering-library-camera:client-left ...))
"))

(cl:defgeneric (cl:setf client-top) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf client-top) (cl:setf (rendering-library-camera:client-top ...))
"))

(cl:defgeneric (cl:setf client-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf client-width) (cl:setf (rendering-library-camera:client-width ...))
"))

(cl:defgeneric (cl:setf zoom) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Camera: (cl:setf zoom) (cl:setf (rendering-library-camera:zoom ...))
"))

(cl:defgeneric (cl:setf canvas-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: (cl:setf canvas-height) (cl:setf (mono-game-gum-gum-service:canvas-height ...))
"))

(cl:defgeneric (cl:setf canvas-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GumService: (cl:setf canvas-width) (cl:setf (mono-game-gum-gum-service:canvas-width ...))
"))

(cl:defgeneric (cl:setf binding-context) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf binding-context) (cl:setf (gum-forms-controls-framework-element:binding-context ...))
"))

(cl:defgeneric (cl:setf custom-cursor) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf custom-cursor) (cl:setf (gum-forms-controls-framework-element:custom-cursor ...))
"))

(cl:defgeneric (cl:setf gamepad-tabbing-focus-behavior) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf gamepad-tabbing-focus-behavior) (cl:setf (gum-forms-controls-framework-element:gamepad-tabbing-focus-behavior ...))
"))

(cl:defgeneric (cl:setf height-units) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf height-units) (cl:setf (gum-forms-controls-framework-element:height-units ...))
"))

(cl:defgeneric (cl:setf enabled?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf enabled?) (cl:setf (gum-forms-controls-framework-element:enabled? ...))
"))

(cl:defgeneric (cl:setf focused?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf focused?) (cl:setf (gum-forms-controls-framework-element:focused? ...))
Gum.Forms.Controls.Primitives.ButtonBase: (cl:setf focused?) (cl:setf (gum-forms-controls-primitives-button-base:focused? ...))
"))

(cl:defgeneric (cl:setf using-left-and-right-gamepad-directions-for-navigation?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf using-left-and-right-gamepad-directions-for-navigation?) (cl:setf (gum-forms-controls-framework-element:using-left-and-right-gamepad-directions-for-navigation? ...))
"))

(cl:defgeneric (cl:setf visible?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf visible?) (cl:setf (gum-forms-controls-framework-element:visible? ...))
"))

(cl:defgeneric (cl:setf max-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf max-height) (cl:setf (gum-forms-controls-framework-element:max-height ...))
"))

(cl:defgeneric (cl:setf max-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf max-width) (cl:setf (gum-forms-controls-framework-element:max-width ...))
"))

(cl:defgeneric (cl:setf min-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf min-height) (cl:setf (gum-forms-controls-framework-element:min-height ...))
"))

(cl:defgeneric (cl:setf min-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf min-width) (cl:setf (gum-forms-controls-framework-element:min-width ...))
"))

(cl:defgeneric (cl:setf tool-tip) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf tool-tip) (cl:setf (gum-forms-controls-framework-element:tool-tip ...))
"))

(cl:defgeneric (cl:setf visual) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf visual) (cl:setf (gum-forms-controls-framework-element:visual ...))
"))

(cl:defgeneric (cl:setf width-units) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf width-units) (cl:setf (gum-forms-controls-framework-element:width-units ...))
"))

(cl:defgeneric (cl:setf x-origin) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf x-origin) (cl:setf (gum-forms-controls-framework-element:x-origin ...))
"))

(cl:defgeneric (cl:setf x-units) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf x-units) (cl:setf (gum-forms-controls-framework-element:x-units ...))
"))

(cl:defgeneric (cl:setf y-origin) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf y-origin) (cl:setf (gum-forms-controls-framework-element:y-origin ...))
"))

(cl:defgeneric (cl:setf y-units) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.FrameworkElement: (cl:setf y-units) (cl:setf (gum-forms-controls-framework-element:y-units ...))
"))

(cl:defgeneric (cl:setf text) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Button: (cl:setf text) (cl:setf (gum-forms-controls-button:text ...))
MonoGameGum.GueDeriving.TextRuntime: (cl:setf text) (cl:setf (mono-game-gum-gue-deriving-text-runtime:text ...))
Gum.Forms.Controls.Label: (cl:setf text) (cl:setf (gum-forms-controls-label:text ...))
"))

(cl:defgeneric (cl:setf click-gamepad-button) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: (cl:setf click-gamepad-button) (cl:setf (gum-forms-controls-primitives-button-base:click-gamepad-button ...))
"))

(cl:defgeneric (cl:setf next-in-tab-sequence) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Primitives.ButtonBase: (cl:setf next-in-tab-sequence) (cl:setf (gum-forms-controls-primitives-button-base:next-in-tab-sequence ...))
Gum.Forms.Controls.Slider: (cl:setf next-in-tab-sequence) (cl:setf (gum-forms-controls-slider:next-in-tab-sequence ...))
"))

(cl:defgeneric (cl:setf default-height) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf default-height) (cl:setf (mono-game-gum-gue-deriving-text-runtime:default-height ...))
"))

(cl:defgeneric (cl:setf default-height-units) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf default-height-units) (cl:setf (mono-game-gum-gue-deriving-text-runtime:default-height-units ...))
"))

(cl:defgeneric (cl:setf default-width) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf default-width) (cl:setf (mono-game-gum-gue-deriving-text-runtime:default-width ...))
"))

(cl:defgeneric (cl:setf default-width-units) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf default-width-units) (cl:setf (mono-game-gum-gue-deriving-text-runtime:default-width-units ...))
"))

(cl:defgeneric (cl:setf alpha) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf alpha) (cl:setf (mono-game-gum-gue-deriving-text-runtime:alpha ...))
"))

(cl:defgeneric (cl:setf bitmap-font) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf bitmap-font) (cl:setf (mono-game-gum-gue-deriving-text-runtime:bitmap-font ...))
"))

(cl:defgeneric (cl:setf blend) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf blend) (cl:setf (mono-game-gum-gue-deriving-text-runtime:blend ...))
"))

(cl:defgeneric (cl:setf blue) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf blue) (cl:setf (mono-game-gum-gue-deriving-text-runtime:blue ...))
"))

(cl:defgeneric (cl:setf color) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf color) (cl:setf (mono-game-gum-gue-deriving-text-runtime:color ...))
"))

(cl:defgeneric (cl:setf custom-font-file) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf custom-font-file) (cl:setf (mono-game-gum-gue-deriving-text-runtime:custom-font-file ...))
"))

(cl:defgeneric (cl:setf font) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf font) (cl:setf (mono-game-gum-gue-deriving-text-runtime:font ...))
"))

(cl:defgeneric (cl:setf font-family) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf font-family) (cl:setf (mono-game-gum-gue-deriving-text-runtime:font-family ...))
"))

(cl:defgeneric (cl:setf font-scale) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf font-scale) (cl:setf (mono-game-gum-gue-deriving-text-runtime:font-scale ...))
"))

(cl:defgeneric (cl:setf font-size) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf font-size) (cl:setf (mono-game-gum-gue-deriving-text-runtime:font-size ...))
"))

(cl:defgeneric (cl:setf green) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf green) (cl:setf (mono-game-gum-gue-deriving-text-runtime:green ...))
"))

(cl:defgeneric (cl:setf horizontal-alignment) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf horizontal-alignment) (cl:setf (mono-game-gum-gue-deriving-text-runtime:horizontal-alignment ...))
"))

(cl:defgeneric (cl:setf bold?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf bold?) (cl:setf (mono-game-gum-gue-deriving-text-runtime:bold? ...))
"))

(cl:defgeneric (cl:setf italic?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf italic?) (cl:setf (mono-game-gum-gue-deriving-text-runtime:italic? ...))
"))

(cl:defgeneric (cl:setf line-height-multiplier) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf line-height-multiplier) (cl:setf (mono-game-gum-gue-deriving-text-runtime:line-height-multiplier ...))
"))

(cl:defgeneric (cl:setf max-letters-to-show) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf max-letters-to-show) (cl:setf (mono-game-gum-gue-deriving-text-runtime:max-letters-to-show ...))
"))

(cl:defgeneric (cl:setf max-number-of-lines) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf max-number-of-lines) (cl:setf (mono-game-gum-gue-deriving-text-runtime:max-number-of-lines ...))
"))

(cl:defgeneric (cl:setf outline-thickness) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf outline-thickness) (cl:setf (mono-game-gum-gue-deriving-text-runtime:outline-thickness ...))
"))

(cl:defgeneric (cl:setf overlap-direction) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf overlap-direction) (cl:setf (mono-game-gum-gue-deriving-text-runtime:overlap-direction ...))
"))

(cl:defgeneric (cl:setf red) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf red) (cl:setf (mono-game-gum-gue-deriving-text-runtime:red ...))
"))

(cl:defgeneric (cl:setf text-overflow-horizontal-mode) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf text-overflow-horizontal-mode) (cl:setf (mono-game-gum-gue-deriving-text-runtime:text-overflow-horizontal-mode ...))
"))

(cl:defgeneric (cl:setf text-rendering-position-mode) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf text-rendering-position-mode) (cl:setf (mono-game-gum-gue-deriving-text-runtime:text-rendering-position-mode ...))
"))

(cl:defgeneric (cl:setf use-custom-font) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf use-custom-font) (cl:setf (mono-game-gum-gue-deriving-text-runtime:use-custom-font ...))
"))

(cl:defgeneric (cl:setf use-font-smoothing) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf use-font-smoothing) (cl:setf (mono-game-gum-gue-deriving-text-runtime:use-font-smoothing ...))
"))

(cl:defgeneric (cl:setf vertical-alignment) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
MonoGameGum.GueDeriving.TextRuntime: (cl:setf vertical-alignment) (cl:setf (mono-game-gum-gue-deriving-text-runtime:vertical-alignment ...))
"))

(cl:defgeneric (cl:setf snap-to-tick-enabled?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: (cl:setf snap-to-tick-enabled?) (cl:setf (gum-forms-controls-slider:snap-to-tick-enabled? ...))
"))

(cl:defgeneric (cl:setf ticks-frequency) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.Slider: (cl:setf ticks-frequency) (cl:setf (gum-forms-controls-slider:ticks-frequency ...))
"))

(cl:defgeneric (cl:setf system-managers) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Content.ContentLoader: (cl:setf system-managers) (cl:setf (rendering-library-content-content-loader:system-managers ...))
"))

(cl:defgeneric (cl:setf xna-content-manager) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Content.ContentLoader: (cl:setf xna-content-manager) (cl:setf (rendering-library-content-content-loader:xna-content-manager ...))
"))

(cl:defgeneric (cl:setf held-key) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.KeyCombo: (cl:setf held-key) (cl:setf (gum-forms-controls-key-combo:held-key ...))
"))

(cl:defgeneric (cl:setf triggered-on-repeat?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.KeyCombo: (cl:setf triggered-on-repeat?) (cl:setf (gum-forms-controls-key-combo:triggered-on-repeat? ...))
"))

(cl:defgeneric (cl:setf pushed-key) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
Gum.Forms.Controls.KeyCombo: (cl:setf pushed-key) (cl:setf (gum-forms-controls-key-combo:pushed-key ...))
"))

(cl:defgeneric (cl:setf single-pixel-source-rectangle) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: (cl:setf single-pixel-source-rectangle) (cl:setf (rendering-library-graphics-renderer:single-pixel-source-rectangle ...))
"))

(cl:defgeneric (cl:setf using-premultiplied-alpha?) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: (cl:setf using-premultiplied-alpha?) (cl:setf (rendering-library-graphics-renderer:using-premultiplied-alpha? ...))
"))

(cl:defgeneric (cl:setf single-pixel-texture) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
RenderingLibrary.Graphics.Renderer: (cl:setf single-pixel-texture) (cl:setf (rendering-library-graphics-renderer:single-pixel-texture ...))
"))

(cl:defgeneric (cl:setf capacity) (new-value obj! cl:&rest args)
  (:documentation "Dispatches on the C# runtime type of OBJ!. Specialized by:
System.Collections.Generic.List`1: (cl:setf capacity) (cl:setf (system-collections-generic-list-1:capacity ...))
"))

;; System.Console (system-console)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Console|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; System.TimeSpan (system-time-span)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|TimeSpan|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod days ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:days) obj! args))
(cl:defmethod hours ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:hours) obj! args))
(cl:defmethod microseconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:microseconds) obj! args))
(cl:defmethod milliseconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:milliseconds) obj! args))
(cl:defmethod minutes ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:minutes) obj! args))
(cl:defmethod nanoseconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:nanoseconds) obj! args))
(cl:defmethod seconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:seconds) obj! args))
(cl:defmethod ticks ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:ticks) obj! args))
(cl:defmethod total-days ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-days) obj! args))
(cl:defmethod total-hours ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-hours) obj! args))
(cl:defmethod total-microseconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-microseconds) obj! args))
(cl:defmethod total-milliseconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-milliseconds) obj! args))
(cl:defmethod total-minutes ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-minutes) obj! args))
(cl:defmethod total-nanoseconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-nanoseconds) obj! args))
(cl:defmethod total-seconds ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:total-seconds) obj! args))
(cl:defmethod add ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:add) obj! args))
(cl:defmethod compare-to ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:compare-to) obj! args))
(cl:defmethod divide ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:divide) obj! args))
(cl:defmethod duration ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:duration) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:get-hash-code) obj! args))
(cl:defmethod multiply ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:multiply) obj! args))
(cl:defmethod negate ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:negate) obj! args))
(cl:defmethod subtract ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:subtract) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|TimeSpan|) cl:&rest args)
  (cl:apply (cl:function system-time-span:to-string) obj! args))

;; System.UriKind (system-uri-kind)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|UriKind|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|UriKind|) cl:&rest args)
  (cl:apply (cl:function system-uri-kind:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|UriKind|) cl:&rest args)
  (cl:apply (cl:function (cl:setf system-uri-kind:value__)) new-value obj! args))

;; System.Uri (system-uri)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Uri|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod absolute-path ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:absolute-path) obj! args))
(cl:defmethod absolute-uri ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:absolute-uri) obj! args))
(cl:defmethod authority ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:authority) obj! args))
(cl:defmethod dns-safe-host ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:dns-safe-host) obj! args))
(cl:defmethod fragment ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:fragment) obj! args))
(cl:defmethod host ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:host) obj! args))
(cl:defmethod host-name-type ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:host-name-type) obj! args))
(cl:defmethod idn-host ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:idn-host) obj! args))
(cl:defmethod absolute-uri? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:absolute-uri?) obj! args))
(cl:defmethod default-port? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:default-port?) obj! args))
(cl:defmethod file? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:file?) obj! args))
(cl:defmethod loopback? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:loopback?) obj! args))
(cl:defmethod unc? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:unc?) obj! args))
(cl:defmethod local-path ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:local-path) obj! args))
(cl:defmethod original-string ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:original-string) obj! args))
(cl:defmethod path-and-query ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:path-and-query) obj! args))
(cl:defmethod port ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:port) obj! args))
(cl:defmethod query ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:query) obj! args))
(cl:defmethod scheme ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:scheme) obj! args))
(cl:defmethod segments ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:segments) obj! args))
(cl:defmethod user-escaped ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:user-escaped) obj! args))
(cl:defmethod user-info ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:user-info) obj! args))
(cl:defmethod canonicalize ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:canonicalize) obj! args))
(cl:defmethod check-security ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:check-security) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:equals) obj! args))
(cl:defmethod escape ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:escape) obj! args))
(cl:defmethod get-components ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:get-components) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:get-hash-code) obj! args))
(cl:defmethod get-left-part ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:get-left-part) obj! args))
(cl:defmethod get-object-data ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:get-object-data) obj! args))
(cl:defmethod bad-file-system-character? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:bad-file-system-character?) obj! args))
(cl:defmethod base-of? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:base-of?) obj! args))
(cl:defmethod reserved-character? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:reserved-character?) obj! args))
(cl:defmethod well-formed-original-string? ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:well-formed-original-string?) obj! args))
(cl:defmethod make-relative ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:make-relative) obj! args))
(cl:defmethod make-relative-uri ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:make-relative-uri) obj! args))
(cl:defmethod parse ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:parse) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:to-string) obj! args))
(cl:defmethod unescape ((obj! dotcl-internal::|Uri|) cl:&rest args)
  (cl:apply (cl:function system-uri:unescape) obj! args))

;; System.Convert (system-convert)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Convert|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; System.AppDomain (system-app-domain)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|AppDomain|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod base-directory ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:base-directory) obj! args))
(cl:defmethod dynamic-directory ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:dynamic-directory) obj! args))
(cl:defmethod friendly-name ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:friendly-name) obj! args))
(cl:defmethod id ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:id) obj! args))
(cl:defmethod fully-trusted? ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:fully-trusted?) obj! args))
(cl:defmethod homogenous? ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:homogenous?) obj! args))
(cl:defmethod monitoring-survived-memory-size ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:monitoring-survived-memory-size) obj! args))
(cl:defmethod monitoring-total-allocated-memory-size ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:monitoring-total-allocated-memory-size) obj! args))
(cl:defmethod monitoring-total-processor-time ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:monitoring-total-processor-time) obj! args))
(cl:defmethod permission-set ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:permission-set) obj! args))
(cl:defmethod relative-search-path ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:relative-search-path) obj! args))
(cl:defmethod setup-information ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:setup-information) obj! args))
(cl:defmethod shadow-copy-files ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:shadow-copy-files) obj! args))
(cl:defmethod append-private-path ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:append-private-path) obj! args))
(cl:defmethod apply-policy ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:apply-policy) obj! args))
(cl:defmethod clear-private-path ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:clear-private-path) obj! args))
(cl:defmethod clear-shadow-copy-path ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:clear-shadow-copy-path) obj! args))
(cl:defmethod create-instance ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:create-instance) obj! args))
(cl:defmethod create-instance-and-unwrap ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:create-instance-and-unwrap) obj! args))
(cl:defmethod create-instance-from ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:create-instance-from) obj! args))
(cl:defmethod create-instance-from-and-unwrap ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:create-instance-from-and-unwrap) obj! args))
(cl:defmethod execute-assembly ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:execute-assembly) obj! args))
(cl:defmethod execute-assembly-by-name ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:execute-assembly-by-name) obj! args))
(cl:defmethod get-assemblies ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:get-assemblies) obj! args))
(cl:defmethod get-data ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:get-data) obj! args))
(cl:defmethod compatibility-switch-set? ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:compatibility-switch-set?) obj! args))
(cl:defmethod default-app-domain? ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:default-app-domain?) obj! args))
(cl:defmethod finalizing-for-unload? ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:finalizing-for-unload?) obj! args))
(cl:defmethod load ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:load) obj! args))
(cl:defmethod reflection-only-get-assemblies ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:reflection-only-get-assemblies) obj! args))
(cl:defmethod set-cache-path ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-cache-path) obj! args))
(cl:defmethod set-data ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-data) obj! args))
(cl:defmethod set-dynamic-base ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-dynamic-base) obj! args))
(cl:defmethod set-principal-policy ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-principal-policy) obj! args))
(cl:defmethod set-shadow-copy-files ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-shadow-copy-files) obj! args))
(cl:defmethod set-shadow-copy-path ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-shadow-copy-path) obj! args))
(cl:defmethod set-thread-principal ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:set-thread-principal) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|AppDomain|) cl:&rest args)
  (cl:apply (cl:function system-app-domain:to-string) obj! args))

;; System.IO.Path (system-io-path)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Path|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; System.Boolean (system-boolean)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Boolean|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod compare-to ((obj! dotcl-internal::|Boolean|) cl:&rest args)
  (cl:apply (cl:function system-boolean:compare-to) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Boolean|) cl:&rest args)
  (cl:apply (cl:function system-boolean:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Boolean|) cl:&rest args)
  (cl:apply (cl:function system-boolean:get-hash-code) obj! args))
(cl:defmethod get-type-code ((obj! dotcl-internal::|Boolean|) cl:&rest args)
  (cl:apply (cl:function system-boolean:get-type-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Boolean|) cl:&rest args)
  (cl:apply (cl:function system-boolean:to-string) obj! args))

;; System.Type (system-type)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Type|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod assembly ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:assembly) obj! args))
(cl:defmethod assembly-qualified-name ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:assembly-qualified-name) obj! args))
(cl:defmethod attributes ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:attributes) obj! args))
(cl:defmethod base-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:base-type) obj! args))
(cl:defmethod contains-generic-parameters ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:contains-generic-parameters) obj! args))
(cl:defmethod declaring-method ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:declaring-method) obj! args))
(cl:defmethod declaring-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:declaring-type) obj! args))
(cl:defmethod full-name ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:full-name) obj! args))
(cl:defmethod generic-parameter-attributes ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-parameter-attributes) obj! args))
(cl:defmethod generic-parameter-position ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-parameter-position) obj! args))
(cl:defmethod generic-type-arguments ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-type-arguments) obj! args))
(cl:defmethod guid ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:guid) obj! args))
(cl:defmethod has-element-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:has-element-type) obj! args))
(cl:defmethod abstract? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:abstract?) obj! args))
(cl:defmethod ansi-class? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:ansi-class?) obj! args))
(cl:defmethod array? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:array?) obj! args))
(cl:defmethod auto-class? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:auto-class?) obj! args))
(cl:defmethod auto-layout? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:auto-layout?) obj! args))
(cl:defmethod by-ref? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:by-ref?) obj! args))
(cl:defmethod by-ref-like? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:by-ref-like?) obj! args))
(cl:defmethod class? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:class?) obj! args))
(cl:defmethod com-object? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:com-object?) obj! args))
(cl:defmethod constructed-generic-type? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:constructed-generic-type?) obj! args))
(cl:defmethod contextful? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:contextful?) obj! args))
(cl:defmethod enum? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:enum?) obj! args))
(cl:defmethod explicit-layout? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:explicit-layout?) obj! args))
(cl:defmethod function-pointer? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:function-pointer?) obj! args))
(cl:defmethod generic-method-parameter? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-method-parameter?) obj! args))
(cl:defmethod generic-parameter? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-parameter?) obj! args))
(cl:defmethod generic-type? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-type?) obj! args))
(cl:defmethod generic-type-definition? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-type-definition?) obj! args))
(cl:defmethod generic-type-parameter? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:generic-type-parameter?) obj! args))
(cl:defmethod import? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:import?) obj! args))
(cl:defmethod interface? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:interface?) obj! args))
(cl:defmethod layout-sequential? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:layout-sequential?) obj! args))
(cl:defmethod marshal-by-ref? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:marshal-by-ref?) obj! args))
(cl:defmethod nested? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested?) obj! args))
(cl:defmethod nested-assembly? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested-assembly?) obj! args))
(cl:defmethod nested-fam-and-assem? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested-fam-and-assem?) obj! args))
(cl:defmethod nested-family? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested-family?) obj! args))
(cl:defmethod nested-fam-or-assem? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested-fam-or-assem?) obj! args))
(cl:defmethod nested-private? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested-private?) obj! args))
(cl:defmethod nested-public? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:nested-public?) obj! args))
(cl:defmethod not-public? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:not-public?) obj! args))
(cl:defmethod pointer? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:pointer?) obj! args))
(cl:defmethod primitive? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:primitive?) obj! args))
(cl:defmethod public? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:public?) obj! args))
(cl:defmethod sealed? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:sealed?) obj! args))
(cl:defmethod security-critical? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:security-critical?) obj! args))
(cl:defmethod security-safe-critical? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:security-safe-critical?) obj! args))
(cl:defmethod security-transparent? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:security-transparent?) obj! args))
(cl:defmethod serializable? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:serializable?) obj! args))
(cl:defmethod signature-type? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:signature-type?) obj! args))
(cl:defmethod special-name? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:special-name?) obj! args))
(cl:defmethod sz-array? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:sz-array?) obj! args))
(cl:defmethod type-definition? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:type-definition?) obj! args))
(cl:defmethod unicode-class? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:unicode-class?) obj! args))
(cl:defmethod unmanaged-function-pointer? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:unmanaged-function-pointer?) obj! args))
(cl:defmethod value-type? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:value-type?) obj! args))
(cl:defmethod variable-bound-array? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:variable-bound-array?) obj! args))
(cl:defmethod visible? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:visible?) obj! args))
(cl:defmethod member-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:member-type) obj! args))
(cl:defmethod module ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:module) obj! args))
(cl:defmethod namespace ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:namespace) obj! args))
(cl:defmethod reflected-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:reflected-type) obj! args))
(cl:defmethod struct-layout-attribute ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:struct-layout-attribute) obj! args))
(cl:defmethod type-handle ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:type-handle) obj! args))
(cl:defmethod type-initializer ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:type-initializer) obj! args))
(cl:defmethod underlying-system-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:underlying-system-type) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:equals) obj! args))
(cl:defmethod find-interfaces ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:find-interfaces) obj! args))
(cl:defmethod find-members ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:find-members) obj! args))
(cl:defmethod get-array-rank ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-array-rank) obj! args))
(cl:defmethod get-attribute-flags-impl ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-attribute-flags-impl) obj! args))
(cl:defmethod get-constructor ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-constructor) obj! args))
(cl:defmethod get-constructor-impl ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-constructor-impl) obj! args))
(cl:defmethod get-constructors ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-constructors) obj! args))
(cl:defmethod get-default-members ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-default-members) obj! args))
(cl:defmethod get-element-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-element-type) obj! args))
(cl:defmethod get-enum-name ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-enum-name) obj! args))
(cl:defmethod get-enum-names ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-enum-names) obj! args))
(cl:defmethod get-enum-underlying-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-enum-underlying-type) obj! args))
(cl:defmethod get-enum-values ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-enum-values) obj! args))
(cl:defmethod get-enum-values-as-underlying-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-enum-values-as-underlying-type) obj! args))
(cl:defmethod get-event ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-event) obj! args))
(cl:defmethod get-events ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-events) obj! args))
(cl:defmethod get-field ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-field) obj! args))
(cl:defmethod get-fields ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-fields) obj! args))
(cl:defmethod get-function-pointer-calling-conventions ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-function-pointer-calling-conventions) obj! args))
(cl:defmethod get-function-pointer-parameter-types ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-function-pointer-parameter-types) obj! args))
(cl:defmethod get-function-pointer-return-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-function-pointer-return-type) obj! args))
(cl:defmethod get-generic-arguments ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-generic-arguments) obj! args))
(cl:defmethod get-generic-parameter-constraints ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-generic-parameter-constraints) obj! args))
(cl:defmethod get-generic-type-definition ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-generic-type-definition) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-hash-code) obj! args))
(cl:defmethod get-interface ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-interface) obj! args))
(cl:defmethod get-interface-map ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-interface-map) obj! args))
(cl:defmethod get-interfaces ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-interfaces) obj! args))
(cl:defmethod get-member ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-member) obj! args))
(cl:defmethod get-members ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-members) obj! args))
(cl:defmethod get-member-with-same-metadata-definition-as ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-member-with-same-metadata-definition-as) obj! args))
(cl:defmethod get-method ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-method) obj! args))
(cl:defmethod get-method-impl ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-method-impl) obj! args))
(cl:defmethod get-methods ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-methods) obj! args))
(cl:defmethod get-nested-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-nested-type) obj! args))
(cl:defmethod get-nested-types ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-nested-types) obj! args))
(cl:defmethod get-optional-custom-modifiers ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-optional-custom-modifiers) obj! args))
(cl:defmethod get-properties ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-properties) obj! args))
(cl:defmethod get-property ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-property) obj! args))
(cl:defmethod get-property-impl ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-property-impl) obj! args))
(cl:defmethod get-required-custom-modifiers ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-required-custom-modifiers) obj! args))
(cl:defmethod get-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-type) obj! args))
(cl:defmethod get-type-code-impl ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:get-type-code-impl) obj! args))
(cl:defmethod has-element-type-impl ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:has-element-type-impl) obj! args))
(cl:defmethod invoke-member ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:invoke-member) obj! args))
(cl:defmethod array-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:array-impl?) obj! args))
(cl:defmethod assignable-from? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:assignable-from?) obj! args))
(cl:defmethod assignable-to? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:assignable-to?) obj! args))
(cl:defmethod by-ref-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:by-ref-impl?) obj! args))
(cl:defmethod com-object-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:com-object-impl?) obj! args))
(cl:defmethod contextful-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:contextful-impl?) obj! args))
(cl:defmethod enum-defined? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:enum-defined?) obj! args))
(cl:defmethod equivalent-to? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:equivalent-to?) obj! args))
(cl:defmethod instance-of-type? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:instance-of-type?) obj! args))
(cl:defmethod marshal-by-ref-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:marshal-by-ref-impl?) obj! args))
(cl:defmethod pointer-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:pointer-impl?) obj! args))
(cl:defmethod primitive-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:primitive-impl?) obj! args))
(cl:defmethod subclass-of? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:subclass-of?) obj! args))
(cl:defmethod value-type-impl? ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:value-type-impl?) obj! args))
(cl:defmethod make-array-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:make-array-type) obj! args))
(cl:defmethod make-by-ref-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:make-by-ref-type) obj! args))
(cl:defmethod make-pointer-type ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:make-pointer-type) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Type|) cl:&rest args)
  (cl:apply (cl:function system-type:to-string) obj! args))

;; System.Object (system-object)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Object|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod equals ((obj! dotcl-internal::|Object|) cl:&rest args)
  (cl:apply (cl:function system-object:equals) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|Object|) cl:&rest args)
  (cl:apply (cl:function system-object:finalize) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Object|) cl:&rest args)
  (cl:apply (cl:function system-object:get-hash-code) obj! args))
(cl:defmethod get-type ((obj! dotcl-internal::|Object|) cl:&rest args)
  (cl:apply (cl:function system-object:get-type) obj! args))
(cl:defmethod memberwise-clone ((obj! dotcl-internal::|Object|) cl:&rest args)
  (cl:apply (cl:function system-object:memberwise-clone) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Object|) cl:&rest args)
  (cl:apply (cl:function system-object:to-string) obj! args))

;; System.Single (system-single)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Single|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod compare-to ((obj! dotcl-internal::|Single|) cl:&rest args)
  (cl:apply (cl:function system-single:compare-to) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Single|) cl:&rest args)
  (cl:apply (cl:function system-single:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Single|) cl:&rest args)
  (cl:apply (cl:function system-single:get-hash-code) obj! args))
(cl:defmethod get-type-code ((obj! dotcl-internal::|Single|) cl:&rest args)
  (cl:apply (cl:function system-single:get-type-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Single|) cl:&rest args)
  (cl:apply (cl:function system-single:to-string) obj! args))

;; System.Double (system-double)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Double|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod compare-to ((obj! dotcl-internal::|Double|) cl:&rest args)
  (cl:apply (cl:function system-double:compare-to) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Double|) cl:&rest args)
  (cl:apply (cl:function system-double:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Double|) cl:&rest args)
  (cl:apply (cl:function system-double:get-hash-code) obj! args))
(cl:defmethod get-type-code ((obj! dotcl-internal::|Double|) cl:&rest args)
  (cl:apply (cl:function system-double:get-type-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Double|) cl:&rest args)
  (cl:apply (cl:function system-double:to-string) obj! args))

;; System.Reflection.MemberInfo (system-reflection-member-info)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|MemberInfo|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod custom-attributes ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:custom-attributes) obj! args))
(cl:defmethod declaring-type ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:declaring-type) obj! args))
(cl:defmethod collectible? ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:collectible?) obj! args))
(cl:defmethod member-type ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:member-type) obj! args))
(cl:defmethod metadata-token ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:metadata-token) obj! args))
(cl:defmethod module ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:module) obj! args))
(cl:defmethod name ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:name) obj! args))
(cl:defmethod reflected-type ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:reflected-type) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:equals) obj! args))
(cl:defmethod get-custom-attributes ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:get-custom-attributes) obj! args))
(cl:defmethod get-custom-attributes-data ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:get-custom-attributes-data) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:get-hash-code) obj! args))
(cl:defmethod has-same-metadata-definition-as ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:has-same-metadata-definition-as) obj! args))
(cl:defmethod defined? ((obj! dotcl-internal::|MemberInfo|) cl:&rest args)
  (cl:apply (cl:function system-reflection-member-info:defined?) obj! args))

;; Microsoft.Xna.Framework.Vector2 (microsoft-xna-framework-vector2)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Vector2|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod x ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:x) obj! args))
(cl:defmethod y ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:y) obj! args))
(cl:defmethod ceiling ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:ceiling) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:equals) obj! args))
(cl:defmethod floor ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:floor) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:get-hash-code) obj! args))
(cl:defmethod length ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:length) obj! args))
(cl:defmethod length-squared ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:length-squared) obj! args))
(cl:defmethod normalize ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:normalize) obj! args))
(cl:defmethod rotate ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:rotate) obj! args))
(cl:defmethod rotate-around ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:rotate-around) obj! args))
(cl:defmethod round ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:round) obj! args))
(cl:defmethod to-numerics ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:to-numerics) obj! args))
(cl:defmethod to-point ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:to-point) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-vector2:to-string) obj! args))
(cl:defmethod (cl:setf x) (new-value (obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-vector2:x)) new-value obj! args))
(cl:defmethod (cl:setf y) (new-value (obj! dotcl-internal::|Vector2|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-vector2:y)) new-value obj! args))

;; Microsoft.Xna.Framework.Rectangle (microsoft-xna-framework-rectangle)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Rectangle|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod height ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:height) obj! args))
(cl:defmethod width ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:width) obj! args))
(cl:defmethod x ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:x) obj! args))
(cl:defmethod y ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:y) obj! args))
(cl:defmethod bottom ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:bottom) obj! args))
(cl:defmethod center ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:center) obj! args))
(cl:defmethod empty? ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:empty?) obj! args))
(cl:defmethod left ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:left) obj! args))
(cl:defmethod location ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:location) obj! args))
(cl:defmethod right ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:right) obj! args))
(cl:defmethod size ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:size) obj! args))
(cl:defmethod top ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:top) obj! args))
(cl:defmethod contains ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:contains) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:get-hash-code) obj! args))
(cl:defmethod inflate ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:inflate) obj! args))
(cl:defmethod intersects ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:intersects) obj! args))
(cl:defmethod offset ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:offset) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-rectangle:to-string) obj! args))
(cl:defmethod (cl:setf height) (new-value (obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-rectangle:height)) new-value obj! args))
(cl:defmethod (cl:setf width) (new-value (obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-rectangle:width)) new-value obj! args))
(cl:defmethod (cl:setf x) (new-value (obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-rectangle:x)) new-value obj! args))
(cl:defmethod (cl:setf y) (new-value (obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-rectangle:y)) new-value obj! args))
(cl:defmethod (cl:setf location) (new-value (obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-rectangle:location)) new-value obj! args))
(cl:defmethod (cl:setf size) (new-value (obj! dotcl-internal::|Rectangle|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-rectangle:size)) new-value obj! args))

;; Microsoft.Xna.Framework.Point (microsoft-xna-framework-point)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Point|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod x ((obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-point:x) obj! args))
(cl:defmethod y ((obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-point:y) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-point:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-point:get-hash-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-point:to-string) obj! args))
(cl:defmethod to-vector2 ((obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-point:to-vector2) obj! args))
(cl:defmethod (cl:setf x) (new-value (obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-point:x)) new-value obj! args))
(cl:defmethod (cl:setf y) (new-value (obj! dotcl-internal::|Point|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-point:y)) new-value obj! args))

;; Microsoft.Xna.Framework.GameTime (microsoft-xna-framework-game-time)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GameTime|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod elapsed-game-time ((obj! dotcl-internal::|GameTime|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-time:elapsed-game-time) obj! args))
(cl:defmethod running-slowly? ((obj! dotcl-internal::|GameTime|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-time:running-slowly?) obj! args))
(cl:defmethod total-game-time ((obj! dotcl-internal::|GameTime|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-time:total-game-time) obj! args))
(cl:defmethod (cl:setf elapsed-game-time) (new-value (obj! dotcl-internal::|GameTime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-time:elapsed-game-time)) new-value obj! args))
(cl:defmethod (cl:setf running-slowly?) (new-value (obj! dotcl-internal::|GameTime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-time:running-slowly?)) new-value obj! args))
(cl:defmethod (cl:setf total-game-time) (new-value (obj! dotcl-internal::|GameTime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-time:total-game-time)) new-value obj! args))

;; Microsoft.Xna.Framework.Game (microsoft-xna-framework-game)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Game|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod components ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:components) obj! args))
(cl:defmethod content ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:content) obj! args))
(cl:defmethod graphics-device ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:graphics-device) obj! args))
(cl:defmethod inactive-sleep-time ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:inactive-sleep-time) obj! args))
(cl:defmethod active? ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:active?) obj! args))
(cl:defmethod fixed-time-step? ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:fixed-time-step?) obj! args))
(cl:defmethod mouse-visible? ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:mouse-visible?) obj! args))
(cl:defmethod launch-parameters ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:launch-parameters) obj! args))
(cl:defmethod max-elapsed-time ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:max-elapsed-time) obj! args))
(cl:defmethod services ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:services) obj! args))
(cl:defmethod target-elapsed-time ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:target-elapsed-time) obj! args))
(cl:defmethod window ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:window) obj! args))
(cl:defmethod begin-draw ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:begin-draw) obj! args))
(cl:defmethod begin-run ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:begin-run) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:dispose) obj! args))
(cl:defmethod draw ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:draw) obj! args))
(cl:defmethod end-draw ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:end-draw) obj! args))
(cl:defmethod end-run ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:end-run) obj! args))
(cl:defmethod exit ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:exit) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:finalize) obj! args))
(cl:defmethod initialize ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:initialize) obj! args))
(cl:defmethod load-content ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:load-content) obj! args))
(cl:defmethod on-activated ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:on-activated) obj! args))
(cl:defmethod on-deactivated ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:on-deactivated) obj! args))
(cl:defmethod on-exiting ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:on-exiting) obj! args))
(cl:defmethod reset-elapsed-time ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:reset-elapsed-time) obj! args))
(cl:defmethod run ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:run) obj! args))
(cl:defmethod run-one-frame ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:run-one-frame) obj! args))
(cl:defmethod suppress-draw ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:suppress-draw) obj! args))
(cl:defmethod tick ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:tick) obj! args))
(cl:defmethod unload-content ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:unload-content) obj! args))
(cl:defmethod update ((obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game:update) obj! args))
(cl:defmethod (cl:setf content) (new-value (obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game:content)) new-value obj! args))
(cl:defmethod (cl:setf inactive-sleep-time) (new-value (obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game:inactive-sleep-time)) new-value obj! args))
(cl:defmethod (cl:setf fixed-time-step?) (new-value (obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game:fixed-time-step?)) new-value obj! args))
(cl:defmethod (cl:setf mouse-visible?) (new-value (obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game:mouse-visible?)) new-value obj! args))
(cl:defmethod (cl:setf max-elapsed-time) (new-value (obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game:max-elapsed-time)) new-value obj! args))
(cl:defmethod (cl:setf target-elapsed-time) (new-value (obj! dotcl-internal::|Game|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game:target-elapsed-time)) new-value obj! args))

;; Microsoft.Xna.Framework.GameWindow (microsoft-xna-framework-game-window)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GameWindow|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod allow-alt-f4 ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:allow-alt-f4) obj! args))
(cl:defmethod allow-user-resizing ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:allow-user-resizing) obj! args))
(cl:defmethod client-bounds ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:client-bounds) obj! args))
(cl:defmethod current-orientation ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:current-orientation) obj! args))
(cl:defmethod handle ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:handle) obj! args))
(cl:defmethod borderless? ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:borderless?) obj! args))
(cl:defmethod position ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:position) obj! args))
(cl:defmethod screen-device-name ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:screen-device-name) obj! args))
(cl:defmethod title ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:title) obj! args))
(cl:defmethod begin-screen-device-change ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:begin-screen-device-change) obj! args))
(cl:defmethod end-screen-device-change ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:end-screen-device-change) obj! args))
(cl:defmethod on-activated ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:on-activated) obj! args))
(cl:defmethod on-deactivated ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:on-deactivated) obj! args))
(cl:defmethod on-orientation-changed ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:on-orientation-changed) obj! args))
(cl:defmethod on-paint ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:on-paint) obj! args))
(cl:defmethod on-screen-device-name-changed ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:on-screen-device-name-changed) obj! args))
(cl:defmethod set-supported-orientations ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:set-supported-orientations) obj! args))
(cl:defmethod set-title ((obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-game-window:set-title) obj! args))
(cl:defmethod (cl:setf allow-alt-f4) (new-value (obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-window:allow-alt-f4)) new-value obj! args))
(cl:defmethod (cl:setf allow-user-resizing) (new-value (obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-window:allow-user-resizing)) new-value obj! args))
(cl:defmethod (cl:setf borderless?) (new-value (obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-window:borderless?)) new-value obj! args))
(cl:defmethod (cl:setf position) (new-value (obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-window:position)) new-value obj! args))
(cl:defmethod (cl:setf title) (new-value (obj! dotcl-internal::|GameWindow|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-game-window:title)) new-value obj! args))

;; Microsoft.Xna.Framework.Input.Keyboard (microsoft-xna-framework-input-keyboard)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Keyboard|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; Microsoft.Xna.Framework.Input.KeyboardState (microsoft-xna-framework-input-keyboard-state)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|KeyboardState|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod caps-lock ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:caps-lock) obj! args))
(cl:defmethod item ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:item) obj! args))
(cl:defmethod num-lock ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:num-lock) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:get-hash-code) obj! args))
(cl:defmethod get-pressed-key-count ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:get-pressed-key-count) obj! args))
(cl:defmethod get-pressed-keys ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:get-pressed-keys) obj! args))
(cl:defmethod key-down? ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:key-down?) obj! args))
(cl:defmethod key-up? ((obj! dotcl-internal::|KeyboardState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keyboard-state:key-up?) obj! args))

;; Microsoft.Xna.Framework.Input.Keys (microsoft-xna-framework-input-keys)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Keys|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|Keys|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-keys:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|Keys|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-input-keys:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Input.Mouse (microsoft-xna-framework-input-mouse)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Mouse|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; Microsoft.Xna.Framework.Input.MouseState (microsoft-xna-framework-input-mouse-state)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|MouseState|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod horizontal-scroll-wheel-value ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:horizontal-scroll-wheel-value) obj! args))
(cl:defmethod left-button ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:left-button) obj! args))
(cl:defmethod middle-button ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:middle-button) obj! args))
(cl:defmethod position ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:position) obj! args))
(cl:defmethod right-button ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:right-button) obj! args))
(cl:defmethod scroll-wheel-value ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:scroll-wheel-value) obj! args))
(cl:defmethod x ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:x) obj! args))
(cl:defmethod x-button1 ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:x-button1) obj! args))
(cl:defmethod x-button2 ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:x-button2) obj! args))
(cl:defmethod y ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:y) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:get-hash-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|MouseState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-mouse-state:to-string) obj! args))

;; Microsoft.Xna.Framework.Input.ButtonState (microsoft-xna-framework-input-button-state)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|ButtonState|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|ButtonState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-button-state:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|ButtonState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-input-button-state:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Input.GamePad (microsoft-xna-framework-input-game-pad)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GamePad|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; Microsoft.Xna.Framework.Input.GamePadState (microsoft-xna-framework-input-game-pad-state)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GamePadState|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod buttons ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:buttons) obj! args))
(cl:defmethod d-pad ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:d-pad) obj! args))
(cl:defmethod connected? ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:connected?) obj! args))
(cl:defmethod packet-number ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:packet-number) obj! args))
(cl:defmethod thumb-sticks ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:thumb-sticks) obj! args))
(cl:defmethod triggers ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:triggers) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:get-hash-code) obj! args))
(cl:defmethod button-down? ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:button-down?) obj! args))
(cl:defmethod button-up? ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:button-up?) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|GamePadState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-state:to-string) obj! args))

;; Microsoft.Xna.Framework.Input.GamePadDPad (microsoft-xna-framework-input-game-pad-d-pad)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GamePadDPad|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod down ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:down) obj! args))
(cl:defmethod left ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:left) obj! args))
(cl:defmethod right ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:right) obj! args))
(cl:defmethod up ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:up) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:get-hash-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|GamePadDPad|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-d-pad:to-string) obj! args))

;; Microsoft.Xna.Framework.Input.GamePadThumbSticks (microsoft-xna-framework-input-game-pad-thumb-sticks)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GamePadThumbSticks|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod left ((obj! dotcl-internal::|GamePadThumbSticks|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-thumb-sticks:left) obj! args))
(cl:defmethod right ((obj! dotcl-internal::|GamePadThumbSticks|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-thumb-sticks:right) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|GamePadThumbSticks|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-thumb-sticks:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|GamePadThumbSticks|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-thumb-sticks:get-hash-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|GamePadThumbSticks|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-thumb-sticks:to-string) obj! args))

;; Microsoft.Xna.Framework.Input.GamePadTriggers (microsoft-xna-framework-input-game-pad-triggers)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GamePadTriggers|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod left ((obj! dotcl-internal::|GamePadTriggers|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-triggers:left) obj! args))
(cl:defmethod right ((obj! dotcl-internal::|GamePadTriggers|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-triggers:right) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|GamePadTriggers|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-triggers:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|GamePadTriggers|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-triggers:get-hash-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|GamePadTriggers|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-game-pad-triggers:to-string) obj! args))

;; Microsoft.Xna.Framework.Input.Buttons (microsoft-xna-framework-input-buttons)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Buttons|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|Buttons|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-buttons:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|Buttons|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-input-buttons:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Input.Touch.TouchPanel (microsoft-xna-framework-input-touch-touch-panel)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|TouchPanel|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; Microsoft.Xna.Framework.Input.Touch.TouchCollection (microsoft-xna-framework-input-touch-touch-collection)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|TouchCollection|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod count ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:count) obj! args))
(cl:defmethod connected? ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:connected?) obj! args))
(cl:defmethod read-only? ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:read-only?) obj! args))
(cl:defmethod item ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:item) obj! args))
(cl:defmethod add ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:add) obj! args))
(cl:defmethod clear ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:clear) obj! args))
(cl:defmethod contains ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:contains) obj! args))
(cl:defmethod copy-to ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:copy-to) obj! args))
(cl:defmethod get-enumerator ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:get-enumerator) obj! args))
(cl:defmethod index-of ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:index-of) obj! args))
(cl:defmethod insert ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:insert) obj! args))
(cl:defmethod remove ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:remove) obj! args))
(cl:defmethod remove-at ((obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-collection:remove-at) obj! args))
(cl:defmethod (cl:setf item) (new-value (obj! dotcl-internal::|TouchCollection|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-input-touch-touch-collection:item)) new-value obj! args))

;; Microsoft.Xna.Framework.Input.Touch.TouchLocation (microsoft-xna-framework-input-touch-touch-location)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|TouchLocation|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod id ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:id) obj! args))
(cl:defmethod position ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:position) obj! args))
(cl:defmethod pressure ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:pressure) obj! args))
(cl:defmethod state ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:state) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:get-hash-code) obj! args))
(cl:defmethod high-frequency-event? ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:high-frequency-event?) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|TouchLocation|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-touch-location:to-string) obj! args))

;; Microsoft.Xna.Framework.Input.Touch.GestureSample (microsoft-xna-framework-input-touch-gesture-sample)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GestureSample|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod delta ((obj! dotcl-internal::|GestureSample|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-gesture-sample:delta) obj! args))
(cl:defmethod delta2 ((obj! dotcl-internal::|GestureSample|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-gesture-sample:delta2) obj! args))
(cl:defmethod gesture-type ((obj! dotcl-internal::|GestureSample|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-gesture-sample:gesture-type) obj! args))
(cl:defmethod position ((obj! dotcl-internal::|GestureSample|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-gesture-sample:position) obj! args))
(cl:defmethod position2 ((obj! dotcl-internal::|GestureSample|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-gesture-sample:position2) obj! args))
(cl:defmethod timestamp ((obj! dotcl-internal::|GestureSample|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-input-touch-gesture-sample:timestamp) obj! args))

;; Microsoft.Xna.Framework.Color (microsoft-xna-framework-color)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Color|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod a ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:a) obj! args))
(cl:defmethod b ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:b) obj! args))
(cl:defmethod g ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:g) obj! args))
(cl:defmethod packed-value ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:packed-value) obj! args))
(cl:defmethod r ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:r) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:equals) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:get-hash-code) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:to-string) obj! args))
(cl:defmethod to-vector3 ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:to-vector3) obj! args))
(cl:defmethod to-vector4 ((obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-color:to-vector4) obj! args))
(cl:defmethod (cl:setf a) (new-value (obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-color:a)) new-value obj! args))
(cl:defmethod (cl:setf b) (new-value (obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-color:b)) new-value obj! args))
(cl:defmethod (cl:setf g) (new-value (obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-color:g)) new-value obj! args))
(cl:defmethod (cl:setf packed-value) (new-value (obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-color:packed-value)) new-value obj! args))
(cl:defmethod (cl:setf r) (new-value (obj! dotcl-internal::|Color|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-color:r)) new-value obj! args))

;; Microsoft.Xna.Framework.Content.ContentManager (microsoft-xna-framework-content-content-manager)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|ContentManager|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod loaded-assets ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:loaded-assets) obj! args))
(cl:defmethod root-directory ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:root-directory) obj! args))
(cl:defmethod service-provider ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:service-provider) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:dispose) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:finalize) obj! args))
(cl:defmethod open-stream ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:open-stream) obj! args))
(cl:defmethod reload-graphics-assets ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:reload-graphics-assets) obj! args))
(cl:defmethod unload ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:unload) obj! args))
(cl:defmethod unload-asset ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:unload-asset) obj! args))
(cl:defmethod unload-assets ((obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-content-content-manager:unload-assets) obj! args))
(cl:defmethod (cl:setf root-directory) (new-value (obj! dotcl-internal::|ContentManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-content-content-manager:root-directory)) new-value obj! args))

;; Microsoft.Xna.Framework.GraphicsDeviceManager (microsoft-xna-framework-graphics-device-manager)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GraphicsDeviceManager|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod graphics-device ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:graphics-device) obj! args))
(cl:defmethod graphics-profile ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:graphics-profile) obj! args))
(cl:defmethod hardware-mode-switch ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:hardware-mode-switch) obj! args))
(cl:defmethod full-screen? ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:full-screen?) obj! args))
(cl:defmethod prefer-half-pixel-offset ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:prefer-half-pixel-offset) obj! args))
(cl:defmethod prefer-multi-sampling ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:prefer-multi-sampling) obj! args))
(cl:defmethod preferred-back-buffer-format ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-format) obj! args))
(cl:defmethod preferred-back-buffer-height ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-height) obj! args))
(cl:defmethod preferred-back-buffer-width ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-width) obj! args))
(cl:defmethod preferred-depth-stencil-format ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:preferred-depth-stencil-format) obj! args))
(cl:defmethod supported-orientations ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:supported-orientations) obj! args))
(cl:defmethod synchronize-with-vertical-retrace ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:synchronize-with-vertical-retrace) obj! args))
(cl:defmethod apply-changes ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:apply-changes) obj! args))
(cl:defmethod begin-draw ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:begin-draw) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:dispose) obj! args))
(cl:defmethod end-draw ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:end-draw) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:finalize) obj! args))
(cl:defmethod on-device-created ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:on-device-created) obj! args))
(cl:defmethod on-device-disposing ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:on-device-disposing) obj! args))
(cl:defmethod on-device-reset ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:on-device-reset) obj! args))
(cl:defmethod on-device-resetting ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:on-device-resetting) obj! args))
(cl:defmethod toggle-full-screen ((obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-device-manager:toggle-full-screen) obj! args))
(cl:defmethod (cl:setf graphics-profile) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:graphics-profile)) new-value obj! args))
(cl:defmethod (cl:setf hardware-mode-switch) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:hardware-mode-switch)) new-value obj! args))
(cl:defmethod (cl:setf full-screen?) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:full-screen?)) new-value obj! args))
(cl:defmethod (cl:setf prefer-half-pixel-offset) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:prefer-half-pixel-offset)) new-value obj! args))
(cl:defmethod (cl:setf prefer-multi-sampling) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:prefer-multi-sampling)) new-value obj! args))
(cl:defmethod (cl:setf preferred-back-buffer-format) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-format)) new-value obj! args))
(cl:defmethod (cl:setf preferred-back-buffer-height) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-height)) new-value obj! args))
(cl:defmethod (cl:setf preferred-back-buffer-width) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:preferred-back-buffer-width)) new-value obj! args))
(cl:defmethod (cl:setf preferred-depth-stencil-format) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:preferred-depth-stencil-format)) new-value obj! args))
(cl:defmethod (cl:setf supported-orientations) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:supported-orientations)) new-value obj! args))
(cl:defmethod (cl:setf synchronize-with-vertical-retrace) (new-value (obj! dotcl-internal::|GraphicsDeviceManager|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-device-manager:synchronize-with-vertical-retrace)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.SpriteEffects (microsoft-xna-framework-graphics-sprite-effects)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SpriteEffects|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|SpriteEffects|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-effects:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|SpriteEffects|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-effects:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.SpriteSortMode (microsoft-xna-framework-graphics-sprite-sort-mode)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SpriteSortMode|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|SpriteSortMode|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-sort-mode:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|SpriteSortMode|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-sort-mode:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.SamplerState (microsoft-xna-framework-graphics-sampler-state)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SamplerState|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod address-u ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:address-u) obj! args))
(cl:defmethod address-v ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:address-v) obj! args))
(cl:defmethod address-w ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:address-w) obj! args))
(cl:defmethod border-color ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:border-color) obj! args))
(cl:defmethod comparison-function ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:comparison-function) obj! args))
(cl:defmethod filter ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:filter) obj! args))
(cl:defmethod filter-mode ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:filter-mode) obj! args))
(cl:defmethod max-anisotropy ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:max-anisotropy) obj! args))
(cl:defmethod max-mip-level ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:max-mip-level) obj! args))
(cl:defmethod mip-map-level-of-detail-bias ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:mip-map-level-of-detail-bias) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sampler-state:dispose) obj! args))
(cl:defmethod (cl:setf address-u) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:address-u)) new-value obj! args))
(cl:defmethod (cl:setf address-v) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:address-v)) new-value obj! args))
(cl:defmethod (cl:setf address-w) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:address-w)) new-value obj! args))
(cl:defmethod (cl:setf border-color) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:border-color)) new-value obj! args))
(cl:defmethod (cl:setf comparison-function) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:comparison-function)) new-value obj! args))
(cl:defmethod (cl:setf filter) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:filter)) new-value obj! args))
(cl:defmethod (cl:setf filter-mode) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:filter-mode)) new-value obj! args))
(cl:defmethod (cl:setf max-anisotropy) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:max-anisotropy)) new-value obj! args))
(cl:defmethod (cl:setf max-mip-level) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:max-mip-level)) new-value obj! args))
(cl:defmethod (cl:setf mip-map-level-of-detail-bias) (new-value (obj! dotcl-internal::|SamplerState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sampler-state:mip-map-level-of-detail-bias)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.GraphicsDevice (microsoft-xna-framework-graphics-graphics-device)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GraphicsDevice|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod adapter ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:adapter) obj! args))
(cl:defmethod blend-factor ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:blend-factor) obj! args))
(cl:defmethod blend-state ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:blend-state) obj! args))
(cl:defmethod depth-stencil-state ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:depth-stencil-state) obj! args))
(cl:defmethod display-mode ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:display-mode) obj! args))
(cl:defmethod graphics-debug ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:graphics-debug) obj! args))
(cl:defmethod graphics-device-status ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:graphics-device-status) obj! args))
(cl:defmethod graphics-profile ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:graphics-profile) obj! args))
(cl:defmethod indices ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:indices) obj! args))
(cl:defmethod content-lost? ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:content-lost?) obj! args))
(cl:defmethod disposed? ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:disposed?) obj! args))
(cl:defmethod metrics ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:metrics) obj! args))
(cl:defmethod presentation-parameters ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:presentation-parameters) obj! args))
(cl:defmethod rasterizer-state ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:rasterizer-state) obj! args))
(cl:defmethod render-target-count ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:render-target-count) obj! args))
(cl:defmethod resources-lost ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:resources-lost) obj! args))
(cl:defmethod sampler-states ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:sampler-states) obj! args))
(cl:defmethod scissor-rectangle ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:scissor-rectangle) obj! args))
(cl:defmethod textures ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:textures) obj! args))
(cl:defmethod use-half-pixel-offset ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:use-half-pixel-offset) obj! args))
(cl:defmethod vertex-sampler-states ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:vertex-sampler-states) obj! args))
(cl:defmethod vertex-textures ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:vertex-textures) obj! args))
(cl:defmethod viewport ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:viewport) obj! args))
(cl:defmethod clear ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:clear) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:dispose) obj! args))
(cl:defmethod draw-indexed-primitives ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:draw-indexed-primitives) obj! args))
(cl:defmethod draw-instanced-primitives ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:draw-instanced-primitives) obj! args))
(cl:defmethod draw-primitives ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:draw-primitives) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:finalize) obj! args))
(cl:defmethod get-render-targets ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:get-render-targets) obj! args))
(cl:defmethod present ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:present) obj! args))
(cl:defmethod reset ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:reset) obj! args))
(cl:defmethod set-render-target ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:set-render-target) obj! args))
(cl:defmethod set-vertex-buffer ((obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-graphics-device:set-vertex-buffer) obj! args))
(cl:defmethod (cl:setf blend-factor) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:blend-factor)) new-value obj! args))
(cl:defmethod (cl:setf blend-state) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:blend-state)) new-value obj! args))
(cl:defmethod (cl:setf depth-stencil-state) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:depth-stencil-state)) new-value obj! args))
(cl:defmethod (cl:setf graphics-debug) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:graphics-debug)) new-value obj! args))
(cl:defmethod (cl:setf indices) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:indices)) new-value obj! args))
(cl:defmethod (cl:setf metrics) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:metrics)) new-value obj! args))
(cl:defmethod (cl:setf rasterizer-state) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:rasterizer-state)) new-value obj! args))
(cl:defmethod (cl:setf resources-lost) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:resources-lost)) new-value obj! args))
(cl:defmethod (cl:setf scissor-rectangle) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:scissor-rectangle)) new-value obj! args))
(cl:defmethod (cl:setf viewport) (new-value (obj! dotcl-internal::|GraphicsDevice|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-graphics-device:viewport)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.SpriteBatch (microsoft-xna-framework-graphics-sprite-batch)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SpriteBatch|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod begin ((obj! dotcl-internal::|SpriteBatch|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-batch:begin) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|SpriteBatch|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-batch:dispose) obj! args))
(cl:defmethod draw ((obj! dotcl-internal::|SpriteBatch|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-batch:draw) obj! args))
(cl:defmethod draw-string ((obj! dotcl-internal::|SpriteBatch|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-batch:draw-string) obj! args))
(cl:defmethod end ((obj! dotcl-internal::|SpriteBatch|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-batch:end) obj! args))

;; Microsoft.Xna.Framework.Graphics.SpriteFont (microsoft-xna-framework-graphics-sprite-font)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SpriteFont|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod characters ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:characters) obj! args))
(cl:defmethod default-character ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:default-character) obj! args))
(cl:defmethod glyphs ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:glyphs) obj! args))
(cl:defmethod line-spacing ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:line-spacing) obj! args))
(cl:defmethod spacing ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:spacing) obj! args))
(cl:defmethod texture ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:texture) obj! args))
(cl:defmethod get-glyphs ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:get-glyphs) obj! args))
(cl:defmethod measure-string ((obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font:measure-string) obj! args))
(cl:defmethod (cl:setf default-character) (new-value (obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font:default-character)) new-value obj! args))
(cl:defmethod (cl:setf line-spacing) (new-value (obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font:line-spacing)) new-value obj! args))
(cl:defmethod (cl:setf spacing) (new-value (obj! dotcl-internal::|SpriteFont|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font:spacing)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.SpriteFont+Glyph (microsoft-xna-framework-graphics-sprite-font-glyph)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Glyph|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod bounds-in-texture ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:bounds-in-texture) obj! args))
(cl:defmethod character ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:character) obj! args))
(cl:defmethod cropping ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:cropping) obj! args))
(cl:defmethod left-side-bearing ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:left-side-bearing) obj! args))
(cl:defmethod right-side-bearing ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:right-side-bearing) obj! args))
(cl:defmethod width ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:width) obj! args))
(cl:defmethod width-including-bearings ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:width-including-bearings) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-sprite-font-glyph:to-string) obj! args))
(cl:defmethod (cl:setf bounds-in-texture) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:bounds-in-texture)) new-value obj! args))
(cl:defmethod (cl:setf character) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:character)) new-value obj! args))
(cl:defmethod (cl:setf cropping) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:cropping)) new-value obj! args))
(cl:defmethod (cl:setf left-side-bearing) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:left-side-bearing)) new-value obj! args))
(cl:defmethod (cl:setf right-side-bearing) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:right-side-bearing)) new-value obj! args))
(cl:defmethod (cl:setf width) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:width)) new-value obj! args))
(cl:defmethod (cl:setf width-including-bearings) (new-value (obj! dotcl-internal::|Glyph|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-sprite-font-glyph:width-including-bearings)) new-value obj! args))

;; Microsoft.Xna.Framework.Graphics.PresentationParameters (microsoft-xna-framework-graphics-presentation-parameters)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|PresentationParameters|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod back-buffer-format ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:back-buffer-format) obj! args))
(cl:defmethod back-buffer-height ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:back-buffer-height) obj! args))
(cl:defmethod back-buffer-width ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:back-buffer-width) obj! args))
(cl:defmethod bounds ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:bounds) obj! args))
(cl:defmethod depth-stencil-format ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:depth-stencil-format) obj! args))
(cl:defmethod device-window-handle ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:device-window-handle) obj! args))
(cl:defmethod display-orientation ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:display-orientation) obj! args))
(cl:defmethod hardware-mode-switch ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:hardware-mode-switch) obj! args))
(cl:defmethod full-screen? ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:full-screen?) obj! args))
(cl:defmethod multi-sample-count ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:multi-sample-count) obj! args))
(cl:defmethod presentation-interval ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:presentation-interval) obj! args))
(cl:defmethod render-target-usage ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:render-target-usage) obj! args))
(cl:defmethod clear ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:clear) obj! args))
(cl:defmethod clone ((obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-graphics-presentation-parameters:clone) obj! args))
(cl:defmethod (cl:setf back-buffer-format) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:back-buffer-format)) new-value obj! args))
(cl:defmethod (cl:setf back-buffer-height) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:back-buffer-height)) new-value obj! args))
(cl:defmethod (cl:setf back-buffer-width) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:back-buffer-width)) new-value obj! args))
(cl:defmethod (cl:setf depth-stencil-format) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:depth-stencil-format)) new-value obj! args))
(cl:defmethod (cl:setf device-window-handle) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:device-window-handle)) new-value obj! args))
(cl:defmethod (cl:setf display-orientation) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:display-orientation)) new-value obj! args))
(cl:defmethod (cl:setf hardware-mode-switch) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:hardware-mode-switch)) new-value obj! args))
(cl:defmethod (cl:setf full-screen?) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:full-screen?)) new-value obj! args))
(cl:defmethod (cl:setf multi-sample-count) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:multi-sample-count)) new-value obj! args))
(cl:defmethod (cl:setf presentation-interval) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:presentation-interval)) new-value obj! args))
(cl:defmethod (cl:setf render-target-usage) (new-value (obj! dotcl-internal::|PresentationParameters|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-graphics-presentation-parameters:render-target-usage)) new-value obj! args))

;; Microsoft.Xna.Framework.PlayerIndex (microsoft-xna-framework-player-index)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|PlayerIndex|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|PlayerIndex|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-player-index:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|PlayerIndex|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-player-index:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Audio.SoundEffect (microsoft-xna-framework-audio-sound-effect)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SoundEffect|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod duration ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:duration) obj! args))
(cl:defmethod disposed? ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:disposed?) obj! args))
(cl:defmethod name ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:name) obj! args))
(cl:defmethod create-instance ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:create-instance) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:dispose) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:finalize) obj! args))
(cl:defmethod play ((obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect:play) obj! args))
(cl:defmethod (cl:setf name) (new-value (obj! dotcl-internal::|SoundEffect|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-audio-sound-effect:name)) new-value obj! args))

;; Microsoft.Xna.Framework.Audio.SoundEffectInstance (microsoft-xna-framework-audio-sound-effect-instance)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SoundEffectInstance|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod disposed? ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:disposed?) obj! args))
(cl:defmethod looped? ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:looped?) obj! args))
(cl:defmethod pan ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:pan) obj! args))
(cl:defmethod pitch ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:pitch) obj! args))
(cl:defmethod state ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:state) obj! args))
(cl:defmethod volume ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:volume) obj! args))
(cl:defmethod apply3-d ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:apply3-d) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:dispose) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:finalize) obj! args))
(cl:defmethod pause ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:pause) obj! args))
(cl:defmethod play ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:play) obj! args))
(cl:defmethod resume ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:resume) obj! args))
(cl:defmethod stop ((obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-effect-instance:stop) obj! args))
(cl:defmethod (cl:setf looped?) (new-value (obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-audio-sound-effect-instance:looped?)) new-value obj! args))
(cl:defmethod (cl:setf pan) (new-value (obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-audio-sound-effect-instance:pan)) new-value obj! args))
(cl:defmethod (cl:setf pitch) (new-value (obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-audio-sound-effect-instance:pitch)) new-value obj! args))
(cl:defmethod (cl:setf volume) (new-value (obj! dotcl-internal::|SoundEffectInstance|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-audio-sound-effect-instance:volume)) new-value obj! args))

;; Microsoft.Xna.Framework.Audio.SoundState (microsoft-xna-framework-audio-sound-state)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|SoundState|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|SoundState|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-audio-sound-state:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|SoundState|) cl:&rest args)
  (cl:apply (cl:function (cl:setf microsoft-xna-framework-audio-sound-state:value__)) new-value obj! args))

;; Microsoft.Xna.Framework.Media.Song (microsoft-xna-framework-media-song)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Song|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod album ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:album) obj! args))
(cl:defmethod artist ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:artist) obj! args))
(cl:defmethod duration ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:duration) obj! args))
(cl:defmethod genre ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:genre) obj! args))
(cl:defmethod disposed? ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:disposed?) obj! args))
(cl:defmethod protected? ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:protected?) obj! args))
(cl:defmethod rated? ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:rated?) obj! args))
(cl:defmethod name ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:name) obj! args))
(cl:defmethod play-count ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:play-count) obj! args))
(cl:defmethod position ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:position) obj! args))
(cl:defmethod rating ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:rating) obj! args))
(cl:defmethod track-number ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:track-number) obj! args))
(cl:defmethod dispose ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:dispose) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:equals) obj! args))
(cl:defmethod finalize ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:finalize) obj! args))
(cl:defmethod get-hash-code ((obj! dotcl-internal::|Song|) cl:&rest args)
  (cl:apply (cl:function microsoft-xna-framework-media-song:get-hash-code) obj! args))

;; Microsoft.Xna.Framework.Media.MediaPlayer (microsoft-xna-framework-media-media-player)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|MediaPlayer|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; Gum.Wireframe.Anchor (gum-wireframe-anchor)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Anchor|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|Anchor|) cl:&rest args)
  (cl:apply (cl:function gum-wireframe-anchor:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|Anchor|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-wireframe-anchor:value__)) new-value obj! args))

;; Gum.Wireframe.Dock (gum-wireframe-dock)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Dock|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|Dock|) cl:&rest args)
  (cl:apply (cl:function gum-wireframe-dock:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|Dock|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-wireframe-dock:value__)) new-value obj! args))

;; RenderingLibrary.Content.IContentLoader (rendering-library-content-i-content-loader)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|IContentLoader|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; RenderingLibrary.Camera (rendering-library-camera)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Camera|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod position ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:position) obj! args))
(cl:defmethod absolute-bottom ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:absolute-bottom) obj! args))
(cl:defmethod absolute-left ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:absolute-left) obj! args))
(cl:defmethod absolute-right ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:absolute-right) obj! args))
(cl:defmethod absolute-top ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:absolute-top) obj! args))
(cl:defmethod camera-center-on-screen ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:camera-center-on-screen) obj! args))
(cl:defmethod client-height ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:client-height) obj! args))
(cl:defmethod client-left ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:client-left) obj! args))
(cl:defmethod client-top ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:client-top) obj! args))
(cl:defmethod client-width ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:client-width) obj! args))
(cl:defmethod rendering-x-offset ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:rendering-x-offset) obj! args))
(cl:defmethod rendering-y-offset ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:rendering-y-offset) obj! args))
(cl:defmethod x ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:x) obj! args))
(cl:defmethod y ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:y) obj! args))
(cl:defmethod zoom ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:zoom) obj! args))
(cl:defmethod get-transformation-matrix ((obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function rendering-library-camera:get-transformation-matrix) obj! args))
(cl:defmethod (cl:setf position) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:position)) new-value obj! args))
(cl:defmethod (cl:setf absolute-left) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:absolute-left)) new-value obj! args))
(cl:defmethod (cl:setf absolute-top) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:absolute-top)) new-value obj! args))
(cl:defmethod (cl:setf camera-center-on-screen) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:camera-center-on-screen)) new-value obj! args))
(cl:defmethod (cl:setf client-height) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:client-height)) new-value obj! args))
(cl:defmethod (cl:setf client-left) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:client-left)) new-value obj! args))
(cl:defmethod (cl:setf client-top) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:client-top)) new-value obj! args))
(cl:defmethod (cl:setf client-width) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:client-width)) new-value obj! args))
(cl:defmethod (cl:setf x) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:x)) new-value obj! args))
(cl:defmethod (cl:setf y) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:y)) new-value obj! args))
(cl:defmethod (cl:setf zoom) (new-value (obj! dotcl-internal::|Camera|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-camera:zoom)) new-value obj! args))

;; MonoGameGum.GumService (mono-game-gum-gum-service)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GumService|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod canvas-height ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:canvas-height) obj! args))
(cl:defmethod canvas-width ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:canvas-width) obj! args))
(cl:defmethod content-loader ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:content-loader) obj! args))
(cl:defmethod cursor ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:cursor) obj! args))
(cl:defmethod deferred-queue ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:deferred-queue) obj! args))
(cl:defmethod game ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:game) obj! args))
(cl:defmethod gamepads ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:gamepads) obj! args))
(cl:defmethod game-time ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:game-time) obj! args))
(cl:defmethod initialized? ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:initialized?) obj! args))
(cl:defmethod keyboard ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:keyboard) obj! args))
(cl:defmethod last-load-result ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:last-load-result) obj! args))
(cl:defmethod localization-service ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:localization-service) obj! args))
(cl:defmethod modal-root ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:modal-root) obj! args))
(cl:defmethod popup-root ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:popup-root) obj! args))
(cl:defmethod renderer ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:renderer) obj! args))
(cl:defmethod root ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:root) obj! args))
(cl:defmethod synchronization-context ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:synchronization-context) obj! args))
(cl:defmethod system-managers ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:system-managers) obj! args))
(cl:defmethod draw ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:draw) obj! args))
(cl:defmethod enable-hot-reload ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:enable-hot-reload) obj! args))
(cl:defmethod initialize ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:initialize) obj! args))
(cl:defmethod initialize-for-testing ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:initialize-for-testing) obj! args))
(cl:defmethod load-animations ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:load-animations) obj! args))
(cl:defmethod refresh-styles ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:refresh-styles) obj! args))
(cl:defmethod uninitialize ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:uninitialize) obj! args))
(cl:defmethod update ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:update) obj! args))
(cl:defmethod use-gamepad-defaults ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:use-gamepad-defaults) obj! args))
(cl:defmethod use-keyboard-defaults ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:use-keyboard-defaults) obj! args))
(cl:defmethod use-single-threaded-async ((obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gum-service:use-single-threaded-async) obj! args))
(cl:defmethod (cl:setf canvas-height) (new-value (obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gum-service:canvas-height)) new-value obj! args))
(cl:defmethod (cl:setf canvas-width) (new-value (obj! dotcl-internal::|GumService|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gum-service:canvas-width)) new-value obj! args))

;; Gum.Forms.Controls.FrameworkElement (gum-forms-controls-framework-element)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|FrameworkElement|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod absolute-left ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:absolute-left) obj! args))
(cl:defmethod absolute-top ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:absolute-top) obj! args))
(cl:defmethod actual-height ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:actual-height) obj! args))
(cl:defmethod actual-width ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:actual-width) obj! args))
(cl:defmethod binding-context ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:binding-context) obj! args))
(cl:defmethod custom-cursor ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:custom-cursor) obj! args))
(cl:defmethod gamepad-tabbing-focus-behavior ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:gamepad-tabbing-focus-behavior) obj! args))
(cl:defmethod height ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:height) obj! args))
(cl:defmethod height-units ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:height-units) obj! args))
(cl:defmethod enabled? ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:enabled?) obj! args))
(cl:defmethod focused? ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:focused?) obj! args))
(cl:defmethod tab-navigation-enabled? ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:tab-navigation-enabled?) obj! args))
(cl:defmethod using-left-and-right-gamepad-directions-for-navigation? ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:using-left-and-right-gamepad-directions-for-navigation?) obj! args))
(cl:defmethod visible? ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:visible?) obj! args))
(cl:defmethod max-height ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:max-height) obj! args))
(cl:defmethod max-width ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:max-width) obj! args))
(cl:defmethod min-height ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:min-height) obj! args))
(cl:defmethod min-width ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:min-width) obj! args))
(cl:defmethod name ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:name) obj! args))
(cl:defmethod parent-framework-element ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:parent-framework-element) obj! args))
(cl:defmethod tool-tip ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:tool-tip) obj! args))
(cl:defmethod visual ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:visual) obj! args))
(cl:defmethod width ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:width) obj! args))
(cl:defmethod width-units ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:width-units) obj! args))
(cl:defmethod x ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:x) obj! args))
(cl:defmethod x-origin ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:x-origin) obj! args))
(cl:defmethod x-units ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:x-units) obj! args))
(cl:defmethod y ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:y) obj! args))
(cl:defmethod y-origin ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:y-origin) obj! args))
(cl:defmethod y-units ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:y-units) obj! args))
(cl:defmethod add-child ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:add-child) obj! args))
(cl:defmethod anchor ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:anchor) obj! args))
(cl:defmethod apply-runtime-properties ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:apply-runtime-properties) obj! args))
(cl:defmethod call-loaded ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:call-loaded) obj! args))
(cl:defmethod clear-binding ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:clear-binding) obj! args))
(cl:defmethod close ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:close) obj! args))
(cl:defmethod dock ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:dock) obj! args))
(cl:defmethod get-desired-state ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-desired-state) obj! args))
(cl:defmethod get-desired-state-with-checked ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-desired-state-with-checked) obj! args))
(cl:defmethod get-if-gamepad-or-keyboard-primary-push-input-is-held ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-if-gamepad-or-keyboard-primary-push-input-is-held) obj! args))
(cl:defmethod get-if-is-on-this-or-child-visual ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-if-is-on-this-or-child-visual) obj! args))
(cl:defmethod get-if-push-input-is-held ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-if-push-input-is-held) obj! args))
(cl:defmethod get-state ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-state) obj! args))
(cl:defmethod get-visual ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:get-visual) obj! args))
(cl:defmethod handle-gamepad-navigation ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:handle-gamepad-navigation) obj! args))
(cl:defmethod handle-keyboard-focus-update ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:handle-keyboard-focus-update) obj! args))
(cl:defmethod handle-tab ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:handle-tab) obj! args))
(cl:defmethod handle-visual-binding-context-changed ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:handle-visual-binding-context-changed) obj! args))
(cl:defmethod data-bound? ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:data-bound?) obj! args))
(cl:defmethod on-binding-context-changed ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:on-binding-context-changed) obj! args))
(cl:defmethod on-property-changed ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:on-property-changed) obj! args))
(cl:defmethod push-value-to-view-model ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:push-value-to-view-model) obj! args))
(cl:defmethod raise-key-down ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:raise-key-down) obj! args))
(cl:defmethod react-to-visual-changed ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:react-to-visual-changed) obj! args))
(cl:defmethod react-to-visual-removed ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:react-to-visual-removed) obj! args))
(cl:defmethod refresh-internal-visual-references ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:refresh-internal-visual-references) obj! args))
(cl:defmethod register-runtime-property ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:register-runtime-property) obj! args))
(cl:defmethod remove-child ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:remove-child) obj! args))
(cl:defmethod reposition-to-keep-in-screen ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:reposition-to-keep-in-screen) obj! args))
(cl:defmethod save-runtime-properties ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:save-runtime-properties) obj! args))
(cl:defmethod set-binding ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:set-binding) obj! args))
(cl:defmethod show ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:show) obj! args))
(cl:defmethod to-string ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:to-string) obj! args))
(cl:defmethod update-state ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:update-state) obj! args))
(cl:defmethod update-state-recursively ((obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-framework-element:update-state-recursively) obj! args))
(cl:defmethod (cl:setf binding-context) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:binding-context)) new-value obj! args))
(cl:defmethod (cl:setf custom-cursor) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:custom-cursor)) new-value obj! args))
(cl:defmethod (cl:setf gamepad-tabbing-focus-behavior) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:gamepad-tabbing-focus-behavior)) new-value obj! args))
(cl:defmethod (cl:setf height) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:height)) new-value obj! args))
(cl:defmethod (cl:setf height-units) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:height-units)) new-value obj! args))
(cl:defmethod (cl:setf enabled?) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:enabled?)) new-value obj! args))
(cl:defmethod (cl:setf focused?) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:focused?)) new-value obj! args))
(cl:defmethod (cl:setf using-left-and-right-gamepad-directions-for-navigation?) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:using-left-and-right-gamepad-directions-for-navigation?)) new-value obj! args))
(cl:defmethod (cl:setf visible?) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:visible?)) new-value obj! args))
(cl:defmethod (cl:setf max-height) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:max-height)) new-value obj! args))
(cl:defmethod (cl:setf max-width) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:max-width)) new-value obj! args))
(cl:defmethod (cl:setf min-height) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:min-height)) new-value obj! args))
(cl:defmethod (cl:setf min-width) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:min-width)) new-value obj! args))
(cl:defmethod (cl:setf name) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:name)) new-value obj! args))
(cl:defmethod (cl:setf tool-tip) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:tool-tip)) new-value obj! args))
(cl:defmethod (cl:setf visual) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:visual)) new-value obj! args))
(cl:defmethod (cl:setf width) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:width)) new-value obj! args))
(cl:defmethod (cl:setf width-units) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:width-units)) new-value obj! args))
(cl:defmethod (cl:setf x) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:x)) new-value obj! args))
(cl:defmethod (cl:setf x-origin) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:x-origin)) new-value obj! args))
(cl:defmethod (cl:setf x-units) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:x-units)) new-value obj! args))
(cl:defmethod (cl:setf y) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:y)) new-value obj! args))
(cl:defmethod (cl:setf y-origin) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:y-origin)) new-value obj! args))
(cl:defmethod (cl:setf y-units) (new-value (obj! dotcl-internal::|FrameworkElement|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-framework-element:y-units)) new-value obj! args))

;; Gum.Forms.Controls.Panel (gum-forms-controls-panel)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Panel|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod children ((obj! dotcl-internal::|Panel|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-panel:children) obj! args))
(cl:defmethod react-to-visual-changed ((obj! dotcl-internal::|Panel|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-panel:react-to-visual-changed) obj! args))

;; Gum.Forms.Controls.Button (gum-forms-controls-button)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Button|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod text ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:text) obj! args))
(cl:defmethod apply-runtime-properties ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:apply-runtime-properties) obj! args))
(cl:defmethod react-to-visual-changed ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:react-to-visual-changed) obj! args))
(cl:defmethod refresh-internal-visual-references ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:refresh-internal-visual-references) obj! args))
(cl:defmethod save-runtime-properties ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:save-runtime-properties) obj! args))
(cl:defmethod set-text-no-translate ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:set-text-no-translate) obj! args))
(cl:defmethod update-state ((obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-button:update-state) obj! args))
(cl:defmethod (cl:setf text) (new-value (obj! dotcl-internal::|Button|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-button:text)) new-value obj! args))

;; Gum.Forms.Controls.Primitives.ButtonBase (gum-forms-controls-primitives-button-base)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|ButtonBase|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod click-gamepad-button ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:click-gamepad-button) obj! args))
(cl:defmethod ignored-keys ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:ignored-keys) obj! args))
(cl:defmethod focused? ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:focused?) obj! args))
(cl:defmethod next-in-tab-sequence ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:next-in-tab-sequence) obj! args))
(cl:defmethod parent-input-receiver ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:parent-input-receiver) obj! args))
(cl:defmethod taking-input ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:taking-input) obj! args))
(cl:defmethod do-keyboard-action ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:do-keyboard-action) obj! args))
(cl:defmethod get-if-push-input-is-held ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:get-if-push-input-is-held) obj! args))
(cl:defmethod handle-char-entered ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:handle-char-entered) obj! args))
(cl:defmethod handle-key-down ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:handle-key-down) obj! args))
(cl:defmethod lose-focus ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:lose-focus) obj! args))
(cl:defmethod on-click ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:on-click) obj! args))
(cl:defmethod on-focus-update ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:on-focus-update) obj! args))
(cl:defmethod on-focus-update-preview ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:on-focus-update-preview) obj! args))
(cl:defmethod on-gain-focus ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:on-gain-focus) obj! args))
(cl:defmethod on-lose-focus ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:on-lose-focus) obj! args))
(cl:defmethod perform-click ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:perform-click) obj! args))
(cl:defmethod react-to-visual-changed ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:react-to-visual-changed) obj! args))
(cl:defmethod receive-input ((obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-primitives-button-base:receive-input) obj! args))
(cl:defmethod (cl:setf click-gamepad-button) (new-value (obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-primitives-button-base:click-gamepad-button)) new-value obj! args))
(cl:defmethod (cl:setf focused?) (new-value (obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-primitives-button-base:focused?)) new-value obj! args))
(cl:defmethod (cl:setf next-in-tab-sequence) (new-value (obj! dotcl-internal::|ButtonBase|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-primitives-button-base:next-in-tab-sequence)) new-value obj! args))

;; MonoGameGum.GueDeriving.TextRuntime (mono-game-gum-gue-deriving-text-runtime)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|TextRuntime|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod default-height ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:default-height) obj! args))
(cl:defmethod default-height-units ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:default-height-units) obj! args))
(cl:defmethod default-width ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:default-width) obj! args))
(cl:defmethod default-width-units ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:default-width-units) obj! args))
(cl:defmethod alpha ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:alpha) obj! args))
(cl:defmethod bitmap-font ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:bitmap-font) obj! args))
(cl:defmethod blend ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:blend) obj! args))
(cl:defmethod blend-state ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:blend-state) obj! args))
(cl:defmethod blue ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:blue) obj! args))
(cl:defmethod color ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:color) obj! args))
(cl:defmethod custom-font-file ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:custom-font-file) obj! args))
(cl:defmethod font ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:font) obj! args))
(cl:defmethod font-family ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:font-family) obj! args))
(cl:defmethod font-scale ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:font-scale) obj! args))
(cl:defmethod font-size ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:font-size) obj! args))
(cl:defmethod green ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:green) obj! args))
(cl:defmethod horizontal-alignment ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:horizontal-alignment) obj! args))
(cl:defmethod bold? ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:bold?) obj! args))
(cl:defmethod italic? ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:italic?) obj! args))
(cl:defmethod line-height-multiplier ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:line-height-multiplier) obj! args))
(cl:defmethod max-letters-to-show ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:max-letters-to-show) obj! args))
(cl:defmethod max-number-of-lines ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:max-number-of-lines) obj! args))
(cl:defmethod outline-thickness ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:outline-thickness) obj! args))
(cl:defmethod overlap-direction ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:overlap-direction) obj! args))
(cl:defmethod red ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:red) obj! args))
(cl:defmethod text ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:text) obj! args))
(cl:defmethod text-overflow-horizontal-mode ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:text-overflow-horizontal-mode) obj! args))
(cl:defmethod text-rendering-position-mode ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:text-rendering-position-mode) obj! args))
(cl:defmethod use-custom-font ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:use-custom-font) obj! args))
(cl:defmethod use-font-smoothing ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:use-font-smoothing) obj! args))
(cl:defmethod vertical-alignment ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:vertical-alignment) obj! args))
(cl:defmethod wrapped-text ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:wrapped-text) obj! args))
(cl:defmethod add-to-managers ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:add-to-managers) obj! args))
(cl:defmethod clone ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:clone) obj! args))
(cl:defmethod get-character-index-at-position ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:get-character-index-at-position) obj! args))
(cl:defmethod set-text-no-translate ((obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function mono-game-gum-gue-deriving-text-runtime:set-text-no-translate) obj! args))
(cl:defmethod (cl:setf default-height) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:default-height)) new-value obj! args))
(cl:defmethod (cl:setf default-height-units) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:default-height-units)) new-value obj! args))
(cl:defmethod (cl:setf default-width) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:default-width)) new-value obj! args))
(cl:defmethod (cl:setf default-width-units) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:default-width-units)) new-value obj! args))
(cl:defmethod (cl:setf alpha) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:alpha)) new-value obj! args))
(cl:defmethod (cl:setf bitmap-font) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:bitmap-font)) new-value obj! args))
(cl:defmethod (cl:setf blend) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:blend)) new-value obj! args))
(cl:defmethod (cl:setf blend-state) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:blend-state)) new-value obj! args))
(cl:defmethod (cl:setf blue) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:blue)) new-value obj! args))
(cl:defmethod (cl:setf color) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:color)) new-value obj! args))
(cl:defmethod (cl:setf custom-font-file) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:custom-font-file)) new-value obj! args))
(cl:defmethod (cl:setf font) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:font)) new-value obj! args))
(cl:defmethod (cl:setf font-family) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:font-family)) new-value obj! args))
(cl:defmethod (cl:setf font-scale) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:font-scale)) new-value obj! args))
(cl:defmethod (cl:setf font-size) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:font-size)) new-value obj! args))
(cl:defmethod (cl:setf green) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:green)) new-value obj! args))
(cl:defmethod (cl:setf horizontal-alignment) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:horizontal-alignment)) new-value obj! args))
(cl:defmethod (cl:setf bold?) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:bold?)) new-value obj! args))
(cl:defmethod (cl:setf italic?) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:italic?)) new-value obj! args))
(cl:defmethod (cl:setf line-height-multiplier) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:line-height-multiplier)) new-value obj! args))
(cl:defmethod (cl:setf max-letters-to-show) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:max-letters-to-show)) new-value obj! args))
(cl:defmethod (cl:setf max-number-of-lines) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:max-number-of-lines)) new-value obj! args))
(cl:defmethod (cl:setf outline-thickness) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:outline-thickness)) new-value obj! args))
(cl:defmethod (cl:setf overlap-direction) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:overlap-direction)) new-value obj! args))
(cl:defmethod (cl:setf red) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:red)) new-value obj! args))
(cl:defmethod (cl:setf text) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:text)) new-value obj! args))
(cl:defmethod (cl:setf text-overflow-horizontal-mode) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:text-overflow-horizontal-mode)) new-value obj! args))
(cl:defmethod (cl:setf text-rendering-position-mode) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:text-rendering-position-mode)) new-value obj! args))
(cl:defmethod (cl:setf use-custom-font) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:use-custom-font)) new-value obj! args))
(cl:defmethod (cl:setf use-font-smoothing) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:use-font-smoothing)) new-value obj! args))
(cl:defmethod (cl:setf vertical-alignment) (new-value (obj! dotcl-internal::|TextRuntime|) cl:&rest args)
  (cl:apply (cl:function (cl:setf mono-game-gum-gue-deriving-text-runtime:vertical-alignment)) new-value obj! args))

;; Gum.Forms.Controls.Label (gum-forms-controls-label)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Label|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod text ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:text) obj! args))
(cl:defmethod text-component ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:text-component) obj! args))
(cl:defmethod apply-runtime-properties ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:apply-runtime-properties) obj! args))
(cl:defmethod react-to-visual-changed ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:react-to-visual-changed) obj! args))
(cl:defmethod refresh-internal-visual-references ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:refresh-internal-visual-references) obj! args))
(cl:defmethod save-runtime-properties ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:save-runtime-properties) obj! args))
(cl:defmethod set-text-no-translate ((obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-label:set-text-no-translate) obj! args))
(cl:defmethod (cl:setf text) (new-value (obj! dotcl-internal::|Label|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-label:text)) new-value obj! args))

;; Gum.Forms.Controls.Slider (gum-forms-controls-slider)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Slider|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod ignored-keys ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:ignored-keys) obj! args))
(cl:defmethod snap-to-tick-enabled? ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:snap-to-tick-enabled?) obj! args))
(cl:defmethod thumb-grabbed? ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:thumb-grabbed?) obj! args))
(cl:defmethod next-in-tab-sequence ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:next-in-tab-sequence) obj! args))
(cl:defmethod parent-input-receiver ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:parent-input-receiver) obj! args))
(cl:defmethod taking-input ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:taking-input) obj! args))
(cl:defmethod ticks-frequency ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:ticks-frequency) obj! args))
(cl:defmethod apply-runtime-properties ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:apply-runtime-properties) obj! args))
(cl:defmethod do-keyboard-action ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:do-keyboard-action) obj! args))
(cl:defmethod handle-char-entered ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:handle-char-entered) obj! args))
(cl:defmethod handle-key-down ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:handle-key-down) obj! args))
(cl:defmethod handle-thumb-push ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:handle-thumb-push) obj! args))
(cl:defmethod lose-focus ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:lose-focus) obj! args))
(cl:defmethod on-focus-update ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-focus-update) obj! args))
(cl:defmethod on-focus-update-preview ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-focus-update-preview) obj! args))
(cl:defmethod on-gain-focus ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-gain-focus) obj! args))
(cl:defmethod on-lose-focus ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-lose-focus) obj! args))
(cl:defmethod on-maximum-changed ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-maximum-changed) obj! args))
(cl:defmethod on-minimum-changed ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-minimum-changed) obj! args))
(cl:defmethod on-value-changed ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:on-value-changed) obj! args))
(cl:defmethod react-to-visual-changed ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:react-to-visual-changed) obj! args))
(cl:defmethod react-to-visual-removed ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:react-to-visual-removed) obj! args))
(cl:defmethod receive-input ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:receive-input) obj! args))
(cl:defmethod update-state ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:update-state) obj! args))
(cl:defmethod update-thumb-position-to-cursor-drag ((obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-slider:update-thumb-position-to-cursor-drag) obj! args))
(cl:defmethod (cl:setf snap-to-tick-enabled?) (new-value (obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-slider:snap-to-tick-enabled?)) new-value obj! args))
(cl:defmethod (cl:setf next-in-tab-sequence) (new-value (obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-slider:next-in-tab-sequence)) new-value obj! args))
(cl:defmethod (cl:setf ticks-frequency) (new-value (obj! dotcl-internal::|Slider|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-slider:ticks-frequency)) new-value obj! args))

;; Gum.Forms.DefaultVisualsVersion (gum-forms-default-visuals-version)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|DefaultVisualsVersion|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod value__ ((obj! dotcl-internal::|DefaultVisualsVersion|) cl:&rest args)
  (cl:apply (cl:function gum-forms-default-visuals-version:value__) obj! args))
(cl:defmethod (cl:setf value__) (new-value (obj! dotcl-internal::|DefaultVisualsVersion|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-default-visuals-version:value__)) new-value obj! args))

;; RenderingLibrary.Content.ContentLoader (rendering-library-content-content-loader)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|ContentLoader|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod system-managers ((obj! dotcl-internal::|ContentLoader|) cl:&rest args)
  (cl:apply (cl:function rendering-library-content-content-loader:system-managers) obj! args))
(cl:defmethod xna-content-manager ((obj! dotcl-internal::|ContentLoader|) cl:&rest args)
  (cl:apply (cl:function rendering-library-content-content-loader:xna-content-manager) obj! args))
(cl:defmethod (cl:setf system-managers) (new-value (obj! dotcl-internal::|ContentLoader|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-content-content-loader:system-managers)) new-value obj! args))
(cl:defmethod (cl:setf xna-content-manager) (new-value (obj! dotcl-internal::|ContentLoader|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-content-content-loader:xna-content-manager)) new-value obj! args))

;; Gum.Forms.Controls.KeyCombo (gum-forms-controls-key-combo)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|KeyCombo|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod held-key ((obj! dotcl-internal::|KeyCombo|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-key-combo:held-key) obj! args))
(cl:defmethod triggered-on-repeat? ((obj! dotcl-internal::|KeyCombo|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-key-combo:triggered-on-repeat?) obj! args))
(cl:defmethod pushed-key ((obj! dotcl-internal::|KeyCombo|) cl:&rest args)
  (cl:apply (cl:function gum-forms-controls-key-combo:pushed-key) obj! args))
(cl:defmethod (cl:setf held-key) (new-value (obj! dotcl-internal::|KeyCombo|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-key-combo:held-key)) new-value obj! args))
(cl:defmethod (cl:setf triggered-on-repeat?) (new-value (obj! dotcl-internal::|KeyCombo|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-key-combo:triggered-on-repeat?)) new-value obj! args))
(cl:defmethod (cl:setf pushed-key) (new-value (obj! dotcl-internal::|KeyCombo|) cl:&rest args)
  (cl:apply (cl:function (cl:setf gum-forms-controls-key-combo:pushed-key)) new-value obj! args))

;; RenderingLibrary.Graphics.Renderer (rendering-library-graphics-renderer)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|Renderer|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod single-pixel-source-rectangle ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:single-pixel-source-rectangle) obj! args))
(cl:defmethod camera ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:camera) obj! args))
(cl:defmethod dotted-line-texture ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:dotted-line-texture) obj! args))
(cl:defmethod graphics-device ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:graphics-device) obj! args))
(cl:defmethod using-premultiplied-alpha? ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:using-premultiplied-alpha?) obj! args))
(cl:defmethod layers ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:layers) obj! args))
(cl:defmethod main-layer ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:main-layer) obj! args))
(cl:defmethod single-pixel-texture ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:single-pixel-texture) obj! args))
(cl:defmethod sprite-renderer ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:sprite-renderer) obj! args))
(cl:defmethod add-layer ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:add-layer) obj! args))
(cl:defmethod begin ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:begin) obj! args))
(cl:defmethod clear-performance-recording-variables ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:clear-performance-recording-variables) obj! args))
(cl:defmethod draw ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:draw) obj! args))
(cl:defmethod end ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:end) obj! args))
(cl:defmethod equals ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:equals) obj! args))
(cl:defmethod force-end ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:force-end) obj! args))
(cl:defmethod initialize ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:initialize) obj! args))
(cl:defmethod insert-layer ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:insert-layer) obj! args))
(cl:defmethod remove-layer ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:remove-layer) obj! args))
(cl:defmethod remove-renderable ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:remove-renderable) obj! args))
(cl:defmethod try-get-single-pixel-texture ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:try-get-single-pixel-texture) obj! args))
(cl:defmethod uninitialize ((obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function rendering-library-graphics-renderer:uninitialize) obj! args))
(cl:defmethod (cl:setf single-pixel-source-rectangle) (new-value (obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-graphics-renderer:single-pixel-source-rectangle)) new-value obj! args))
(cl:defmethod (cl:setf using-premultiplied-alpha?) (new-value (obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-graphics-renderer:using-premultiplied-alpha?)) new-value obj! args))
(cl:defmethod (cl:setf single-pixel-texture) (new-value (obj! dotcl-internal::|Renderer|) cl:&rest args)
  (cl:apply (cl:function (cl:setf rendering-library-graphics-renderer:single-pixel-texture)) new-value obj! args))

;; MonoGameGum.GraphicalUiElementExtensionMethods (mono-game-gum-graphical-ui-element-extension-methods)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|GraphicalUiElementExtensionMethods|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".

;; System.Collections.Generic.List`1 (system-collections-generic-list-1)
;; NOTE: specializes on the simple-name CLOS class dotcl-internal::|List`1|. If another
;; --defgeneric-opted-in class in this batch also simplifies to that
;; name (a same-named type from a different namespace), only one of
;; them keeps this symbol at load time -- dispatch for the other would
;; be wrong. See doc/make-everything-defgeneric.md's "Static specializer
;; collision caveat".
(cl:defmethod capacity ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:capacity) obj! args))
(cl:defmethod count ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:count) obj! args))
(cl:defmethod item ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:item) obj! args))
(cl:defmethod add ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:add) obj! args))
(cl:defmethod add-range ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:add-range) obj! args))
(cl:defmethod as-read-only ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:as-read-only) obj! args))
(cl:defmethod binary-search ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:binary-search) obj! args))
(cl:defmethod clear ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:clear) obj! args))
(cl:defmethod contains ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:contains) obj! args))
(cl:defmethod copy-to ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:copy-to) obj! args))
(cl:defmethod ensure-capacity ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:ensure-capacity) obj! args))
(cl:defmethod exists ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:exists) obj! args))
(cl:defmethod find ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:find) obj! args))
(cl:defmethod find-all ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:find-all) obj! args))
(cl:defmethod find-index ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:find-index) obj! args))
(cl:defmethod find-last ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:find-last) obj! args))
(cl:defmethod find-last-index ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:find-last-index) obj! args))
(cl:defmethod for-each ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:for-each) obj! args))
(cl:defmethod get-enumerator ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:get-enumerator) obj! args))
(cl:defmethod get-range ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:get-range) obj! args))
(cl:defmethod index-of ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:index-of) obj! args))
(cl:defmethod insert ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:insert) obj! args))
(cl:defmethod insert-range ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:insert-range) obj! args))
(cl:defmethod last-index-of ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:last-index-of) obj! args))
(cl:defmethod remove ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:remove) obj! args))
(cl:defmethod remove-all ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:remove-all) obj! args))
(cl:defmethod remove-at ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:remove-at) obj! args))
(cl:defmethod remove-range ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:remove-range) obj! args))
(cl:defmethod reverse ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:reverse) obj! args))
(cl:defmethod slice ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:slice) obj! args))
(cl:defmethod sort ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:sort) obj! args))
(cl:defmethod to-array ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:to-array) obj! args))
(cl:defmethod trim-excess ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:trim-excess) obj! args))
(cl:defmethod true-for-all ((obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function system-collections-generic-list-1:true-for-all) obj! args))
(cl:defmethod (cl:setf capacity) (new-value (obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function (cl:setf system-collections-generic-list-1:capacity)) new-value obj! args))
(cl:defmethod (cl:setf item) (new-value (obj! dotcl-internal::|List`1|) cl:&rest args)
  (cl:apply (cl:function (cl:setf system-collections-generic-list-1:item)) new-value obj! args))

