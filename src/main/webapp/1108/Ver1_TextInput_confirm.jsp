<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");
String member_id = request.getParameter("member_id");
String contents = request.getParameter("contents");
String sql = "insert into text_input values(seq_text_input.nextval, ?, ?)";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, member_id);
jdbc.pstmt.setString(2, contents);
jdbc.pstmt.executeUpdate();
jdbc.conn.commit();
jdbc.close();

response.sendRedirect("Ver2_TextInputList.jsp");
%>