<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ut Input</title>
<style>
.UtInput {
	text-decoration: underline;
}
</style>
</head>
<body>
	<%@include file="Nav.jsp"%>
	<form action="AsInput_confirm.jsp">
		<table border="1">
			<tr>
				<th>학번</th>
				<td><input type="text" name="student_id"></td>
			</tr>
			<tr>
				<th>application_sw 점수</th>
				<td><input type="text" name="application_sw"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="제출"></td>
			</tr>
		</table>
	</form>
</body>
</html>