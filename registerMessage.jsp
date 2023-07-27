<%@ page contentType="text/html; charset=UTF-8"
	import="java.net.URLDecoder"%>
<%
session.setMaxInactiveInterval(180);
String logout = (String) request.getParameter("logout");
String message = null;
if (logout != null && logout.equals("true")) {
	session.invalidate();
} else {
	message = (String) request.getParameter("message");
	if (message != null) {
		session.setAttribute("message", message);
	} else {
		message = (String) session.getAttribute("message");
	}
}
if (message == null)
	message = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="SJIS">
<title>registerMessage</title>
<style>
ul {
	list-style: none;
}
</style>
</head>
<body>
	<form method="GET" action="/jspfile/curriculum/registerMessage.jsp">
		<ul>
			<li><label for="message">メッセージ</label> <input type="text"
				name="message" value="<%= message %>" /></li>
			<li><input type="submit" value="登録" /> </li>
		</ul>
	</form>
	<a href="/jspfile/curriculum/registerMessage.jsp?logout=true">ログアウト</a>
</body>
</html>