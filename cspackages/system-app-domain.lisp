;;; Generated automatically. Do not edit.
;;; Class: System.AppDomain
;;; Generator Version: 18
;;; Creation Date: 2026-07-03T01:18:11Z

(cl:in-package :cl-user)

(cl:defpackage :system-app-domain
  (:use :cl)
  (:shadow
   #:load
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:current-domain
   #:monitoring-survived-process-memory-size
   #:base-directory
   #:dynamic-directory
   #:friendly-name
   #:id
   #:fully-trusted?
   #:homogenous?
   #:monitoring-survived-memory-size
   #:monitoring-total-allocated-memory-size
   #:monitoring-total-processor-time
   #:permission-set
   #:relative-search-path
   #:setup-information
   #:shadow-copy-files
   #:append-private-path
   #:apply-policy
   #:clear-private-path
   #:clear-shadow-copy-path
   #:create-domain
   #:create-instance
   #:create-instance-string-string
   #:create-instance-string-string-object[]
   #:create-instance-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:create-instance-and-unwrap
   #:create-instance-and-unwrap-string-string
   #:create-instance-and-unwrap-string-string-object[]
   #:create-instance-and-unwrap-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:create-instance-from
   #:create-instance-from-string-string
   #:create-instance-from-string-string-object[]
   #:create-instance-from-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:create-instance-from-and-unwrap
   #:create-instance-from-and-unwrap-string-string
   #:create-instance-from-and-unwrap-string-string-object[]
   #:create-instance-from-and-unwrap-string-string-boolean-binding-flags-binder-object[]-culture-info-object[]
   #:execute-assembly
   #:execute-assembly-string
   #:execute-assembly-string-string[]
   #:execute-assembly-string-string[]-byte[]-assembly-hash-algorithm
   #:execute-assembly-by-name
   #:get-assemblies
   #:get-current-thread-id
   #:get-data
   #:compatibility-switch-set?
   #:default-app-domain?
   #:finalizing-for-unload?
   #:load
   #:load-byte[]
   #:load-assembly-name
   #:load-string
   #:load-byte[]-byte[]
   #:reflection-only-get-assemblies
   #:set-cache-path
   #:set-data
   #:set-dynamic-base
   #:set-principal-policy
   #:set-shadow-copy-files
   #:set-shadow-copy-path
   #:set-thread-principal
   #:to-string
   #:unload
  ))

(cl:in-package :system-app-domain)

(cl:defconstant <type> (monoutils:get-type "System.AppDomain"))
(cl:defconstant <type-str> "System.AppDomain")
(cl:defconstant <creation> "2026-07-03T01:18:11Z")
(cl:defconstant <version> 18)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.AppDomain")))

(cl:define-symbol-macro current-domain (dotnet:static <type-str> "CurrentDomain"))
(cl:setf (cl:documentation (cl:quote current-domain) (cl:quote cl:variable)) "Gets the current application domain for the current System.Threading.Thread.")

(cl:define-symbol-macro monitoring-survived-process-memory-size (dotnet:static <type-str> "MonitoringSurvivedProcessMemorySize"))
(cl:setf (cl:documentation (cl:quote monitoring-survived-process-memory-size) (cl:quote cl:variable)) "Gets the total bytes that survived from the last collection for all application domains in the process.")

(cl:defun base-directory (obj)
  "Gets the base directory that the assembly resolver uses to probe for assemblies."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_BaseDirectory"))

(cl:defun dynamic-directory (obj)
  "Gets the directory that the assembly resolver uses to probe for dynamically created assemblies."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_DynamicDirectory"))

(cl:defun friendly-name (obj)
  "Gets the friendly name of this application domain."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_FriendlyName"))

(cl:defun id (obj)
  "Gets an integer that uniquely identifies the application domain within the process."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_Id"))

(cl:defun fully-trusted? (obj)
  "Gets a value that indicates whether assemblies that are loaded into the current application domain execute with full trust."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_IsFullyTrusted"))

(cl:defun homogenous? (obj)
  "Gets a value that indicates whether the current application domain has a set of permissions that is granted to all assemblies that are loaded into the application domain."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_IsHomogenous"))

(cl:defun monitoring-survived-memory-size (obj)
  "Gets the number of bytes that survived the last collection and that are known to be referenced by the current application domain."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_MonitoringSurvivedMemorySize"))

(cl:defun monitoring-total-allocated-memory-size (obj)
  "Gets the total size, in bytes, of all memory allocations that have been made by the application domain since it was created, without subtracting memory that has been collected."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_MonitoringTotalAllocatedMemorySize"))

(cl:defun monitoring-total-processor-time (obj)
  "Gets the total processor time that has been used by all threads while executing in the current application domain, since the process started."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_MonitoringTotalProcessorTime"))

(cl:defun permission-set (obj)
  "Gets the permission set of a sandboxed application domain."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_PermissionSet"))

(cl:defun relative-search-path (obj)
  "Gets the path under the base directory where the assembly resolver should probe for private assemblies."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_RelativeSearchPath"))

(cl:defun setup-information (obj)
  "Gets the application domain configuration information for this instance."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_SetupInformation"))

(cl:defun shadow-copy-files (obj)
  "Gets an indication whether the application domain is configured to shadow copy files."
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "get_ShadowCopyFiles"))

(cl:defun append-private-path (obj path)
  "Summary: Appends the specified directory name to the private path list.
Parameters:
  - path (System.String): The name of the directory to be appended to the private path.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "AppendPrivatePath" path))

(cl:defun apply-policy (obj assembly-name)
  "Summary: Returns the assembly display name after policy has been applied.
Returns: A string containing the assembly display name after policy has been applied.
Parameters:
  - assembly-name (System.String): The assembly display name, in the form provided by the System.Reflection.Assembly.FullName property.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ApplyPolicy" assembly-name))

(cl:defun clear-private-path (obj)
  "Summary: Resets the path that specifies the location of private assemblies to the empty string (\"\").
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ClearPrivatePath"))

(cl:defun clear-shadow-copy-path (obj)
  "Summary: Resets the list of directories containing shadow copied assemblies to the empty string (\"\").
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ClearShadowCopyPath"))

(cl:defun create-domain (friendly-name)
  "Summary: Creates a new application domain with the specified name.
Returns: The newly created application domain.
Parameters:
  - friendly-name (System.String): The friendly name of the domain.
"
  (dotnet:static <type-str> "CreateDomain" (cl:the (dotnet "System.String") friendly-name)))

(cl:defun create-instance (obj assembly-name type-name cl:&optional (activation-attributes cl:nil supplied-activation-attributes) (binding-attr cl:nil supplied-binding-attr) (binder cl:nil supplied-binder) (args cl:nil supplied-args) (culture cl:nil supplied-culture) (activation-attributes cl:nil supplied-activation-attributes))
  "Master wrapper for System.AppDomain.CreateInstance overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp assembly-name) (cl:stringp type-name) supplied-activation-attributes (cl:typep activation-attributes 'cl:boolean) supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)) supplied-binder (cl:or (cl:null binder) (monoutils:dotnet-p binder)) supplied-args (cl:or (cl:null args) (monoutils:dotnet-p args)) supplied-culture (cl:or (cl:null culture) (monoutils:dotnet-p culture)) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstance" assembly-name type-name activation-attributes binding-attr binder args culture activation-attributes))
    ((cl:and (cl:stringp assembly-name) (cl:stringp type-name) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstance" assembly-name type-name activation-attributes))
    ((cl:and (cl:stringp assembly-name) (cl:stringp type-name) (cl:not supplied-activation-attributes) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstance" assembly-name type-name))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-APP-DOMAIN"
                    :class-name <type-str>
                    :method-name "CreateInstance"
                    :supplied-args (cl:append (cl:list :assembly-name assembly-name) (cl:list :type-name type-name) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)) (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)) (cl:when supplied-binder (cl:list :binder binder)) (cl:when supplied-args (cl:list :args args)) (cl:when supplied-culture (cl:list :culture culture)) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)))))))

(cl:defun create-instance-string-string (obj assembly-name type-name)
  "Calls System.AppDomain.CreateInstance CreateInstance(String, String) -> ObjectHandle. Summary: Creates a new instance of the specified type defined in the specified assembly.
Returns: An object that is a wrapper for the new instance specified by typeName. The return value needs to be unwrapped to access the real object.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstance" assembly-name type-name))

(cl:defun create-instance-string-string-object[] (obj assembly-name type-name activation-attributes)
  "Calls System.AppDomain.CreateInstance CreateInstance(String, String, Object[]) -> ObjectHandle. Summary: Creates a new instance of the specified type defined in the specified assembly. A parameter specifies an array of activation attributes.
Returns: An object that is a wrapper for the new instance specified by typeName. The return value needs to be unwrapped to access the real object.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects.Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstance" assembly-name type-name activation-attributes))

(cl:defun create-instance-string-string-boolean-binding-flags-binder-object[]-culture-info-object[] (obj assembly-name type-name ignore-case binding-attr binder args culture activation-attributes)
  "Calls System.AppDomain.CreateInstance CreateInstance(String, String, Boolean, BindingFlags, Binder, Object[], CultureInfo, Object[]) -> ObjectHandle. Summary: Creates a new instance of the specified type defined in the specified assembly. Parameters specify a binder, binding flags, constructor arguments, culture-specific information used to interpret arguments, and optional activation attributes.
Returns: An object that is a wrapper for the new instance specified by typeName. The return value needs to be unwrapped to access the real object.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - ignore-case (System.Boolean): A Boolean value specifying whether to perform a case-sensitive search or not.
  - binding-attr (System.Reflection.BindingFlags): A combination of zero or more bit flags that affect the search for the typeName constructor. If bindingAttr is zero, a case-sensitive search for public constructors is conducted.
  - binder (System.Reflection.Binder): An object that enables the binding, coercion of argument types, invocation of members, and retrieval of System.Reflection.MemberInfo objects using reflection. If binder is null, the default binder is used.
  - args (System.Object[]): The arguments to pass to the constructor. This array of arguments must match in number, order, and type the parameters of the constructor to invoke. If the parameterless constructor is preferred, args must be an empty array or null.
  - culture (System.Globalization.CultureInfo): Culture-specific information that governs the coercion of args to the formal types declared for the typeName constructor. If culture is , the System.Globalization.CultureInfo for the current thread is used.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects. Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstance" assembly-name type-name ignore-case binding-attr binder args culture activation-attributes))

(cl:defun create-instance-and-unwrap (obj assembly-name type-name cl:&optional (activation-attributes cl:nil supplied-activation-attributes) (binding-attr cl:nil supplied-binding-attr) (binder cl:nil supplied-binder) (args cl:nil supplied-args) (culture cl:nil supplied-culture) (activation-attributes cl:nil supplied-activation-attributes))
  "Master wrapper for System.AppDomain.CreateInstanceAndUnwrap overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp assembly-name) (cl:stringp type-name) supplied-activation-attributes (cl:typep activation-attributes 'cl:boolean) supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)) supplied-binder (cl:or (cl:null binder) (monoutils:dotnet-p binder)) supplied-args (cl:or (cl:null args) (monoutils:dotnet-p args)) supplied-culture (cl:or (cl:null culture) (monoutils:dotnet-p culture)) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceAndUnwrap" assembly-name type-name activation-attributes binding-attr binder args culture activation-attributes))
    ((cl:and (cl:stringp assembly-name) (cl:stringp type-name) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceAndUnwrap" assembly-name type-name activation-attributes))
    ((cl:and (cl:stringp assembly-name) (cl:stringp type-name) (cl:not supplied-activation-attributes) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceAndUnwrap" assembly-name type-name))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-APP-DOMAIN"
                    :class-name <type-str>
                    :method-name "CreateInstanceAndUnwrap"
                    :supplied-args (cl:append (cl:list :assembly-name assembly-name) (cl:list :type-name type-name) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)) (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)) (cl:when supplied-binder (cl:list :binder binder)) (cl:when supplied-args (cl:list :args args)) (cl:when supplied-culture (cl:list :culture culture)) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)))))))

(cl:defun create-instance-and-unwrap-string-string (obj assembly-name type-name)
  "Calls System.AppDomain.CreateInstanceAndUnwrap CreateInstanceAndUnwrap(String, String) -> Object. Summary: Creates a new instance of the specified type. Parameters specify the assembly where the type is defined, and the name of the type.
Returns: An instance of the object specified by typeName.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceAndUnwrap" assembly-name type-name))

(cl:defun create-instance-and-unwrap-string-string-object[] (obj assembly-name type-name activation-attributes)
  "Calls System.AppDomain.CreateInstanceAndUnwrap CreateInstanceAndUnwrap(String, String, Object[]) -> Object. Summary: Creates a new instance of the specified type. Parameters specify the assembly where the type is defined, the name of the type, and an array of activation attributes.
Returns: An instance of the object specified by typeName.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects.Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceAndUnwrap" assembly-name type-name activation-attributes))

(cl:defun create-instance-and-unwrap-string-string-boolean-binding-flags-binder-object[]-culture-info-object[] (obj assembly-name type-name ignore-case binding-attr binder args culture activation-attributes)
  "Calls System.AppDomain.CreateInstanceAndUnwrap CreateInstanceAndUnwrap(String, String, Boolean, BindingFlags, Binder, Object[], CultureInfo, Object[]) -> Object. Summary: Creates a new instance of the specified type defined in the specified assembly, specifying whether the case of the type name is ignored; the binding attributes and the binder that are used to select the type to be created; the arguments of the constructor; the culture; and the activation attributes.
Returns: An instance of the object specified by typeName.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - ignore-case (System.Boolean): A Boolean value specifying whether to perform a case-sensitive search or not.
  - binding-attr (System.Reflection.BindingFlags): A combination of zero or more bit flags that affect the search for the typeName constructor. If bindingAttr is zero, a case-sensitive search for public constructors is conducted.
  - binder (System.Reflection.Binder): An object that enables the binding, coercion of argument types, invocation of members, and retrieval of System.Reflection.MemberInfo objects using reflection. If binder is null, the default binder is used.
  - args (System.Object[]): The arguments to pass to the constructor. This array of arguments must match in number, order, and type the parameters of the constructor to invoke. If the parameterless constructor is preferred, args must be an empty array or null.
  - culture (System.Globalization.CultureInfo): A culture-specific object used to govern the coercion of types. If culture is , the for the current thread is used.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object. that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects. Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceAndUnwrap" assembly-name type-name ignore-case binding-attr binder args culture activation-attributes))

(cl:defun create-instance-from (obj assembly-file type-name cl:&optional (activation-attributes cl:nil supplied-activation-attributes) (binding-attr cl:nil supplied-binding-attr) (binder cl:nil supplied-binder) (args cl:nil supplied-args) (culture cl:nil supplied-culture) (activation-attributes cl:nil supplied-activation-attributes))
  "Master wrapper for System.AppDomain.CreateInstanceFrom overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp assembly-file) (cl:stringp type-name) supplied-activation-attributes (cl:typep activation-attributes 'cl:boolean) supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)) supplied-binder (cl:or (cl:null binder) (monoutils:dotnet-p binder)) supplied-args (cl:or (cl:null args) (monoutils:dotnet-p args)) supplied-culture (cl:or (cl:null culture) (monoutils:dotnet-p culture)) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFrom" assembly-file type-name activation-attributes binding-attr binder args culture activation-attributes))
    ((cl:and (cl:stringp assembly-file) (cl:stringp type-name) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFrom" assembly-file type-name activation-attributes))
    ((cl:and (cl:stringp assembly-file) (cl:stringp type-name) (cl:not supplied-activation-attributes) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFrom" assembly-file type-name))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-APP-DOMAIN"
                    :class-name <type-str>
                    :method-name "CreateInstanceFrom"
                    :supplied-args (cl:append (cl:list :assembly-file assembly-file) (cl:list :type-name type-name) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)) (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)) (cl:when supplied-binder (cl:list :binder binder)) (cl:when supplied-args (cl:list :args args)) (cl:when supplied-culture (cl:list :culture culture)) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)))))))

(cl:defun create-instance-from-string-string (obj assembly-file type-name)
  "Calls System.AppDomain.CreateInstanceFrom CreateInstanceFrom(String, String) -> ObjectHandle. Summary: Creates a new instance of the specified type defined in the specified assembly file.
Returns: An object that is a wrapper for the new instance, or if typeName is not found. The return value needs to be unwrapped to access the real object.
Parameters:
  - assembly-file (System.String): The name, including the path, of a file that contains an assembly that defines the requested type. The assembly is loaded using the System.Reflection.Assembly.LoadFrom(System.String) method.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFrom" assembly-file type-name))

(cl:defun create-instance-from-string-string-object[] (obj assembly-file type-name activation-attributes)
  "Calls System.AppDomain.CreateInstanceFrom CreateInstanceFrom(String, String, Object[]) -> ObjectHandle. Summary: Creates a new instance of the specified type defined in the specified assembly file.
Returns: An object that is a wrapper for the new instance, or if typeName is not found. The return value needs to be unwrapped to access the real object.
Parameters:
  - assembly-file (System.String): The name, including the path, of a file that contains an assembly that defines the requested type. The assembly is loaded using the System.Reflection.Assembly.LoadFrom(System.String) method.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects.Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFrom" assembly-file type-name activation-attributes))

(cl:defun create-instance-from-string-string-boolean-binding-flags-binder-object[]-culture-info-object[] (obj assembly-file type-name ignore-case binding-attr binder args culture activation-attributes)
  "Calls System.AppDomain.CreateInstanceFrom CreateInstanceFrom(String, String, Boolean, BindingFlags, Binder, Object[], CultureInfo, Object[]) -> ObjectHandle. Summary: Creates a new instance of the specified type defined in the specified assembly file.
Returns: An object that is a wrapper for the new instance, or if typeName is not found. The return value needs to be unwrapped to access the real object.
Parameters:
  - assembly-file (System.String): The name, including the path, of a file that contains an assembly that defines the requested type. The assembly is loaded using the System.Reflection.Assembly.LoadFrom(System.String) method.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - ignore-case (System.Boolean): A Boolean value specifying whether to perform a case-sensitive search or not.
  - binding-attr (System.Reflection.BindingFlags): A combination of zero or more bit flags that affect the search for the typeName constructor. If bindingAttr is zero, a case-sensitive search for public constructors is conducted.
  - binder (System.Reflection.Binder): An object that enables the binding, coercion of argument types, invocation of members, and retrieval of System.Reflection.MemberInfo objects through reflection. If binder is null, the default binder is used.
  - args (System.Object[]): The arguments to pass to the constructor. This array of arguments must match in number, order, and type the parameters of the constructor to invoke. If the parameterless constructor is preferred, args must be an empty array or null.
  - culture (System.Globalization.CultureInfo): Culture-specific information that governs the coercion of args to the formal types declared for the typeName constructor. If culture is , the System.Globalization.CultureInfo for the current thread is used.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects. Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFrom" assembly-file type-name ignore-case binding-attr binder args culture activation-attributes))

(cl:defun create-instance-from-and-unwrap (obj assembly-file type-name cl:&optional (activation-attributes cl:nil supplied-activation-attributes) (binding-attr cl:nil supplied-binding-attr) (binder cl:nil supplied-binder) (args cl:nil supplied-args) (culture cl:nil supplied-culture) (activation-attributes cl:nil supplied-activation-attributes))
  "Master wrapper for System.AppDomain.CreateInstanceFromAndUnwrap overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp assembly-file) (cl:stringp type-name) supplied-activation-attributes (cl:typep activation-attributes 'cl:boolean) supplied-binding-attr (cl:or (cl:null binding-attr) (monoutils:dotnet-p binding-attr)) supplied-binder (cl:or (cl:null binder) (monoutils:dotnet-p binder)) supplied-args (cl:or (cl:null args) (monoutils:dotnet-p args)) supplied-culture (cl:or (cl:null culture) (monoutils:dotnet-p culture)) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFromAndUnwrap" assembly-file type-name activation-attributes binding-attr binder args culture activation-attributes))
    ((cl:and (cl:stringp assembly-file) (cl:stringp type-name) supplied-activation-attributes (cl:or (cl:null activation-attributes) (monoutils:dotnet-p activation-attributes)) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFromAndUnwrap" assembly-file type-name activation-attributes))
    ((cl:and (cl:stringp assembly-file) (cl:stringp type-name) (cl:not supplied-activation-attributes) (cl:not supplied-binding-attr) (cl:not supplied-binder) (cl:not supplied-args) (cl:not supplied-culture) (cl:not supplied-activation-attributes))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFromAndUnwrap" assembly-file type-name))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-APP-DOMAIN"
                    :class-name <type-str>
                    :method-name "CreateInstanceFromAndUnwrap"
                    :supplied-args (cl:append (cl:list :assembly-file assembly-file) (cl:list :type-name type-name) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)) (cl:when supplied-binding-attr (cl:list :binding-attr binding-attr)) (cl:when supplied-binder (cl:list :binder binder)) (cl:when supplied-args (cl:list :args args)) (cl:when supplied-culture (cl:list :culture culture)) (cl:when supplied-activation-attributes (cl:list :activation-attributes activation-attributes)))))))

(cl:defun create-instance-from-and-unwrap-string-string (obj assembly-file type-name)
  "Calls System.AppDomain.CreateInstanceFromAndUnwrap CreateInstanceFromAndUnwrap(String, String) -> Object. Summary: Creates a new instance of the specified type defined in the specified assembly file.
Returns: The requested object, or if typeName is not found.
Parameters:
  - assembly-file (System.String): 
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFromAndUnwrap" assembly-file type-name))

(cl:defun create-instance-from-and-unwrap-string-string-object[] (obj assembly-file type-name activation-attributes)
  "Calls System.AppDomain.CreateInstanceFromAndUnwrap CreateInstanceFromAndUnwrap(String, String, Object[]) -> Object. Summary: Creates a new instance of the specified type defined in the specified assembly file.
Returns: The requested object, or if typeName is not found.
Parameters:
  - assembly-file (System.String): 
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly (see the System.Type.FullName property).
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects.Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFromAndUnwrap" assembly-file type-name activation-attributes))

(cl:defun create-instance-from-and-unwrap-string-string-boolean-binding-flags-binder-object[]-culture-info-object[] (obj assembly-file type-name ignore-case binding-attr binder args culture activation-attributes)
  "Calls System.AppDomain.CreateInstanceFromAndUnwrap CreateInstanceFromAndUnwrap(String, String, Boolean, BindingFlags, Binder, Object[], CultureInfo, Object[]) -> Object. Summary: Creates a new instance of the specified type defined in the specified assembly file, specifying whether the case of the type name is ignored; the binding attributes and the binder that are used to select the type to be created; the arguments of the constructor; the culture; and the activation attributes.
Returns: The requested object, or if typeName is not found.
Parameters:
  - assembly-file (System.String): The file name and path of the assembly that defines the requested type.
  - type-name (System.String): The fully qualified name of the requested type, including the namespace but not the assembly, as returned by the System.Type.FullName property.
  - ignore-case (System.Boolean): A Boolean value specifying whether to perform a case-sensitive search or not.
  - binding-attr (System.Reflection.BindingFlags): A combination of zero or more bit flags that affect the search for the typeName constructor. If bindingAttr is zero, a case-sensitive search for public constructors is conducted.
  - binder (System.Reflection.Binder): An object that enables the binding, coercion of argument types, invocation of members, and retrieval of System.Reflection.MemberInfo objects through reflection. If binder is null, the default binder is used.
  - args (System.Object[]): The arguments to pass to the constructor. This array of arguments must match in number, order, and type the parameters of the constructor to invoke. If the parameterless constructor is preferred, args must be an empty array or null.
  - culture (System.Globalization.CultureInfo): Culture-specific information that governs the coercion of args to the formal types declared for the typeName constructor. If culture is , the System.Globalization.CultureInfo for the current thread is used.
  - activation-attributes (System.Object[]): An array of one or more attributes that can participate in activation. Typically, an array that contains a single System.Runtime.Remoting.Activation.UrlAttribute object that specifies the URL that is required to activate a remote object. This parameter is related to client-activated objects. Client activation is a legacy technology that is retained for backward compatibility but is not recommended for new development. Distributed applications should instead use Windows Communication Foundation.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "CreateInstanceFromAndUnwrap" assembly-file type-name ignore-case binding-attr binder args culture activation-attributes))

(cl:defun execute-assembly (obj assembly-file cl:&optional (args cl:nil supplied-args) (hash-value cl:nil supplied-hash-value) (hash-algorithm cl:nil supplied-hash-algorithm))
  "Master wrapper for System.AppDomain.ExecuteAssembly overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp assembly-file) supplied-args (cl:or (cl:null args) (monoutils:dotnet-p args)) supplied-hash-value (cl:or (cl:null hash-value) (monoutils:dotnet-p hash-value)) supplied-hash-algorithm (cl:or (cl:null hash-algorithm) (monoutils:dotnet-p hash-algorithm)))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssembly" assembly-file args hash-value hash-algorithm))
    ((cl:and (cl:stringp assembly-file) supplied-args (cl:or (cl:null args) (monoutils:dotnet-p args)) (cl:not supplied-hash-value) (cl:not supplied-hash-algorithm))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssembly" assembly-file args))
    ((cl:and (cl:stringp assembly-file) (cl:not supplied-args) (cl:not supplied-hash-value) (cl:not supplied-hash-algorithm))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssembly" assembly-file))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-APP-DOMAIN"
                    :class-name <type-str>
                    :method-name "ExecuteAssembly"
                    :supplied-args (cl:append (cl:list :assembly-file assembly-file) (cl:when supplied-args (cl:list :args args)) (cl:when supplied-hash-value (cl:list :hash-value hash-value)) (cl:when supplied-hash-algorithm (cl:list :hash-algorithm hash-algorithm)))))))

(cl:defun execute-assembly-string (obj assembly-file)
  "Calls System.AppDomain.ExecuteAssembly ExecuteAssembly(String) -> Int32. Summary: Executes the assembly contained in the specified file.
Returns: The value returned by the entry point of the assembly.
Parameters:
  - assembly-file (System.String): The name of the file that contains the assembly to execute.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssembly" assembly-file))

(cl:defun execute-assembly-string-string[] (obj assembly-file args)
  "Calls System.AppDomain.ExecuteAssembly ExecuteAssembly(String, String[]) -> Int32. Summary: Executes the assembly contained in the specified file, using the specified arguments.
Returns: The value that is returned by the entry point of the assembly.
Parameters:
  - assembly-file (System.String): The name of the file that contains the assembly to execute.
  - args (System.String[]): The arguments to the entry point of the assembly.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssembly" assembly-file args))

(cl:defun execute-assembly-string-string[]-byte[]-assembly-hash-algorithm (obj assembly-file args hash-value hash-algorithm)
  "Calls System.AppDomain.ExecuteAssembly ExecuteAssembly(String, String[], Byte[], AssemblyHashAlgorithm) -> Int32. Summary: Executes the assembly contained in the specified file, using the specified arguments, hash value, and hash algorithm.
Returns: The value that is returned by the entry point of the assembly.
Parameters:
  - assembly-file (System.String): The name of the file that contains the assembly to execute.
  - args (System.String[]): The arguments to the entry point of the assembly.
  - hash-value (System.Byte[]): Represents the value of the computed hash code.
  - hash-algorithm (System.Configuration.Assemblies.AssemblyHashAlgorithm): Represents the hash algorithm used by the assembly manifest.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssembly" assembly-file args hash-value hash-algorithm))

(cl:defun execute-assembly-by-name (obj assembly-name)
  "Summary: Executes an assembly given its display name.
Returns: The value returned by the entry point of the assembly.
Parameters:
  - assembly-name (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ExecuteAssemblyByName" assembly-name))

;; Note: System.AppDomain.ExecuteAssemblyByName also has the following overloads with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   ExecuteAssemblyByName(AssemblyName, params String[]) -> Int32
;;   ExecuteAssemblyByName(String, params String[]) -> Int32

(cl:defun get-assemblies (obj)
  "Summary: Gets the assemblies that have been loaded into the execution context of this application domain.
Returns: An array of assemblies in this application domain.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "GetAssemblies"))

(cl:defun get-current-thread-id ()
  "Summary: Gets the current thread identifier.
Returns: A 32-bit signed integer that is the identifier of the current thread.
"
  (dotnet:static <type-str> "GetCurrentThreadId"))

(cl:defun get-data (obj name)
  "Summary: Gets the value stored in the current application domain for the specified name.
Returns: The value of the name property, or if the property does not exist.
Parameters:
  - name (System.String): The name of a predefined application domain property, or the name of an application domain property you have defined.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "GetData" name))

(cl:defun compatibility-switch-set? (obj value)
  "Summary: Gets a nullable Boolean value that indicates whether any compatibility switches are set, and if so, whether the specified compatibility switch is set.
Returns: A null reference ( in Visual Basic) if no compatibility switches are set; otherwise, a Boolean value that indicates whether the compatibility switch that is specified by value is set.
Parameters:
  - value (System.String): The compatibility switch to test.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "IsCompatibilitySwitchSet" value))

(cl:defun default-app-domain? (obj)
  "Summary: Returns a value that indicates whether the application domain is the default application domain for the process.
Returns: if the current System.AppDomain object represents the default application domain for the process; otherwise, .
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "IsDefaultAppDomain"))

(cl:defun finalizing-for-unload? (obj)
  "Summary: Indicates whether this application domain is unloading, and the objects it contains are being finalized by the common language runtime.
Returns: if this application domain is unloading and the common language runtime has started invoking finalizers; otherwise, .
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "IsFinalizingForUnload"))

(cl:defun load (obj raw-assembly cl:&optional (raw-symbol-store cl:nil supplied-raw-symbol-store))
  "Master wrapper for System.AppDomain.Load overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null raw-assembly) (monoutils:dotnet-p raw-assembly)) supplied-raw-symbol-store (cl:or (cl:null raw-symbol-store) (monoutils:dotnet-p raw-symbol-store)))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" raw-assembly raw-symbol-store))
    ((cl:and (cl:or (cl:null raw-assembly) (monoutils:dotnet-p raw-assembly)) (cl:not supplied-raw-symbol-store))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" raw-assembly))
    ((cl:and (cl:or (cl:null raw-assembly) (monoutils:dotnet-p raw-assembly)) (cl:not supplied-raw-symbol-store))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" raw-assembly))
    ((cl:and (cl:stringp raw-assembly) (cl:not supplied-raw-symbol-store))
     (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" raw-assembly))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-APP-DOMAIN"
                    :class-name <type-str>
                    :method-name "Load"
                    :supplied-args (cl:append (cl:list :raw-assembly raw-assembly) (cl:when supplied-raw-symbol-store (cl:list :raw-symbol-store raw-symbol-store)))))))

(cl:defun load-byte[] (obj raw-assembly)
  "Calls System.AppDomain.Load Load(Byte[]) -> Assembly. Summary: Loads the System.Reflection.Assembly with a common object file format (COFF) based image containing an emitted System.Reflection.Assembly.
Returns: The loaded assembly.
Parameters:
  - raw-assembly (System.Byte[]): An array of type that is a COFF-based image containing an emitted assembly.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" raw-assembly))

(cl:defun load-assembly-name (obj assembly-ref)
  "Calls System.AppDomain.Load Load(AssemblyName) -> Assembly. Summary: Loads an System.Reflection.Assembly given its System.Reflection.AssemblyName.
Returns: The loaded assembly.
Parameters:
  - assembly-ref (System.Reflection.AssemblyName): An object that describes the assembly to load.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" assembly-ref))

(cl:defun load-string (obj assembly-string)
  "Calls System.AppDomain.Load Load(String) -> Assembly. Summary: Loads an System.Reflection.Assembly given its display name.
Returns: The loaded assembly.
Parameters:
  - assembly-string (System.String): The display name of the assembly. See System.Reflection.Assembly.FullName.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" assembly-string))

(cl:defun load-byte[]-byte[] (obj raw-assembly raw-symbol-store)
  "Calls System.AppDomain.Load Load(Byte[], Byte[]) -> Assembly. Summary: Loads the System.Reflection.Assembly with a common object file format (COFF) based image containing an emitted System.Reflection.Assembly. The raw bytes representing the symbols for the System.Reflection.Assembly are also loaded.
Returns: The loaded assembly.
Parameters:
  - raw-assembly (System.Byte[]): An array of type that is a COFF-based image containing an emitted assembly.
  - raw-symbol-store (System.Byte[]): An array of type containing the raw bytes representing the symbols for the assembly.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "Load" raw-assembly raw-symbol-store))

(cl:defun reflection-only-get-assemblies (obj)
  "Summary: Returns the assemblies that have been loaded into the reflection-only context of the application domain.
Returns: An array of System.Reflection.Assembly objects that represent the assemblies loaded into the reflection-only context of the application domain.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ReflectionOnlyGetAssemblies"))

(cl:defun set-cache-path (obj path)
  "Summary: Establishes the specified directory path as the location where assemblies are shadow copied.
Parameters:
  - path (System.String): The fully qualified path to the shadow copy location.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetCachePath" path))

(cl:defun set-data (obj name data)
  "Summary: Assigns the specified value to the specified application domain property.
Parameters:
  - name (System.String): The name of a user-defined application domain property to create or change.
  - data (System.Object): The value of the property.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetData" name data))

(cl:defun set-dynamic-base (obj path)
  "Summary: Establishes the specified directory path as the base directory for subdirectories where dynamically generated files are stored and accessed.
Parameters:
  - path (System.String): The fully qualified path that is the base directory for subdirectories where dynamic assemblies are stored.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetDynamicBase" path))

(cl:defun set-principal-policy (obj policy)
  "Summary: Specifies how principal and identity objects should be attached to a thread if the thread attempts to bind to a principal while executing in this application domain.
Parameters:
  - policy (System.Security.Principal.PrincipalPolicy): One of the System.Security.Principal.PrincipalPolicy values that specifies the type of the principal object to attach to threads.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetPrincipalPolicy" policy))

(cl:defun set-shadow-copy-files (obj)
  "Summary: Turns on shadow copying.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetShadowCopyFiles"))

(cl:defun set-shadow-copy-path (obj path)
  "Summary: Establishes the specified directory path as the location of assemblies to be shadow copied.
Parameters:
  - path (System.String): A list of directory names, where each name is separated by a semicolon.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetShadowCopyPath" path))

(cl:defun set-thread-principal (obj principal)
  "Summary: Sets the default principal object to be attached to threads if they attempt to bind to a principal while executing in this application domain.
Parameters:
  - principal (System.Security.Principal.IPrincipal): The principal object to attach to threads.
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "SetThreadPrincipal" principal))

(cl:defun to-string (obj)
  "Summary: Obtains a string representation that includes the friendly name of the application domain and any context policies.
Returns: A string formed by concatenating the literal string \"Name:\", the friendly name of the application domain, and either string representations of the context policies or the string \"There are no context policies.\"
"
  (dotnet:invoke (cl:the (dotnet "System.AppDomain") obj) "ToString"))

(cl:defun unload (domain)
  "Summary: Unloads the specified application domain.
Parameters:
  - domain (System.AppDomain): An application domain to unload.
"
  (dotnet:static <type-str> "Unload" (cl:the (dotnet "System.AppDomain") domain)))

