<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>�ɼ� ���� ȭ��</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/july24/16view.jsp">

���� ���� ������ ���� :
	<select name="code">
		<option value="A">A ������ </option>
		<option value="B">B ������ </option>
		<option value="C">C ������ </option>	
	</select>
	
<input type="submit" value = "�̵�">

</form>

</body>
</html>