<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section {
	position: fixed;
	top: 90px;
	left: 0px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

h2 {
	text-align: center;
	margin: 20px;
}

p {
	padding-left: 18px;
}

form {
	display: flex;
	align-items: center;
	justify-content: center;
}

table {
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>과목 목록</h2>

		<table border="1">
			<tr>
				<th>과목번호</th>
				<th>과목명</th>
				<th>이수여부</th>
			</tr>
			<tr>
				<th>1</th>
				<td>화면구현</td>
				<td>pass</td>
			</tr>
			<tr>
				<th>2</th>
				<td>프로그래밍언어응용</td>
				<td>pass</td>
			</tr>
			<tr>
				<th>3</th>
				<td>프로그래밍언어활용</td>
				<td>pass</td>
			</tr>
			<tr>
				<th>4</th>
				<td>개발자환경구축</td>
				<td>pass</td>
			</tr>
			<tr>
				<th>5</th>
				<td>응용SW기초기술활용</td>
				<td>ing...</td>
			</tr>
			<tr>
				<th>6</th>
				<td>애플리케이션테스트수행</td>
				<td>ing...</td>
			</tr>
			<tr>
				<th>7</th>
				<td>UI테스트</td>
				<td>ing...</td>
			</tr>
			<tr>
				<th>8</th>
				<td>DB구현</td>
				<td>예정</td>
			</tr>
		</table>
</body>
</html>