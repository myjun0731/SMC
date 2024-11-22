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
</head>
<body>
	<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	<section
		style="position: fixed; left: 0px; top: 120px; width: 100%; height: 100%;">
		<h2 style="text-align: center;">홈쇼핑 회원 등록</h2>
		<form method="post" action="i_action.jsp" name="frm"
			style="display: flex; align-items: center; justify-conten: center; text-align: center;">
			<table border="1">
				<tr>
					<td>회원성명</td>
					<td>회원전화</td>
					<td>주소</td>
					<td>가입일자</td>
					<td>고객등급</td>
					<td>거주지역</td>
				</tr>
				<%
				request.setCharacterEncoding("UTF-8");
				try{
					String sql ="SELECT * FROM tbl_member";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()){
						String grade = rs.getString(6);
						if(grade.equals("A")) grade="VIP";
						else if(grade.equals("B")) grade="일반";
						else grade="직원";
						%>
						<tr>
						<td><a href="modify.jsp?custno=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getDate(5) %></td>
						<td><%=grade %></td>
						<td><%=rs.getString(7) %></td>
						</tr>
						<%
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}
				%>
			</table>
		</form>
	</section>
</body>
</html>