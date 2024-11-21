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
			<th>학번</th>
			<th>시험 본 횟수</th>
		</tr>

		<%
		String sql =
				
		
				"select st.student_id as 학번, count(t.student_id) || '번' as 시험본횟수 " +
				"from student st, test t " +
				"where st.student_id = t.student_id " +
				"group by st.student_id";
		
		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>