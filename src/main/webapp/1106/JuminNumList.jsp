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
			<th>주민등록번호 DB값</th>
			<th>주민등록번호 형식</th>
			<th>주민등록번호 7번째 값</th>
			<th>성별</th>
		</tr>

		<%
		request.setCharacterEncoding("UTF-8");

		String sql = "select korea_name, jumin_num, " + "substr(jumin_num, 1,6), substr(jumin_num,7), "
				+ "substr(jumin_num, 7,1), " + "case " + "when substr(jumin_num, 7, 1) in (9,1,3,5,7) then '남자' "
				+ "when substr(jumin_num, 7, 1) in (0,2,4,6,8) then '여자' " + "else '오류' end " + "from jumin";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%>-<%=jdbc.rs.getString(4)%></td>
			<td><%=jdbc.rs.getString(5)%></td>
			<td><%=jdbc.rs.getString(6)%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>