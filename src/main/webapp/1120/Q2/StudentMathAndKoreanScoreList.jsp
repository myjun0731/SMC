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
<h2>수학, 국어 점수 출력</h2>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>주민등록번호</th>
			<th>시험일</th>
			<th>수학점수</th>
			<th>국어점수</th>
		</tr>

		<%
		String sql =

				"SELECT " + "st.student_id as 학번, " + "p.person_name as 이름, " + "p.jumin_num as 주민등록번호, "
				+ "t.test_date as 시험일, " + "t.math as 수학점수, " + "t.korean as 국어점수 " + "FROM " + "student st, "
				+ "person p, " + "test t " + "WHERE " + "st.student_id = t.student_id "
				+ "and p.person_name = st.person_name " + "GROUP BY "
				+ "p.person_name, p.jumin_num, p.blood_type, st.student_id, t.test_date, t.math, t.korean";

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
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>