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
		<h2>학생명렬표</h2>

		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th style="padding-left: 120px; padding-right: 120px;">너의 장점은?</th>
			</tr>
			<tr>
				<th>1</th>
				<td>김건우</td>
				<td>침착하다.</td>
			</tr>
			<tr>
				<th>2</th>
				<td>김명준</td>
				<td>모르겠다.</td>
			</tr>
			<tr>
				<th>3</th>
				<td>김시현</td>
				<td>문제해결능력이 뛰어나다.</td>
			</tr>
			<tr>
				<th>4</th>
				<td>김유민</td>
				<td>완벽하다.</td>
			</tr>
			<tr>
				<th>5</th>
				<td>김인혁</td>
				<td>게임 많이 한다.</td>
			</tr>
			<tr>
				<th>6</th>
				<td>박소원</td>
				<td>자신의 신념이 강하다.</td>
			</tr>
			<tr>
				<th>7</th>
				<td>서찬유</td>
				<td>친화력이 강하다.</td>
			</tr>
			<tr>
				<th>8</th>
				<td>손예성</td>
				<td>말을 잘 들어준다.</td>
			</tr>
			<tr>
				<th>9</th>
				<td>오은혁</td>
				<td>FPS 장르의 게임을 잘한다.</td>
			</tr>
			<tr>
				<th>10</th>
				<td>이동환</td>
				<td>시간 약속을 잘 지킨다.</td>
			</tr>
			<tr>
				<th>11</th>
				<td>전민수</td>
				<td>알고있는건 확실히 잘한다.</td>
			</tr>
			<tr>
				<th>12</th>
				<td>최 율</td>
				<td>노력을 잘한다.</td>
			</tr>
		</table>
	</section>
</body>
</html>