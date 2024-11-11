<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	margin: 0;
}

header {
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 60px;
	line-height: 60px;
	background-color: black;
	color: white;
	text-align: center;
	font-size: 20px;
}

nav {
	position: fixed;
	top: 60px;
	left: 0px;
	width: 100%;
	height: 40px;
	line-height: 40px;
	color: white;
	background-color: gray;
	top: 60px;
}

section {
	position: fixed;
	top: 100px;
	left: 0px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

h2 {
	text-align: center;
	margin: 20px;
}

a {
	padding-left: 20px;
}
</style>
</head>
<body>
	<header>
		<b>좌석예약 프로그램</b>
	</header>

	<nav>
		<a href="insert.jsp">근무좌석예약</a> <a href="list.jsp">좌석예약조회</a> <a
			href="index.jsp">홈으로</a>
	</nav>
</body>
</html>