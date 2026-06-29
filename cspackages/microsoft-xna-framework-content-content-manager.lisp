;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Content.ContentManager
;;; Generator Version: 16
;;; Creation Date: 2026-06-29T01:13:33Z

(cl:in-package :cl-user)

(cl:defpackage :microsoft-xna-framework-content-content-manager
  (:use :cl)
  (:shadow
   #:load
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-i-service-provider
   #:new-i-service-provider-string
   #:loaded-assets
   #:root-directory
   #:service-provider
   #:dispose
   #:dispose-boolean
   #:finalize
   #:load
   #:load-localized
   #:open-stream
   #:reload-asset
   #:reload-graphics-assets
   #:unload
   #:unload-asset
  ))

(cl:in-package :microsoft-xna-framework-content-content-manager)

(cl:defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Content.ContentManager"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Content.ContentManager")
(cl:defconstant <creation> "2026-06-29T01:13:33Z")
(cl:defconstant <version> 16)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Content.ContentManager")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Content.ContentManager. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-i-service-provider (service-provider)
  "Calls Microsoft.Xna.Framework.Content.ContentManager constructor new(IServiceProvider)"
  (dotnet:new <type-str> service-provider))

(cl:defun new-i-service-provider-string (service-provider root-directory)
  "Calls Microsoft.Xna.Framework.Content.ContentManager constructor new(IServiceProvider, String)"
  (dotnet:new <type-str> service-provider root-directory))

(cl:defun loaded-assets (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "get_LoadedAssets"))

(cl:defun root-directory (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "get_RootDirectory"))

(cl:defun (cl:setf root-directory) (new-value obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "set_RootDirectory" new-value))

(cl:defun service-provider (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "get_ServiceProvider"))

(cl:defun dispose (obj cl:&rest args)
  "Passthrough for Microsoft.Xna.Framework.Content.ContentManager.Dispose overloads. Dispatches at runtime."
  (cl:apply (cl:function dotnet:invoke) (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Dispose" args))

(cl:defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Content.ContentManager.Dispose Dispose() -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Dispose"))

(cl:defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Content.ContentManager.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Dispose" disposing))

(cl:defun finalize (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Finalize"))

(cl:defun load (type obj asset-name)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Load" (cl:list type) asset-name))

(cl:defun load-localized (type obj asset-name)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "LoadLocalized" (cl:list type) asset-name))

(cl:defun open-stream (obj asset-name)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "OpenStream" asset-name))

(cl:defun reload-asset (type obj original-asset-name current-asset)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "ReloadAsset" (cl:list type) original-asset-name current-asset))

(cl:defun reload-graphics-assets (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "ReloadGraphicsAssets"))

(cl:defun unload (obj)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Unload"))

(cl:defun unload-asset (obj asset-name)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "UnloadAsset" asset-name))

