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
			<th>학번</th>
			<th>전체평균</th>
			<th>등급</th>
		</tr>

		<%
		String sql = "SELECT TO_CHAR(test_date, 'YYYY-MM-DD'), test_name, student_id, (math + korean + english + history + science) / 5 FROM test";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();

		while (jdbc.rs.next()) {
			int allavg = jdbc.rs.getInt(4);
			String grade = null;

			if (allavg >= 90)
				grade = "A등급";
			else if (allavg >= 70)
				grade = "B등급";
			else if (allavg >= 50)
				grade = "C등급";
			else
				grade = "F등급";
		%>
		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=jdbc.rs.getString(4)%></td>
			<td><%=grade%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	
</body>
</html>