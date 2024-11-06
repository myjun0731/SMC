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
	height: 50px;
	text-align: center;
	background-color: black;
	color: white;
	font-size: 20px;
	line-height: 50px;
}

nav {
	position: fixed;
	top: 50px;
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
		<b>오디션 참가 현황</b>
	</header>
	<nav>
		<a href="insert.jsp">오디션등록</a> <a href="list.jsp">참가목록조회</a> <a
			href="score.jsp">멘토접수조회</a> <a href="rank.jsp">참가등수조회</a> <a
			href="index.jsp">홈으로</a>
	</nav>
</body>
</html>