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
	<style>
* {
	box-sizing: border-box;
	margin: 0;
}

section {
	position: fixed;
	top: 80px;
	background-color: gray;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
}

table {
	margin-top: 30px;
	width: 500px;
	height: 100px;
	background-color: white;
}
</style>

	<section>
		<table border="1">
			<tr>
				<th>이름</th>
				<th>생일</th>
				<th>혈액형</th>
			</tr>

			<%
			String sql = "select person_name, to_char(birth_date, 'YYYYMMDD'), " + "blood_type from person";

			JDBC jdbc = new JDBC();
			jdbc.pstmt = jdbc.conn.prepareStatement(sql);
			jdbc.rs = jdbc.pstmt.executeQuery();

			while (jdbc.rs.next()) {
			%>
			<tr>
				<td><%=jdbc.rs.getString(1)%></td>
				<td><%=jdbc.rs.getString(2)%></td>
				<td><%=jdbc.rs.getString(3)%></td>
			</tr>

			<%
			}
			jdbc.close();
			%>
		</table>
	</section>
</body>
</html>