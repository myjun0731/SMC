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
	<h2>학생이 구매한 간식 수량에 따른 별명 부여</h2>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>간식 구매한 수량</th>
			<th>구매한 수량에 따라 별명 부여</th>
		</tr>

		<%
		String sql =

				"SELECT st.student_id AS 학번, st.person_name AS 이름, SUM(gs.amount) AS 수량, " + "CASE "
				+ "WHEN SUM(gs.amount) <= 2 THEN '소식가' " + "WHEN SUM(gs.amount) <= 5 THEN '애호가' "
				+ "WHEN SUM(gs.amount) <= 10 THEN '먹보' " + "END AS 간식별명 " + "FROM get_snack gs, student st "
				+ "WHERE gs.student_id = st.student_id " + "GROUP BY st.student_id, st.person_name "
				+ "ORDER BY st.student_id";

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
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>