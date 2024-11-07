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
.AllScoreList {
	text-decoration: underline;
}
</style>
	<%@include file="Nav.jsp"%>

	<table border="1">
		<tr>
			<th>ui test 시험 본 횟수</th>
			<th>application_sw 시험 본 횟수</th>
			<th>ui test 평균</th>
			<th>ui application_sw 평균</th>
			<th>application_sw 평균 + 버림</th>
		</tr>

		<%
		String sql = "select count(ui_test), count(application_sw), AVG(ui_test), "
				+ "AVG(application_sw), trunc(avg(application_sw),0) from score";

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