<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: 0px;
	margin: 0px;
}

header {
	position: fixed;
	top: 0px;
	width: 100%;
	height: 60px;
	background-color: black;
	text-align: center;
	font-size: 20px;
	color: white;
	line-height: 60px;
}

nav {
	position: fixed;
	top: 60px;
	width: 100%;
	height: 40px;
	background-color: gray;
	color: white;
	line-height: 40px;
}

a {
	padding-left: 20px;
}
</style>
</head>
<body>
	<header>
		<b>오디션 참가 현황 20302</b>
	</header>

	<nav>
		<a href="insert.jsp">오디션등록</a> <a href="list.jsp">참가자목록조회</a> <a
			href="score.jsp">멘토접수조회</a> <a href="rank.jsp">참가자등수조회</a> <a
			href="index.jsp">홈으로</a>
	</nav>
</body>
</html>