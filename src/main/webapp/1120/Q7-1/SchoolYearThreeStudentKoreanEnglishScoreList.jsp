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
	<h2>3학년 학생이 국어 & 영어 시험 본 횟수, 국어 & 영어 총합 점수, 국어 & 영어 평균 점수 출력</h2>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>학년</th>
			<th>국어 & 영어 시험 본 횟수</th>
			<th>국어 & 영어 총합 점수</th>
			<th>국어 & 영어 평균 점수</th>
		</tr>
		<%
		String sql = "select " + "st.student_id as 학번, " + "case " + "when st.student_id >= 30000 then '3학년' end as 학년, "
				+ "(count(t.korean) + count(t.english)) as 시험본횟수, " + "(sum(t.korean) + sum(t.english)) as 총합, "
				+ "TRUNC((SUM(t.korean) + SUM(t.english)) / (count(t.korean)+count(t.english)),0) as 평균 "
				+ "from test t, student st " + "where t.student_id = st.student_id and st.student_id >= 30000 "
				+ "group by st.student_id, t.student_id " + "order by st.student_id";

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