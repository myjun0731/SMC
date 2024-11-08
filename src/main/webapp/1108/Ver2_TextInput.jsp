<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ut Input</title>
<style>
.AsInput {
	text-decoration: underline;
}
</style>
</head>
<body>
	<form action="Ver2_TextInput_confirm.jsp">
		<table border="1">
			<tr>
				<th>회원아이디</th>
				<td><input type="text" name="member_id"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="제출"></td>
			</tr>
		</table>
	</form>
</body>
</html>