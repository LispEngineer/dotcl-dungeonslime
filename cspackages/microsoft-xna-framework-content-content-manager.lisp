;;; Generated automatically. Do not edit.
;;; Class: Microsoft.Xna.Framework.Content.ContentManager
;;; Generator Version: 50
;;; Creation Date: 2026-07-16T13:55:57Z

(cl:in-package :microsoft-xna-framework-content-content-manager)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Microsoft.Xna.Framework.Content.ContentManager"))
(cl:defconstant <type-str> "Microsoft.Xna.Framework.Content.ContentManager")
(cl:defconstant <creation> "2026-07-16T13:55:57Z")
(cl:defconstant <version> 50)

(cl:defun new (service-provider cl:&optional (root-directory cl:nil supplied-root-directory))
  "Master wrapper for Microsoft.Xna.Framework.Content.ContentManager constructor overloads. Dispatches at runtime.

new(IServiceProvider)

new(IServiceProvider, String)
"
  (cl:cond
    ((cl:and (cl:or (cl:null service-provider) (dotnet:is-instance-of service-provider "System.IServiceProvider")) supplied-root-directory (cl:stringp root-directory))
     (dotnet:new <type-str> service-provider root-directory))
    ((cl:and (cl:or (cl:null service-provider) (dotnet:is-instance-of service-provider "System.IServiceProvider")) (cl:not supplied-root-directory))
     (dotnet:new <type-str> service-provider))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-CONTENT-CONTENT-MANAGER"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:list :service-provider service-provider) (cl:when supplied-root-directory (cl:list :root-directory root-directory)))))))

(cl:defun loaded-assets (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "get_LoadedAssets"))

(cl:defun root-directory (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "get_RootDirectory"))

(cl:defun (cl:setf root-directory) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "set_RootDirectory" new-value))

(cl:defun service-provider (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "get_ServiceProvider"))

(cl:defun dispose (obj! cl:&optional (disposing cl:nil supplied-disposing))
  "Master wrapper for Microsoft.Xna.Framework.Content.ContentManager.Dispose overloads. Dispatches at runtime.

Dispose() -> Void

Dispose(Boolean) -> Void
"
  (cl:cond
    ((cl:and supplied-disposing (cl:typep disposing 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "Dispose" disposing))
    ((cl:and (cl:not supplied-disposing))
     (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "Dispose"))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MICROSOFT-XNA-FRAMEWORK-CONTENT-CONTENT-MANAGER"
                    :class-name <type-str>
                    :method-name "Dispose"
                    :supplied-args (cl:append (cl:when supplied-disposing (cl:list :disposing disposing)))))))

(cl:defun finalize (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "Finalize"))

(cl:defun load (type obj! asset-name)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "Load" (cl:list type) asset-name))

(cl:defun load-localized (type obj! asset-name)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "LoadLocalized" (cl:list type) asset-name))

(cl:defun open-stream (obj! asset-name)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "OpenStream" asset-name))

(cl:defun read-asset (type obj! asset-name record-disposable-object)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "ReadAsset" (cl:list type) asset-name record-disposable-object))

(cl:defun reload-asset (type obj! original-asset-name current-asset)
  (dotnet:invoke-generic (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "ReloadAsset" (cl:list type) original-asset-name current-asset))

(cl:defun reload-graphics-assets (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "ReloadGraphicsAssets"))

(cl:defun unload (obj!)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "Unload"))

(cl:defun unload-asset (obj! asset-name)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "UnloadAsset" asset-name))

(cl:defun unload-assets (obj! asset-names)
  (dotnet:invoke (cl:the (dotnet "Microsoft.Xna.Framework.Content.ContentManager") obj!) "UnloadAssets" asset-names))

