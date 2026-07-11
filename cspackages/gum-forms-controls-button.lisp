;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.Button
;;; Generator Version: 47
;;; Creation Date: 2026-07-11T23:07:59Z

(cl:in-package :gum-forms-controls-button)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.Controls.Button"))
(cl:defconstant <type-str> "Gum.Forms.Controls.Button")
(cl:defconstant <creation> "2026-07-11T23:07:59Z")
(cl:defconstant <version> 47)

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.Button constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:object-type visual)))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-BUTTON"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defvar %button-category-name-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +button-category-name+
  (cl:if (cl:eq %button-category-name-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %button-category-name-cache% (dotnet:static <type-str> "ButtonCategoryName"))
      %button-category-name-cache%))

(cl:defun text (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "get_Text"))

(cl:defun (cl:setf text) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "set_Text" new-value))

(cl:defun apply-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "ApplyRuntimeProperties"))

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "ReactToVisualChanged"))

(cl:defun refresh-internal-visual-references (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "RefreshInternalVisualReferences"))

(cl:defun save-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "SaveRuntimeProperties"))

(cl:defun set-text-no-translate (obj! value)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "SetTextNoTranslate" value))

(cl:defun update-state (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Button") obj!) "UpdateState"))

