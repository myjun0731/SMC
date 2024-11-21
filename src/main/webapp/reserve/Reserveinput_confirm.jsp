<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
String reserve_id = request.getParameter("reserve_id");
String member_id = request.getParameter("member_id");
String food_name = request.getParameter("food_name");
String open_movie_name = request.getParameter("open_movie_name");

String sql = "insert into reserve_movie values(?, ?, ?, ?)";

JDBC jdbc = new  JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, reserve_id);
jdbc.pstmt.setString(2, member_id);
jdbc.pstmt.setString(3, food_name);
jdbc.pstmt.setString(4, open_movie_name);
jdbc.pstmt.executeQuery();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("ReserveInput.jsp");

%>