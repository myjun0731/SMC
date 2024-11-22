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
				<td><input type="text" name="member_Id"></input></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"></input></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="제출"
					onclick="update()" /></td>
			</tr>
		</table>
	</form>
	<%
	request.setCharacterEncoding("UTF-8");
	String memberErr = request.getParameter("memberErr");
	if(memberErr != null){%>
	
	<p style="color: red;">'<%=memberErr %>'이미 있어 ㅋ</p>
	<% 
		
	}
	%>
</body>
</html>