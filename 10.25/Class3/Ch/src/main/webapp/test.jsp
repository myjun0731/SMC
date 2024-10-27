<%@page import="common.DBConnPool"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	DBConnPool pool = new DBConnPool();
	pool.close();
	%>
</body>
</html>