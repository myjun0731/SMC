<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2></h2>
	<table border="1">
		<tr>
			<th>상품기본키값</th>
			<th>상품이름</th>
			<th>배송중총매출</th>
			<th>주문완료총매출</th>
			<th>배송완료총매출</th>
			<th>주문취소총합</th>
			<th>총합</th>
			<th>주문취소제외총매출</th>
		</tr>
		<%
		String sql =

				"SELECT " + "P.product_id AS 상품기본키값, " + "P.name AS 상품이름, "
				+ "SUM(CASE WHEN O.status = '배송중' THEN P.price * O.quantity ELSE 0 END) || '원' AS 배송중총매출, "
				+ "SUM(CASE WHEN O.status = '주문완료' THEN P.price * O.quantity ELSE 0 END) || '원' AS 주문완료총매출, "
				+ "SUM(CASE WHEN O.status = '배송완료' THEN P.price * O.quantity ELSE 0 END) || '원' AS 배송완료총매출, "
				+ "SUM(CASE WHEN O.status = '주문취소' THEN P.price * O.quantity ELSE 0 END) || '원' AS 주문취소총매출, "
				+ "SUM(P.price * O.quantity) || '원' AS 총합 " + "FROM Products P "
				+ "JOIN Orders O ON P.product_id = O.product_id " + "GROUP BY P.product_id, P.name "
				+ "ORDER BY P.product_id";

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