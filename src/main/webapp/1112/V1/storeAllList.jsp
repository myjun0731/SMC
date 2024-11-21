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
				<th>점포명</th>
				<th>현금매출</th>
				<th>카드매출</th>
				<th>총매출</th>
			</tr>
			<%
			String sql =

					"select st.store_cd, st.store_nm, "
					+ "to_char(NVl(sum(decode(sa.pay_type,'01', sa.sale_cnt, null,0)*g.goods_price),0),'999,999') || '원' as 현금매출, "
					+ "to_char(NVl(sum(decode(sa.pay_type,'02', sa.sale_cnt, null,0)*g.goods_price),0),'999,999') || '원' as 카드매출, "
					+ "to_char(sum(sa.sale_cnt * g.goods_price),'999,999') || '원' as 총매출 "
					+ "from sale_tbl_003 sa, store_tbl_003 st, tbl_goods_01 g "
					+ "where sa.store_cd = st.store_cd and sa.goods_cd = g.goods_cd " + "group by st.store_cd, st.store_nm "
					+ "order by 총매출 DESC";

			JDBC jdbc = new JDBC();
			jdbc.pstmt = jdbc.conn.prepareStatement(sql);
			jdbc.rs = jdbc.pstmt.executeQuery();
			while (jdbc.rs.next()) {
			%>

			<tr>
				<th><a
					href="StoreList.jsp?store_cd=<%=jdbc.rs.getString(1)%>&store_nm=<%=jdbc.rs.getString(2)%>">
						<%=jdbc.rs.getString(2)%></a></th>
				<td><%=jdbc.rs.getString(3)%></td>
				<td><%=jdbc.rs.getString(4)%></td>
				<td><%=jdbc.rs.getString(5)%></td>
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