<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="JoinInput_confirm.jsp" name="form">
		<table border="1">

			<tr>
				<th>아이디</th>
				<td><input type="text" name="member_Id" placeholder="ID를 입력"></td>
			</tr>

			<tr>
				<th>내용</th>
				<td><input type="text" name="contents" placeholder="내용을 입력"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="제출"></td>
			</tr>
		</table>
	</form>

	<%
	request.setCharacterEncoding("UTF-8");
	String memberErr = request.getParameter("memberErr");
	if (memberErr != null) {
	%>
	<p style="color: red">
		"<%=memberErr%>" 아이디가 이미 존재함.

		<%
	}
	%>
	
</body>
</html>