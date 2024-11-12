<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");
String sale_no = request.getParameter("sale_no");
String sale_ymd = request.getParameter("sale_ymd");
String sale_fg = request.getParameter("sale_fg");
String store_cd = request.getParameter("store_cd");
String goods_cd = request.getParameter("goods_cd");
String sale_cnt = request.getParameter("sale_cnt");
String pay_type = request.getParameter("pay_type");
String sql = "insert into sale_tbl_003 values(?,to_date(?,'YYYYMMDD'),?,?,?,?,?)";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, sale_no);
jdbc.pstmt.setString(2, sale_ymd);
jdbc.pstmt.setString(3, sale_fg);
jdbc.pstmt.setString(4, store_cd);
jdbc.pstmt.setString(5, goods_cd);
jdbc.pstmt.setString(6, sale_cnt);
jdbc.pstmt.setString(7, pay_type);
jdbc.pstmt.executeUpdate();

jdbc.conn.commit();
jdbc.close();

response.sendRedirect("storeAllList.jsp");
%>