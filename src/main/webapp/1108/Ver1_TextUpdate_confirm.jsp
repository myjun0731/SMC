<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");
String member_id = request.getParameter("member_id");
String contents = request.getParameter("contents");
String text_input_id = request.getParameter("text_input_id");
String sql = "update text_input set member_id = ?, contents = ? where text_input_id=?";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, member_id);
jdbc.pstmt.setString(2, contents);
jdbc.pstmt.setString(3, text_input_id);
jdbc.pstmt.executeQuery();
jdbc.conn.commit();
jdbc.close();

response.sendRedirect("Ver1_TextInputList.jsp");
%>