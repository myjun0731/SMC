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
			<th>이름</th>
			<th>주민등록번호</th>
			<th>혈액형</th>
			<th>학번</th>
			<th>총지출</th>
		</tr>

		<%
		String sql =

				"SELECT " + "p.person_name as 이름, " + "p.jumin_num as 주민등록번호, " + "p.blood_type as 혈액형, "
				+ "st.student_id as 학번, " + "SUM(s.snack_price * g.amount) || '원' AS 총지출 " + "FROM " + "person p, "
				+ "student st, " + "get_snack g, " + "snack s " + "WHERE " + "p.person_name = st.person_name "
				+ "AND st.student_id = g.student_id " + "and g.snack_name = s.snack_name " + "GROUP BY "
				+ "p.person_name, p.jumin_num, p.blood_type, st.student_id";

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