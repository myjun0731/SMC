<%@page import="java.sql.PreparedStatement"%>
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
	request.setCharacterEncoding("UTF-8");

	JDBC jdbc = new JDBC();

	String member_id = request.getParameter("member_id");

	String sql = "delete from text_input where member_id = (?)";
	PreparedStatement psmt = jdbc.conn.prepareStatement(sql);
	psmt.setString(1, member_id);

	int inResult = psmt.executeUpdate();

	jdbc.close();

	response.sendRedirect("DataList.jsp");
	%>
	
</body>
</html>