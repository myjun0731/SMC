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
			<th>이름</th>
			<th>시험 본 횟수</th>
			<th>수학평균</th>
			<th>국어평균</th>
			<th>영어평균</th>
			<th>점수총합</th>
			<th>종합평균</th>
		</tr>

		<%
		String sql =

				"select st.student_id as 학번, st.person_name as 이름, count(st.student_id) as 시험본횟수, " +
				"TRUNC(SUM(math) / COUNT (math), 0) AS 수학평균, TRUNC(SUM(korean) / COUNT (korean), 0) AS 국어평균, TRUNC(SUM(english) / COUNT (english), 0) AS 영어평균, sum(math)+sum(korean)+sum(english)+sum(history)+sum(science) as 점수총합,TRUNC(sum(math)+sum(korean)+sum(english)+sum(history)+sum(science) / count(math) + count(korean) + count(english) + count(history) + count(science), 0) as 전체평균 " +
				"from student st, test t " +
				"where st.student_id = t.student_id " +
				"group by st.student_id, st.person_name";

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
			<td><%=jdbc.rs.getString(6)%></td>
			<td><%=jdbc.rs.getString(7)%></td>
			<td><%=jdbc.rs.getString(8)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>