<%@page import="ex_date.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	box-sizing: border-box;
	margin: 0;
}

section {
	position: fixed;
	top: 80px;
	width: 100%;
	height: 100%;
	background-color: Darkgray;
	display: flex;
	align-items: center;
	flex-direction: column;
}

section h3 {
	margin: 20px 30px;
}

section table {
	width: 800px;
	height: max-content;
	background-color: white;
}

th, td {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%@ include file="Nav.jsp"%>

	<section>
		<h3>상품관리</h3>

		<table border="1">
			<tr>
				<th>상품코드</th>
				<th>상품명</th>
				<th>단가</th>
				<th>원가</th>
				<th>입고일자</th>
			</tr>
			<%
			String sql = "select goods_cd, goods_nm, to_char(goods_price, 'L999,999'), "
					+ "to_char(cost,'L999,999'), to_char(in_date,'YYYY-MM-DD') from tbl_goods_01";

			JDBC jdbc = new JDBC();
			jdbc.pstmt = jdbc.conn.prepareStatement(sql);
			jdbc.rs = jdbc.pstmt.executeQuery();
			while (jdbc.rs.next()) {
			%>

			<tr>
				<td><a
					href="GoodsUpdate.jsp?goods_cd=<%=jdbc.rs.getString(1)%>"> <%=jdbc.rs.getString(1)%></a></td>
				<td><%=jdbc.rs.getString(2)%></td>
				<td style="text-align: end;"><%=jdbc.rs.getString(3)%></td>
				<td style="text-align: end;"><%=jdbc.rs.getString(4)%></td>
				<td><%=jdbc.rs.getString(5)%></td>
			</tr>
			<%
			}
			jdbc.close();
			%>

			<tr>
				<td colspan="5" style="text-align: center;"><input
					type="submit" value="등록" onclick="location.href='GoodsInput.jsp'">
				</td>
			</tr>
		</table>
	</section>
	<%@ include file="Footer.jsp"%>
</body>
</html>