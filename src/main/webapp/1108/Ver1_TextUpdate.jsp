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

	<form action="Ver1_TextUpdate_confirm.jsp">
		<%
		request.setCharacterEncoding("UTF-8");
		String text_input_id = request.getParameter("text_input_id");
		String sql = "select text_input_id, member_id, contents from text_input where text_input_id =? ";
		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.pstmt.setString(1, text_input_id);
		jdbc.rs = jdbc.pstmt.executeQuery();
		jdbc.rs.next();
		%>
		<table border="1">
			<tr>
				<th>기본키</th>
				<td><input type="text" name="text_input_id"
					value="<%=jdbc.rs.getString(1)%>" readonly></td>
			</tr>
			<tr>
				<th>회원아이디</th>
				<td><input type="text" name="member_id"
					value="<%=jdbc.rs.getString(2)%>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="contents"
					value="<%=jdbc.rs.getString(3)%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정"></td>
			</tr>
		</table>
	</form>
</body>
</html>