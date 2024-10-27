<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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