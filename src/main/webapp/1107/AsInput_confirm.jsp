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

	String student_id = request.getParameter("student_id");
	String application_sw = request.getParameter("application_sw");

	String sql = "insert into score values(?,null,? )";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.pstmt.setString(1, student_id);
	jdbc.pstmt.setString(2, application_sw);
	jdbc.pstmt.executeUpdate();

	jdbc.conn.commit();
	jdbc.close();

	response.sendRedirect("StudentAsScoreList.jsp");
	%>

</body>
</html>