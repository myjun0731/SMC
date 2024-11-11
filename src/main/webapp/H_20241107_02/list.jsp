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
	top: 90px;
	left: 0px;
	width: 100%;
	height: 100%;
	background-color: lightgray;
}

h2 {
	text-align: center;
	margin: 20px;
}

p {
	padding-left: 18px;
}

form {
	display: flex;
	align-items: center;
	justify-content: center;
}

table {
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>수강 과목 신청</h2>

		<table border="1">
			<tr>
				<th>학 번</th>
				<td><input type="text" name="Num"></td>
			</tr>
			<tr>
				<th>이 름</th>
				<td><input type="text" name="Name"></td>
			</tr>
			<tr>
				<th>과목명</th>
				<td><select>
						<option value="">학과선택</option>
						<option value="1">1.인공지능소프트웨어과</option>
						<option value="2">2.사물인터넷과</option>
						<option value="3">3.디지털미디어디자인과</option>
						<option value="4">4.디지털만화영상과</option>
						<option value="5">5.바이오푸드과</option>
				</select></td>
			</tr>
			<tr>
				<th>성 별</th>
				<td><input type="radio" name="Gender" value="1">남성 <input
					type="radio" name="Gender" value="2">여성</td>
			</tr>
			<tr>
				<th>수강장소</th>
				<td><select>
						<option value="">위치</option>
						<option value="상일미디어고등학교">상일미디어고등학교</option>
						<option value="세명컴퓨터고등학교">세명컴퓨터고등학교</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="수강신청">&nbsp; <input type="button"
					value="수강신청"></td>
			</tr>
		</table>
	</section>
</body>
</html>