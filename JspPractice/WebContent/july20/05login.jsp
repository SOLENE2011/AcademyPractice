<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String id = request.getParameter("memberId");
	if (id.equals("KH21")) {
		response.sendRedirect("./01requestInfo.jsp");
	} else {
%>

<html>
<head><title>�α��ο� ����</title></head>
<body>
���̵� KH05�� �ƴմϴ�.
</body>
</html>
<%
	}
%>
