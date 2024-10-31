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
	String sql =
	"SELECT " +
	"round(sum(ui_test)/count(*), 0) as ui_test, " +
	"round(sum(application_sw)/count(*), 1) as application_sw " +
	"from score";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	jdbc.rs.next();
	%>

	<table border="1">
		<tr>
			<th>ui_test</th>
			<th>application_sw</th>
		</tr>
		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
		</tr>
	</table>

	<%
	jdbc.close();
	%>
</body>
</html>