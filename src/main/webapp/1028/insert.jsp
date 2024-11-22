<%@include file="db.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="
position: fixed;
left: 0px;
top: 120px;
width: 100%;
height: 100%;
 
">
<h2 style="text-align: center;">홈쇼핑 회원 등록</h2>
<form 
method="post"
action="i_action.jsp"
name="frm"
style="
display: flex;
align-items: center;
justify-conten:center;
text-align: center;
">
<table border="1">
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql = "SELECT MAX(custno) + 1 FROM tbl_member";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
%>
			<tr>
				<td>회원번호(자동발생)</td>
				<td><input type="text" name="custno"
					value="<%=rs.getString(1)%>" readonly></td>
			</tr>
			<%
}
catch(Exception e){
	e.printStackTrace();
}
%>
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
				<td>고객등급[A:VIP, B:직원, C:직원]</td>
				<td><input type="text" name="grade"></td>
			</tr>

			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="button" value="등록" onclick="add()">&nbsp;
					<input type="button" value="다시쓰기" onclick="res()">&nbsp;
			</tr>

		</table>
</form>
</section>
</body>
</html>