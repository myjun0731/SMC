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
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h3>과정평가형 자격 CBQ</h3>

		<p>
			국가직무능력표준으로 설계된 교육·훈련과정을 체계적으로 이수하고 내·외부 평가를 거쳐 취득하는 국가기술자격입니다. <br>
			<br> 산업현장중심의 교육평가로 더 커지는 능력! <br> <br> 알고 있는 것에 할 수 있는
			것을 더하는 <br> <br> 과정평가형 자격은 <br> <br> 현장 중심형 인재육성을
			지원합니다.
		</p>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>