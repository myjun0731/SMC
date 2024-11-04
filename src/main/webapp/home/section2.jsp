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
	top: 110px;
	left: 0px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
	text-align: center;
	align-items: center;
}

form {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

h2 {
	margin: 20px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>강사조회</h2>


		<form action="">
			<table border="1">
				<tr>
					<th>강사코드</th>
					<th>강사명</th>
					<th>강의명</th>
					<th>수강료</th>
					<th>강사자격취득일</th>
				</tr>
				<tr>
					<td>100</td>
					<td>이초급</td>
					<td>초급반</td>
					<td>$100,000</td>
					<td>2022년01월01일</td>
				</tr>
				<tr>
					<td>200</td>
					<td>김중급</td>
					<td>중급반</td>
					<td>$200,000</td>
					<td>2022년01월02일</td>
				</tr>
				<tr>
					<td>300</td>
					<td>박고급</td>
					<td>고급반</td>
					<td>$300,000</td>
					<td>2022년01월03일</td>
				</tr>
				<tr>
					<td>400</td>
					<td>정심화</td>
					<td>심화반</td>
					<td>$400,000</td>
					<td>2022년01월04일</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>