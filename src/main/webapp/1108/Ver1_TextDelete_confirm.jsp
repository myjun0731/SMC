<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");
String text_input_id = request.getParameter("text_input_id");
String sql = "delete from text_input where text_input_id = ?";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, text_input_id);
jdbc.pstmt.executeQuery();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("Ver2_TextInputList.jsp");
%>