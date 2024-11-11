<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	box-sizing: border-box;
	margin: 0;
}

section {
	position: fixed;
	top: 80px;
	width: 100%;
	height: 100%;
	background-color: Darkgray;
	display: flex;
	align-items: center;
	flex-direction: column;
}

section h3 {
	margin: 20px 30px;
}

section table {
	width: 800px;
	height: max-content;
	background-color: white;
}

th, td {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%@ include file="Nav.jsp"%>
</body>
</html>