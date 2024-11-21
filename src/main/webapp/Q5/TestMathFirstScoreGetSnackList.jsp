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
			<th>수학 점수</th>
			<th>간식 총 지출</th>
		</tr>

		<%
		String sql = "SELECT gs.student_id AS 학번, t.math AS 수학점수, " + "TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') AS 간식총지출 "
				+ "FROM get_snack gs, snack s, test t "
				+ "WHERE s.snack_name = gs.snack_name and t.math >= 90 and gs.student_id = t.student_id "
				+ "GROUP BY gs.student_id, t.math";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>