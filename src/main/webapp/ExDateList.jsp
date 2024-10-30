<%@page import="java.time.LocalDate"%>
<%@page import="ex_date.JDBC"%>
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
	String sql = "select korea_name, " + "student_num, "
			+ "to_char(birth_date, 'YYYY') || '년 ' || to_char(birth_date, 'MM') || '월 ' || to_char(birth_date, 'DD') || '일 ', "
			+ "to_char(birth_date, 'YYYY-MM-DD'), " + "blood_type, " + "to_char(birth_date, 'YYYY'), "
			+ "case WHEN to_char(sysdate, 'YYYY') - to_char(birth_date, 'YYYY') >= 19 THEN '졸업' else '예정' end "
			+ "from ex_date";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>

	<table border="1">
		<tr>
			<th>이름</th>
			<th>학번</th>
			<th>데이터 포맷</th>
			<th>데이터 포맷2</th>
			<th>혈액형</th>
			<th>수업여부 방법1</th>
			<th>수업여부 방법2</th>
		</tr>

		<%
		while (jdbc.rs.next()) {
			String birth_date_format2 = jdbc.rs.getString(4);
			String[] birth_date_format2_split = birth_date_format2.split("-");
			String birth_date_format2_change = birth_date_format2_split[0] + " 년" + birth_date_format2_split[1] + " 월"
			+ birth_date_format2_split[2] + " 일";

			int birth_date = Integer.parseInt(jdbc.rs.getString(6));
			int today_year = (int) LocalDate.now().getYear();

			String goodBy = null;

			if (today_year - birth_date >= 19) {
				goodBy = "졸업";
			}

			goodBy = "예정";
		%>

		<tr>
			<td><%=jdbc.rs.getString(1)%></td>
			<td><%=jdbc.rs.getString(2)%></td>
			<td><%=jdbc.rs.getString(3)%></td>
			<td><%=birth_date_format2_change%></td>
			<td><%=jdbc.rs.getString(5)%></td>
			<td><%=goodBy%></td>
			<td><%=jdbc.rs.getString(7)%></td>


		</tr>
		<%
		}
		%>
	</table>
	<a href="ExDataInput.jsp">데이터 입력</a>
</body>
</html>