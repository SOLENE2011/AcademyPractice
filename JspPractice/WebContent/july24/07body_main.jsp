<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>


<html>
<head>
<title>INFO</title>
</head>
<body>

include �� name �Ķ���� �� : <%= request.getParameter("name") %>

<hr>

<jsp:include page="08body_sub.jsp" flush="false">
	<jsp:param value="�ֹ���" name="name"/>
</jsp:include>

</hr>

include �� name �Ķ���� ��: <%= request.getParameter("name") %>

</body>
</html>