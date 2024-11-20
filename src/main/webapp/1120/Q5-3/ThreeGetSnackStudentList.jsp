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
	<h2>매장 방문시 한번이라도 간식을 3개 이상 구매했을 경우, 수학총합, 수학 평균 구하기</h2>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>간식 구매한 수량</th>
			<th>수학총합</th>
			<th>수학평균</th>
		</tr>
		<%
		String sql =

				"SELECT st.student_id AS 학번, st.person_name AS 이름, " + "gs.amount AS 간식구매한수량, SUM(t.math) AS 수학총합, "
				+ "TRUNC(SUM(t.math) / COUNT(t.math), 0) AS 수학평균 " + "FROM student st, get_snack gs, test t "
				+ "WHERE st.student_id = gs.student_id " + "AND st.student_id = t.student_id "
				+ "AND gs.student_id = t.student_id " + "AND gs.amount >= 3 "
				+ "GROUP BY st.student_id, st.person_name, gs.amount " + "ORDER BY st.student_id";

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
		jdbc.close();
		%>
	</table>
</body>
</html>