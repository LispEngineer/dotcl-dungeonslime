;;; Generated automatically. Do not edit.
;;; Class: System.Uri
;;; Generator Version: 54
;;; Creation Date: 2026-07-19T21:57:11Z
;;; Options: --defgeneric --ensure-type-in-generic

(cl:in-package :system-uri)

(cl:define-symbol-macro <type> (dotnet:resolve-type "System.Uri"))
(cl:defconstant <type-str> "System.Uri")
(cl:defconstant <creation> "2026-07-19T21:57:11Z")
(cl:defconstant <version> 54)

(cl:defun new (uri-string cl:&optional (dont-escape cl:nil supplied-dont-escape) (dont-escape2 cl:nil supplied-dont-escape2))
  "Master wrapper for System.Uri constructor overloads. Dispatches at runtime.

new(String)
  Summary: Initializes a new instance of the System.Uri class with the specified URI.
  Parameters:
    - uri-string (System.String): A string that identifies the resource to be represented by the System.Uri instance.

new(String, Boolean)
  OBSOLETE: This constructor has been deprecated; the dontEscape parameter is always false. Use Uri(string) instead.
  Summary: Initializes a new instance of the System.Uri class with the specified URI, with explicit control of character escaping.
  Parameters:
    - uri-string (System.String): A string that identifies the resource to be represented by the System.Uri instance. Note that an IPv6 address in string form must be enclosed within brackets. For example, \"http://[2607:f8b0:400d:c06::69]\".
    - dont-escape (System.Boolean): if uriString is completely escaped; otherwise, .

new(String, UriKind)
  Summary: Initializes a new instance of the System.Uri class with the specified URI. This constructor allows you to specify if the URI string is a relative URI, absolute URI, or is indeterminate.
  Parameters:
    - uri-string (System.String): A string that identifies the resource to be represented by the System.Uri instance.
    - uri-kind (System.UriKind): Specifies whether the URI string is a relative URI, absolute URI, or is indeterminate.

new(Uri, String)
  Summary: Initializes a new instance of the System.Uri class based on the specified base URI and relative URI string.
  Parameters:
    - base-uri (System.Uri): The base URI.
    - relative-uri (System.String): The relative URI to add to the base URI.

new(SerializationInfo, StreamingContext)
  OBSOLETE: This API supports obsolete formatter-based serialization. It should not be called or extended by application code.
  Summary: Initializes a new instance of the System.Uri class from the specified instances of the System.Runtime.Serialization.SerializationInfo and System.Runtime.Serialization.StreamingContext classes.
  Parameters:
    - serialization-info (System.Runtime.Serialization.SerializationInfo): The information required to serialize the new System.Uri instance.
    - streaming-context (System.Runtime.Serialization.StreamingContext): The source of the serialized stream associated with the new System.Uri instance.

new(Uri, Uri)
  Summary: Initializes a new instance of the System.Uri class based on the combination of a specified base System.Uri instance and a relative System.Uri instance.
  Parameters:
    - base-uri (System.Uri): An absolute System.Uri that is the base for the new System.Uri instance.
    - relative-uri (System.Uri): A relative System.Uri instance that is combined with baseUri.

new(Uri, String, Boolean)
  OBSOLETE: This constructor has been deprecated; the dontEscape parameter is always false. Use Uri(Uri, string) instead.
  Summary: Initializes a new instance of the System.Uri class based on the specified base and relative URIs, with explicit control of character escaping.
  Parameters:
    - base-uri (System.Uri): The base URI.
    - relative-uri (System.String): The relative URI to add to the base URI.
    - dont-escape (System.Boolean): if baseUri and relativeUri are completely escaped; otherwise, .
"
  (cl:cond
    ((cl:and (cl:or (cl:null uri-string) (dotnet:is-instance-of uri-string "System.Uri")) supplied-dont-escape (cl:stringp dont-escape) supplied-dont-escape2 (cl:typep dont-escape2 'cl:boolean))
     (dotnet:new <type-str> uri-string dont-escape dont-escape2))
    ((cl:and (cl:stringp uri-string) supplied-dont-escape (cl:typep dont-escape 'cl:boolean) (cl:not supplied-dont-escape2))
     (dotnet:new <type-str> uri-string dont-escape))
    ((cl:and (cl:stringp uri-string) supplied-dont-escape (cl:or (cl:null dont-escape) (dotnet:is-instance-of dont-escape "System.UriKind")) (cl:not supplied-dont-escape2))
     (dotnet:new <type-str> uri-string dont-escape))
    ((cl:and (cl:or (cl:null uri-string) (dotnet:is-instance-of uri-string "System.Uri")) supplied-dont-escape (cl:stringp dont-escape) (cl:not supplied-dont-escape2))
     (dotnet:new <type-str> uri-string dont-escape))
    ((cl:and (cl:or (cl:null uri-string) (dotnet:is-instance-of uri-string "System.Runtime.Serialization.SerializationInfo")) supplied-dont-escape (cl:or (cl:null dont-escape) (dotnet:is-instance-of dont-escape "System.Runtime.Serialization.StreamingContext")) (cl:not supplied-dont-escape2))
     (dotnet:new <type-str> uri-string dont-escape))
    ((cl:and (cl:or (cl:null uri-string) (dotnet:is-instance-of uri-string "System.Uri")) supplied-dont-escape (cl:or (cl:null dont-escape) (dotnet:is-instance-of dont-escape "System.Uri")) (cl:not supplied-dont-escape2))
     (dotnet:new <type-str> uri-string dont-escape))
    ((cl:and (cl:stringp uri-string) (cl:not supplied-dont-escape) (cl:not supplied-dont-escape2))
     (dotnet:new <type-str> uri-string))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "new"
                    :supplied-args (cl:append (cl:list :uri-string uri-string) (cl:when supplied-dont-escape (cl:list :dont-escape dont-escape)) (cl:when supplied-dont-escape2 (cl:list :dont-escape2 dont-escape2)))))))

;; Note: System.Uri also has the following constructors with special
;; parameter types (ref, out, or params) that are not
;; yet supported:
;;   new(String, UriCreationOptions&)

(cl:defvar %scheme-delimiter-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +scheme-delimiter+
  (cl:if (cl:eq %scheme-delimiter-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %scheme-delimiter-cache% (dotnet:static <type-str> "SchemeDelimiter"))
      %scheme-delimiter-cache%))
(cl:setf (cl:documentation (cl:quote +scheme-delimiter+) (cl:quote cl:variable)) "Specifies the characters that separate the communication protocol scheme from the address portion of the URI. This field is read-only.")

(cl:defvar %uri-scheme-file-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-file+
  (cl:if (cl:eq %uri-scheme-file-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-file-cache% (dotnet:static <type-str> "UriSchemeFile"))
      %uri-scheme-file-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-file+) (cl:quote cl:variable)) "Specifies that the URI is a pointer to a file. This field is read-only.")

(cl:defvar %uri-scheme-ftp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-ftp+
  (cl:if (cl:eq %uri-scheme-ftp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-ftp-cache% (dotnet:static <type-str> "UriSchemeFtp"))
      %uri-scheme-ftp-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ftp+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the File Transfer Protocol (FTP). This field is read-only.")

(cl:defvar %uri-scheme-ftps-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-ftps+
  (cl:if (cl:eq %uri-scheme-ftps-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-ftps-cache% (dotnet:static <type-str> "UriSchemeFtps"))
      %uri-scheme-ftps-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ftps+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the File Transfer Protocol Secure (FTPS). This field is read-only.")

(cl:defvar %uri-scheme-gopher-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-gopher+
  (cl:if (cl:eq %uri-scheme-gopher-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-gopher-cache% (dotnet:static <type-str> "UriSchemeGopher"))
      %uri-scheme-gopher-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-gopher+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Gopher protocol. This field is read-only.")

(cl:defvar %uri-scheme-http-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-http+
  (cl:if (cl:eq %uri-scheme-http-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-http-cache% (dotnet:static <type-str> "UriSchemeHttp"))
      %uri-scheme-http-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-http+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Hypertext Transfer Protocol (HTTP). This field is read-only.")

(cl:defvar %uri-scheme-https-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-https+
  (cl:if (cl:eq %uri-scheme-https-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-https-cache% (dotnet:static <type-str> "UriSchemeHttps"))
      %uri-scheme-https-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-https+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Secure Hypertext Transfer Protocol (HTTPS). This field is read-only.")

(cl:defvar %uri-scheme-mailto-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-mailto+
  (cl:if (cl:eq %uri-scheme-mailto-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-mailto-cache% (dotnet:static <type-str> "UriSchemeMailto"))
      %uri-scheme-mailto-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-mailto+) (cl:quote cl:variable)) "Specifies that the URI is an email address and is accessed through the Simple Mail Transport Protocol (SMTP). This field is read-only.")

(cl:defvar %uri-scheme-net-pipe-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-net-pipe+
  (cl:if (cl:eq %uri-scheme-net-pipe-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-net-pipe-cache% (dotnet:static <type-str> "UriSchemeNetPipe"))
      %uri-scheme-net-pipe-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-net-pipe+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the NetPipe scheme used by Windows Communication Foundation (WCF). This field is read-only.")

(cl:defvar %uri-scheme-net-tcp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-net-tcp+
  (cl:if (cl:eq %uri-scheme-net-tcp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-net-tcp-cache% (dotnet:static <type-str> "UriSchemeNetTcp"))
      %uri-scheme-net-tcp-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-net-tcp+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the NetTcp scheme used by Windows Communication Foundation (WCF). This field is read-only.")

(cl:defvar %uri-scheme-news-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-news+
  (cl:if (cl:eq %uri-scheme-news-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-news-cache% (dotnet:static <type-str> "UriSchemeNews"))
      %uri-scheme-news-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-news+) (cl:quote cl:variable)) "Specifies that the URI is an Internet news group and is accessed through the Network News Transport Protocol (NNTP). This field is read-only.")

(cl:defvar %uri-scheme-nntp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-nntp+
  (cl:if (cl:eq %uri-scheme-nntp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-nntp-cache% (dotnet:static <type-str> "UriSchemeNntp"))
      %uri-scheme-nntp-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-nntp+) (cl:quote cl:variable)) "Specifies that the URI is an Internet news group and is accessed through the Network News Transport Protocol (NNTP). This field is read-only.")

(cl:defvar %uri-scheme-sftp-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-sftp+
  (cl:if (cl:eq %uri-scheme-sftp-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-sftp-cache% (dotnet:static <type-str> "UriSchemeSftp"))
      %uri-scheme-sftp-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-sftp+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the SSH File Transfer Protocol (SFTP). This field is read-only.")

(cl:defvar %uri-scheme-ssh-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-ssh+
  (cl:if (cl:eq %uri-scheme-ssh-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-ssh-cache% (dotnet:static <type-str> "UriSchemeSsh"))
      %uri-scheme-ssh-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ssh+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Secure Socket Shell protocol (SSH). This field is read-only.")

(cl:defvar %uri-scheme-telnet-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-telnet+
  (cl:if (cl:eq %uri-scheme-telnet-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-telnet-cache% (dotnet:static <type-str> "UriSchemeTelnet"))
      %uri-scheme-telnet-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-telnet+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the Telnet protocol. This field is read-only.")

(cl:defvar %uri-scheme-ws-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-ws+
  (cl:if (cl:eq %uri-scheme-ws-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-ws-cache% (dotnet:static <type-str> "UriSchemeWs"))
      %uri-scheme-ws-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-ws+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the WebSocket protocol (WS). This field is read-only.")

(cl:defvar %uri-scheme-wss-cache% csharp-assembly-utils:+unbound-marker+)
(cl:define-symbol-macro +uri-scheme-wss+
  (cl:if (cl:eq %uri-scheme-wss-cache% csharp-assembly-utils:+unbound-marker+)
      (cl:setf %uri-scheme-wss-cache% (dotnet:static <type-str> "UriSchemeWss"))
      %uri-scheme-wss-cache%))
(cl:setf (cl:documentation (cl:quote +uri-scheme-wss+) (cl:quote cl:variable)) "Specifies that the URI is accessed through the WebSocket Secure protocol (WSS). This field is read-only.")

(cl:defun absolute-path (obj!)
  "Gets the absolute path of the URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_AbsolutePath"))

(cl:defun absolute-uri (obj!)
  "Gets the absolute URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_AbsoluteUri"))

(cl:defun authority (obj!)
  "Gets the Domain Name System (DNS) host name or IP address and the port number for a server."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Authority"))

(cl:defun dns-safe-host (obj!)
  "Gets a host name that, after being unescaped if necessary, is safe to use for DNS resolution."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_DnsSafeHost"))

(cl:defun fragment (obj!)
  "Gets the escaped URI fragment, including the leading '#' character if not empty."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Fragment"))

(cl:defun host (obj!)
  "Gets the host component of this instance."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Host"))

(cl:defun host-name-type (obj!)
  "Gets the type of the host name specified in the URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_HostNameType"))

(cl:defun idn-host (obj!)
  "Gets the RFC 3490 compliant International Domain Name of the host, using Punycode as appropriate. This string, after being unescaped if necessary, is safe to use for DNS resolution."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_IdnHost"))

(cl:defun absolute-uri? (obj!)
  "Gets a value that indicates whether the System.Uri instance is absolute."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_IsAbsoluteUri"))

(cl:defun default-port? (obj!)
  "Gets a value that indicates whether the port value of the URI is the default for this scheme."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_IsDefaultPort"))

(cl:defun file? (obj!)
  "Gets a value that indicates whether the specified System.Uri is a file URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_IsFile"))

(cl:defun loopback? (obj!)
  "Gets a value that indicates whether the specified System.Uri references the local host."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_IsLoopback"))

(cl:defun unc? (obj!)
  "Gets a value that indicates whether the specified System.Uri is a universal naming convention (UNC) path."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_IsUnc"))

(cl:defun local-path (obj!)
  "Gets a local operating-system representation of a file name."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_LocalPath"))

(cl:defun original-string (obj!)
  "Gets the original URI string that was passed to the System.Uri constructor."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_OriginalString"))

(cl:defun path-and-query (obj!)
  "Gets the System.Uri.AbsolutePath and System.Uri.Query properties separated by a question mark (?)."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_PathAndQuery"))

(cl:defun port (obj!)
  "Gets the port number of this URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Port"))

(cl:defun query (obj!)
  "Gets any query information included in the specified URI, including the leading '?' character if not empty."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Query"))

(cl:defun scheme (obj!)
  "Gets the scheme name for this URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Scheme"))

(cl:defun segments (obj!)
  "Gets an array containing the path segments that make up the specified URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_Segments"))

(cl:defun user-escaped (obj!)
  "Gets a value that indicates whether the URI string was completely escaped before the System.Uri instance was created."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_UserEscaped"))

(cl:defun user-info (obj!)
  "Gets the user name, password, or other user-specific information associated with the specified URI."
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "get_UserInfo"))

(cl:defun = (uri1 uri2)
  "Summary: Determines whether two System.Uri instances have the same value.
Returns: if the System.Uri instances are equivalent; otherwise, .
Parameters:
  - uri1 (System.Uri): A URI to compare with uri2.
  - uri2 (System.Uri): A URI to compare with uri1.
"
  (dotnet:static <type-str> "op_Equality" (cl:the (dotnet "System.Uri") uri1) (cl:the (dotnet "System.Uri") uri2)))

(cl:defun canonicalize (obj!)
  "OBSOLETE: Uri.Canonicalize has been deprecated and is not supported.
Summary: Converts the internally stored URI to canonical form.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "Canonicalize"))

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

(cl:defun check-security (obj!)
  "OBSOLETE: Uri.CheckSecurity has been deprecated and is not supported.
Summary: Calling this method has no effect.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "CheckSecurity"))

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

(cl:defun equals (obj! comparand)
  "Master wrapper for System.Uri.Equals overloads. Dispatches at runtime.

Equals(Object) -> Boolean
  Summary: Compares two System.Uri instances for equality.
  Returns: if the two instances represent the same URI; otherwise, .
  Parameters:
    - comparand (System.Object): The URI or a URI identifier to compare with the current instance.

Equals(Uri) -> Boolean
  Summary: Compares two System.Uri instances for equality.
  Returns: if the two instances represent the same URI; otherwise, .
  Parameters:
    - other (System.Uri): The System.Uri to compare to this instance.
"
  (cl:cond
    ((cl:and (cl:or (cl:null comparand) (dotnet:is-instance-of comparand "System.Object")))
     (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "Equals" comparand))
    ((cl:and (cl:or (cl:null comparand) (dotnet:is-instance-of comparand "System.Uri")))
     (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "Equals" comparand))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "Equals"
                    :supplied-args (cl:append (cl:list :comparand comparand))))))

(cl:defun escape (obj!)
  "OBSOLETE: Uri.Escape has been deprecated and is not supported.
Summary: Converts any unsafe or reserved characters in the path component to their hexadecimal character representations.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "Escape"))

(cl:defun escape-data-string (string-to-escape)
  "Master wrapper for System.Uri.EscapeDataString overloads. Dispatches at runtime.

EscapeDataString(String) -> String
  Summary: Converts a string to its escaped representation.
  Returns: The escaped representation of stringToEscape.
  Parameters:
    - string-to-escape (System.String): The string to escape.

EscapeDataString(Char]) -> String
  Summary: Converts a span to its escaped representation.
  Returns: The escaped representation of charsToEscape.
  Parameters:
    - chars-to-escape (System.ReadOnlySpan`1[System.Char]): The span to escape.
"
  (cl:cond
    ((cl:and (cl:stringp string-to-escape))
     (dotnet:static <type-str> "EscapeDataString" string-to-escape))
    ((cl:and (cl:or (cl:null string-to-escape) (dotnet:is-instance-of string-to-escape "System.ReadOnlySpan`1[[System.Char, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e")))
     (dotnet:static <type-str> "EscapeDataString" string-to-escape))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "EscapeDataString"
                    :supplied-args (cl:append (cl:list :string-to-escape string-to-escape))))))

(cl:defun escape-string (str)
  "OBSOLETE: Uri.EscapeString has been deprecated. Use GetComponents() or Uri.EscapeDataString to escape a Uri component or a string.
Summary: Converts a string to its escaped representation.
Returns: The escaped representation of the string.
Parameters:
  - str (System.String): The string to transform to its escaped representation.
"
  (dotnet:static <type-str> "EscapeString" (cl:the (dotnet "System.String") str)))

(cl:defun escape-uri-string (string-to-escape)
  "OBSOLETE: Uri.EscapeUriString can corrupt the Uri string in some cases. Consider using Uri.EscapeDataString for query string components instead.
Summary: Converts a URI string to its escaped representation.
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

(cl:defun get-components (obj! components format)
  "Summary: Gets the specified components of the current instance using the specified escaping for special characters.
Returns: The components of the current instance.
Parameters:
  - components (System.UriComponents): A bitwise combination of the System.UriComponents values that specifies which parts of the current instance to return to the caller.
  - format (System.UriFormat): One of the enumeration values that controls how special characters are escaped.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "GetComponents" components format))

(cl:defun get-hash-code (obj!)
  "Summary: Gets the hash code for the URI.
Returns: The hash value generated for this URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "GetHashCode"))

(cl:defun get-left-part (obj! part)
  "Summary: Gets the specified portion of a System.Uri instance.
Returns: The specified portion of the System.Uri instance.
Parameters:
  - part (System.UriPartial): One of the enumeration values that specifies the end of the URI portion to return.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "GetLeftPart" part))

(cl:defun get-object-data (obj! serialization-info streaming-context)
  "Summary: Returns the data needed to serialize the current instance.
Parameters:
  - serialization-info (System.Runtime.Serialization.SerializationInfo): The information required to serialize the System.Uri.
  - streaming-context (System.Runtime.Serialization.StreamingContext): An object that contains the source and destination of the serialized stream associated with the System.Uri.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "GetObjectData" serialization-info streaming-context))

(cl:defun hex-escape (character)
  "Summary: Converts a specified character into its hexadecimal equivalent.
Returns: The hexadecimal representation of the specified character.
Parameters:
  - character (System.Char): The character to convert to hexadecimal representation.
"
  (dotnet:static <type-str> "HexEscape" (cl:the (dotnet "System.Char") character)))

;; The following C# System.Uri.HexUnescape overloads have special parameter types
;; (ref or params) and are not yet supported:
;;   HexUnescape(String, ref Int32&) -> Char

(cl:defun bad-file-system-character? (obj! character)
  "OBSOLETE: Uri.IsBadFileSystemCharacter has been deprecated and is not supported.
Summary: Indicates whether a character is invalid in a file system name.
Returns: if the specified character is invalid; otherwise, .
Parameters:
  - character (System.Char): The System.Char to test.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "IsBadFileSystemCharacter" character))

(cl:defun base-of? (obj! uri)
  "Summary: Determines whether the current System.Uri instance is a base of the specified System.Uri instance.
Returns: if the current System.Uri instance is a base of uri; otherwise, .
Parameters:
  - uri (System.Uri): The specified URI to test.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "IsBaseOf" uri))

(cl:defun excluded-character? (character)
  "OBSOLETE: Uri.IsExcludedCharacter has been deprecated and is not supported.
Summary: Determines whether the specified character should be escaped.
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

(cl:defun reserved-character? (obj! character)
  "OBSOLETE: Uri.IsReservedCharacter has been deprecated and is not supported.
Summary: Determines whether the specified character is a reserved character.
Returns: if the specified character is a reserved character otherwise, .
Parameters:
  - character (System.Char): The character to test.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "IsReservedCharacter" character))

(cl:defun well-formed-original-string? (obj!)
  "Summary: Indicates whether the string used to construct this System.Uri was well-formed and does not require further escaping.
Returns: if the string was well-formed; otherwise, .
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "IsWellFormedOriginalString"))

(cl:defun well-formed-uri-string? (uri-string uri-kind)
  "Summary: Indicates whether the string is well-formed by attempting to construct a URI with the string and ensures that the string does not require further escaping.
Returns: if the string was well-formed; otherwise, .
Parameters:
  - uri-string (System.String): The string used to attempt to construct a System.Uri.
  - uri-kind (System.UriKind): The type of the System.Uri in uriString.
"
  (dotnet:static <type-str> "IsWellFormedUriString" (cl:the (dotnet "System.String") uri-string) (cl:the (dotnet "System.UriKind") uri-kind)))

(cl:defun make-relative (obj! to-uri)
  "OBSOLETE: Uri.MakeRelative has been deprecated. Use MakeRelativeUri(Uri uri) instead.
Summary: Determines the difference between two System.Uri instances.
Returns: If the hostname and scheme of this URI instance and toUri are the same, then this method returns a System.String that represents a relative URI that, when appended to the current URI instance, yields the toUri parameter. If the hostname or scheme is different, then this method returns a System.String that represents the toUri parameter.
Parameters:
  - to-uri (System.Uri): The URI to compare to the current URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "MakeRelative" to-uri))

(cl:defun make-relative-uri (obj! uri)
  "Summary: Determines the difference between two System.Uri instances.
Returns: If the hostname and scheme of this URI instance and uri are the same, then this method returns a relative System.Uri that, when appended to the current URI instance, yields uri. If the hostname or scheme is different, then this method returns a System.Uri that represents the uri parameter.
Parameters:
  - uri (System.Uri): The URI to compare to the current URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "MakeRelativeUri" uri))

(cl:defun not= (uri1 uri2)
  "Summary: Determines whether two System.Uri instances do not have the same value.
Returns: if the two System.Uri instances are not equal; otherwise, . If either parameter is , this method returns .
Parameters:
  - uri1 (System.Uri): A URI to compare with uri2.
  - uri2 (System.Uri): A URI to compare with uri1.
"
  (dotnet:static <type-str> "op_Inequality" (cl:the (dotnet "System.Uri") uri1) (cl:the (dotnet "System.Uri") uri2)))

(cl:defun parse (obj!)
  "OBSOLETE: Uri.Parse has been deprecated and is not supported.
Summary: Parses the URI of the current instance to ensure it contains all the parts required for a valid URI.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "Parse"))

(cl:defun to-string (obj!)
  "Summary: Gets a canonical string representation for the specified System.Uri instance.
Returns: The unescaped canonical representation of the System.Uri instance. All characters are unescaped except #, ?, and %.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "ToString"))

;; The following C# System.Uri.TryCreate overloads have special parameter types
;; (ref or params) and are not yet supported:
;;   TryCreate(String, UriCreationOptions&, out Uri&) -> Boolean

(cl:defun unescape (obj! path)
  "OBSOLETE: Uri.Unescape has been deprecated. Use GetComponents() or Uri.UnescapeDataString() to unescape a Uri component or a string.
Summary: Converts the specified string by replacing any escape sequences with their unescaped representation.
Returns: The unescaped value of the path parameter.
Parameters:
  - path (System.String): The string to convert.
"
  (dotnet:invoke (cl:the (dotnet "System.Uri") obj!) "Unescape" path))

(cl:defun unescape-data-string (string-to-unescape)
  "Master wrapper for System.Uri.UnescapeDataString overloads. Dispatches at runtime.

UnescapeDataString(String) -> String
  Summary: Converts a string to its unescaped representation.
  Returns: The unescaped representation of stringToUnescape.
  Parameters:
    - string-to-unescape (System.String): The string to unescape.

UnescapeDataString(Char]) -> String
  Summary: Converts a span to its unescaped representation.
  Returns: The unescaped representation of charsToUnescape.
  Parameters:
    - chars-to-unescape (System.ReadOnlySpan`1[System.Char]): The span to unescape.
"
  (cl:cond
    ((cl:and (cl:stringp string-to-unescape))
     (dotnet:static <type-str> "UnescapeDataString" string-to-unescape))
    ((cl:and (cl:or (cl:null string-to-unescape) (dotnet:is-instance-of string-to-unescape "System.ReadOnlySpan`1[[System.Char, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]], System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e")))
     (dotnet:static <type-str> "UnescapeDataString" string-to-unescape))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "UnescapeDataString"
                    :supplied-args (cl:append (cl:list :string-to-unescape string-to-unescape))))))

(cl:defun try-create (uri-string uri-kind)
  "Master wrapper for System.Uri.TryCreate out-only overloads. Dispatches at runtime. Each out parameter is returned as an additional cl:values result (after the primary return value), in C# declaration order.

TryCreate(String, UriKind, out Uri&) -> Boolean
  Summary: Creates a new System.Uri using the specified System.String instance and a System.UriKind.
  Returns: if the System.Uri was successfully created; otherwise, .
  Parameters:
    - uri-string (System.String): The string representation of the System.Uri.
    - uri-kind (System.UriKind): The type of the Uri.
    - result (System.Uri&): When this method returns, contains the constructed System.Uri.

TryCreate(Uri, String, out Uri&) -> Boolean
  Summary: Creates a new System.Uri using the specified base and relative System.String instances.
  Returns: if the System.Uri was successfully created; otherwise, .
  Parameters:
    - base-uri (System.Uri): The base URI.
    - relative-uri (System.String): The string representation of the relative URI to add to the base System.Uri.
    - result (System.Uri&): When this method returns, contains a System.Uri constructed from baseUri and relativeUri. This parameter is passed uninitialized.

TryCreate(Uri, Uri, out Uri&) -> Boolean
  Summary: Creates a new System.Uri using the specified base and relative System.Uri instances.
  Returns: if the System.Uri was successfully created; otherwise, .
  Parameters:
    - base-uri (System.Uri): The base URI.
    - relative-uri (System.Uri): The relative URI to add to the base System.Uri.
    - result (System.Uri&): When this method returns, contains a System.Uri constructed from baseUri and relativeUri. This parameter is passed uninitialized.
"
  (cl:cond
    ((cl:and (cl:stringp uri-string) (cl:or (cl:null uri-kind) (dotnet:is-instance-of uri-kind "System.UriKind")))
     (dotnet:call-out <type-str> "TryCreate" uri-string uri-kind))
    ((cl:and (cl:or (cl:null uri-string) (dotnet:is-instance-of uri-string "System.Uri")) (cl:stringp uri-kind))
     (dotnet:call-out <type-str> "TryCreate" uri-string uri-kind))
    ((cl:and (cl:or (cl:null uri-string) (dotnet:is-instance-of uri-string "System.Uri")) (cl:or (cl:null uri-kind) (dotnet:is-instance-of uri-kind "System.Uri")))
     (dotnet:call-out <type-str> "TryCreate" uri-string uri-kind))
    (cl:t (cl:error 'csharp-assembly-utils:csharp-overload-not-found
                    :package-name "SYSTEM-URI"
                    :class-name <type-str>
                    :method-name "TryCreate"
                    :supplied-args (cl:append (cl:list :uri-string uri-string) (cl:list :uri-kind uri-kind))))))

(cl:defun try-escape-data-string (chars-to-escape destination)
  "Returns (cl:values <primary-return> chars-written) -- TryEscapeDataString(Char], Char], out Int32&) -> Boolean
Summary: Attempts to convert a span to its escaped representation.
Returns: if the destination was large enough to hold the entire result; otherwise, .
Parameters:
  - chars-to-escape (System.ReadOnlySpan`1[System.Char]): The span to escape.
  - destination (System.Span`1[System.Char]): The output span that contains the escaped result of the operation.
"
  (dotnet:call-out <type-str> "TryEscapeDataString" chars-to-escape destination))

(cl:defun try-format (obj! destination)
  "Returns (cl:values <primary-return> chars-written) -- TryFormat(Char], out Int32&) -> Boolean
Summary: Attempts to format a canonical string representation for the System.Uri instance into the specified span.
Returns: if the formatting was successful; otherwise, .
Parameters:
  - destination (System.Span`1[System.Char]): The span into which to write this instance's value formatted as a span of characters.
"
  (dotnet:call-out obj! "TryFormat" destination))

(cl:defun try-unescape-data-string (chars-to-unescape destination)
  "Returns (cl:values <primary-return> chars-written) -- TryUnescapeDataString(Char], Char], out Int32&) -> Boolean
Summary: Attempts to convert a span to its unescaped representation.
Returns: if the destination was large enough to hold the entire result; otherwise, .
Parameters:
  - chars-to-unescape (System.ReadOnlySpan`1[System.Char]): The span to unescape.
  - destination (System.Span`1[System.Char]): The output span that contains the unescaped result of the operation.
"
  (dotnet:call-out <type-str> "TryUnescapeDataString" chars-to-unescape destination))

