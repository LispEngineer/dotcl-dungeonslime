;;; Generated automatically. Do not edit.
;;; Class: MonoGameGum.GraphicalUiElementExtensionMethods
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :mono-game-gum-graphical-ui-element-extension-methods)

(cl:define-symbol-macro <type> (dotnet:resolve-type "MonoGameGum.GraphicalUiElementExtensionMethods"))
(cl:defconstant <type-str> "MonoGameGum.GraphicalUiElementExtensionMethods")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun add-child (element child)
  (dotnet:static <type-str> "AddChild" (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") element) (cl:the (dotnet "Gum.Forms.Controls.FrameworkElement") child)))

(cl:defun add-to-root (element)
  "Master wrapper for MonoGameGum.GraphicalUiElementExtensionMethods.AddToRoot overloads. Dispatches at runtime.

AddToRoot(GraphicalUiElement) -> Void

AddToRoot(FrameworkElement) -> Void
"
  (cl:cond
    ((cl:and (cl:or (cl:null element) (dotnet:is-instance-of element "Gum.Wireframe.GraphicalUiElement")))
     (dotnet:static <type-str> "AddToRoot" element))
    ((cl:and (cl:or (cl:null element) (dotnet:is-instance-of element "Gum.Forms.Controls.FrameworkElement")))
     (dotnet:static <type-str> "AddToRoot" element))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "MONO-GAME-GUM-GRAPHICAL-UI-ELEMENT-EXTENSION-METHODS"
                    :class-name <type-str>
                    :method-name "AddToRoot"
                    :supplied-args (cl:append (cl:list :element element))))))

(cl:defun remove-from-root (element)
  (dotnet:static <type-str> "RemoveFromRoot" (cl:the (dotnet "Gum.Wireframe.GraphicalUiElement") element)))

