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
			<th>아이디</th>
			<th>닉네임</th>
			<th>총 주문 금액</th>
		</tr>

		<%
		String sql =

				"select m.member_id, m.member_name, " + "to_char(nvl(sum(f.price),0),'999,999') "
				+ "from member m left outer join take_out t " + "on m.member_id = t.member_id "
				+ "left outer join food f " + "on t.food_name = f.food_name " + "group by m.member_id, m.member_name "
				+ "order by m.member_id ";

		JDBC JDBC = new JDBC();
		JDBC.pstmt = JDBC.conn.prepareStatement(sql);
		JDBC.rs = JDBC.pstmt.executeQuery();

		while (JDBC.rs.next()) {
		%>

		<tr>
			<td><%=JDBC.rs.getString(1)%></td>
			<td><%=JDBC.rs.getString(2)%></td>
			<td><%=JDBC.rs.getString(3)%></td>
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