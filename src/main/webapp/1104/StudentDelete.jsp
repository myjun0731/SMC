<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
String student_name = request.getParameter("student_name");

String sql = "delete student where student_name = ?";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, student_name);
jdbc.pstmt.executeQuery();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("StudentList.jsp");
%>