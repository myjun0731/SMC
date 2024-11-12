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
	margin: 20px 0px;
	text-align: center;
}

section table {
	height: max-content;
	background-color: white;
}

td, th {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%@ include file="Nav.jsp"%>
	<section>

		<form action="GoodsUpdate_confirm.jsp">
			<h3>상품관리</h3>

			<table border="1">
				<%
				String goods_cd = request.getParameter("goods_cd");
				String sql = "select to_char(goods_cd, 'FM000000'), "
						+ "goods_nm, goods_price, cost, to_char(in_date,'YYYY-MM-DD') from tbl_goods_01 where goods_cd = ?";

				JDBC jdbc = new JDBC();
				jdbc.pstmt = jdbc.conn.prepareStatement(sql);
				jdbc.pstmt.setString(1, goods_cd);
				jdbc.rs = jdbc.pstmt.executeQuery();
				while (jdbc.rs.next()) {
				%>

				<tr>
					<th>상품정보변경</th>
					<td><input type="text" name="goods_cd"
						value="<%=jdbc.rs.getString(1)%>" readonly></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="goods_nm"
						value="<%=jdbc.rs.getString(2)%>"></td>
				</tr>
				<tr>
					<th>단가</th>
					<td><input type="text" name="goods_price"
						value="<%=jdbc.rs.getString(3)%>"></td>
				</tr>
				<tr>
					<th>원가</th>
					<td><input type="text" name="cost"
						value="<%=jdbc.rs.getString(4)%>"></td>
				</tr>
				<tr>
					<th>입고일자</th>
					<td><input type="text" name="indate"
						value="<%=jdbc.rs.getString(5)%>" readonly></td>
				</tr>
				<%
				}
				jdbc.close();
				%>

				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="저장"> <input type="submit"
						value="상품목록" onclick="location.href='GoodsList.jsp'"></td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="Footer.jsp"%>
</body>
</html>