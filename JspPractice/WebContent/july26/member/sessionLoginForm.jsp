<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α�����</title>
</head>
<body>
	<form
		action="<%=request.getContextPath()%>/july26/member/sessionLogin.jsp"
		method="post">


		<%
		Cookie[] cookies = request.getCookies();
		String checkId ="";
		
		for(int i =0 ; i<cookies.length;i++){
			if(cookies[i].getName().equals("id")){
				checkId = URLDecoder.decode(cookies[i].getValue(),"euc-kr");
			}
		}
		%>
		���̵� <input type="text" name="id" size="10" value = <%=checkId %>>
		��ȣ <input type="password" name="password" size="10"> ���̵� ���� <input
			type="checkbox" name="saveId" value="checked"> <input
			type="submit" value="�α���">
	</form>
</body>
</html>