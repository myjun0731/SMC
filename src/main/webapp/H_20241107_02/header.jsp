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
	width: 100%;
	height: 60px;
	text-align: center;
	background-color: black;
	color: white;
	font-size: 25px;
	line-height: 60px;
}

nav {
	position: fixed;
	top: 60px;
	width: 100%;
	height: 30px;
	background-color: gray;
	color: white;
	line-height: 30px;
	background-color: gray;
}

a {
	padding-left: 20px;
	font-size: 15px;
}
</style>
</head>
<body>
	<header>
		<b>도제 2학년 3반</b>
	</header>
	<nav>
		<a href="insert.jsp">학생명렬표</a> <a href="list.jsp">수강과목신청</a> <a
			href="serch.jsp">과목조회</a> <a href="index.jsp">홈으로</a>
	</nav>
</body>
</html>