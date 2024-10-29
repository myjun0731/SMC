<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
request.setCharacterEncoding("UTF-8");
String member_id = request.getParameter("member_id");
String contents = request.getParameter("contents");

String sql = "UPDATE text_input SET contents=? WHERE member_id=?";

JDBC jdbc = new JDBC();
if ("member_id".equals(null)){
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.pstmt.setString(1, contents);
	jdbc.pstmt.setString(2, member_id);
	jdbc.pstmt.executeUpdate();
	response.sendRedirect("DateList.jsp");
} else {
	request.setAttribute("LoginErrMsg", "(필수 작성란)");
	request.getRequestDispatcher("DateUpdate.jsp").forward(request, response);
	
	
}
jdbc.conn.commit();
%>