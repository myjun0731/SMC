<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");
String goods_cd = request.getParameter("goods_cd");
String goods_nm = request.getParameter("goods_nm");
String goods_price = request.getParameter("goods_price");
String cost = request.getParameter("cost");
String in_date = request.getParameter("indate");
String sql = "update tbl_goods_01 set goods_nm = ?, goods_price = ?, cost = ?, in_date= ? where goods_cd = ?";

JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, goods_nm);
jdbc.pstmt.setString(2, goods_price);
jdbc.pstmt.setString(3, cost);
jdbc.pstmt.setString(4, in_date);
jdbc.pstmt.setString(5, goods_cd);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("GoodsList.jsp");
%>