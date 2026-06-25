;;; Generated automatically. Do not edit.
;;; Class: System.Uri
;;; Generator Version: 10
;;; Creation Date: 2026-06-25T23:46:26Z

(in-package :cl-user)

(defpackage :system-uri
  (:use :cl)
  (:shadow
   #:=
  )
  (:export
   #:<type>
   #:<type-str>
   #:<creation>
   #:<version>
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
   #:is-absolute-uri
   #:is-default-port
   #:is-file
   #:is-loopback
   #:is-unc
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
   #:escape-string
   #:escape-uri-string
   #:from-hex
   #:get-components
   #:get-hash-code
   #:get-left-part
   #:get-object-data
   #:hex-escape
   #:is-bad-file-system-character
   #:is-base-of
   #:is-excluded-character
   #:is-hex-digit
   #:is-hex-encoding
   #:is-reserved-character
   #:is-well-formed-original-string
   #:is-well-formed-uri-string
   #:make-relative
   #:make-relative-uri
   #:not=
   #:parse
   #:to-string
   #:unescape
   #:unescape-data-string
  ))

(in-package :system-uri)

(defconstant <type> (monoutils:get-type "System.Uri"))
(defconstant <type-str> "System.Uri")
(defconstant <creation> "2026-06-25T23:46:26Z")
(defconstant <version> 10)

;; Register C# Type with CLOS
(eval-when (:compile-toplevel :load-toplevel :execute)
  (dotnet:static "DotCL.Runtime" "EnsureDotNetTypeClass"
                 (dotnet:resolve-type "System.Uri")))

(defconstant +scheme-delimiter+ (dotnet:static <type-str> "SchemeDelimiter"))
(setf (documentation '+scheme-delimiter+ 'variable) "Specifies the characters that separate the communication protocol scheme from the address portion of the URI. This field is read-only.")

(defconstant +uri-scheme-file+ (dotnet:static <type-str> "UriSchemeFile"))
(setf (documentation '+uri-scheme-file+ 'variable) "Specifies that the URI is a pointer to a file. This field is read-only.")

(defconstant +uri-scheme-ftp+ (dotnet:static <type-str> "UriSchemeFtp"))
(setf (documentation '+uri-scheme-ftp+ 'variable) "Specifies that the URI is accessed through the File Transfer Protocol (FTP). This field is read-only.")

(defconstant +uri-scheme-ftps+ (dotnet:static <type-str> "UriSchemeFtps"))
(setf (documentation '+uri-scheme-ftps+ 'variable) "Specifies that the URI is accessed through the File Transfer Protocol Secure (FTPS). This field is read-only.")

(defconstant +uri-scheme-gopher+ (dotnet:static <type-str> "UriSchemeGopher"))
(setf (documentation '+uri-scheme-gopher+ 'variable) "Specifies that the URI is accessed through the Gopher protocol. This field is read-only.")

(defconstant +uri-scheme-http+ (dotnet:static <type-str> "UriSchemeHttp"))
(setf (documentation '+uri-scheme-http+ 'variable) "Specifies that the URI is accessed through the Hypertext Transfer Protocol (HTTP). This field is read-only.")

(defconstant +uri-scheme-https+ (dotnet:static <type-str> "UriSchemeHttps"))
(setf (documentation '+uri-scheme-https+ 'variable) "Specifies that the URI is accessed through the Secure Hypertext Transfer Protocol (HTTPS). This field is read-only.")

(defconstant +uri-scheme-mailto+ (dotnet:static <type-str> "UriSchemeMailto"))
(setf (documentation '+uri-scheme-mailto+ 'variable) "Specifies that the URI is an email address and is accessed through the Simple Mail Transport Protocol (SMTP). This field is read-only.")

(defconstant +uri-scheme-net-pipe+ (dotnet:static <type-str> "UriSchemeNetPipe"))
(setf (documentation '+uri-scheme-net-pipe+ 'variable) "Specifies that the URI is accessed through the NetPipe scheme used by Windows Communication Foundation (WCF). This field is read-only.")

(defconstant +uri-scheme-net-tcp+ (dotnet:static <type-str> "UriSchemeNetTcp"))
(setf (documentation '+uri-scheme-net-tcp+ 'variable) "Specifies that the URI is accessed through the NetTcp scheme used by Windows Communication Foundation (WCF). This field is read-only.")

(defconstant +uri-scheme-news+ (dotnet:static <type-str> "UriSchemeNews"))
(setf (documentation '+uri-scheme-news+ 'variable) "Specifies that the URI is an Internet news group and is accessed through the Network News Transport Protocol (NNTP). This field is read-only.")

(defconstant +uri-scheme-nntp+ (dotnet:static <type-str> "UriSchemeNntp"))
(setf (documentation '+uri-scheme-nntp+ 'variable) "Specifies that the URI is an Internet news group and is accessed through the Network News Transport Protocol (NNTP). This field is read-only.")

(defconstant +uri-scheme-sftp+ (dotnet:static <type-str> "UriSchemeSftp"))
(setf (documentation '+uri-scheme-sftp+ 'variable) "Specifies that the URI is accessed through the SSH File Transfer Protocol (SFTP). This field is read-only.")

(defconstant +uri-scheme-ssh+ (dotnet:static <type-str> "UriSchemeSsh"))
(setf (documentation '+uri-scheme-ssh+ 'variable) "Specifies that the URI is accessed through the Secure Socket Shell protocol (SSH). This field is read-only.")

(defconstant +uri-scheme-telnet+ (dotnet:static <type-str> "UriSchemeTelnet"))
(setf (documentation '+uri-scheme-telnet+ 'variable) "Specifies that the URI is accessed through the Telnet protocol. This field is read-only.")

(defconstant +uri-scheme-ws+ (dotnet:static <type-str> "UriSchemeWs"))
(setf (documentation '+uri-scheme-ws+ 'variable) "Specifies that the URI is accessed through the WebSocket protocol (WS). This field is read-only.")

(defconstant +uri-scheme-wss+ (dotnet:static <type-str> "UriSchemeWss"))
(setf (documentation '+uri-scheme-wss+ 'variable) "Specifies that the URI is accessed through the WebSocket Secure protocol (WSS). This field is read-only.")

(defun absolute-path (obj)
  "Gets the absolute path of the URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_AbsolutePath"))

(defun absolute-uri (obj)
  "Gets the absolute URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_AbsoluteUri"))

(defun authority (obj)
  "Gets the Domain Name System (DNS) host name or IP address and the port number for a server."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Authority"))

(defun dns-safe-host (obj)
  "Gets a host name that, after being unescaped if necessary, is safe to use for DNS resolution."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_DnsSafeHost"))

(defun fragment (obj)
  "Gets the escaped URI fragment, including the leading '#' character if not empty."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Fragment"))

(defun host (obj)
  "Gets the host component of this instance."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Host"))

(defun host-name-type (obj)
  "Gets the type of the host name specified in the URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_HostNameType"))

(defun idn-host (obj)
  "Gets the RFC 3490 compliant International Domain Name of the host, using Punycode as appropriate. This string, after being unescaped if necessary, is safe to use for DNS resolution."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_IdnHost"))

(defun is-absolute-uri (obj)
  "Gets a value that indicates whether the System.Uri instance is absolute."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_IsAbsoluteUri"))

(defun is-default-port (obj)
  "Gets a value that indicates whether the port value of the URI is the default for this scheme."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_IsDefaultPort"))

(defun is-file (obj)
  "Gets a value that indicates whether the specified System.Uri is a file URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_IsFile"))

(defun is-loopback (obj)
  "Gets a value that indicates whether the specified System.Uri references the local host."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_IsLoopback"))

(defun is-unc (obj)
  "Gets a value that indicates whether the specified System.Uri is a universal naming convention (UNC) path."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_IsUnc"))

(defun local-path (obj)
  "Gets a local operating-system representation of a file name."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_LocalPath"))

(defun original-string (obj)
  "Gets the original URI string that was passed to the System.Uri constructor."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_OriginalString"))

(defun path-and-query (obj)
  "Gets the System.Uri.AbsolutePath and System.Uri.Query properties separated by a question mark (?)."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_PathAndQuery"))

(defun port (obj)
  "Gets the port number of this URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Port"))

(defun query (obj)
  "Gets any query information included in the specified URI, including the leading '?' character if not empty."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Query"))

(defun scheme (obj)
  "Gets the scheme name for this URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Scheme"))

(defun segments (obj)
  "Gets an array containing the path segments that make up the specified URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_Segments"))

(defun user-escaped (obj)
  "Gets a value that indicates whether the URI string was completely escaped before the System.Uri instance was created."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_UserEscaped"))

(defun user-info (obj)
  "Gets the user name, password, or other user-specific information associated with the specified URI."
  (dotnet:invoke (the (dotnet "System.Uri") obj) "get_UserInfo"))

(defun = (uri1 uri2)
  "Summary: Determines whether two System.Uri instances have the same value.
Returns: if the System.Uri instances are equivalent; otherwise, .
Parameters:
  - uri1 (System.Uri): A URI to compare with uri2.
  - uri2 (System.Uri): A URI to compare with uri1.
"
  (dotnet:static <type-str> "op_Equality" (the (dotnet "System.Uri") uri1) (the (dotnet "System.Uri") uri2)))

(defun canonicalize (obj)
  "Summary: Converts the internally stored URI to canonical form.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "Canonicalize"))

(defun check-host-name (name)
  "Summary: Determines whether the specified host name is a valid DNS name.
Returns: The type of the host name. If the type of the host name cannot be determined or if the host name is or a zero-length string, this method returns System.UriHostNameType.Unknown.
Parameters:
  - name (System.String): The host name to validate. This can be an IPv4 or IPv6 address or an Internet host name.
"
  (dotnet:static <type-str> "CheckHostName" (the (dotnet "System.String") name)))

(defun check-scheme-name (scheme-name)
  "Summary: Determines whether the specified scheme name is valid.
Returns: if the scheme name is valid; otherwise, .
Parameters:
  - scheme-name (System.String): The scheme name to validate.
"
  (dotnet:static <type-str> "CheckSchemeName" (the (dotnet "System.String") scheme-name)))

(defun check-security (obj)
  "Summary: Calling this method has no effect.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "CheckSecurity"))

(defun compare (uri1 uri2 parts-to-compare compare-format comparison-type)
  "Summary: Compares the specified parts of two URIs using the specified comparison rules.
Returns: A value that indicates the lexical relationship between the compared System.Uri components. Value Meaning Less than zerouri1 is less than uri2. Zerouri1 equals uri2. Greater than zerouri1 is greater than uri2.
Parameters:
  - uri1 (System.Uri): The first URI.
  - uri2 (System.Uri): The second URI.
  - parts-to-compare (System.UriComponents): A bitwise combination of the System.UriComponents values that specifies the parts of uri1 and uri2 to compare.
  - compare-format (System.UriFormat): One of the enumeration values that specifies the character escaping used when the URI components are compared.
  - comparison-type (System.StringComparison): One of the enumeration values that specifies the culture, case, and sort rules for the comparison.
"
  (dotnet:static <type-str> "Compare" (the (dotnet "System.Uri") uri1) (the (dotnet "System.Uri") uri2) (the (dotnet "System.UriComponents") parts-to-compare) (the (dotnet "System.UriFormat") compare-format) (the (dotnet "System.StringComparison") comparison-type)))

(defun equals (obj &rest args)
  "Passthrough for System.Uri.Equals overloads. Dispatches at runtime."
  (apply #'dotnet:invoke (the (dotnet "System.Uri") obj) "Equals" args))

(defun equals-object (obj comparand)
  "Calls System.Uri.Equals Equals(Object) -> Boolean. Summary: Compares two System.Uri instances for equality.
Returns: if the two instances represent the same URI; otherwise, .
Parameters:
  - comparand (System.Object): The URI or a URI identifier to compare with the current instance.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "Equals" comparand))

(defun equals-uri (obj other)
  "Calls System.Uri.Equals Equals(Uri) -> Boolean. Summary: Compares two System.Uri instances for equality.
Returns: if the two instances represent the same URI; otherwise, .
Parameters:
  - other (System.Uri): The System.Uri to compare to this instance.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "Equals" other))

(defun escape (obj)
  "Summary: Converts any unsafe or reserved characters in the path component to their hexadecimal character representations.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "Escape"))

(defun escape-data-string (string-to-escape)
  "Summary: Converts a string to its escaped representation.
Returns: The escaped representation of stringToEscape.
Parameters:
  - string-to-escape (System.String): The string to escape.
"
  (dotnet:static <type-str> "EscapeDataString" (the (dotnet "System.String") string-to-escape)))

(defun escape-string (str)
  "Summary: Converts a string to its escaped representation.
Returns: The escaped representation of the string.
Parameters:
  - str (System.String): The string to transform to its escaped representation.
"
  (dotnet:static <type-str> "EscapeString" (the (dotnet "System.String") str)))

(defun escape-uri-string (string-to-escape)
  "Summary: Converts a URI string to its escaped representation.
Returns: The escaped representation of stringToEscape.
Parameters:
  - string-to-escape (System.String): The string to escape.
"
  (dotnet:static <type-str> "EscapeUriString" (the (dotnet "System.String") string-to-escape)))

(defun from-hex (digit)
  "Summary: Gets the decimal value of a hexadecimal digit.
Returns: A number from 0 to 15 that corresponds to the specified hexadecimal digit.
Parameters:
  - digit (System.Char): The hexadecimal digit (0-9, a-f, A-F) to convert.
"
  (dotnet:static <type-str> "FromHex" (the (dotnet "System.Char") digit)))

(defun get-components (obj components format)
  "Summary: Gets the specified components of the current instance using the specified escaping for special characters.
Returns: The components of the current instance.
Parameters:
  - components (System.UriComponents): A bitwise combination of the System.UriComponents values that specifies which parts of the current instance to return to the caller.
  - format (System.UriFormat): One of the enumeration values that controls how special characters are escaped.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "GetComponents" components format))

(defun get-hash-code (obj)
  "Summary: Gets the hash code for the URI.
Returns: The hash value generated for this URI.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "GetHashCode"))

(defun get-left-part (obj part)
  "Summary: Gets the specified portion of a System.Uri instance.
Returns: The specified portion of the System.Uri instance.
Parameters:
  - part (System.UriPartial): One of the enumeration values that specifies the end of the URI portion to return.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "GetLeftPart" part))

(defun get-object-data (obj serialization-info streaming-context)
  "Summary: Returns the data needed to serialize the current instance.
Parameters:
  - serialization-info (System.Runtime.Serialization.SerializationInfo): The information required to serialize the System.Uri.
  - streaming-context (System.Runtime.Serialization.StreamingContext): An object that contains the source and destination of the serialized stream associated with the System.Uri.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "GetObjectData" serialization-info streaming-context))

(defun hex-escape (character)
  "Summary: Converts a specified character into its hexadecimal equivalent.
Returns: The hexadecimal representation of the specified character.
Parameters:
  - character (System.Char): The character to convert to hexadecimal representation.
"
  (dotnet:static <type-str> "HexEscape" (the (dotnet "System.Char") character)))

;; The following C# System.Uri.HexUnescape overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   HexUnescape(String, ref Int32&) -> Char

(defun is-bad-file-system-character (obj character)
  "Summary: Indicates whether a character is invalid in a file system name.
Returns: if the specified character is invalid; otherwise, .
Parameters:
  - character (System.Char): The System.Char to test.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "IsBadFileSystemCharacter" character))

(defun is-base-of (obj uri)
  "Summary: Determines whether the current System.Uri instance is a base of the specified System.Uri instance.
Returns: if the current System.Uri instance is a base of uri; otherwise, .
Parameters:
  - uri (System.Uri): The specified URI to test.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "IsBaseOf" uri))

(defun is-excluded-character (character)
  "Summary: Determines whether the specified character should be escaped.
Returns: if the specified character should be escaped; otherwise, .
Parameters:
  - character (System.Char): The character to test.
"
  (dotnet:static <type-str> "IsExcludedCharacter" (the (dotnet "System.Char") character)))

(defun is-hex-digit (character)
  "Summary: Determines whether a specified character is a valid hexadecimal digit.
Returns: if the character is a valid hexadecimal digit; otherwise, .
Parameters:
  - character (System.Char): The character to validate.
"
  (dotnet:static <type-str> "IsHexDigit" (the (dotnet "System.Char") character)))

(defun is-hex-encoding (pattern index)
  "Summary: Determines whether a character in a string is hexadecimal encoded.
Returns: if pattern is hexadecimal encoded at the specified location; otherwise, .
Parameters:
  - pattern (System.String): The string to check.
  - index (System.Int32): The location in pattern to check for hexadecimal encoding.
"
  (dotnet:static <type-str> "IsHexEncoding" (the (dotnet "System.String") pattern) (the (dotnet "System.Int32") index)))

(defun is-reserved-character (obj character)
  "Summary: Determines whether the specified character is a reserved character.
Returns: if the specified character is a reserved character otherwise, .
Parameters:
  - character (System.Char): The character to test.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "IsReservedCharacter" character))

(defun is-well-formed-original-string (obj)
  "Summary: Indicates whether the string used to construct this System.Uri was well-formed and does not require further escaping.
Returns: if the string was well-formed; otherwise, .
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "IsWellFormedOriginalString"))

(defun is-well-formed-uri-string (uri-string uri-kind)
  "Summary: Indicates whether the string is well-formed by attempting to construct a URI with the string and ensures that the string does not require further escaping.
Returns: if the string was well-formed; otherwise, .
Parameters:
  - uri-string (System.String): The string used to attempt to construct a System.Uri.
  - uri-kind (System.UriKind): The type of the System.Uri in uriString.
"
  (dotnet:static <type-str> "IsWellFormedUriString" (the (dotnet "System.String") uri-string) (the (dotnet "System.UriKind") uri-kind)))

(defun make-relative (obj to-uri)
  "Summary: Determines the difference between two System.Uri instances.
Returns: If the hostname and scheme of this URI instance and toUri are the same, then this method returns a System.String that represents a relative URI that, when appended to the current URI instance, yields the toUri parameter. If the hostname or scheme is different, then this method returns a System.String that represents the toUri parameter.
Parameters:
  - to-uri (System.Uri): The URI to compare to the current URI.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "MakeRelative" to-uri))

(defun make-relative-uri (obj uri)
  "Summary: Determines the difference between two System.Uri instances.
Returns: If the hostname and scheme of this URI instance and uri are the same, then this method returns a relative System.Uri that, when appended to the current URI instance, yields uri. If the hostname or scheme is different, then this method returns a System.Uri that represents the uri parameter.
Parameters:
  - uri (System.Uri): The URI to compare to the current URI.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "MakeRelativeUri" uri))

(defun not= (uri1 uri2)
  "Summary: Determines whether two System.Uri instances do not have the same value.
Returns: if the two System.Uri instances are not equal; otherwise, . If either parameter is , this method returns .
Parameters:
  - uri1 (System.Uri): A URI to compare with uri2.
  - uri2 (System.Uri): A URI to compare with uri1.
"
  (dotnet:static <type-str> "op_Inequality" (the (dotnet "System.Uri") uri1) (the (dotnet "System.Uri") uri2)))

(defun parse (obj)
  "Summary: Parses the URI of the current instance to ensure it contains all the parts required for a valid URI.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "Parse"))

(defun to-string (obj)
  "Summary: Gets a canonical string representation for the specified System.Uri instance.
Returns: The unescaped canonical representation of the System.Uri instance. All characters are unescaped except #, ?, and %.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "ToString"))

;; The following C# System.Uri.TryCreate overloads have special parameter types
;; (ref, out, params, or defaults) and are not yet supported:
;;   TryCreate(String, UriKind, out Uri&) -> Boolean
;;   TryCreate(String, UriCreationOptions&, out Uri&) -> Boolean
;;   TryCreate(Uri, String, out Uri&) -> Boolean
;;   TryCreate(Uri, Uri, out Uri&) -> Boolean

(defun unescape (obj path)
  "Summary: Converts the specified string by replacing any escape sequences with their unescaped representation.
Returns: The unescaped value of the path parameter.
Parameters:
  - path (System.String): The string to convert.
"
  (dotnet:invoke (the (dotnet "System.Uri") obj) "Unescape" path))

(defun unescape-data-string (string-to-unescape)
  "Summary: Converts a string to its unescaped representation.
Returns: The unescaped representation of stringToUnescape.
Parameters:
  - string-to-unescape (System.String): The string to unescape.
"
  (dotnet:static <type-str> "UnescapeDataString" (the (dotnet "System.String") string-to-unescape)))

