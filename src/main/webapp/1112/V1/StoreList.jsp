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
	align-items: center;
	flex-direction: column;
}

section table {
	margin-top: 20px;
	width: 800px;
	height: max-content;
	background-color: white;
	height: max-content background-color: white;
}

td {
	text-align: left;
}

section h3 {
	margin: 20px 0px;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%@ include file="Nav.jsp"%>

	<section>
		<h3>점포별매출현황</h3>
		<table border="1">
			<tr>
				<th>판매구분</th>
				<th>판매번호</th>
				<th>판매일자</th>
				<th>상품명</th>
				<th>판매수량</th>
				<th>판매금액</th>
				<th>수취구분</th>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
			String sql = "select decode(sa.sale_fg,'1','판매', '2', '판매취소'), sa.sale_no, "
					+ "to_char(sa.sale_ymd, 'YYYY-MM-DD'), st.store_nm, " + "sa.sale_cnt, "
					+ "to_char(g.goods_price * sa.sale_cnt, '999,999') || '원', " + "decode(sa.pay_type,'01','현금','02','카드') "
					+ "from sale_tbl_003 sa, store_tbl_003 st, tbl_goods_01 g "
					+ "where sa.store_cd = st.store_cd and sa.goods_cd = g.goods_cd and sa.store_cd = 'A001' ";

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
			</tr>
			<%
			}
			jdbc.close();
			%>


		</table>
	</section>
	<%@ include file="Footer.jsp"%>


	</table>
	</section>
</body>
</html>