<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
th {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

a {
	margin-left: 40%;
}

h2 {
	text-align: center;
}
</style>
</head>
<body>
	<h2>수강신청</h2>
	<form action="">
		<table border="1">
			<tr>
				<th>수강일</th>
				<td><input type="text" name="date">예)202203</td>
			</tr>
			<tr>
				<th>회원명</th>
				<td><input type="text" name="member_name"></td>
			</tr>
			<tr>
				<th>회원번호</th>
				<td><input type="text" name="member_num"></td>
			</tr>
			<tr>
				<th>강의장소</th>
				<td><input type="radio" value="서울본원">서울본원 <input
					type="radio" value="성남분원">성남분원 <input type="radio"
					value="대전분원">대전분원 <input type="radio" value="부산분원">부산분원
					<input type="radio" value="대구분원">대구분원</td>

			</tr>
			<tr>
				<th>강의명</th>
				<td><input type="text" name="class_name"></td>
			</tr>
			<tr>
				<th>수강료</th>
				<td><input type="text" name="class_mn">원</td>
			</tr>
			<tr>
				<td colspan="2"><a><input type="submit" value="수강신청"
						class="in"><input type="submit" value="다시쓰기"></a></td>
			</tr>
		</table>
	</form>
</body>
</html>