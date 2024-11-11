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
	top: 120px;
	left: 0px;
	width: 100%;
	height: 100%;
	background-color: lightblue;
	text-align: center;
	align-items: center;
}

form {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

h2 {
	margin: 20px;
}
</style>
</head>
<body>
	<jsp:include page="h_20302.jsp"></jsp:include>

	<section>
		<h2>홈쇼핑 회원 등록</h2>
		<form action="i_action">
			<table border="1">
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
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<th>고객등급<br>[A:VIP,B:CM,C:WK]
					</th>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록">
						&nbsp; <input type="submit" value="다시쓰기"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>