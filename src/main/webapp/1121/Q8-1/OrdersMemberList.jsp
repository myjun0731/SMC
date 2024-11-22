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
	<h2></h2>
	<table border="1">
		<tr>
			<th>기본키</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>NN년생</th>
			<th>태어난연도</th>
			<th>생년월일</th>
			<th>만나이(생일적용X)</th>
			<th>만나이(생일적용O)</th>
		</tr>
		<%
		String sql =
		
				"SELECT " +
			    "orders_member_id AS 기본키, " +
			    "name AS 이름, " +
			    "email AS 이메일, " +
			    "phone_num AS 전화번호, " +
			    "address AS 주소, " +
			    "SUBSTR(birth, 3, 2) AS NN연생, " +
			    "SUBSTR(birth, 1, 4) AS 태어난연도, " +
			    "(SUBSTR(birth, 1, 4) || SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2)) AS 생년월일, " +
			    "2024 - (SUBSTR(birth, 1, 4)) AS 만나이, " +
			    "CASE " +
			        "WHEN SUBSTR(birth, 6, 2) || SUBSTR(birth, 9, 2) >= 1121 THEN " +
			            "2024 - (SUBSTR(birth, 1, 4) + 1) " +
			        "ELSE " +
			            "2024 - (SUBSTR(birth, 1, 4)) " +
			    "END AS 만나이_생일적용 " +
			"FROM Orders_Member";

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
			<td><%=jdbc.rs.getString(5)%></td>
			<td><%=jdbc.rs.getString(6)%></td>
			<td><%=jdbc.rs.getString(7)%></td>
			<td><%=jdbc.rs.getString(8)%></td>
			<td><%=jdbc.rs.getString(9)%></td>
			<td><%=jdbc.rs.getString(10)%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
	</table>
</body>
</html>