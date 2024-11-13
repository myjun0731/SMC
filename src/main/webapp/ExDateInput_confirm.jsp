<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
String korea_name = request.getParameter("korea_name");
int student_num = Integer.parseInt(request.getParameter("student_num"));
String dirth_date = request.getParameter("birth_date");
String blood_type = request.getParameter("blood_type");

String sql = "insert into ex_date values(?, ?, to_date(?, 'YYYYMMDD'), ?)";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, korea_name);
jdbc.pstmt.setInt(2, student_num);
jdbc.pstmt.setString(3, dirth_date);
jdbc.pstmt.setString(4, blood_type);
jdbc.conn.commit();
jdbc.pstmt.executeQuery();
jdbc.conn.close();

response.sendRedirect("ExDateList.jsp");
%>