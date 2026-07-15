;;; Generated automatically. Do not edit.
;;; Class: RenderingLibrary.Graphics.ObservableCollectionNoReset`1
;;; Generator Version: 49
;;; Creation Date: 2026-07-15T03:11:29Z

(cl:in-package :rendering-library-graphics-observable-collection-no-reset-1)

(cl:define-symbol-macro <type> (dotnet:resolve-type "RenderingLibrary.Graphics.ObservableCollectionNoReset`1"))
(cl:defconstant <type-str> "RenderingLibrary.Graphics.ObservableCollectionNoReset`1")
(cl:defconstant <creation> "2026-07-15T03:11:29Z")
(cl:defconstant <version> 49)

(cl:defun new ()
  (dotnet:new <type-str>))

(cl:defun clear-items (obj!)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.ObservableCollectionNoReset`1") obj!) "ClearItems"))

(cl:defun on-collection-changed (obj! e)
  (dotnet:invoke (cl:the (dotnet "RenderingLibrary.Graphics.ObservableCollectionNoReset`1") obj!) "OnCollectionChanged" e))

