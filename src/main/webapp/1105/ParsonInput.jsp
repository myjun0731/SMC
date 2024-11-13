<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<style>
* {
	box-sizing: border-box;
	margin: 0;
}

section {
	position: fixed;
	top: 80px;
	background-color: gray;
	width: 100%;
	height: 100%;
}

form {
	display: flex;
	justify-content: center;
}

table {
	margin-top: 30px;
	width: 500px;
	height: 100px;
	background-color: white;
}
</style>

	<section>
		<form action="PersonInput_confirm.jsp" name="form">
			<table border="1">
				<tr>
					<th>이름</th>
					<td><input type="text" name="person_name"> ex)김명준</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="person_date">
						ex)2007-07-31</td>
				</tr>

				<tr>
					<th>혈액형</th>
					<td><input type="radio" value="A" name="blood_type">A
						<input type="radio" value="B" name="blood_type">B <input
						type="radio" value="O" name="blood_type">O <input
						type="radio" value="D" name="blood_type">AB</td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="제출"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>