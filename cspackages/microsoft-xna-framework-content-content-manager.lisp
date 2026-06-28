;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Content.ContentManager
;;; Generator Version: 14
;;; Creation Date: 2026-06-28T22:57:40Z

(in-package :cl-user)

(defpackage :microsoft-xna-framework-content-content-manager
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

(in-package :microsoft-xna-framework-content-content-manager)

(defconstant <type> (monoutils:get-type "Microsoft.Xna.Framework.Content.ContentManager"))
(defconstant <type-str> "Microsoft.Xna.Framework.Content.ContentManager")
(defconstant <creation> "2026-06-28T22:57:40Z")
(defconstant <version> 14)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Microsoft.Xna.Framework.Content.ContentManager")))

(defun new (&rest args)
  "Passthrough constructor for Microsoft.Xna.Framework.Content.ContentManager. Dispatches at runtime."
  (apply #'dotnet:new <type-str> args))

(defun new-i-service-provider (service-provider)
  "Calls Microsoft.Xna.Framework.Content.ContentManager constructor new(IServiceProvider)"
  (dotnet:new <type-str> service-provider))

(defun new-i-service-provider-string (service-provider root-directory)
  "Calls Microsoft.Xna.Framework.Content.ContentManager constructor new(IServiceProvider, String)"
  (dotnet:new <type-str> service-provider root-directory))

(defun loaded-assets (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "get_LoadedAssets"))

(defun root-directory (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "get_RootDirectory"))

(defun (setf root-directory) (new-value obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "set_RootDirectory" new-value))

(defun service-provider (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "get_ServiceProvider"))

(defun dispose (obj &rest args)
  "Passthrough for Microsoft.Xna.Framework.Content.ContentManager.Dispose overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Dispose" args))

(defun dispose (obj)
  "Calls Microsoft.Xna.Framework.Content.ContentManager.Dispose Dispose() -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Dispose"))

(defun dispose-boolean (obj disposing)
  "Calls Microsoft.Xna.Framework.Content.ContentManager.Dispose Dispose(Boolean) -> Void"
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Dispose" disposing))

(defun finalize (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Finalize"))

(defun load (type obj asset-name)
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Load" (list type) asset-name))

(defun load-localized (type obj asset-name)
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "LoadLocalized" (list type) asset-name))

(defun open-stream (obj asset-name)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "OpenStream" asset-name))

(defun reload-asset (type obj original-asset-name current-asset)
  (dotnet:invoke-generic (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "ReloadAsset" (list type) original-asset-name current-asset))

(defun reload-graphics-assets (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "ReloadGraphicsAssets"))

(defun unload (obj)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "Unload"))

(defun unload-asset (obj asset-name)
  (dotnet:invoke (the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj) "UnloadAsset" asset-name))

