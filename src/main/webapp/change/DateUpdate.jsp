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
	request.setCharacterEncoding("UTF-8");
	String member_id = request.getParameter("member_id");
	if (request.getAttribute("LoginErrMsg") == null) {
		request.setAttribute("LoginErrMsg", " ");
	}
	String sql = "SELECT member_id, contents FROM text_input WHERE member_id=?";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.pstmt.setString(1, member_id);
	jdbc.rs = jdbc.pstmt.executeQuery();

	%>

	<form action="DateUpdate_confirm.jsp" name="form">
		<table border="1">
			<%
			while (jdbc.rs.next()) {
			%>

			<tr>
				<td><input type="text" name="member_id" readonly
					value="<%=jdbc.rs.getString(1)%>"></td>
				<td><input type="text" name="contents"
					value="<%=jdbc.rs.getString(2)%>" placeholder="<%=request.getAttribute("LoginErrMsg")%>"></td>
			</tr>
			<%
			}
			%>

			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>

	</form>
</body>
</html>