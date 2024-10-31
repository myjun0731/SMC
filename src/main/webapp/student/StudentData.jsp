
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
	<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String sql = "SELECT id, korea_name FROM member WHERE id=?";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.pstmt.setString(1, id);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>
	<%
	if (jdbc.rs.next()) {
	%>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
		</tr>

		<tr>
			<th><%=jdbc.rs.getString(1)%></th>
			<th><%=jdbc.rs.getString(2)%></th>
		</tr>
	</table>
	<%
	} else {
	%>
	<p>
		<b>'<%=id%>'
		</b>학번을 가진 학생이 없음.
	</p>
	<%
	}
	jdbc.close();
	%>
	<a href="StudentFind.jsp">돌아가기</a>
</body>
</html>