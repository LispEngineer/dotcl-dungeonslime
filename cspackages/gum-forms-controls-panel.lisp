;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.Panel
;;; Generator Version: 41
;;; Creation Date: 2026-07-11T03:41:42Z

(cl:in-package :gum-forms-controls-panel)

(cl:defconstant <type> (dotnet:resolve-type "Gum.Forms.Controls.Panel"))
(cl:defconstant <type-str> "Gum.Forms.Controls.Panel")
(cl:defconstant <creation> "2026-07-11T03:41:42Z")
(cl:defconstant <version> 41)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Gum.Forms.Controls.Panel")))

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.Panel constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:object-type visual)))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-PANEL"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defun children (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Panel") obj!) "get_Children"))

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Panel") obj!) "ReactToVisualChanged"))

