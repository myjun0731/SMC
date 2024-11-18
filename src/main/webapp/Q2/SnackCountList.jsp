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
			<th>학번</th>
			<th>시험 본 횟수</th>
		</tr>

		<%
		String sql =

				"select gs.student_id as 학번, count(gs.student_id) || '번' as 매장방문한횟수 " + "from get_snack gs "
				+ "group by gs.student_id";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>