<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>

<head><title>INFO</title></head>

<body>
<table width = "100%" border ="1" cellpadding = "0" cellspacing = "0">
<tr>
	<td>��ǰ��ȣ</td> <td>XXXX</td>
</tr>

<tr>
	<td>����</td> <td>10,000��</td>
</tr>

</table>


<jsp:include page="06infoSub.jsp" flush="false">
	<jsp:param value="A" name="type"/>
</jsp:include>

</body>
</html>