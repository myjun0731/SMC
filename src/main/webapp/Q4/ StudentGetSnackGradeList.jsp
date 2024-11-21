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
			<th>매장 방문 횟수</th>
			<th>구매한 간식량</th>
			<th>간식 총 지출</th>
			<th>등급</th>
		</tr>

		<%
		String sql = 
		
				"SELECT gs.student_id AS 학번, " +
				  "COUNT(gs.student_id) || '번' AS 매장방문한횟수, " +
				  "SUM(gs.amount) AS 구매한간식량, " +
				  "SUM(s.snack_price * gs.amount) AS 간식총지출, " +
				  "CASE  " +
				    "WHEN SUM(s.snack_price * gs.amount) >= 15000 THEN '너뭐야' " +
				    "WHEN SUM(s.snack_price * gs.amount) >= 10000 THEN 'VIP'  " +
				    "WHEN SUM(s.snack_price * gs.amount) >= 5000 THEN '회원' " +
				    "ELSE '사용자' " +
				  "END AS 등급 " +
				"FROM get_snack gs, snack s " +
				"WHERE s.snack_name = gs.snack_name " +
				"GROUP BY gs.student_id";
		
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