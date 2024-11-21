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
	background-color: DarkGray;
	display: flex;
	justify-content: center;
}

section table {
	margin-top: 20px;
	background-color: white;
}

section h3 {
	text-align: center;
	margin: 20px;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%@ include file="Nav.jsp"%>

	<section>

		<%
		String sql = "select to_char(max(goods_cd)+1,'FM000000'), to_char(sysdate," + "'YYYY-MM-DD') from tbl_goods_01";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		jdbc.rs.next();
		%>

		<form action="GoodsInput_confirm.jsp" name="form">
			<h3>상품정보등록</h3>
			
			<table border="1">
				<tr>
					<th>상품코드(자동채번)</th>
					<td><input type="text" name="goods_cd"
						value="<%=jdbc.rs.getString(1)%>" readonly></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="goods_nm"></td>
				</tr>
				<tr>
					<th>단가</th>
					<td><input type="text" name="goods_price"></td>
				</tr>
				<tr>
					<th>원가</th>
					<td><input type="text" name="goods_cost"></td>
				</tr>
				<tr>
					<th>입고일자</th>
					<td><input type="text" name="in_date"
						value="<%=jdbc.rs.getString(2)%>" readonly></td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="저장"> <input type="button"
						value="상품등록" onclick="location.href='GoodsList.jsp'"></td>
				</tr>
			</table>
		</form>
		<%
		jdbc.close();
		%>
	</section>
	<%@ include file="Footer.jsp"%>
</body>
</html>