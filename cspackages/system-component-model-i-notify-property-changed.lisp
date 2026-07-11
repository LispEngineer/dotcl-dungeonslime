;;; Generated automatically. Do not edit.
;;; Class: System.ComponentModel.INotifyPropertyChanged
;;; Generator Version: 46
;;; Creation Date: 2026-07-11T19:25:01Z

(cl:in-package :system-component-model-i-notify-property-changed)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.ComponentModel.INotifyPropertyChanged"))
(cl:defconstant <type-str> "System.ComponentModel.INotifyPropertyChanged")
(cl:defconstant <creation> "2026-07-11T19:25:01Z")
(cl:defconstant <version> 46)

(cl:defun add-property-changed (obj! handler)
  "Occurs when a property value changes."
  (dotnet:add-event (cl:the (dotnet "System.ComponentModel.INotifyPropertyChanged") obj!) "PropertyChanged" handler))

(cl:defun remove-property-changed (obj! handler)
  "Pass the exact same HANDLER object given to add-property-changed -- removal is by identity, not by behavioral equivalence."
  (dotnet:remove-event (cl:the (dotnet "System.ComponentModel.INotifyPropertyChanged") obj!) "PropertyChanged" handler))

