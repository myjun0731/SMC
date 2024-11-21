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
	<h2>내가 생각하는 간식 선호도와 매출 비교하기</h2>
	<table border="1">
		<tr>
			<th>간식이름</th>
			<th>간식가격</th>
			<th>선호도</th>
			<th>총매출</th>
			<th>매출순위</th>
		</tr>
		<%
		String sql =

				"select " + "s.snack_name as 간식이름, " + "s.snack_price as 간식가격, " + "CASE "
				+ "WHEN SUM(s.snack_price * gs.amount) >= 25000 THEN '좋음' "
				+ "WHEN SUM(s.snack_price * gs.amount) >= 20000 THEN '보통' "
				+ "WHEN SUM(s.snack_price * gs.amount) >= 15000 THEN '별로' "
				+ "WHEN SUM(s.snack_price * gs.amount) >= 10000 THEN '최악' " + "else '먹을만 함' " + "END AS 선호도, "
				+ "TO_CHAR(SUM(s.snack_price * gs.amount), '999,999') || '원' AS 총매출, "
				+ "RANK() OVER (ORDER BY SUM(s.snack_price * gs.amount)DESC) AS 매출순위 " + "from snack s, get_snack gs "
				+ "where s.snack_name = gs.snack_name " + "group by s.snack_name, s.snack_price "
				+ "order by s.snack_name";

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