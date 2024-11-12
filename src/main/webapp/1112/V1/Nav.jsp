<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
nav {
	position: fixed;
	top: 50px;
	width: 100%;
	height: 30px;
	display: flex;
	align-items: center;
	background-color: gray;
	display: flex;
}

nav a {
	text-decoration: none;
	margin-right: 20px;
}
</style>
</head>
<body>
	<nav>
		<a href="SaleInput.jsp">매출등록</a> <a href="GoodsList.jsp">상품관리</a> <a
			href="StoreAllList.jsp">매출현황</a> <a href="Index.jsp">홈으로</a>
	</nav>
</body>
</html>