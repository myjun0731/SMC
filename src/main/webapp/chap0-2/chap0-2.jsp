<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<form action="chap-02_confirm.jsp" name="form">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" required></td>
			</tr>

			<tr>
				<td>내용</td>
				<td><input type="text" name="contents" required></td>
			</tr>
			<tr>
			<td> <input type="submit" value="제출"> </td>
			</tr>
		</table>

	</form>
</body>
</html>