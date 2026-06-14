(defgeneric do-something (obj))
(defmethod do-something ((obj "System.Random"))
  (format t "It's a Random!~%"))
(defmethod do-something ((obj "System.Object"))
  (format t "It's an Object!~%"))

(do-something (dotnet:new "System.Random"))
(do-something (dotnet:new "System.Object"))
