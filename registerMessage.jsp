<%@ page contentType="text/html; charset=SJIS"
	import="java.net.URLDecoder"%>
<%
// �Z�b�V�����̗L�������ݒ�
session.setMaxInactiveInterval(180);
String logout = (String) request.getParameter("logout");
String message = null;
if (logout != null && logout.equals("true")) {
	// �Z�b�V�����̔j��
	session.invalidate();

} else {
	// GET�p�����[�^����u���b�Z�[�W�v�����o��
	message = (String) request.getAttribute("message");
	if (message != null) {
		// �u���b�Z�[�W�v�����M����Ă����̂ŁA�Z�b�V�����ɕۑ�
		session.setAttribute("message", message);
	} else {
		// �u���b�Z�[�W�v�����M����Ă��Ȃ������̂ŁA�Z�b�V�������烁�b�Z�[�W���擾
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
	<form method="GET" action="/jsp/registerMessage.jsp">
		<ul>
			<li><label for="message">���b�Z�[�W</label>
			<input type="text" name="message" value="<%=message%>" />
			</li>
			<li><input type="submit" value="�o�^" />
			<a href="/jsp/registerMessage.jsp?message=true">���O�A�E�g</a></li>
		</ul>
	</form>
</body>
</html>
