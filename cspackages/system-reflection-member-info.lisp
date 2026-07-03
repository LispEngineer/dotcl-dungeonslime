;;; Generated automatically. Do not edit.
;;; Class: System.Reflection.MemberInfo
;;; Generator Version: 22
;;; Creation Date: 2026-07-03T12:55:23Z

(cl:in-package :system-reflection-member-info)

(cl:defconstant <type> (monoutils:get-type "System.Reflection.MemberInfo"))
(cl:defconstant <type-str> "System.Reflection.MemberInfo")
(cl:defconstant <creation> "2026-07-03T12:55:23Z")
(cl:defconstant <version> 22)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Reflection.MemberInfo")))

(cl:defun new ()
  "Summary: Initializes a new instance of the System.Reflection.MemberInfo class.
"
  (dotnet:new <type-str>))

(cl:defun custom-attributes (obj)
  "Gets a collection that contains this member's custom attributes."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_CustomAttributes"))

(cl:defun declaring-type (obj)
  "Gets the class that declares this member."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_DeclaringType"))

(cl:defun collectible? (obj)
  "Gets a value that indicates whether this System.Reflection.MemberInfo object references one or more assemblies held in a collectible System.Runtime.Loader.AssemblyLoadContext."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_IsCollectible"))

(cl:defun member-type (obj)
  "When overridden in a derived class, gets a System.Reflection.MemberTypes value indicating the type of the member - method, constructor, event, and so on."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_MemberType"))

(cl:defun metadata-token (obj)
  "Gets a value that identifies a metadata element."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_MetadataToken"))

(cl:defun module (obj)
  "Gets the module in which the type that declares the member represented by the current System.Reflection.MemberInfo is defined."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_Module"))

(cl:defun name (obj)
  "Gets the name of the current member."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_Name"))

(cl:defun reflected-type (obj)
  "Gets the class object that was used to obtain this instance of ."
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "get_ReflectedType"))

(cl:defun = (left right)
  "Summary: Indicates whether two System.Reflection.MemberInfo objects are equal.
Returns: if left is equal to right; otherwise .
Parameters:
  - left (System.Reflection.MemberInfo): The System.Reflection.MemberInfo to compare to right.
  - right (System.Reflection.MemberInfo): The System.Reflection.MemberInfo to compare to left.
"
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.Reflection.MemberInfo") left) (cl:the (dotnet "System.Reflection.MemberInfo") right)))

(cl:defun equals (obj obj)
  "Summary: Returns a value that indicates whether this instance is equal to a specified object.
Returns: if obj equals the type and value of this instance; otherwise, .
Parameters:
  - obj (System.Object): An object to compare with this instance, or .
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "Equals" obj))

(cl:defun get-custom-attributes (obj inherit cl:&optional (inherit cl:nil supplied-inherit))
  "Master wrapper for System.Reflection.MemberInfo.GetCustomAttributes overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null inherit) (monoutils:dotnet-p inherit)) supplied-inherit (cl:typep inherit 'cl:boolean))
     (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "GetCustomAttributes" inherit inherit))
    ((cl:and (cl:typep inherit 'cl:boolean) (cl:not supplied-inherit))
     (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "GetCustomAttributes" inherit))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-REFLECTION-MEMBER-INFO"
                    :class-name <type-str>
                    :method-name "GetCustomAttributes"
                    :supplied-args (cl:append (cl:list :inherit inherit) (cl:when supplied-inherit (cl:list :inherit inherit)))))))

(cl:defun get-custom-attributes-boolean (obj inherit)
  "Calls System.Reflection.MemberInfo.GetCustomAttributes GetCustomAttributes(Boolean) -> Object[]. Summary: When overridden in a derived class, returns an array of all custom attributes applied to this member.
Returns: An array that contains all the custom attributes applied to this member, or an array with zero elements if no attributes are defined.
Parameters:
  - inherit (System.Boolean): to search this member's inheritance chain to find the attributes; otherwise, . This parameter is ignored for properties and events.
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "GetCustomAttributes" inherit))

(cl:defun get-custom-attributes-type-boolean (obj attribute-type inherit)
  "Calls System.Reflection.MemberInfo.GetCustomAttributes GetCustomAttributes(Type, Boolean) -> Object[]. Summary: When overridden in a derived class, returns an array of custom attributes applied to this member and identified by System.Type.
Returns: An array of custom attributes applied to this member, or an array with zero elements if no attributes assignable to attributeType have been applied.
Parameters:
  - attribute-type (System.Type): The type of attribute to search for. Only attributes that are assignable to this type are returned.
  - inherit (System.Boolean): to search this member's inheritance chain to find the attributes; otherwise, . This parameter is ignored for properties and events.
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "GetCustomAttributes" attribute-type inherit))

(cl:defun get-custom-attributes-data (obj)
  "Summary: Returns a list of System.Reflection.CustomAttributeData objects representing data about the attributes that have been applied to the target member.
Returns: A generic list of System.Reflection.CustomAttributeData objects representing data about the attributes that have been applied to the target member.
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "GetCustomAttributesData"))

(cl:defun get-hash-code (obj)
  "Summary: Returns the hash code for this instance.
Returns: A 32-bit signed integer hash code.
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "GetHashCode"))

(cl:defun has-same-metadata-definition-as (obj other)
  "Parameters:
  - other (System.Reflection.MemberInfo): 
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "HasSameMetadataDefinitionAs" other))

(cl:defun defined? (obj attribute-type inherit)
  "Summary: When overridden in a derived class, indicates whether one or more attributes of the specified type or of its derived types is applied to this member.
Returns: if one or more instances of attributeType or any of its derived types is applied to this member; otherwise, .
Parameters:
  - attribute-type (System.Type): The type of custom attribute to search for. The search includes derived types.
  - inherit (System.Boolean): to search this member's inheritance chain to find the attributes; otherwise, . This parameter is ignored for properties and events.
"
  (dotnet:invoke (cl:the (dotnet "System.Reflection.MemberInfo") obj) "IsDefined" attribute-type inherit))

(cl:defun not= (left right)
  "Summary: Indicates whether two System.Reflection.MemberInfo objects are not equal.
Returns: if left is not equal to right; otherwise .
Parameters:
  - left (System.Reflection.MemberInfo): The System.Reflection.MemberInfo to compare to right.
  - right (System.Reflection.MemberInfo): The System.Reflection.MemberInfo to compare to left.
"
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "System.Reflection.MemberInfo") left) (cl:the (dotnet "System.Reflection.MemberInfo") right)))

