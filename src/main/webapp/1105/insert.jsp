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
	top: 100px;
	left: 0px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

form {
	justify-content: center;
	align-items: center;
	display: flex;
}

h2 {
	text-align: center;
}
</style>
</head>
<body>
	<script type="text/javascript" src="./check.js"></script>
	<jsp:include page="header.jsp"></jsp:include>

	<section>
		<h2>근무좌석예약</h2>
		<form action="" name="frm">
			<table border="1">
				<tr>
					<th>예약번호</th>
					<td><input type="text" name="resvno">예)20241001</td>
				</tr>
				<tr>
					<th>사원번호</th>
					<td><input type="text" name="empno">예)1001</td>
				</tr>
				<tr>
					<th>근무일자</th>
					<td><input type="text" name="resvdate">예)20200301</td>
				</tr>
				<tr>
					<th>좌석번호</th>
					<td><input type="text" name="seatno">예)S001 ~ S009</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="등록" onclick="add()"> <input
						type="button" value="다시쓰기" onclick="res()"></td>
				</tr>
			</table>

		</form>
	</section>
</body>
</html>