
<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");

String korea_name = request.getParameter("korea_name");
int student_num = Integer.parseInt(request.getParameter("student_num"));
String birth_date = request.getParameter("birth_date");
String blood_type = request.getParameter("blood_type");

String sql = "insert into ex_date values(?, ?, TO_DATE(?, 'YYYYMMDD'), ?)";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, korea_name);
jdbc.pstmt.setInt(2, student_num);
jdbc.pstmt.setString(3, birth_date);
jdbc.pstmt.setString(4, blood_type);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
jdbc.conn.close();

response.sendRedirect("ExDataInput.jsp");
%>