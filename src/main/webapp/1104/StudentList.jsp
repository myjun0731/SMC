<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
select {
	width: 100%;
}

input {
width: 100%;
}
</style>

</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String get_id_sql2 = "select * from student";
	%>

	<form action="StudentInput.jsp" name="form">
		<table border="1">
			<tr>
				<th>이름</th>
				<th>학번</th>
				<th>학교명</th>
				<th>삭제</th>
			</tr>
			<%
			JDBC JDBC = new JDBC();
			JDBC.pstmt = JDBC.conn.prepareStatement(get_id_sql2);
			JDBC.rs = JDBC.pstmt.executeQuery();

			while (JDBC.rs.next()) {
			%>

			<tr>
				<td><%=JDBC.rs.getString(1)%></td>
				<td><%=JDBC.rs.getString(2)%></td>
				<td><%=JDBC.rs.getString(3)%></td>
				<td><input type="button" value="삭제"
					onclick="location.href='./StudentDelete.jsp?student_name=<%=JDBC.rs.getString(1)%>'" /></td>
			</tr>
			<%
			}
			%>

			<%
			JDBC.close();
			%>
			<tr>
				<td colspan="4"><input type="submit" value="추가" id="in" /> <input
					type="button" value="전체삭제" id="in"
					onclick="location.href='StudentDelete2.jsp'" /></td>
			</tr>
		</table>
	</form>
</body>
</html>