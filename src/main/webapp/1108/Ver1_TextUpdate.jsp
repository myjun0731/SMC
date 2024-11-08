<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ut Input</title>

</head>
<body>

	<%
	JDBC jdbc = new JDBC();
	%>
	<form action="Ver1_TextUpdate_confirm.jsp">
		<table border="1">
			<tr>
				<th>회원아이디</th>
				<td><input type="text" name="member_id"
					readonly="<%=jdbc.rs.getString(2)%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"
					readonly="<%=jdbc.rs.getString(3)%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
</body>
</html>