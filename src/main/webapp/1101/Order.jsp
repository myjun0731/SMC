<%@page import="oracle.net.aso.a"%>
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
	<%
	String korea_sql = "select korea from language order by korea";
	String num_sql = "select num from language order by num desc";
	%>

	<table border="1">
		<tr>
			<th>오름차순(가나다/abc 순)</th>
			<%
			JDBC asc_jdbc = new JDBC();
			asc_jdbc.pstmt = asc_jdbc.conn.prepareStatement(korea_sql);
			asc_jdbc.rs = asc_jdbc.pstmt.executeQuery();
			while (asc_jdbc.rs.next()) {
			%>
			<td><%=asc_jdbc.rs.getString(1)%></td>
			<%
			} asc_jdbc.close();
			%>
		</tr>
		<tr>
			<th>내림차순(다나가/ cba 순)</th>
			<%
			JDBC dese_jdbc = new JDBC();
			dese_jdbc.pstmt = dese_jdbc.conn.prepareStatement(num_sql);
			dese_jdbc.rs = dese_jdbc.pstmt.executeQuery();
			while (dese_jdbc.rs.next()) {
			%>
			<td><%=dese_jdbc.rs.getString(1)%></td>
			<%
			} dese_jdbc.close();
			%>
		</tr>
	</table>
</body>
</html>