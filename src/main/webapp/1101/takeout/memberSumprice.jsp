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
			<th>아이디</th>
			<th>닉네임</th>
			<th>총합 금액</th>
		</tr>

		<%
		String sql = "select t.member_id, m.member_name, to_char(sum(f.price), '999,999') || '원' "
				+ "from member m, take_out t, food f " + "where m.member_id = t.member_id and f.food_name = t.food_name "
				+ "group by t.member_id, m.member_name " + "order by t.member_id";

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
	</table>
</body>
</html>