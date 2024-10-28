<%@include file="db.jsp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section {
	position: fixed;
	left: 0px;
	top: 120px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

h2 {
	text-align: center;
}

form {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

input {
	padding-right: 10px;
}
</style>
</head>
<body>

	<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp" />

	<section>
		<h2>홈쇼핑 회원 등록</h2>
		<form method="post" action="1_action.jsp" name="frm">

			<table border="1">
				<%
				request.setCharacterEncoding("UTF-8");

				try {
					String sql = "select max(custno)+1 from tbl_member";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					rs.next();
				%>

				<tr>
					<td>회원번호(자동발생)</td>
					<td><input type="text" name="custno"
						value="<%=rs.getString(1)%>" readonly></td>
				</tr>

				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>회원주소</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<td>고객등급</td>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<td>도시코드</td>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="등록"
						onclick="add()"> <input type="button" value="다시쓰기"
						onclick="res()"></td>
				</tr>
				<%
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</form>
	</section>
</body>
</html>