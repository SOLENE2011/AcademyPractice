<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>include ��Ƽ��</title>
</head>
<body>

<%
	int number = 10;
%>
<%@ include file= "./10includee.jspf" %>

���뺯�� DATAFOLDER = "<%= dataFolder %>"
</body>
</html>