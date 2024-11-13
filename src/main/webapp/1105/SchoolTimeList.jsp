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


	<table border="1">
		<tr>
			<th>교시</th>
			<th>시작시간 - to_char</th>
			<th>끝나는시간 - to_substr</th>
			<th>시작시간 to_char+to_substr</th>
			<th>끝나는시간 to_char+to_substr+NVL2</th>
		</tr>

		<%
		String sql = "select school_time_name, " + "to_char(start_time, 'FM0000'), to_char(end_time, 'FM0000'), "
				+ "substr(to_char(start_time, 'FM0000'),1,2) || ':'|| substr(to_char(start_time, 'FM0000'), 3,2), "
				+ "NVL2(end_time, substr(to_char(end_time, 'FM0000'),1,2)|| ':' || substr(to_char(end_time, 'FM0000'),3,2), '-') "
				+ "from school_time_table";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>
		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=jdbc.rs.getString(4)%></td>
			<td><%=jdbc.rs.getString(5)%></td>
		</tr>
		<%
		}
		jdbc.rs.close();
		%>
	</table>
</body>
</html>