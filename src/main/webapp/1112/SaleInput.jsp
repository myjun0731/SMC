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
	margin-top: 20px;
	background-color: white;
}

form {
	margin-top: 20px;
	text-align: center;
}

form h3 {
	margin-top: 20px;
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%@ include file="Nav.jsp"%>

	<section>
		<%
		String sql = "select to_char(max(sale_cnt) +1, 'FM0000'), to_char(sysdate, 'YYYYMMDD') from sale_tbl_003";

		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.rs = jdbc.pstmt.executeQuery();
		jdbc.rs.next();
		%>
		<form action="SaleInput_confirm.jsp" name="form ">

			<h3>매출등록</h3>

			<table border="1">
				<tr>
					<th>판매번호(자동완성)</th>
					<td><input type="text" name="sale_no"
						value="<%=jdbc.rs.getString(1)%>"></td>
				</tr>
				<tr>
					<th>판매일자(자동완성)</th>
					<td><input type="text" name="sale_ymd"
						value="<%=jdbc.rs.getString(1)%>"></td>
				</tr>
				<tr>
					<th>판매구분</th>
					<td><select name="sale_fg">
							<option value="">선택</option>
							<option value="01">판매</option>
							<option value="02">판매취소</option>
					</select></td>
				</tr>
				<tr>
					<th>판매점포</th>
					<td><select name="store_cd">
							<option value="">선택</option>
							<option value="A001">이태원점</option>
							<option value="A001">한남점</option>
							<option value="A002">도원점</option>
							<option value="A003">혜화점</option>
							<option value="B001">방배점</option>
							<option value="C001">사당점</option>
							<option value="D001">흑석점</option>
							<option value="D002">금호점</option>
					</select></td>
				</tr>
				<tr>
					<th>판매상품</th>
					<td><select name="goods_cd">
							<option value="">선택</option>
							<option value="110001">라면</option>
							<option value="110002">빵</option>
							<option value="110003">과자</option>
							<option value="110004">탄산음료</option>
							<option value="110005">삼각깁밥</option>
							<option value="110006">초콜릿</option>
							<option value="110007">우유</option>
					</select></td>
				</tr>
				<tr>
					<th>판매수량</th>
					<td><input type="text" name="sale_cnt"
						value="<%=jdbc.rs.getString(1)%>"></td>
				</tr>
				<tr>
					<th>수취구분</th>
					<td><select name="pay_type">
							<option value="">선택</option>
							<option value="01">현금</option>
							<option value="02">카드</option>
					</select></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="등록"
						onclick="update()"> <input type="button" value="조회"
						onclick="location.href='stroeAllList.jsp'"></td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="Footer.jsp"%>



	<script type="text/javascript">
		function update() {
			if (document.form.sale_no.value.trim() == "") {
				alert("판매번호를 입력하지 않음.");
				document.form.sale_no.focus();
				return false;
			} else if (document.form.sale_ymd.value.trim() == "") {
				alert("판매일자를 입력하지 않음.");
				document.form.sale_ymd.focus();
				return false;
			} else if (document.form.sale_fg.value.trim() == "") {
				alert("판매구분을 입력하지 않음.");
				document.form.sale_fg.focus();
				return false;
			} else if (document.form.store_cd.value.trim() == "") {
				alert("판매점포를 입력하지 않음.");
				document.form.store_cd.focus();
				return false;
			} else if (document.form.goods_cd.value.trim() == "") {
				alert("판매상품을 입력하지 않음.");
				document.form.goods_cd.focus();
				return false;
			} else if (document.form.sale_cnt.value.trim() == "") {
				alert("판매수량을 입력하지 않음.");
				document.form.sale_cnt.focus();
				return false;
			} else if (document.form.pay_type.value.trim() == "") {
				alert("수취구분을 입력하지 않음.");
				document.form.pay_type.focus();
				return false;
			} else {
				alert("매출이 정상적으로 저장됨.");
				document.form.submit();
				return true;

			}

		}}
	</script>
</body>
</html>