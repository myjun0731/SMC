<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>기본키</th>
			<th>회원 아이디</th>
			<th>내용</th>
			<th></th>
		</tr>

		<%
		String sql = "select text_input_id, member_id, contents from text_input";
		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>
		<tr>
			<td><a
				href="Ver1_TextUpdate.jsp?text_input_id=<%=jdbc.rs.getString(1)%>"><%=jdbc.rs.getString(1)%></a></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><input type="button" value="값 삭제"
				onclick="location.href='Ver1_TextDelete_confirm.jsp?text_input_id=<%=jdbc.rs.getString(1)%>'"></td>
		</tr>
		<%
		}
		jdbc.close();
		%>

		<tr>
			<td colspan="4"><input type="button" value="값 입력"
				onclick="location.href='Ver1_TextInput.jsp'"></td>
		</tr>
	</table>
</body>
</html>