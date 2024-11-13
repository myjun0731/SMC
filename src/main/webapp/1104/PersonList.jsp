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
			<th>이름</th>
			<th>생일</th>
			<th>혈액형</th>
			<th>학교이름</th>
		</tr>

		<%
		String sql = "select p.person_name, to_char(p.birth_date,'YYYY-MM-DD'), p.blood_type, " + "case "
				+ "when s.school_name is not null then s.school_name " + "else '졸업' end "
				+ "from person p left outer join student s " + "on p.person_name = s.student_name ";

		JDBC JDBC = new JDBC();
		JDBC.pstmt = JDBC.conn.prepareStatement(sql);
		JDBC.rs = JDBC.pstmt.executeQuery();

		while (JDBC.rs.next()) {
		%>

		<tr>
			<td><%=JDBC.rs.getString(1)%></td>
			<td><%=JDBC.rs.getString(2)%></td>
			<td><%=JDBC.rs.getString(3)%></td>
			<td><%=JDBC.rs.getString(4)%></td>
		</tr>
		<%
		}
		%>

		<%
		JDBC.close();
		%>
	</table>
</body>
</html>