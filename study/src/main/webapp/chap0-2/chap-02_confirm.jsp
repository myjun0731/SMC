<%@page import="common.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
JDBC jdbc = new JDBC();
String id = request.getParameter("id");
String contents = request.getParameter("contents");

String sql = "insert into text_input values(?, ?)";

jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, id);
jdbc.pstmt.setString(2, contents);
jdbc.pstmt.executeUpdate();
jdbc.conn.commit();
jdbc.close();
%>