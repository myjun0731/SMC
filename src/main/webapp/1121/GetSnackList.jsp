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

<h2>Get Snack List</h2>
	<table border="1">
		<tr>
			<th>기본키</th>
			<th>학번</th>
			<th>간식 이름</th>
			<th>구입한 수량</th>
			<th>구매한 시간</th>
		</tr>

		<%
		String sql = "select gs.get_snack_id, gs.student_id, gs.snack_name, "
				+ "gs.amount, to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI') " + "from get_snack gs";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>
		
		<tr>
			<td><input type="button"
				onclick="location.href='GetSnackUpdate.jsp?get_snack_id=<%=jdbc.rs.getString(1)%>'" value="<%=jdbc.rs.getString(1)%>">
			</td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=jdbc.rs.getString(4)%></td>
			<td><%=jdbc.rs.getString(5)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>