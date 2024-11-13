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
			<th>간식 이름</th>
			<th>총매출</th>
			<th>순위</th>
			<th>재판매 여부</th>
		</tr>

		<%
		String sql = "SELECT s.snack_name, " + "TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') || '원' AS 총매출, "
				+ "RANK() OVER (ORDER BY SUM(s.snack_price + gs.amount) DESC) AS 순위, CASE WHEN SUM(s.snack_price* gs.amount) >= 15000 THEN '재판매' WHEN SUM(s.snack_price* gs.amount) >= 10000 THEN '보류' ELSE '판매 중단' END AS 재판매여부 "
				+ "FROM snack s, get_snack gs " + "WHERE s.snack_name = gs.snack_name " + "GROUP BY s.snack_name";

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