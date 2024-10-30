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
</style>

</head>
<body>
	<%
	String get_id_sql = "select max(reserve_id) + 1 from reserve_movie";
	String food_list_sql = "select food_name from food";
	String open_movie_list_sql = "select open_movie_name from open_movie";
	%>

	<form action="Reserveinput_confirm.jsp" name="form">
		<table border="1">
			<%
			JDBC GET_ID_JDBC = new JDBC();
			GET_ID_JDBC.pstmt = GET_ID_JDBC.conn.prepareStatement(get_id_sql);
			GET_ID_JDBC.rs = GET_ID_JDBC.pstmt.executeQuery();
			GET_ID_JDBC.rs.next();
			%>

			<tr>
				<th>예매 번호</th>
				<td><input type="text" name="reserve_id"
					value="<%=GET_ID_JDBC.rs.getString(1)%>" /></td>
			</tr>

			<%
			GET_ID_JDBC.close();
			%>

			<tr>
				<th>회원 아이디</th>
				<td><input type="text" name="member_id" /></td>
			</tr>

			<%
			JDBC FOOD_LIST_JDBC = new JDBC();
			FOOD_LIST_JDBC.pstmt = FOOD_LIST_JDBC.conn.prepareStatement(food_list_sql);
			FOOD_LIST_JDBC.rs = FOOD_LIST_JDBC.pstmt.executeQuery();
			%>

			<tr>
				<th>판매 음식</th>
				<td>
					<select name="food name">
						<option value=""></option>
						<%
						while (FOOD_LIST_JDBC.rs.next()) {
						%>
						<option value="<%=FOOD_LIST_JDBC.rs.getString(1)%>">
							<%=FOOD_LIST_JDBC.rs.getString(1)%>
						</option>
						<%
						}
						%>
					</select>
				</td>
			</tr>

			<%
			FOOD_LIST_JDBC.close();
			%>

			<%
			JDBC OPEN_MOVIE_LIST_JDBC = new JDBC();
			OPEN_MOVIE_LIST_JDBC.pstmt = OPEN_MOVIE_LIST_JDBC.conn.prepareStatement(open_movie_list_sql);
			OPEN_MOVIE_LIST_JDBC.rs = OPEN_MOVIE_LIST_JDBC.pstmt.executeQuery();
			%>

			<tr>
				<th>상영 영화</th>
				<td><select name="open_movie_name">
						<option name="open_movie.name">
						<%
						while (OPEN_MOVIE_LIST_JDBC.rs.next()) {
						%>
						<option value="<%=OPEN_MOVIE_LIST_JDBC.rs.getString(1)%>">
							<%=OPEN_MOVIE_LIST_JDBC.rs.getString(1)%>
						</option>
						<%
						}
						%>
						
				</select></td>
			</tr>

			<%
			OPEN_MOVIE_LIST_JDBC.close();
			%>

			<tr>
				<td colspan="2"><input type="submit" value="제출" /></td>
			</tr>
		</table>
	</form>
</body>
</html>