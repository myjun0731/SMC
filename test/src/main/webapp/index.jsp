<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>position</title>

<style>
* {
	box-sizing: border-box;
	margin: 0;
}

header {
	position: fixed;
	width: 100%;
	height: 50px;
	background-color: #4C4556;
}

nav {
	position: fixed;
	top: 50px;
	width: 100%;
	height: 30px;
	background-color: #872642;
	line-height: 30px;
}

a {
	margin-right: 10px;
	color: black;
}

section {
	position: fixed;
	top: 80px;
	width: 100%;
	height: 100%;
	background-color: #F6C026;
}

footer {
	position: fixed;
	bottom: 0px;
	width: 100%;
	height: 50px;
	background-color: #A0D3F9;
}
</style>

</head>
<body>

	<jsp:include page="Header.jsp"></jsp:include>
	<jsp:include page="Header.jsp"></jsp:include>
	<jsp:include page="Section.jsp"></jsp:include>
	<jsp:include page="Nav.jsp"></jsp:include>
	<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>