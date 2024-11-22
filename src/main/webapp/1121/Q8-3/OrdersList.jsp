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
	<h2></h2>
	<table border="1">
		<tr>
			<th>기본키</th>
			<th>회원이름</th>
			<th>상품이름</th>
			<th>구매한시간</th>
			<th>구매수량</th>
			<th>상품상태</th>
		</tr>
		<%
		String sql = 
		
				"SELECT " +
			    "o.order_id AS 기본키, " +
			    "p.name AS 회원이름, " +
			    "p.name AS 상품, " +
			    "o.order_date as 구매한시간, " +
			    "o.quantity AS 수량, " +
			    "o.status AS 상태 " +
			"FROM " +
			    "Orders o, Products p, Orders_Member om " +
			"where o.product_id = p.product_id and om.orders_member_id = o.orders_member_id " +
			"ORDER BY o.order_id";
		
		
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