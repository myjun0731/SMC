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
			<th>시험 날짜</th>
			<th>시험명</th>
			<th>수학 1등점수</th>
			<th>국어 1등점수</th>
			<th>영어 1등점수</th>
			<th>한국사 1등점수</th>
			<th>과학 1등점수</th>
		</tr>

		<%
		String sql = "SELECT TO_CHAR(test_date, 'YYYY-MM-DD'), test_name, MAX(math), MAX (korean), MAX(english), MAX (history), MAX(science) "
				+ "FROM test t " + "GROUP BY test_date, test_name";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();

		while (jdbc.rs.next()) {
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=jdbc.rs.getString(4)%></td>
			<td><%=jdbc.rs.getString(5)%></td>
			<td><%=jdbc.rs.getString(6)%></td>
			<td><%=jdbc.rs.getString(7)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	
</body>
</html>