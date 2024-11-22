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
			<th>간식 총지출</th>
		</tr>

		<%
		String sql = "SELECT st.student_id, st.person_name, TO_CHAR(SUM(gs.amount * s.snack_price), '999,999') || '원' FROM student st, get_snack gs, snack s "
				+ "WHERE st.student_id = gs.student_id AND s.snack_name = gs.snack_name GROUP BY st.student_id, st.person_name ORDER BY st.student_id";

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
	
</body>
</html>