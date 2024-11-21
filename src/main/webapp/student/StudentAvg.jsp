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
	<%
	String sql = "select " + "m.korea_name, " + "SUBSTR(m.id, 1, 1), " + "SUM(s.ui_test + s.application_sw) / 2 AS simple, "
			+ "SUM(s.ui_test + s.application_sw) / (COUNT(ui_test) + COUNT(application_sw)) AS prefer "
			+ "FROM member m, score s " + "WHERE m.id = s.id " + "group by m.id, m.korea_name";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>학년</th>
			<th>간단한 방법</th>
			<th>선호하는 방법</th>
		</tr>
		<%
		while (jdbc.rs.next()) {
			String student_level = null;
			if (jdbc.rs.getString(2).equals("2"))
				student_level = "2 학년";
			else if (jdbc.rs.getString(2).equals("3"))
				student_level = "3 학년";
			else if (jdbc.rs.getString(2).equals("4"))
				student_level = "4 학년";
		%>
		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=student_level%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=jdbc.rs.getString(4)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>