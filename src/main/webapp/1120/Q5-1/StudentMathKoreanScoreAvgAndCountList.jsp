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
	<h2>학생 수학, 국어 점수</h2>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>수학 점수 평균</th>
			<th>수학 & 국어 평균</th>
			<th>수학 시험 본 횟수 + 국어 시험 본 횟수</th>
			<th>시험 본 횟수</th>
		</tr>

		<%
		String sql = "SELECT st.student_id AS 학번, " + "TRUNC(SUM(t.math) / COUNT(t.math), 0) AS 수학점수평균, "
				+ "TRUNC(SUM(t.math + t.korean) / (COUNT(t.math) + COUNT(t.korean)), 0) AS 수학국어평균, "
				+ "TRUNC((COUNT(t.math) + COUNT(t.korean)), 0) AS 수학국어시험본횟수, " + "COUNT(t.student_id) AS 시험본횟수 "
				+ "FROM student st, test t " + "WHERE st.student_id = t.student_id " + "GROUP BY st.student_id "
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
			<td><%=jdbc.rs.getString(5)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>