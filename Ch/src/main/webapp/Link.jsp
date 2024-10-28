<%@page import="common.DBConnPool"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="common.JDBConnect"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="Chapter0.jsp">
	<table border="1">

		<%
		DBConnPool pool = new DBConnPool();
		String sql = "select id, pass from userlist";
		Statement stmt = pool.con.createStatement();

		// 쿼리수행
		ResultSet rs = stmt.executeQuery(sql);
		%>
		<tr>
			<td align="center">ID</td>
			<td align="center">PW</td>
		<tr>
			<%
			while (rs.next()) {
				String id = rs.getString(1);
				String pass = rs.getString(2);
			%>
		
		<tr>
			<td align="center">
				<%
				out.println(String.format("%s", id));
				%>
			</td>
			<td align="center">
				<%
				out.println(String.format("%s", pass));
				%>
			</td>
		<tr>

			<%
			}
			%>
		
	</table>
	<input type="submit" value="등록"> <a href="out.jsp">Clear</a>
</form>