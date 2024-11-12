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
	margin: 0;
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

section {
	position: fixed;
	top: 100px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

section h2 {
	text-align: center;
	margin: 25px;
}

section table {
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>홈쇼핑 회원 등록</h2>

		<form action="">
			<table border="1">
				<tr>
					<th>회원번호</th>
					<td><input type="text" name="custno"></td>
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="adress"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<th>고객등급[A:VIP, B:CM, C:WK]</th>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city"></td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="등록"> <input type="button"
						value="다시쓰기"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>