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

	<form action="SchoolTimeUpdate_confirm.jsp" name="form">

		<%
		request.setCharacterEncoding("UTF-8");

		String title = request.getParameter("title");
		String sql = "select title, " + "to_char(today_start_time,'YYYY-MM-DD HH24:MI:SS'), "
				+ "to_char(today_lunch_time,'YYYY-MM-DD HH24:MI:SS'), " + "to_char(today_end_time,'YYYY-MM-DD HH24:MI:SS') "
				+ "from school_time where title = ? ";
		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.pstmt.setString(1, title);
		jdbc.rs = jdbc.pstmt.executeQuery();
		jdbc.rs.next();
		%>
		<table border="1">
			<tr>
				<th>날짜</th>
				<td><input type="text" name="title"
					value="<%=jdbc.rs.getString(1)%>" readonly></td>
			</tr>
			<tr>
				<th>조회</th>
				<td><input type="text" name="today_start_time"
					value="<%=jdbc.rs.getString(2)%>"></td>
			</tr>
			<tr>
				<th>점심시간</th>
				<td><input type="text" name="today_lunch_time"
					value="<%=jdbc.rs.getString(3)%>"></td>
			</tr>
			<tr>
				<th>종례</th>
				<td><input type="text" name="today_end_time"
					value="<%=jdbc.rs.getString(4)%>"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="제출"></td>
			</tr>
			<%
			jdbc.close();
			%>
		</table>

	</form>
</body>
</html>