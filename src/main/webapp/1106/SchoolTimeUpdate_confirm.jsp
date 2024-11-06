<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
p

request.setCharacterEncoding("UTF-8");

String today_start_time = request.getParameter("today_start_time");
String today_lunch_time = request.getParameter("today_lunch_time");
String today_end_time = request.getParameter("today_end_time");
String title = request.getParameter("title");
String sql = "update school_time set " + "today_start_time = to_date(?, 'YYYY-MM-DD HH24:MI:SS'), "
		+ "today_lunch_time = to_date(?, 'YYYY-MM-DD HH24:MI:SS'), "
		+ "today_end_time = to_date(?, 'YYYY-MM-DD HH24:MI:SS') " + "where title = ? ";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, today_start_time);
jdbc.pstmt.setString(2, today_lunch_time);
jdbc.pstmt.setString(3, today_end_time);
jdbc.pstmt.setString(4, title);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("SchoolTimeTableList.jsp");
%>