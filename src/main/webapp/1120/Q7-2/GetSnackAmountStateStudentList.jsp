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
	<h2>구매한 수량에 따라 구매한 학생의 상태 출력하기</h2>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>구매수량</th>
			<th>상태</th>
		</tr>
		<%
		String sql =

				"select " + "st.student_id as 학번, " + "st.person_name as 이름, " + "gs.amount as 구매수량, " + "case "
				+ "when gs.amount = 1 then '저런' " + "when gs.amount = 2 then '나눠먹나?' "
				+ "when gs.amount = 3 then '적당하네' " + "when gs.amount = 4 then '좀 많은데?' "
				+ "when gs.amount = 5 then '먹보' " + "end as 상태 " + "from student st, get_snack gs "
				+ "where st.student_id = gs.student_id " + "group by st.student_id, st.person_name, gs.amount "
				+ "order by st.student_id";

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
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>