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
		<h3>참가자 등수 조회</h3>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>