<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
String student_name = request.getParameter("student_name");
String student_num = request.getParameter("student_num");
String school_name = request.getParameter("school_name");

String sql = "insert into student values(?, ?, ?)";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, student_name);
jdbc.pstmt.setString(2, student_num);
jdbc.pstmt.setString(3, school_name);
jdbc.pstmt.executeQuery();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("StudentInput.jsp");
%>