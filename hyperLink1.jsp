<%@ page contentType="text/html; charset=UTF-8" import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hyperLink1</title>
</head>
<body>
 こんにちわ <a href="hyperLink2.jsp?key=<%= URLEncoder.encode("キー&と%", "UTF-8") %>">キーの送信</a>
</body>
</html>