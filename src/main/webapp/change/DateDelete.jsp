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

String sql = "delete from text_input where member_id = ?";


JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, member_id);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
response.sendRedirect("DateList.jsp");
%>