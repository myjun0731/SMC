<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Request_confirm.jsp">

		<table border="1">
			<tr>
				<th>아이디</th>
				<%
				if (session.getAttribute("") == null){
					
				}
				%>

			</tr>

		</table>
	</form>
</body>
</html>