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
	<form action="GetSnackUpdate_confirm.jsp" name="form">
		<h2>Get Snack Update</h2>

		<table border="1">

			<%
			request.setCharacterEncoding("UTF-8");

			String get_snack_id = request.getParameter("get_snack_id");
			String getSnack_sql = "select gs.get_snack_id, gs.student_id, gs.snack_name, "
					+ "gs.amount, to_char(gs.get_snack_date, 'YYYY-MM-DD HH24:MI') " + "from get_snack gs "
					+ "where gs.get_snack_id = ?";

			String snackList_sql = "select s.snack_name from snack s " + "order by decode(s.snack_name, ?, 1)";

			JDBC jdbc1 = new JDBC();
			jdbc1.pstmt = jdbc1.conn.prepareStatement(getSnack_sql);
			jdbc1.pstmt.setString(1, get_snack_id);
			jdbc1.rs = jdbc1.pstmt.executeQuery();
			jdbc1.rs.next();

			String snack_name = jdbc1.rs.getString(3);

			JDBC jdbc2 = new JDBC();
			jdbc2.pstmt = jdbc1.conn.prepareStatement(snackList_sql);
			jdbc2.pstmt.setString(1, snack_name);
			jdbc2.rs = jdbc2.pstmt.executeQuery();
			%>
			<tr>
				<th>기본키</th>
				<td><input type="text" value="<%=jdbc1.rs.getString(1)%>"
					name="get_snack_id" readonly></td>
			</tr>

			<tr>
				<th>학번</th>
				<td><input type="text" value="<%=jdbc1.rs.getString(2)%>"
					name="student_id"></td>
			</tr>

			<tr>
				<th>간식이름</th>
				<td><select name="snack_name">
						<%
						while (jdbc2.rs.next()) {
						%>
						<option value="<%=jdbc2.rs.getString(1)%>"><%=jdbc2.rs.getString(1)%>
							<%
							}
							%>
						</option>
				</select></td>
			</tr>

			<tr>
				<th>구입한 수량</th>
				<td><input type="text" value="<%=jdbc1.rs.getString(4)%>"
					name="amount"></td>
			</tr>
			<tr>
				<th>구매한 시간</th>
				<td><input type="text" value="<%=jdbc1.rs.getString(5)%>"
					name="get_snack_date"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="제출"></td>
			</tr>
		</table>
	<%
	jdbc1.close();
	jdbc2.close();
	%>
	</form>
</body>
</html>