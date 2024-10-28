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
	<form action="Chapter0-list.jsp">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="ID"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="text" name="PW"></td>
			</tr>

			<tr>
				<td bordercolor="2"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>