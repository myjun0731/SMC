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
	<jsp:include page="header.jsp"></jsp:include>

	<h2>죄석예약조회</h2>
	<section>
		<form action="">

			<table border="1">
				<tr>
					<th>사원번호를 입력</th>
					<td><input type="text" name="empno"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="죄석예약조회"> <input type="button"
						value="홈으로"></td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>