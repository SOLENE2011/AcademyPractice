<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ȸ�� ���</title>
</head>
<body>

	MEMBER ���̺��� ����
	<table width="100%" border="1">
		<tr>
			<td>�̸�</td>
			<td>���̵�</td>
			<td>�̸���</td>
		</tr>
		<%
			//1. JDBC ����̹� �ε�

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;

			try {
				String jdbcDriver = "jdbc:oracle:thin:@Localhost:1521:orcl";
				String dbUser = "scott";
				String dbPass = "tiger";

				String query = "select * from MEMBER order by USERID";

				// 2. �����ͺ��̽� Ŀ�ؼ� ����
				conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

				//3. statement ����
				stmt = conn.createStatement();

				//4. ���� ����

				rs = stmt.executeQuery(query);
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("USERNAME")%></td>
			<td><%=rs.getString("USERID")%></td>
			<td><%=rs.getString("USEREMAIL")%></td>
		</tr>
		<%
			}
			} catch (SQLException ex) {
				out.println(ex.getMessage());
				ex.printStackTrace();
			} finally {
				//6. ����� statement ����
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (stmt != null)
					try {
						stmt.close();
					} catch (SQLException ex) {
					}
				//7.Ŀ�ؼ� ����
				if (conn != null)
					try {
						conn.close();
					} catch (SQLException ex) {
					}
			}
		%>
	</table>
</body>
</html>
