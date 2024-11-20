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
			<th>혈액형</th>
			<th>방문횟수</th>
		</tr>

		<%
		String sql = "SELECT p.blood_type as 혈액형, COUNT(*) AS 방문횟수 " + "FROM person p, get_snack gs, student st "
				+ "where p.person_name = st.person_name and st.student_id = gs.student_id " + "GROUP BY p.blood_type";
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