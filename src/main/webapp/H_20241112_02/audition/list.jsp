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
	top: 80px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

section h3 {
	text-align: center;
	margin: 20px;
}

section p {
	padding-left: 15px;
}

section table {
	margin: auto;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>참가자 목록 조회</h3>

		<table border="1">
			<tr>
				<th>참가번호</th>
				<th>참가자명</th>
				<th>생년월일</th>
				<th>성별</th>
				<th>특기</th>
				<th>소속사</th>
			</tr>
		</table>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>