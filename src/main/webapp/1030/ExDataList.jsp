<%@page import="java.time.LocalDate"%>
<%@page import="study.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String sql = "SELECT korea_name, " + "student_num, "
			+ "TO_CHAR(birth_date, 'YYYY') || '년' || TO_CHAR(birth_date, 'MM') || '월' ||TO_CHAR(birth_date, 'DD') || '일', "
			+ "TO_CHAR(birth_date, 'YYYY-MM-DD'), " + "blood_type, " + "TO_CHAR(birth_date, 'YYYY'), "
			+ "CASE WHEN TO_CHAR(SYSDATE, 'YYYY') - TO_CHAR(birth_date, 'YYYY') >= 19 THEN '졸업' ELSE '예정' END "
			+ "FROM ex_date";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>

	<table border="1">
		<tr>
			<th>이름</th>
			<th>학번</th>
			<th>데이터 포멧 1</th>
			<th>데이터 포멧 2</th>
			<th>혈액형</th>
			<th>졸업 여부 방법1</th>
			<th>졸업 여부 방법2</th>
		</tr>
		<%
		while (jdbc.rs.next()) {
			String birth_date_format2 = jdbc.rs.getString(4);
			String[] birth_date_format2_split = birth_date_format2.split("-");
			String birth_date_format2_change = birth_date_format2_split[0] + "년" + birth_date_format2_split[1] + "월"
			+ birth_date_format2_split[2] + "일";

			int birth_date = Integer.parseInt(jdbc.rs.getString(6));
			int today_yaer = (int) LocalDate.now().getYear();

			String gooBy = null;

			if (today_yaer - birth_date >= 19) {
				gooBy = "졸업";
			} else {
				gooBy = "예정";
			}
		%>
		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=birth_date_format2_change%></td>
			<td><%=jdbc.rs.getString(5)%></td>
			<td><%=gooBy %></td>
			<td><%=jdbc.rs.getString(7)%></td>
		</tr>

		<%
		}
		%>
	</table>
	<a href="ExDataInput.jsp">[데이터 입력하기]</a>
</body>
</html>