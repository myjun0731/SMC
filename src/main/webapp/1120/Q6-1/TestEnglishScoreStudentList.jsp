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
	<h2>간식 총매출 출력</h2>
	<table border="1">
		<tr>
			<th>간식이름</th>
			<th>간식가격</th>
			<th>구매된수량</th>
			<th>총매출</th>
		</tr>
		<%
		String sql = "SELECT s.snack_name AS 간식이름, " + "TO_CHAR(s.snack_price, '999,999') || '원' AS 간식가격, "
				+ "SUM(gs.amount) AS 구매된수량, " + "TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') || '원' AS 총매출 "
				+ "FROM snack s, get_snack gs " + "WHERE s.snack_name = gs.snack_name "
				+ "GROUP BY s.snack_name, s.snack_price " + "ORDER BY s.snack_name";

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