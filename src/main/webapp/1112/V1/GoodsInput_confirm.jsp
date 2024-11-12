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
String goods_cost = request.getParameter("goods_cost");
String in_date = request.getParameter("in_date");
String sql = "insert into tbl_goods_01 values(?,?,?,?, to_date(?,'YYYY-MM-DD'))";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, goods_cd);
jdbc.pstmt.setString(2, goods_nm);
jdbc.pstmt.setString(3, goods_price);
jdbc.pstmt.setString(4, goods_cost);
jdbc.pstmt.setString(5, in_date);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("GoodsList.jsp");
%>