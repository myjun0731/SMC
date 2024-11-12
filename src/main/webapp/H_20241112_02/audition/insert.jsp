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
	top: 100px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

section h2 {
	text-align: center;
	margin: 25px;
}

form {
	justify-content: center;
}

section table {
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>오디션 등록</h2>

		<form action="">
			<table border="1">
				<tr>
					<th>참가번호</th>
					<td><input type="text" name="artist_id">
						*참가번호는(A000)4자리입니다.</td>
				</tr>
				<tr>
					<th>참가자명</th>
					<td><input type="text" name="artist_name"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="year">년 <input
						type="text" name="month">월 <input type="text" name="day">일</td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" name="gender">남성 <input
						type="radio" name="gender">여성</td>
				</tr>
				<tr>
					<th>특기</th>
					<td><select name="talent">
							<option value="">특기선택</option>
							<option value="1">김건우</option>
							<option value="2">김명준</option>
							<option value="3">김시현</option>
					</select></td>
				</tr>
				<tr>
					<th>소속사</th>
					<td><input type="text" name="agency"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="오디션등록"> <input type="button"
						value="다시쓰기"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>