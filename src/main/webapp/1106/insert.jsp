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
	top: 80px;
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
</style>
</head>
<body>
	<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp"></jsp:include>

	<section>
		<h2>오디션 등록</h2>
		<form action="i_action" method="post" name="frm">
			<table border="1">
				<tr>
					<th>참가번호</th>
					<td><input type="text" name="artist_id">참가번호는(A000)
						4자리입니다.</td>
				</tr>
				<tr>
					<th>참가자명</th>
					<td><input type="text" name="artist_name"></td>
				</tr>
				<tr>
					<th>생일</th>
					<td><input type="text" name="year">년 <input
						type="text" name="month">월 <input type="text" name="day">일
					</td>
				</tr>

				<tr>
					<th style="text-align: center;">성별</th>

					<td><input type="radio" name="gender" value="1"> 남성 <input
						type="radio" name="gender" value="2">여성</td>
				</tr>

				<tr>
					<th>특기</th>
					<td><select name="talent">
							<option value="">특기선택</option>
							<option value="1">[1]보컬</option>
							<option value="2">[2]댄스</option>
							<option value="3">[3]랩</option>
					</select></td>
				</tr>

				<tr>
					<th style="text-align: center;">소속사</th>
					<td><input type="text" name="agency"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="오디션 등록" onclick="add()">&nbsp; <input
						type="button" value="다시쓰기" onclick="res()"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>