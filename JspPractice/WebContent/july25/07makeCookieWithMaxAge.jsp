<%@ page contentType = "text/html; charset=euc-kr" %>
<%
	Cookie cookie = new Cookie("onem", "1minute");
	cookie.setMaxAge(60 * 1); // 60��(1��)
	response.addCookie(cookie);
%>
<html>
<head><title>��Ű��ȿ�ð�����</title></head>
<body>

��ȿ�ð��� 1���� onem ��Ű ����.

</body>
</html>
