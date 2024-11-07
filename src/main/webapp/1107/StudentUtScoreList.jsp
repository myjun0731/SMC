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
.StudentUtScoreList {
	text-decoration: underline;
}
</style>
	<%@include file="Nav.jsp"%>

	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>점수</th>
		</tr>

		<%
		String sql = "select st.student_id, st.korea_name, sc.ui_test, rank() over (order by sc.ui_test desc) "
				+ "from student st, score sc " + "where st.student_id = sc.student_id and sc.ui_test is not null";

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