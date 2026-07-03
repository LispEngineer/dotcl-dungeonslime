;;; Generated automatically. Do not edit.
;;; Class: System.Uri
;;; Generator Version: 18
;;; Creation Date: 2026-07-03T01:18:08Z

(cl:in-package :cl-user)

(cl:defpackage :system-uri
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
   #:new
   #:new-string
   #:new-string-boolean
   #:new-string-uri-kind
   #:new-uri-string
   #:new-serialization-info-streaming-context
   #:new-uri-uri
   #:new-uri-string-boolean
   #:+scheme-delimiter+
   #:+uri-scheme-file+
   #:+uri-scheme-ftp+
   #:+uri-scheme-ftps+
   #:+uri-scheme-gopher+
   #:+uri-scheme-http+
   #:+uri-scheme-https+
   #:+uri-scheme-mailto+
   #:+uri-scheme-net-pipe+
   #:+uri-scheme-net-tcp+
   #:+uri-scheme-news+
   #:+uri-scheme-nntp+
   #:+uri-scheme-sftp+
   #:+uri-scheme-ssh+
   #:+uri-scheme-telnet+
   #:+uri-scheme-ws+
   #:+uri-scheme-wss+
   #:absolute-path
   #:absolute-uri
   #:authority
   #:dns-safe-host
   #:fragment
   #:host
   #:host-name-type
   #:idn-host
   #:absolute-uri?
   #:default-port?
   #:file?
   #:loopback?
   #:unc?
   #:local-path
   #:original-string
   #:path-and-query
   #:port
   #:query
   #:scheme
   #:segments
   #:user-escaped
   #:user-info
   #:=
   #:canonicalize
   #:check-host-name
   #:check-scheme-name
   #:check-security
   #:compare
   #:equals
   #:equals-object
   #:equals-uri
   #:escape
   #:escape-data-string
   #:escape-data-string-string
   #:escape-data-string-char]
   #:escape-string
   #:escape-uri-string
   #:from-hex
   #:get-components
   #:get-hash-code
   #:get-left-part
   #:get-object-data
   #:hex-escape
   #:bad-file-system-character?
   #:base-of?
   #:excluded-character?
   #:hex-digit?
   #:hex-encoding?
   #:reserved-character?
   #:well-formed-original-string?
   #:well-formed-uri-string?
   #:make-relative
   #:make-relative-uri
   #:not=
   #:parse
   #:to-string
   #:unescape
   #:unescape-data-string
   #:unescape-data-string-string
   #:unescape-data-string-char]
  ))

(cl:in-package :system-uri)

(cl:defconstant <type> (monoutils:get-type "System.Uri"))
(cl:defconstant <type-str> "System.Uri")
(cl:defconstant <creation> "2026-07-03T01:18:08Z")
(cl:defconstant <version> 18)

;; Register C# Type with CLOS
(cl:eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Uri")))

(cl:defun new (cl:&rest args)
  "Passthrough constructor for System.Uri. Dispatches at runtime."
  (cl:apply (cl:function dotnet:new) <type-str> args))

(cl:defun new-string (uri-string)
  "Calls System.Uri constructor new(String). Summary: Initializes a new instance of the System.Uri class with the specified URI.
Parameters:
  - uri-string (System.String): A string that identifies the resource to be represented by the System.Uri instance.
"
  (dotnet:new <type-str> uri-string))

(cl:defun new-string-boolean (uri-string dont-escape)
  "Calls System.Uri constructor new(String, Boolean). Summary: Initializes a new instance of the System.Uri class with the specified URI, with explicit control of character escaping.
Parameters:
  - uri-string (System.String): A string that identifies the resource to be represented by the System.Uri instance. Note that an IPv6 address in string form must be enclosed within brackets. For example, \"http://[2607:f8b0:400d:c06::69]\".
  - dont-escape (System.Boolean): if uriString is completely escaped; otherwise, .
"
  (dotnet:new <type-str> uri-string dont-escape))

(cl:defun new-string-uri-kind (uri-string uri-kind)
  "Calls System.Uri constructor new(String, UriKind). Summary: Initializes a new instance of the System.Uri class with the specified URI. This constructor allows you to specify if the URI string is a relative URI, absolute URI, or is indeterminate.
Parameters:
  - uri-string (System.String): A string that identifies the resource to be represented by the System.Uri instance.
  - uri-kind (System.UriKind): Specifies whether the URI string is a relative URI, absolute URI, or is indeterminate.
"
  (dotnet:new <type-str> uri-string uri-kind))

(cl:defun new-uri-string (base-uri relative-uri)
  "Calls System.Uri constructor new(Uri, String). Summary: Initializes a new instance of the System.Uri class based on the specified base URI and relative URI string.
Parameters:
  - base-uri (System.Uri): The base URI.
  - relative-uri (System.String): The relative URI to add to the base URI.
"
  (dotnet:new <type-str> base-uri relative-uri))

(cl:defun new-serialization-info-streaming-context (serialization-info streaming-context)
  "Calls System.Uri constructor new(SerializationInfo, StreamingContext). Summary: Initializes a new instance of the System.Uri class from the specified instances of the System.Runtime.Serialization.SerializationInfo and System.Runtime.Serialization.StreamingContext classes.
Parameters:
  - serialization-info (System.Runtime.Serialization.SerializationInfo): The information required to serialize the new System.Uri instance.
  - streaming-context (System.Runtime.Serialization.StreamingContext): The source of the serialized stream associated with the new System.Uri instance.
"
  (dotnet:new <type-str> serialization-info streaming-context))

(cl:defun new-uri-uri (base-uri relative-uri)
  "Calls System.Uri constructor new(Uri, Uri). Summary: Initializes a new instance of the System.Uri class based on the combination of a specified base System.Uri instance and a relative System.Uri instance.
Parameters:
  - base-uri (System.Uri): An absolute System.Uri that is the base for the new System.Uri instance.
  - relative-uri (System.Uri): A relative System.Uri instance that is combined with baseUri.
"
  (dotnet:new <type-str> base-uri relative-uri))

(cl:defun new-uri-string-boolean (base-uri relative-uri dont-escape)
  "Calls System.Uri constructor new(Uri, String, Boolean). Summary: Initializes a new instance of the System.Uri class based on the specified base and relative URIs, with explicit control of character escaping.
Parameters:
  - base-uri (System.Uri): The base URI.
  - relative-uri (System.String): The relative URI to add to the base URI.
  - dont-escape (System.Boolean): if baseUri and relativeUri are completely escaped; otherwise, .
"
  (dotnet:new <type-str> base-uri relative-uri dont-escape))

;; Note: System.Uri also has the following constructors with special
;; parameter types (ref, out, params, or defaults) that are not
;; yet supported:
;;   new(String, UriCreationOptions&)

(cl:defconstant +scheme-delimiter+ (dotnet:static <type-str> "SchemeDelimiter"))
(cl:setf (cl:documentation (cl:quote +scheme-delimiter+) (cl:quote cl:variable)) "Specifies the characters that separate the communication protocol scheme from the address portion of the URI. This field is read-only.")

(cl:defconstant +uri-scheme-file+ (dotnet:static <type-str> "UriSchemeFile"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-file+) (cl:quote cl:variable)) "Specifies that the URI is a pointer to a file. This field is read-only.")

(cl:defconstant +uri-scheme-ftp+ (dotnet:static <type-str> "UriSchemeFtp"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ftp+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the File Transfer Protocol (FTP). This field is read-only.")

(cl:defconstant +uri-scheme-ftps+ (dotnet:static <type-str> "UriSchemeFtps"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ftps+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the File Transfer Protocol Secure (FTPS). This field is read-only.")

(cl:defconstant +uri-scheme-gopher+ (dotnet:static <type-str> "UriSchemeGopher"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-gopher+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Gopher protocol. This field is read-only.")

(cl:defconstant +uri-scheme-http+ (dotnet:static <type-str> "UriSchemeHttp"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-http+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Hypertext Transfer Protocol (HTTP). This field is read-only.")

(cl:defconstant +uri-scheme-https+ (dotnet:static <type-str> "UriSchemeHttps"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-https+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Secure Hypertext Transfer Protocol (HTTPS). This field is read-only.")

(cl:defconstant +uri-scheme-mailto+ (dotnet:static <type-str> "UriSchemeMailto"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-mailto+) (cl:quote cl:variable)) "Specifies that the URI is an email address and is accessed through the Simple Mail Transport Protocol (SMTP). This field is read-only.")

(cl:defconstant +uri-scheme-net-pipe+ (dotnet:static <type-str> "UriSchemeNetPipe"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-net-pipe+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the NetPipe scheme used by Windows Communication Foundation (WCF). This field is read-only.")

(cl:defconstant +uri-scheme-net-tcp+ (dotnet:static <type-str> "UriSchemeNetTcp"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-net-tcp+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the NetTcp scheme used by Windows Communication Foundation (WCF). This field is read-only.")

(cl:defconstant +uri-scheme-news+ (dotnet:static <type-str> "UriSchemeNews"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-news+) (cl:quote cl:variable)) "Specifies that the URI is an Internet news group and is accessed through the Network News Transport Protocol (NNTP). This field is read-only.")

(cl:defconstant +uri-scheme-nntp+ (dotnet:static <type-str> "UriSchemeNntp"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-nntp+) (cl:quote cl:variable)) "Specifies that the URI is an Internet news group and is accessed through the Network News Transport Protocol (NNTP). This field is read-only.")

(cl:defconstant +uri-scheme-sftp+ (dotnet:static <type-str> "UriSchemeSftp"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-sftp+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the SSH File Transfer Protocol (SFTP). This field is read-only.")

(cl:defconstant +uri-scheme-ssh+ (dotnet:static <type-str> "UriSchemeSsh"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ssh+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Secure Socket Shell protocol (SSH). This field is read-only.")

(cl:defconstant +uri-scheme-telnet+ (dotnet:static <type-str> "UriSchemeTelnet"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-telnet+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Telnet protocol. This field is read-only.")

(cl:defconstant +uri-scheme-ws+ (dotnet:static <type-str> "UriSchemeWs"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ws+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the WebSocket protocol (WS). This field is read-only.")

(cl:defconstant +uri-scheme-wss+ (dotnet:static <type-str> "UriSchemeWss"))
(cl:setf (cl:documentation (cl:quote +uri-scheme-wss+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the WebSocket Secure protocol (WSS). This field is read-only.")

(cl:defun absolute-path (obj)
  "Gets the absolute path of the URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_AbsolutePath"))

(cl:defun absolute-uri (obj)
  "Gets the absolute URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_AbsoluteUri"))

(cl:defun authority (obj)
  "Gets the Domain Name System (DNS) host name or IP address and the port number for a server."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Authority"))

(cl:defun dns-safe-host (obj)
  "Gets a host name that, after being unescaped if necessary, is safe to use for DNS resolution."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_DnsSafeHost"))

(cl:defun fragment (obj)
  "Gets the escaped URI fragment, including the leading '#' character if not empty."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Fragment"))

(cl:defun host (obj)
  "Gets the host component of this instance."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Host"))

(cl:defun host-name-type (obj)
  "Gets the type of the host name specified in the URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_HostNameType"))

(cl:defun idn-host (obj)
  "Gets the RFC 3490 compliant International Domain Name of the host, using Punycode as appropriate. This string, after being unescaped if necessary, is safe to use for DNS resolution."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_IdnHost"))

(cl:defun absolute-uri? (obj)
  "Gets a value that indicates whether the System.Uri instance is absolute."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_IsAbsoluteUri"))

(cl:defun default-port? (obj)
  "Gets a value that indicates whether the port value of the URI is the default for this scheme."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_IsDefaultPort"))

(cl:defun file? (obj)
  "Gets a value that indicates whether the specified System.Uri is a file URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_IsFile"))

(cl:defun loopback? (obj)
  "Gets a value that indicates whether the specified System.Uri references the local host."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_IsLoopback"))

(cl:defun unc? (obj)
  "Gets a value that indicates whether the specified System.Uri is a universal naming convention (UNC) path."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_IsUnc"))

(cl:defun local-path (obj)
  "Gets a local operating-system representation of a file name."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_LocalPath"))

(cl:defun original-string (obj)
  "Gets the original URI string that was passed to the System.Uri constructor."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_OriginalString"))

(cl:defun path-and-query (obj)
  "Gets the System.Uri.AbsolutePath and System.Uri.Query properties separated by a question mark (?)."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_PathAndQuery"))

(cl:defun port (obj)
  "Gets the port number of this URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Port"))

(cl:defun query (obj)
  "Gets any query information included in the specified URI, including the leading '?' character if not empty."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Query"))

(cl:defun scheme (obj)
  "Gets the scheme name for this URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Scheme"))

(cl:defun segments (obj)
  "Gets an array containing the path segments that make up the specified URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_Segments"))

(cl:defun user-escaped (obj)
  "Gets a value that indicates whether the URI string was completely escaped before the System.Uri instance was created."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_UserEscaped"))

(cl:defun user-info (obj)
  "Gets the user name, password, or other user-specific information associated with the specified URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "get_UserInfo"))

(cl:defun = (uri1 uri2)
  "Summary: Determines whether two System.Uri instances have the same value.
Returns: if the System.Uri instances are equivalent; otherwise, .
Parameters:
  - uri1 (System.Uri): A URI to compare with uri2.
  - uri2 (System.Uri): A URI to compare with uri1.
"
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.Uri") uri1) (cl:the (dotnet "System.Uri") uri2)))

(cl:defun canonicalize (obj)
  "Summary: Converts the internally stored URI to canonical form.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Canonicalize"))

(cl:defun check-host-name (name)
  "Summary: Determines whether the specified host name is a valid DNS name.
Returns: The type of the host name. If the type of the host name cannot be determined or if the host name is or a zero-length string, this method returns System.UriHostNameType.Unknown.
Parameters:
  - name (System.String): The host name to validate. This can be an IPv4 or IPv6 address or an Internet host name.
"
  (dotnet:static <type-str> "CheckHostName" (cl:the (dotnet "System.String") name)))

(cl:defun check-scheme-name (scheme-name)
  "Summary: Determines whether the specified scheme name is valid.
Returns: if the scheme name is valid; otherwise, .
Parameters:
  - scheme-name (System.String): The scheme name to validate.
"
  (dotnet:static <type-str> "CheckSchemeName" (cl:the (dotnet "System.String") scheme-name)))

(cl:defun check-security (obj)
  "Summary: Calling this method has no effect.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "CheckSecurity"))

(cl:defun compare (uri1 uri2 parts-to-compare compare-format comparison-type)
  "Summary: Compares the specified parts of two URIs using the specified comparison rules.
Returns: A value that indicates the lexical relationship between the compared System.Uri components. Value Meaning Less than zerouri1 is less than uri2. Zerouri1 equals uri2. Greater than zerouri1 is greater than uri2.
Parameters:
  - uri1 (System.Uri): The first URI.
  - uri2 (System.Uri): The second URI.
  - parts-to-compare (System.UriComponents): A bitwise combination of the System.UriComponents values that specifies the parts of uri1 and uri2 to compare.
  - compare-format (System.UriFormat): One of the enumeration values that specifies the character escaping used when the URI components are compared.
  - comparison-type (System.StringComparison): One of the enumeration values that specifies the culture, case, and sort rules for the comparison.
"
  (dotnet:static <type-str> "Compare" (cl:the (dotnet "System.Uri") uri1) (cl:the (dotnet "System.Uri") uri2) (cl:the (dotnet "System.UriComponents") parts-to-compare) (cl:the (dotnet "System.UriFormat") compare-format) (cl:the (dotnet "System.StringComparison") comparison-type)))

(cl:defun equals (obj comparand)
  "Master wrapper for System.Uri.Equals overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:or (cl:null comparand) (monoutils:dotnet-p comparand)))
     (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Equals" comparand))
    ((cl:and (cl:or (cl:null comparand) (monoutils:dotnet-p comparand)))
     (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Equals" comparand))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :comparand comparand))))))

(cl:defun equals-object (obj comparand)
  "Calls System.Uri.Equals Equals(Object) -> Boolean. Summary: Compares two System.Uri instances for equality.
Returns: if the two instances represent the same URI; otherwise, .
Parameters:
  - comparand (System.Object): The URI or a URI identifier to compare with the current instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Equals" comparand))

(cl:defun equals-uri (obj other)
  "Calls System.Uri.Equals Equals(Uri) -> Boolean. Summary: Compares two System.Uri instances for equality.
Returns: if the two instances represent the same URI; otherwise, .
Parameters:
  - other (System.Uri): The System.Uri to compare to this instance.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Equals" other))

(cl:defun escape (obj)
  "Summary: Converts any unsafe or reserved characters in the path component to their hexadecimal character representations.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Escape"))

(cl:defun escape-data-string (string-to-escape)
  "Master wrapper for System.Uri.EscapeDataString overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp string-to-escape))
     (dotnet:static <type-str> "EscapeDataString" string-to-escape))
    ((cl:and (cl:or (cl:null string-to-escape) (monoutils:dotnet-p string-to-escape)))
     (dotnet:static <type-str> "EscapeDataString" string-to-escape))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "EscapeDataString"
                    :supplied-args (cl:append (cl:list :string-to-escape string-to-escape))))))

(cl:defun escape-data-string-string (string-to-escape)
  "Calls System.Uri.EscapeDataString EscapeDataString(String) -> String. Summary: Converts a string to its escaped representation.
Returns: The escaped representation of stringToEscape.
Parameters:
  - string-to-escape (System.String): The string to escape.
"
  (dotnet:static <type-str> "EscapeDataString" (cl:the (dotnet "System.String") string-to-escape)))

(cl:defun escape-data-string-char] (chars-to-escape)
  "Calls System.Uri.EscapeDataString EscapeDataString(Char]) -> String. Summary: Converts a span to its escaped representation.
Returns: The escaped representation of charsToEscape.
Parameters:
  - chars-to-escape (System.ReadOnlySpan`1[System.Char]): The span to escape.
"
  (dotnet:static <type-str> "EscapeDataString" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") chars-to-escape)))

(cl:defun escape-string (str)
  "Summary: Converts a string to its escaped representation.
Returns: The escaped representation of the string.
Parameters:
  - str (System.String): The string to transform to its escaped representation.
"
  (dotnet:static <type-str> "EscapeString" (cl:the (dotnet "System.String") str)))

(cl:defun escape-uri-string (string-to-escape)
  "Summary: Converts a URI string to its escaped representation.
Returns: The escaped representation of stringToEscape.
Parameters:
  - string-to-escape (System.String): The string to escape.
"
  (dotnet:static <type-str> "EscapeUriString" (cl:the (dotnet "System.String") string-to-escape)))

(cl:defun from-hex (digit)
  "Summary: Gets the decimal value of a hexadecimal digit.
Returns: A number from 0 to 15 that corresponds to the specified hexadecimal digit.
Parameters:
  - digit (System.Char): The hexadecimal digit (0-9, a-f, A-F) to convert.
"
  (dotnet:static <type-str> "FromHex" (cl:the (dotnet "System.Char") digit)))

(cl:defun get-components (obj components format)
  "Summary: Gets the specified components of the current instance using the specified escaping for special characters.
Returns: The components of the current instance.
Parameters:
  - components (System.UriComponents): A bitwise combination of the System.UriComponents values that specifies which parts of the current instance to return to the caller.
  - format (System.UriFormat): One of the enumeration values that controls how special characters are escaped.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "GetComponents" components format))

(cl:defun get-hash-code (obj)
  "Summary: Gets the hash code for the URI.
Returns: The hash value generated for this URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "GetHashCode"))

(cl:defun get-left-part (obj part)
  "Summary: Gets the specified portion of a System.Uri instance.
Returns: The specified portion of the System.Uri instance.
Parameters:
  - part (System.UriPartial): One of the enumeration values that specifies the end of the URI portion to return.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "GetLeftPart" part))

(cl:defun get-object-data (obj serialization-info streaming-context)
  "Summary: Returns the data needed to serialize the current instance.
Parameters:
  - serialization-info (System.Runtime.Serialization.SerializationInfo): The information required to serialize the System.Uri.
  - streaming-context (System.Runtime.Serialization.StreamingContext): An object that contains the source and destination of the serialized stream associated with the System.Uri.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "GetObjectData" serialization-info streaming-context))

(cl:defun hex-escape (character)
  "Summary: Converts a specified character into its hexadecimal equivalent.
Returns: The hexadecimal representation of the specified character.
Parameters:
  - character (System.Char): The character to convert to hexadecimal representation.
"
  (dotnet:static <type-str> "HexEscape" (cl:the (dotnet "System.Char") character)))

;; The following C# System.Uri.HexUnescape overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   HexUnescape(String, ref Int32&) -> Char

(cl:defun bad-file-system-character? (obj character)
  "Summary: Indicates whether a character is invalid in a file system name.
Returns: if the specified character is invalid; otherwise, .
Parameters:
  - character (System.Char): The System.Char to test.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "IsBadFileSystemCharacter" character))

(cl:defun base-of? (obj uri)
  "Summary: Determines whether the current System.Uri instance is a base of the specified System.Uri instance.
Returns: if the current System.Uri instance is a base of uri; otherwise, .
Parameters:
  - uri (System.Uri): The specified URI to test.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "IsBaseOf" uri))

(cl:defun excluded-character? (character)
  "Summary: Determines whether the specified character should be escaped.
Returns: if the specified character should be escaped; otherwise, .
Parameters:
  - character (System.Char): The character to test.
"
  (dotnet:static <type-str> "IsExcludedCharacter" (cl:the (dotnet "System.Char") character)))

(cl:defun hex-digit? (character)
  "Summary: Determines whether a specified character is a valid hexadecimal digit.
Returns: if the character is a valid hexadecimal digit; otherwise, .
Parameters:
  - character (System.Char): The character to validate.
"
  (dotnet:static <type-str> "IsHexDigit" (cl:the (dotnet "System.Char") character)))

(cl:defun hex-encoding? (pattern index)
  "Summary: Determines whether a character in a string is hexadecimal encoded.
Returns: if pattern is hexadecimal encoded at the specified location; otherwise, .
Parameters:
  - pattern (System.String): The string to check.
  - index (System.Int32): The location in pattern to check for hexadecimal encoding.
"
  (dotnet:static <type-str> "IsHexEncoding" (cl:the (dotnet "System.String") pattern) (cl:the (dotnet "System.Int32") index)))

(cl:defun reserved-character? (obj character)
  "Summary: Determines whether the specified character is a reserved character.
Returns: if the specified character is a reserved character otherwise, .
Parameters:
  - character (System.Char): The character to test.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "IsReservedCharacter" character))

(cl:defun well-formed-original-string? (obj)
  "Summary: Indicates whether the string used to construct this System.Uri was well-formed and does not require further escaping.
Returns: if the string was well-formed; otherwise, .
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "IsWellFormedOriginalString"))

(cl:defun well-formed-uri-string? (uri-string uri-kind)
  "Summary: Indicates whether the string is well-formed by attempting to construct a URI with the string and ensures that the string does not require further escaping.
Returns: if the string was well-formed; otherwise, .
Parameters:
  - uri-string (System.String): The string used to attempt to construct a System.Uri.
  - uri-kind (System.UriKind): The type of the System.Uri in uriString.
"
  (dotnet:static <type-str> "IsWellFormedUriString" (cl:the (dotnet "System.String") uri-string) (cl:the (dotnet "System.UriKind") uri-kind)))

(cl:defun make-relative (obj to-uri)
  "Summary: Determines the difference between two System.Uri instances.
Returns: If the hostname and scheme of this URI instance and toUri are the same, then this method returns a System.String that represents a relative URI that, when appended to the current URI instance, yields the toUri parameter. If the hostname or scheme is different, then this method returns a System.String that represents the toUri parameter.
Parameters:
  - to-uri (System.Uri): The URI to compare to the current URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "MakeRelative" to-uri))

(cl:defun make-relative-uri (obj uri)
  "Summary: Determines the difference between two System.Uri instances.
Returns: If the hostname and scheme of this URI instance and uri are the same, then this method returns a relative System.Uri that, when appended to the current URI instance, yields uri. If the hostname or scheme is different, then this method returns a System.Uri that represents the uri parameter.
Parameters:
  - uri (System.Uri): The URI to compare to the current URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "MakeRelativeUri" uri))

(cl:defun not= (uri1 uri2)
  "Summary: Determines whether two System.Uri instances do not have the same value.
Returns: if the two System.Uri instances are not equal; otherwise, . If either parameter is , this method returns .
Parameters:
  - uri1 (System.Uri): A URI to compare with uri2.
  - uri2 (System.Uri): A URI to compare with uri1.
"
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "System.Uri") uri1) (cl:the (dotnet "System.Uri") uri2)))

(cl:defun parse (obj)
  "Summary: Parses the URI of the current instance to ensure it contains all the parts required for a valid URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Parse"))

(cl:defun to-string (obj)
  "Summary: Gets a canonical string representation for the specified System.Uri instance.
Returns: The unescaped canonical representation of the System.Uri instance. All characters are unescaped except #, ?, and %.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "ToString"))

;; The following C# System.Uri.TryCreate overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryCreate(String, UriKind, out Uri&) -> Boolean
;;   TryCreate(String, UriCreationOptions&, out Uri&) -> Boolean
;;   TryCreate(Uri, String, out Uri&) -> Boolean
;;   TryCreate(Uri, Uri, out Uri&) -> Boolean

;; The following C# System.Uri.TryEscapeDataString overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryEscapeDataString(Char], Char], out Int32&) -> Boolean

;; The following C# System.Uri.TryFormat overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryFormat(Char], out Int32&) -> Boolean

;; The following C# System.Uri.TryUnescapeDataString overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryUnescapeDataString(Char], Char], out Int32&) -> Boolean

(cl:defun unescape (obj path)
  "Summary: Converts the specified string by replacing any escape sequences with their unescaped representation.
Returns: The unescaped value of the path parameter.
Parameters:
  - path (System.String): The string to convert.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj) "Unescape" path))

(cl:defun unescape-data-string (string-to-unescape)
  "Master wrapper for System.Uri.UnescapeDataString overloads. Dispatches at runtime."
  (cl:cond
    ((cl:and (cl:stringp string-to-unescape))
     (dotnet:static <type-str> "UnescapeDataString" string-to-unescape))
    ((cl:and (cl:or (cl:null string-to-unescape) (monoutils:dotnet-p string-to-unescape)))
     (dotnet:static <type-str> "UnescapeDataString" string-to-unescape))
    (cl:t (cl:error 'utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "UnescapeDataString"
                    :supplied-args (cl:append (cl:list :string-to-unescape string-to-unescape))))))

(cl:defun unescape-data-string-string (string-to-unescape)
  "Calls System.Uri.UnescapeDataString UnescapeDataString(String) -> String. Summary: Converts a string to its unescaped representation.
Returns: The unescaped representation of stringToUnescape.
Parameters:
  - string-to-unescape (System.String): The string to unescape.
"
  (dotnet:static <type-str> "UnescapeDataString" (cl:the (dotnet "System.String") string-to-unescape)))

(cl:defun unescape-data-string-char] (chars-to-unescape)
  "Calls System.Uri.UnescapeDataString UnescapeDataString(Char]) -> String. Summary: Converts a span to its unescaped representation.
Returns: The unescaped representation of charsToUnescape.
Parameters:
  - chars-to-unescape (System.ReadOnlySpan`1[System.Char]): The span to unescape.
"
  (dotnet:static <type-str> "UnescapeDataString" (cl:the (dotnet "System.ReadOnlySpan`1[System.Char]") chars-to-unescape)))

