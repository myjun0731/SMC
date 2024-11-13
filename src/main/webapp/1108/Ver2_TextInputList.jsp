<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
			<th>기본키</th>
			<th>회원 아이디</th>
			<th>내용</th>
			<th></th>
		</tr>

		<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Class.forName("oracle.jdbc.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "system";
		String db_pw = "1234";
		conn = DriverManager.getConnection(url, db_id, db_pw);

		String sql = "select text_input_id, member_id, contents from text_input";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
		%>
		<tr>
			<td><a
				href="Ver1_TextUpdate.jsp?text_input_id=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><input type="button" value="값 삭제"
				onclick="location.href='Ver1_TextDelete_confirm.jsp?text_input_id=<%=rs.getString(1)%>'"></td>
		</tr>
		<%
		}
		rs.close();
		pstmt.close();
		conn.close();
		%>

		<tr>
			<td colspan="4"><input type="button" value="값 입력"
				onclick="location.href='Ver2_TextInput.jsp'"></td>
		</tr>
	</table>
</body>
</html>