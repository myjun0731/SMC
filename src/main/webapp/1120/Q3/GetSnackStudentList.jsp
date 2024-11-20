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
	<h2>매장 방문 이력</h2>
	<table border="1">
		<tr>
			<th>기본키</th>
			<th>학번</th>
			<th>이름</th>
			<th>간식이름</th>
			<th>간식가격</th>
			<th>간식수량</th>
			<th>구매시간</th>
		</tr>

		<%
		String sql =

				"select " + "gs.get_snack_id as 기본키, " + "gs.student_id as 학번, " + "st.person_name as 이름, "
				+ "gs.snack_name as 간식이름, " + "s.snack_price as 간식가격, " + "gs.amount as 간식수량, "
				+ "to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI') as 구매시간 "
				+ "from get_snack gs, person p, student st, snack s " + "where gs.student_id = st.student_id "
				+ "and st.person_name = p.person_name " + "and s.snack_name = gs.snack_name";

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
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>