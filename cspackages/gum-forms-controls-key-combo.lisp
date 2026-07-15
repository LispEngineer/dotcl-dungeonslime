;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.KeyCombo
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :gum-forms-controls-key-combo)

(cl:define-symbol-macro <type> (dotnet:resolve-type "Gum.Forms.Controls.KeyCombo"))
(cl:defconstant <type-str> "Gum.Forms.Controls.KeyCombo")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun held-key (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "HeldKey"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf held-key) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "HeldKey") new-value))

(cl:defun triggered-on-repeat? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "IsTriggeredOnRepeat"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf triggered-on-repeat?) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "IsTriggeredOnRepeat") new-value))

(cl:defun pushed-key (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "PushedKey"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a memoized constant binding), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf pushed-key) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "PushedKey") new-value))

;; Extension methods (exact match on this == Gum.Forms.Controls.KeyCombo):
(cl:defun combo-down? (obj!)
  "Extension method from Gum.Forms.Controls.KeyComboExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.Controls.KeyComboExtensions" "IsComboDown" obj!))

(cl:defun combo-pushed? (obj!)
  "Extension method from Gum.Forms.Controls.KeyComboExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.Controls.KeyComboExtensions" "IsComboPushed" obj!))

(cl:defun combo-released? (obj!)
  "Extension method from Gum.Forms.Controls.KeyComboExtensions (assembly MonoGameGum.dll)."
  (dotnet:static "Gum.Forms.Controls.KeyComboExtensions" "IsComboReleased" obj!))


