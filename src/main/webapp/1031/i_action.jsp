<%@page import="java.sql.PreparedStatement"%>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

try{
	String sql ="SELECT INTO tbl_member VALUES(?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, custno);
	pstmt.setString(2, custname);
	pstmt.setString(3, phone);
	pstmt.setString(4, address);
	pstmt.setString(5, joindate);
	pstmt.setString(6, grade);
	pstmt.setString(7, city);
	
	pstmt.executeQuery();
}catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="list.jsp">
