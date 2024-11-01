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
		request.setCharacterEncoding("UTF-8");
		String member_name = request.getParameter("member_name");
		String sql = "select member_id, member_name " + "from member " + "where member_name like ? ";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.pstmt.setString(1, "%" + member_name + "%");

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
	<a href="MemberNameInput.jsp">다시 검색</a>
</body>
</html>