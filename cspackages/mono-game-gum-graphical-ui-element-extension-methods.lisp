;;; Generated automatically. Do not edit.
;;; Class: MonoGameGum.GraphicalUiElementExtensionMethods
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :mono-game-gum-graphical-ui-element-extension-methods)

(cl:defconstant <type> (dotnet:resolve-type "MonoGameGum.GraphicalUiElementExtensionMethods"))
(cl:defconstant <type-str> "MonoGameGum.GraphicalUiElementExtensionMethods")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "MonoGameGum.GraphicalUiElementExtensionMethods")))

(cl:defun add-child (element child)
  (dotnet:static <type-str> "AddChild" (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") element) (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") child)))

(cl:defun add-to-root (element)
  "Master wrapper for MonoGameGum.GraphicalUiElementExtensionMethods.AddToRoot overloads. Dispatches at runtime.

AddToRoot(GraphicalUiElement) -> Void

AddToRoot(FrameworkElement) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null element) (dotnet:object-type element)))
     (dotnet:static <type-str> "AddToRoot" element))
    ((cl:and (cl:or (cl:null element) (dotnet:object-type element)))
     (dotnet:static <type-str> "AddToRoot" element))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MONO-GAME-GUM-GRAPHICAL-UI-ELEMENT-EXTENSION-METHODS"
                    :class-name <type-str>
                    :method-name "AddToRoot"
                    :supplied-args (cl:append (cl:list :element element))))))

(cl:defun remove-from-root (element)
  (dotnet:static <type-str> "RemoveFromRoot" (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") element)))

