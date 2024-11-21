<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">

<%
request.setCharacterEncoding("UTF-8");
String student_id = request.getParameter("student_id");
String snack_name = request.getParameter("snack_name");
String amount = request.getParameter("amount");
String get_snack_date = request.getParameter("get_snack_date");
String get_snack_id = request.getParameter("get_snack_id");
String sql = "Update get_snack set student_id = ?, snack_name = ?, amount = ?, "
		+ "get_snack_date = to_date(?, 'YYYY-MM-DD HH24:MI') where get_snack_id = ?";
JDBC jdbc = new JDBC();
jdbc.pstmt = jdbc.conn.prepareStatement(sql);
jdbc.pstmt.setString(1, student_id);
jdbc.pstmt.setString(2, snack_name);
jdbc.pstmt.setString(3, amount);
jdbc.pstmt.setString(4, get_snack_date);
jdbc.pstmt.setString(5, get_snack_id);
jdbc.pstmt.executeUpdate();
jdbc.conn.commit();
jdbc.close();

response.sendRedirect("GetSnackList.jsp");
%>