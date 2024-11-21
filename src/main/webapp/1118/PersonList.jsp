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
			<th>생년월일</th>
			<th>만나이</th>
			<th>성별</th>
		</tr>

		<%
		String sql =
				"select p.person_name as 이름, " + "case "
				+ "when SUBSTR(p.jumin_num, 10,1) in ('1','2') then 1900 + substr(p.jumin_num, 3,2) "
				+ "when SUBSTR(p.jumin_num, 10,1) in ('3','4') then 2000 + substr(p.jumin_num, 3,2) "
				+ "end || '년' as 생년, " + "SUBSTR(p.jumin_num, 5, 2) || '월' || SUBSTR(p.jumin_num, 7, 2) || '월' as 월일, "
				+ "case "
				+ "when SUBSTR(p.jumin_num, 10, 1) in ('1','2') then to_char(sysdate, 'YYYY') - (1900 + SUBSTR(p.jumin_num, 3, 2)) "
				+ "when SUBSTR(p.jumin_num, 10, 1) in ('3','4') then to_char(sysdate, 'YYYY') - (2000 + SUBSTR(p.jumin_num, 3, 2)) "
				+ "end 만나이, " + "case " + "when SUBSTR(p.jumin_num, 10, 1) in ('1','3') then '남자' "
				+ "when SUBSTR(p.jumin_num, 10, 1) in ('2','4') then '여자' " + "end as 성별 " + "from person p";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		while (jdbc.rs.next()) {
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%><%=jdbc.rs.getString(3)%></td>
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