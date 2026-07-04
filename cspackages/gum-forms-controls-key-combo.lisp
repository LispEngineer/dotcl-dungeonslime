;;; Generated automatically. Do not edit.
;;; Class: Gum.Forms.Controls.KeyCombo
;;; Generator Version: 31
;;; Creation Date: 2026-07-04T20:26:18Z

(cl:in-package :gum-forms-controls-key-combo)

(cl:defconstant <type> (dotnet:resolve-type "Gum.Forms.Controls.KeyCombo"))
(cl:defconstant <type-str> "Gum.Forms.Controls.KeyCombo")
(cl:defconstant <creation> "2026-07-04T20:26:18Z")
(cl:defconstant <version> 31)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "Gum.Forms.Controls.KeyCombo")))

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun held-key (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "HeldKey"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf held-key) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "HeldKey") new-value))

(cl:defun triggered-on-repeat? (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "IsTriggeredOnRepeat"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf triggered-on-repeat?) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "IsTriggeredOnRepeat") new-value))

(cl:defun pushed-key (obj!)
  (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "PushedKey"))

;; Note: obj! here is a boxed reference to a .NET value type (struct).
;; This setf mutates that exact boxed instance in place -- it does NOT
;; silently discard the change. However, if obj! is an alias of a shared
;; or cached value (e.g. a constant defined via defconstant), this mutates
;; that shared instance for every other reference to it too. See
;; FEATURES.md's "Struct Boxing Caveat" section for details.
(cl:defun (cl:setf pushed-key) (new-value obj!)
  (cl:setf (dotnet:invoke (cl:the (dotnet "Gum.Forms.Controls.KeyCombo") obj!) "PushedKey") new-value))

