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
	<style>
.StudentList {
	text-decoration: underline;
}
</style>
	<%@include file="Nav.jsp"%>

	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>학년</th>
		</tr>

		<%
		String sql = "select student_id, korea_name, " + "decode(substr(student_id,1,1),1, '1학년',2,'2학년',3,'3학년','졸업') "
				+ "from student";

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