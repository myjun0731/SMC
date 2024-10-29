<%@page import="study.JDBC"%>
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
	String sql = "SELECT member_id, contents FROM text_input";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>

	<table border="1">
		<tr>
			<th>아이디</th>
			<th>내용</th>
			<th colspan="2">메뉴</th>
		</tr>

		<%
		while (jdbc.rs.next()) {
		%>
		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>

			<td><input type="submit" value="제거"
				onclick="location.href='DateDelete.jsp?member_id=<%=jdbc.rs.getString(1)%>'" />
			<td><input type="submit" value="변경"
				onclick="location.href='DateUpdate.jsp?member_id=<%=jdbc.rs.getString(1)%>'" /></td>

			<%
			}
			%>
		</tr>

		<tr>
			<td colspan="4"><input type="submit" value="가입"
				onclick="location.href='./JoinInput.jsp'" /></td>
		</tr>



	</table>
</body>
</html>