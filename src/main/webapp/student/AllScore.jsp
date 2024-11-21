<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String sql = "select " + "sum(ui_test + application_sw) / (count(ui_test) + count(application_sw)) " + "from score";
	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	jdbc.rs.next();
	%>

	<table border="1">
		<tr>
			<th>all avg</th>
		</tr>
		<tr>
			<td> <%=jdbc.rs.getString(1)%></td>
		</tr>
	</table>
	<%
	jdbc.close();
	%>
</body>
</html>