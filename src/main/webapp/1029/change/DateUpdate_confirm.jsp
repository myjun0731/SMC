<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
String member_id = request.getParameter("member_id");
String contents = request.getParameter("contents");

String sql ="UPDATE text_input SET contents=? WHERE member_id=?";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, contents);
jdbc.pstmt.setString(2, member_id);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
response.sendRedirect("DataList.jsp");
%>
