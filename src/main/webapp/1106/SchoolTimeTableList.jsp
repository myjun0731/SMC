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
			<th>날짜</th>
			<th>조회</th>
			<th>점심시간</th>
			<th>종례</th>
		</tr>

		<%
		String sql =

				"select title, " + "to_char(today_start_time,'YYYY-MM-DD HH24:MI:SS'), "
				+ "to_char(today_lunch_time,'YYYY-MM-DD HH24:MI:SS'), "
				+ "to_char(today_end_time,'YYYY-MM-DD HH24:MI:SS') " + "from school_time ";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>
		<tr>
			<td><a
				href="SchoolTimeUpdate.jsp?title=<%=jdbc.rs.getString(1)%>"><%=jdbc.rs.getString(1)%></a></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=jdbc.rs.getString(4)%></td>

		</tr>
		<%
		}
		jdbc.rs.close();
		%>
	</table>
</body>
</html>