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
		</tr>

		<%
		String sql = "select distinct m.member_id, m.member_name " + "from member m, food f, take_out t "
				+ "where m.member_id = t.member_id " + "and f.food_name = t.food_name order by m.member_id";

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