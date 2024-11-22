<%@page import="study.JDBC"%>
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
	String sql ="SELECT member_id, contents FROM text_input";
	
	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
%>
	<table border="1">
	
	<tr>
	<th>아이디</th>
	<th>내용</th>
	<th colspan="2">제거/변경</th>
	</tr>
	
	<%while(jdbc.rs.next()){ %>
	<tr>
	<td><%=jdbc.rs.getString(1) %></td>
	<td><%=jdbc.rs.getString(2) %></td>
	<td><a style="text-decoration-line: none; color: black;" href="DateDelete.jsp?member_id=<%=jdbc.rs.getString(1) %>">제거</a>
	<td><a style="text-decoration-line: none; color: black;" href="DateUpdate.jsp?member_id=<%=jdbc.rs.getString(1) %>">변경</a>
	</tr>
	<%} %>
	</table>
</body>
</html>