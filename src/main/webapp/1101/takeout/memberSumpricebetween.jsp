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
			<th>음식 이름</th>
			<th>총합 매출</th>
		</tr>

		<%
		String sql = "select f.food_name, to_char(sum(f.price), '999,999')|| '원' " + "from food f, take_out t "
				+ "where f.food_name = t.food_name " + "group by f.food_name " + "having sum(f.price) between 40000 and 50000";

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