<%@page import="java.sql.PreparedStatement"%>
<%@ include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
request.setCharacterEncoding("UTF-8");

String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

try {
	String sql = "INSERT INTO tbl_member values(?,?,?,?,?,?,?)";
	PreparedStatement pstmt = con.prepareStatement(sql);

	request.setString(1, custno);
	request.setString(2, custname);
	request.setString(3, phone);
	request.setString(4, address);
	request.setString(5, joindate);
	request.setString(6, grade);
	request.setString(7, city);
	pstmt.executeQuery();

} catch (Exception e) {
	e.printStackTrace();
}
%>

<jsp:forward page="list.jsp" />