<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=EUC-KR" %>
<html><head><title>���� ������</title> 

<script>
function showDetail() {
	d = document.getElementById('detail');
	d.style.display = 'block';
}
</script>
</head>
<body>
<h3 id="header"><%= exception.getClass().getName() %></h3>
<div id="main">
	<%= exception.getMessage() %>
	<input type="button" onClick="showDetail()" value="�󼼺���">
	<div id="detail" style="display:none">
		<% exception.printStackTrace(new java.io.PrintWriter(out)); %>
	</div>
</div>
</body>
</html>




<!--
���� ���� �������� ���̰� 513 ����Ʈ���� �۴ٸ�,
���ͳ� �ͽ��÷η��� �� �������� ����ϴ� ���� �������� ������� �ʰ�
��ü������ �����ϴ� 'HTTP ���� �޽���' ȭ���� ����� ���̴�.
���� ���� �������� ���̰� 513 ����Ʈ���� ������
���� �������� ������ ���ͳ� �ͽ��÷η������� �ùٸ��� ��µǱ� ���Ѵٸ�,
���� ����� �� �ּ��� ���� ������ ���Խ��Ѽ�
���� �������� ���̰� 513 ����Ʈ �̻��� �ǵ��� �� �־�� �Ѵ�.
����� �� �ּ��� 456����Ʈ�̴�.
-->












