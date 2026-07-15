;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.Label
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :gum-forms-controls-label)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.Controls.Label"))
(cl:defconstant <type-str> "Gum.Forms.Controls.Label")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun new (cl:&optional (visual cl:nil supplied-visual))
  "Master wrapper for Gum.Forms.Controls.Label constructor overloads. Dispatches at runtime.

new()

new(InteractiveGue)
"
  (cl:cond
    ((cl:and supplied-visual (cl:or (cl:null visual) (dotnet:is-instance-of visual "Gum.Wireframe.InteractiveGue")))
     (dotnet:new <type-str> visual))
    ((cl:and (cl:not supplied-visual))
     (dotnet:new <type-str>))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "GUM-FORMS-CONTROLS-LABEL"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:when supplied-visual (cl:list :visual visual)))))))

(cl:defun text (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "get_Text"))

(cl:defun (cl:setf text) (new-value obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "set_Text" new-value))

(cl:defun text-component (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "get_TextComponent"))

(cl:defun apply-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "ApplyRuntimeProperties"))

(cl:defun react-to-visual-changed (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "ReactToVisualChanged"))

(cl:defun refresh-internal-visual-references (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "RefreshInternalVisualReferences"))

(cl:defun save-runtime-properties (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "SaveRuntimeProperties"))

(cl:defun set-text-no-translate (obj! value)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.Label") obj!) "SetTextNoTranslate" value))

