<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");

String person_name = request.getParameter("person_name");
String person_date = request.getParameter("person_date");
String blood_type = request.getParameter("blood_type");

String sql = "insert into person values(?, to_date(?, 'YYYY-MM-DD'),?)";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, person_name);
jdbc.pstmt.setString(2, person_date);
jdbc.pstmt.setString(3, blood_type);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
jdbc.close();
response.sendRedirect("PersonList.jsp");
%>